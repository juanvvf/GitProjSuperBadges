public with sharing class atualizaStageStatusOpportunityHundler {
  // This should be used in conjunction with the ApexTriggerComprehensive.trigger template
  // The origin of this pattern is http://www.embracingthecloud.com/2010/07/08/ASimpleTriggerTemplateForSalesforce.aspx
  private List<Opportunity>  listaOpportunity;
  

  public atualizaStageStatusOpportunityHundler(List<Opportunity> opportunityListaParam ){
      this.listaOpportunity =  opportunityListaParam;
    
      updateStageStatus();
  }

  public void updateStageStatus(){
    for(Opportunity opp : this.listaOpportunity){
      if(opp.StageName == 'Closed Lost'){
         opp.OrderNumber__c = '700';
      }else if(opp.StageName == 'Closed Won'){
        opp.OrderNumber__c = '250';
      }
    }
  }



 
}