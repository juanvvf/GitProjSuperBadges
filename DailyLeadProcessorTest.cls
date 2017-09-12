@isTest
private class DailyLeadProcessorTest
{
	@isTest
	static void itShould()
	{
		// Given
		List<Lead> leadsAdd = new List<Lead>();
		for( Integer i = 0; i < 200; i++ ) {
			Lead lead = new Lead();
			lead.LastName = 'Lead ' + i;
			lead.Company = 'Accenture';
			leadsAdd.add(lead);
		}
		insert leadsAdd;

		Test.startTest();
		System.schedule('DailyLeadProcessorTest', '0 0 * * * ?', new DailyLeadProcessor());
		Test.stopTest();

		leadsAdd = [Select Id from Lead where LeadSource='Dreamforce'];
		System.assertEquals(200, leadsAdd.size());
		
	}
}