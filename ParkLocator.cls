public with sharing class ParkLocator {

	public static String[] country(String country)  {
		
		ParkService.ParksImplPort soap = new ParkService.ParksImplPort();
		
		return soap.byCountry(country);		
	}

}