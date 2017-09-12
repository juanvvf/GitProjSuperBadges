@isTest
private class AddPrimaryContactTest {
	
	@isTest static void test_method_one() {
		
		List<Account> contasLista = new List<Account>();
		
			
			for(Integer e=0; e<50; e++){
				
				Account contaNY = new Account();
				contaNY.Name = 'conta_ny '+e;
				contaNY.BillingState = 'NY' ;
				contasLista.add( contaNY );
			}

			for(Integer i=0; i<50; i++){
				
				Account contaCA = new Account();
				contaCA.Name = 'conta_ca '+ i;
				contaCA.BillingState = 'CA' ;
				contasLista.add( contaCA );
			}
			insert contasLista;

		

		Contact contato = new Contact();
		contato.LastName = 'seu sobrenome';
		insert contato;		

		Test.startTest(); 
		String stateAbv = 'CA';
		AddPrimaryContact updater = new AddPrimaryContact(contato, stateAbv);	

		System.enqueueJob(updater);
	    Test.stopTest();


		List<Contact> contatos = [Select Id from Contact where Account.BillingState = 'CA'];
		System.assertEquals(50,contatos.size());
	}


}