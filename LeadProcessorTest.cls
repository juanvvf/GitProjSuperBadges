@isTest
private class LeadProcessorTest {
	
	@isTest 
	static void setup() {

		List<Lead> listLeads = new List<Lead>();

		for(Integer i = 0; i<200; i++){

			listLeads.add(new Lead( lastname = 'lastName '+i, company  = 'company '+i )); 
			System.debug(i);
		}
		insert listLeads;	
	

	 
        Test.startTest();
        LeadProcessor lp = new LeadProcessor();
        Id batchId = Database.executeBatch(lp,200);
        Test.stopTest();
        System.assertEquals(200, listLeads.size());
	
	
	}
}