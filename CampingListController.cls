public with sharing class CampingListController  {
	
	@AuraEnabled
	public static List<Camping_Item__c>  getItems() {

		try{

			String[] fieldsToCheck = new String[] {
				'Id', 'Name', 'Quantity__c', 'Price__c', 'Packed__c'    

			};

			Map<String,Schema.SObjectField> fieldDescribeTokens = 
			Schema.SObjectType.Expense__c.fields.getMap();

			for(String field : fieldsToCheck) {
				if( ! fieldDescribeTokens.get(field).getDescribe().isAccessible()) {
					throw new System.NoAccessException();
					return null;
				}
			}

			return [SELECT Id, Name, Quantity__c, Price__c, Packed__c FROM Camping_Item__c];


			}catch(Exception e){
				System.debug(e.getMessage());
			}

			return [SELECT Id, Name, Quantity__c, Price__c, Packed__c FROM Camping_Item__c];

		}

		@AuraEnabled
	public static  List<Camping_Item__c> saveItem(Camping_Item__c item) {  //terminar esse metodo

		upsert item;
		return [SELECT Id, Name, Quantity__c, Price__c, Packed__c FROM Camping_Item__c];
		
	}

}



