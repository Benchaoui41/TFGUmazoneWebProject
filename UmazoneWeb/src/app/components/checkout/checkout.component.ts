import { Component, OnInit } from '@angular/core';
import { FormControl, FormGroup, Validators } from '@angular/forms';
import { Router } from '@angular/router';
import { CartItem } from 'src/app/common/cart-item';
import { Country } from 'src/app/common/country';
import { Order } from 'src/app/common/order';
import { OrderItem } from 'src/app/common/order-item';
import { PaymentInfo } from 'src/app/common/payment-info';
import { Purchase } from 'src/app/common/purchase';
import { State } from 'src/app/common/state';
import { CartService } from 'src/app/services/cart.service';
import { CheckoutService } from 'src/app/services/checkout.service';
import { UmazoneFormService } from 'src/app/services/umazone-form.service';
import { ShopValidators } from 'src/app/validators/shop-validators';
import { environment } from 'src/environments/environment';

//// stripe-api-impl-frontend-commit

@Component({
  selector: 'app-checkout',
  templateUrl: './checkout.component.html',
})
export class CheckoutComponent implements OnInit {
  checkoutFormGroup!: FormGroup;
  shippingAddressStates: State[] = [];
  billingAddressStates: State[] = [];

  totalPrice: number = 0;
  totalQuantity: number = 0;
  creditCardYears: number[] = [];
  creditCardMonths: number[] = [];

  countries: Country[] = [];

  storage: Storage = sessionStorage;

  // inicializar la API de Stripe
  stripe = Stripe(environment.stripePublishableKey);
  paymentInfo: PaymentInfo = new PaymentInfo();
  cardElement: any;
  displayError: any = '';

  // deshabilitar el botón de pago
  isDisabled: boolean = false;

  constructor(
    private shopFormService: UmazoneFormService,
    private cartService: CartService,
    private checkoutService: CheckoutService,
    private router: Router
  ) {}

  ngOnInit(): void {
    // configurar el formulario de pago de Stripe
    this.configurarFormularioStripe();

    // leer el email del usuario del almacenamiento del navegador
    const theEmail = JSON.parse(this.storage.getItem('userEmail')!);

    this.checkoutFormGroup = new FormGroup({
      customer: new FormGroup({
        firstName: new FormControl('', [
          Validators.required,
          Validators.minLength(2),
          ShopValidators.notOnlyWhitespace,
        ]),
        lastName: new FormControl('', [
          Validators.required,
          Validators.minLength(2),
          ShopValidators.notOnlyWhitespace,
        ]),
        email: new FormControl(theEmail, [
          Validators.required,
          Validators.pattern('^[a-z0-9._%+-]+@[a-z0-9.-]+\\.[a-z]{2,4}$'),
        ]),
      }),
      shippingAddress: new FormGroup({
        country: new FormControl('', Validators.required),
        street: new FormControl('', [
          Validators.required,
          Validators.minLength(2),
          ShopValidators.notOnlyWhitespace,
        ]),
        city: new FormControl('', [
          Validators.required,
          Validators.minLength(2),
          ShopValidators.notOnlyWhitespace,
        ]),
        state: new FormControl('', Validators.required),
        zipCode: new FormControl('', [
          Validators.required,
          Validators.minLength(2),
          ShopValidators.notOnlyWhitespace,
        ]),
      }),
      billingAddress: new FormGroup({
        country: new FormControl('', Validators.required),
        street: new FormControl('', [
          Validators.required,
          Validators.minLength(2),
          ShopValidators.notOnlyWhitespace,
        ]),
        city: new FormControl('', [
          Validators.required,
          Validators.minLength(2),
          ShopValidators.notOnlyWhitespace,
        ]),
        state: new FormControl('', Validators.required),
        zipCode: new FormControl('', [
          Validators.required,
          Validators.minLength(2),
          ShopValidators.notOnlyWhitespace,
        ]),
      }),
      creditCard: new FormGroup({
        /*cardType: new FormControl('', Validators.required),
        nameOnCard: new FormControl('', [
          Validators.required,
          Validators.minLength(2),
          ShopValidators.notOnlyWhitespace,
        ]),
        cardNumber: new FormControl('', [
          Validators.required,
          Validators.pattern('[0-9]{16}'),
        ]),
        securityCode: new FormControl('', [
          Validators.required,
          Validators.pattern('[0-9]{3}'),
        ]),
        expirationMonth: new FormControl(''),
        expirationYear: new FormControl(''),*/
      }),
    });

    // populate credit card months
    /* const stratMonth: number = new Date().getMonth() + 1;
    this.shopFormService
      .getCreditCardMonths(stratMonth)
      .subscribe((data) => (this.creditCardMonths = data));
    */

    // populate credit card years
    /*this.shopFormService
      .getCreditCardYears()
      .subscribe((data) => (this.creditCardYears = data));
    */

    // cargar países
    this.shopFormService
      .getCountries()
      .subscribe((data) => (this.countries = data));

    // llamar al método para suscribirse al precio total y la cantidad total
    this.revisarDetallesCarrito();
  }
  configurarFormularioStripe() {
    // obtener una referencia a los elementos de Stripe
    var elements = this.stripe.elements();

    // crear un elemento de tarjeta ... y ocultar el campo de código postal
    this.cardElement = elements.create('card', { hidePostalCode: true });

    // Añadir una instancia del componente de tarjeta en el div 'card-element'
    this.cardElement.mount('#card-element');

    // Añadir el evento 'change' al elemento de tarjeta
    this.cardElement.on('change', (event: any) => {
      // obtener una referencia al elemento de errores de tarjeta
      this.displayError = document.getElementById('card-errors');

      if (event.complete) {
        this.displayError.textContent = '';
      } else if (event.error) {
        // mostrar error de validación al cliente
        this.displayError.textContent = event.error.message;
      }
    });
  }

