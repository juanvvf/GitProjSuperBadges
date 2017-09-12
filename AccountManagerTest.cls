@isTest
private class AccountManagerTest {
	
	
		// 
		 @isTest static void testGetAccountById() {
        Id recordId = createTestRecord();
        // Set up a test request
        RestRequest request = new RestRequest();
        request.requestUri =
            'https://na50.salesforce.com/services/apexrest/Accounts/'+ recordId+'/contacts';
        request.httpMethod = 'GET';
        RestContext.request = request;
        Account thisAccount = AccountManager.getAccount();
        System.assert(thisAccount != null);
        System.assertEquals('Accenture3', thisAccount.Name);
    }



     static Id createTestRecord() {
        // Create test record
        Account accountTest = new Account(
            Name='Accenture3',
            Phone='98238900');
        insert accountTest;
        return accountTest.Id;
    }     
 
	}