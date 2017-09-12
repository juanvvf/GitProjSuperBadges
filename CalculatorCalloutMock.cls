@isTest
global class CalculatorCalloutMock implements WebServiceMock {
   global void doInvoke(
           Object stub,
           Object request,
           Map<String, Object> response,
           String endpoint,
           String soapAction,
           String requestName,
           String responseNS,
           String responseName,
           String responseType) {
        // start - specify the response you want to send
          parkService.byCountry request_x = new parkService.byCountry();
            new calculatorServices.doAddResponse();
         request_x.arg0 = 'Japan';
        // end
        response.put('request_x', request_x); 
   }
}