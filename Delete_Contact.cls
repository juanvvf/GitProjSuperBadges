public with sharing class Delete_Contact {
	public Delete_Contact() {
		
		try {
    
    Contact[] deleta_contato = [Select ID from Contact where LastName = 'Smith'];
		delete deleta_contato;
		
} catch (DmlException e) {
    System.debug('A DML exception has occurred: ' +
                e.getMessage());
}
		}
}