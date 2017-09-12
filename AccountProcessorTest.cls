@isTest
private class AccountProcessorTest {
	
	@isTest static void test_method_one() {
		// Implement test code
		List<Account> contaAdd = new List<Account>();
		for(Integer i = 0 ; i< 10; i++){
			Account conta = new Account();
			conta.Name = 'conta Teste  0'+i;
			contaAdd.add(conta);
		}
		insert contaAdd;

		List<Contact> contatos_Add = new List<Contact>();
		List<Id> accountsId = new List<Id>();
		for(Account conta : contaAdd){
			accountsId.add(conta.Id);
			for(Integer i = 0; i<5; i++){
				Contact contato = new Contact();
				contato.FirstName = 'Nome '+i;
				contato.LastName = 'SobreName '+i;
				contato.AccountId = conta.Id;
				contatos_Add.add(contato);

			}
		}
		insert contatos_Add;

		Test.startTest();
	    AccountProcessor.countContacts(accountsId);
		Test.stopTest();

		contaAdd = [Select Id , (select Id from Contacts) from Account];
		System.assertEquals(10,contaAdd.size());
		System.assertEquals(5,contaAdd.get(0).Contacts.size());
	}
	
	
	
}