  revisarDetallesCarrito() {
    // suscribirse al totalPrice
    this.cartService.totalPrice.subscribe((data) => (this.totalPrice = data));
    // suscribirse al totalQuantity
    this.cartService.totalQuantity.subscribe(
      (data) => (this.totalQuantity = data)
    );
  }

  // getters de controles de cliente
  get firstName() {
    return this.checkoutFormGroup.get('customer.firstName');
  }
  get lastName() {
    return this.checkoutFormGroup.get('customer.lastName');
  }
  get email() {
    return this.checkoutFormGroup.get('customer.email');
  }

  // getters de controles de dirección de envío
  get shippingAddressCountry() {
    return this.checkoutFormGroup.get('shippingAddress.country');
  }
  get shippingAddressStreet() {
    return this.checkoutFormGroup.get('shippingAddress.street');
  }
  get shippingAddressCity() {
    return this.checkoutFormGroup.get('shippingAddress.city');
  }
  get shippingAddressState() {
    return this.checkoutFormGroup.get('shippingAddress.state');
  }
  get shippingAddressZipCode() {
    return this.checkoutFormGroup.get('shippingAddress.zipCode');
  }

  // getters de controles de dirección de facturación
  get billingAddressCountry() {
    return this.checkoutFormGroup.get('billingAddress.country');
  }
  get billingAddressStreet() {
    return this.checkoutFormGroup.get('billingAddress.street');
  }
  get billingAddressCity() {
    return this.checkoutFormGroup.get('billingAddress.city');
  }
  get billingAddressState() {
    return this.checkoutFormGroup.get('billingAddress.state');
  }
  get billingAddressZipCode() {
    return this.checkoutFormGroup.get('billingAddress.zipCode');
  }

  // getters de controles de tarjeta de crédito
  get creditCardType() {
    return this.checkoutFormGroup.get('creditCard.cardType');
  }
  get creditCardNameOnCard() {
    return this.checkoutFormGroup.get('creditCard.nameOnCard');
  }
  get creditCardNumber() {
    return this.checkoutFormGroup.get('creditCard.cardNumber');
  }
  get creditCardSecurityCode() {
    return this.checkoutFormGroup.get('creditCard.securityCode');
  }

  getStates(formGroupName: string) {
    const formGroup = this.checkoutFormGroup.get(formGroupName);
    const countryCode = formGroup?.value.country.code;
    this.shopFormService.getStates(countryCode).subscribe((data) => {
      if (formGroupName === 'shippingAddress') {
        this.shippingAddressStates = data;
      } else {
        this.billingAddressStates = data;
      }
      // seleccionar el primer elemento por defecto
      formGroup?.get('state')?.setValue(data[0]);
    });
  }

