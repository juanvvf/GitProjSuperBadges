@isTest
public class AnimalLocatorMock implements HttpCalloutMock{
	
	public AnimalLocatorMock() {
		
	}

	public HttpResponse respond(HttpRequest request){

		HttpResponse res = new HttpResponse();
		res.setStatusCode(200);
		res.setBody('{"animal":{"id":1,"name":"chicken","eats":"chicken food","says":"cluck cluck"}}');
		return res;
	}
	
	
}