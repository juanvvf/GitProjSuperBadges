public with sharing class AccountHandler {
	

		

	public static Account insertNewAccount(String acctName) {
		

		try{
				Account acct2 = new Account(Name=acctName);
				insert acct2;
				return acct2;

		}catch (DmlException e) {
    System.debug('A DML exception has occurred: ' +
                e.getMessage());
    return null;
}
		
		


	}
}