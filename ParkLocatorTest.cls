@isTest
private class ParkLocatorTest {
	
	@isTest static void testCountry() {
		
		Test.setMock(WebServiceMock.class, new ParkServiceMock());

		//Test.startTest();
		String pais = 'Germany';
		  String[] resultIntegration = ParkLocator.country(pais);

        List<String> expectedList = new List<String> {
          'Hamburg Wadden Sea National Park', 
          'Hainich National Park', 
          'Bavarian Forest National Park'
        };

        System.assertEquals( expectedList, resultIntegration );
		//Test.stopTest();
	}
	
	
}