public with sharing class Excluir_Reg_Realacionado {
	public Excluir_Reg_Realacionado() {

		Account[] queriedAccounts = [SELECT ID FROM Account where Name = 'SFDS Account'];
		delete queriedAccounts;
		
	}
}