  handleMonthsAndYears() {
    const creditCardFormGroup = this.checkoutFormGroup.get('creditCard');

    const currentYear = new Date().getFullYear();
    const selectedYear = Number(creditCardFormGroup?.value.expirationYear);

    // si el año actual es igual al año seleccionado, entonces empezar con el mes actual

    let startMonth: number;

    if (currentYear === selectedYear) {
      startMonth = new Date().getMonth() + 1;
    } else {
      startMonth = 1;
    }

    this.shopFormService.getCreditCardMonths(startMonth).subscribe((data) => {
      this.creditCardMonths = data;
    });
  }

  copyShippingAddressToBillingAddress(event: any) {
    if (event.target.checked) {
      this.checkoutFormGroup.controls['billingAddress'].setValue(
        this.checkoutFormGroup.controls['shippingAddress'].value
      );
      // corrección de bug para los estados
      this.billingAddressStates = this.shippingAddressStates;
    } else {
      this.checkoutFormGroup.controls['billingAddress'].reset();
      // corrección de bug para los estados
      this.billingAddressStates = [];
    }
  }

  onSubmit() {
    if (this.checkoutFormGroup.invalid) {
      this.checkoutFormGroup.markAllAsTouched();
      return;
    }

    // configurar el pedido
    let order = new Order();
    order.totalPrice = this.totalPrice;
    order.totalQuantity = this.totalQuantity;
    // obtener los elementos del carrito
    const cartItems: CartItem[] = this.cartService.cartItems;
    // crear orderItems a partir de cartItems
    let orderItems: OrderItem[] = cartItems.map((item) => new OrderItem(item));
    // configurar la compra
    let purchase: Purchase = new Purchase();

    // rellenar compra - cliente
    purchase.customer = this.checkoutFormGroup.controls['customer'].value;

    // rellenar compra - dirección de envío
    purchase.shippingAddress =
      this.checkoutFormGroup.controls['shippingAddress'].value;
    const shippingState: State = JSON.parse(
      JSON.stringify(purchase.shippingAddress.state)
    ); // copia profunda del estado
    const shippingCountry: Country = JSON.parse(
      JSON.stringify(purchase.shippingAddress.country)
    ); // copia profunda del país
    purchase.shippingAddress.state = shippingState.name;
    purchase.shippingAddress.country = shippingCountry.name;

    // rellenar compra - dirección de facturación
    purchase.billingAddress =
      this.checkoutFormGroup.controls['billingAddress'].value;
    const billingState: State = JSON.parse(
      JSON.stringify(purchase.billingAddress.state)
    ); // copia profunda del estado
    const billingCountry: Country = JSON.parse(
      JSON.stringify(purchase.billingAddress.country)
    ); // copia profunda del país
    purchase.billingAddress.state = billingState.name;
    purchase.billingAddress.country = billingCountry.name;

    // rellenar compra - pedido y orderItems

    purchase.order = order;
    purchase.orderItems = orderItems;

    // calcular información de pago
    this.paymentInfo.amount = Math.round(this.totalPrice * 100);
    this.paymentInfo.currency = 'number : "1.2-2" }} €';
    // asignar email de recibo a paymentInfo desde el cliente de la compra
    this.paymentInfo.receiptEmail = purchase.customer.email;

    // si el formulario es válido entonces
    // - realizar el pedido (pago ficticio)
    // llamar a la API REST mediante CheckoutService
    if (!this.checkoutFormGroup.invalid) {
      this.isDisabled = true;
      this.checkoutService.placeOrder(purchase).subscribe({
        next: (response: any) => {
          alert(
            `Su pedido ha sido recibido.\nNúmero de seguimiento: ${response.orderTrackingNumber}`
          );

          // reiniciar carrito
          this.resetCart();
          this.isDisabled = false;
        },
        error: (err: any) => {
          alert(`Hubo un error: ${err.message}`);
          this.isDisabled = false;
        },
      });
    } else {
      this.checkoutFormGroup.markAllAsTouched();
      return;
    }
  }
  resetCart() {
    // reiniciar datos del carrito
    this.cartService.resetCartItems();

    // reiniciar el formulario
    this.checkoutFormGroup.reset();

    // navegar de vuelta a la página de productos
    this.router.navigateByUrl('/products');
  }
}
