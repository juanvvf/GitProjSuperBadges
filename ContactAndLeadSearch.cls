public with sharing class ContactAndLeadSearch {
	
	public static List<List< SObject>> searchContactsAndLeads(String word) {
		
		try{

			List<List<sObject>> listSeach = new List<List<sObject>>();
			
				Contact con = new Contact(
				FirstName='Angelca Passos', 
				LastName = 'Smith',
				Phone = '98898898',
				Department = 'Wingo');

			    insert con;

			    ID conID = con.ID;

				Lead ldr = new Lead(
				LastName='Smith', 
				Company='SFDC COMPUTING');

			    insert ldr;

				listSeach = [FIND :word IN ALL FIELDS RETURNING Lead(LastName), Contact(FirstName,LastName)];
		
		        return listSeach;

		}catch (DmlException e) {
		 			System.debug('ocorreu um erro na captura de informações ' +
	        		e.getMessage());
					return null;
		}
		//Account[] searchAccounts = (Account[])searchList[0];

	}
}