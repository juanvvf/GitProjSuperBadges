global class DailyLeadProcessor implements Schedulable{
	
	global void execute(SchedulableContext ctx) {


		List<Lead> listaLeadAdd = [ SELECT Id, LeadSource from Lead where (LeadSource = NULL or LeadSource = '') LIMIT 200];
	
		for(Lead leadLoop : listaLeadAdd )	{

			leadLoop.LeadSource = 'Dreamforce';	
      	}
      	update listaLeadAdd;

  }
}