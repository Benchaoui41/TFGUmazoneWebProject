import { TestBed } from '@angular/core/testing';

import { UmazoneFormService } from './umazone-form.service';

describe('UmazoneFormService', () => {
  let service: UmazoneFormService;

  beforeEach(() => {
    TestBed.configureTestingModule({});
    service = TestBed.inject(UmazoneFormService);
  });

  it('should be created', () => {
    expect(service).toBeTruthy();
  });
});
