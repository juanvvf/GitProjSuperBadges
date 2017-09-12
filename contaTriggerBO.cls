public with sharing class contaTriggerBO {
	
	private List<Account> listaDeContas;
	private Map<Id, Account> oldAccountsMap;

		
     public contaTriggerBO(List<Account> accountListaParam) {
     	this.listaDeContas = accountListaParam;
     	checkNumeroTelefone();
     	atualizaPhonesNull();
     	//atualizarAnnualRevenue();

	}

	public contaTriggerBO(Map<Id, account> oldAccountsMap ,List<Account> accountListaParam){
		this.oldAccountsMap = oldAccountsMap;
		this.listaDeContas = accountListaParam;
		checaUpd_annualRevenue();


	}


		private void checkNumeroTelefone(){
			System.debug('entrou no metodo');
			for(Account conta : this.listaDeContas){
				if(conta.Phone  == null && conta.Name.equals('teste 1')) {
					conta.Phone = '123-456';
					System.debug('telefone adicionado');

				}
			}
		}

		private void atualizaPhonesNull(){
			System.debug('atualizar todos que tem algo em comum');
			for(account upd_Phones : this.listaDeContas){
				if(upd_Phones.Phone == null ){
					upd_Phones.Phone = '99999999';
					System.debug('telefones preenchidos');	
				}
			}
		}

		private void atualizarAnnualRevenue(){
			System.debug('entrou no AnnualRevenue');
			for(Account upd_AnnualRevenue : this.listaDeContas){
				if(upd_AnnualRevenue.NumberOfEmployees  == 5){
					upd_AnnualRevenue.AnnualRevenue = 140.000;
					System.debug('valores atualizados do AnnualRevenue');
				}
			}
		}

		private void checaUpd_annualRevenue(){
			System.debug('apenas entrou no checaUpd_annualRevenue');
			for(account chkUPD : listaDeContas){
				if(this.oldAccountsMap.get(chkUPD.Id).AnnualRevenue != chkUPD.AnnualRevenue){
					System.debug('OldMap indica valores atualizados do AnnualRevenue');
				}
			}
		}

}