# UmazoneProject

Proyecto de ejemplo de e-commerce compuesto por dos módulos principales:

- **UmazoneServer**: Backend desarrollado con Spring Boot (Java)
- **UmazoneWeb**: Frontend desarrollado con Angular

Repositorio:  
https://github.com/Benchaoui41/TFGUmazoneWebProject.git

---

## Estructura del proyecto

```
UmazoneProject/
├── UmazoneServer/   # Backend (Spring Boot)
└── UmazoneWeb/      # Frontend (Angular)
```

---

## Requisitos previos

- **Java 17** o superior
- **Node.js** (recomendado v18+)
- **npm** (incluido con Node.js)
- **Angular CLI**
- **Eclipse IDE for Spring Developers** (opcional, para desarrollo backend)

---

## Instalación de herramientas

### Instalar Angular CLI

```bash
npm install -g @angular/cli
```

### Instalar Eclipse for Spring

Descargar desde:  
https://spring.io/tools

---

## Clonar el repositorio

```bash
git clone https://github.com/Benchaoui41/UmazoneProject.git
cd UmazoneProject
```

---

## Configuración y ejecución

### 1. Backend (UmazoneServer)

#### Instalar dependencias y compilar

```bash
cd UmazoneServer
./mvnw clean install
```

> En Windows usar `mvnw.cmd` en vez de `./mvnw` si es necesario.

#### Ejecutar el backend

```bash
./mvnw spring-boot:run
```

El backend se inicia por defecto en `https://localhost:8443`.

---

### 2. Frontend (UmazoneWeb)

#### Instalar dependencias

```bash
cd ../UmazoneWeb
npm install
```

#### Ejecutar el frontend

```bash
ng serve
```

La aplicación estará disponible en `http://localhost:4200`.

---

## Relación Frontend-Backend

El frontend (Angular) consume los servicios REST expuestos por el backend (Spring Boot).  
Asegúrate de tener ambos servicios corriendo para el funcionamiento completo.

---

## Ejemplo de uso

1. Inicia el backend (`UmazoneServer`)
2. Inicia el frontend (`UmazoneWeb`)
3. Accede a `http://localhost:4200` en tu navegador
4. Navega por el catálogo, añade productos al carrito y realiza compras.  
   El frontend comunicará las acciones al backend automáticamente.

---

## Notas adicionales

- Puedes importar el proyecto backend en Eclipse como un proyecto Maven.
- El backend incluye Swagger para probar los endpoints REST (`https://localhost:8443/swagger-ui.html`).
- Certificados SSL de desarrollo incluidos en `UmazoneServer/src/main/resources/`.
- Para desarrollo local, puedes modificar las URLs de API en los archivos de entorno Angular si es necesario.

---
##Demo
https://youtu.be/gUH37zofeGw

## Keywords

e-commerce, catalog, products, Spring Boot, Angular, REST API, frontend, backend, shopping, cart, users, software, web application

## Contacto

Para dudas o sugerencias, abre un issue en el repositorio.
# UmazoneWebTFG
# TFGUmazoneWebProject
