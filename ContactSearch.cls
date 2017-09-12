public with sharing class ContactSearch {


	public static List<Contact> searchForContacts(String lastName, String mailingPostalCode) {

			

		try{
			List<Contact> contacts = new List<Contact>(); 	
			String lastName2 = lastName;
			String mailingPostalCode2 = mailingPostalCode;

			contacts = [SELECT Name, Id FROM Contact WHERE LastName = :lastName2 AND MailingPostalCode = :mailingPostalCode2];

			return contacts;

		}catch (DmlException e) {
		 	System.debug('ocorreu um erro na captura de informações ' +
	        e.getMessage());
			return null;
		}
	
	}
}