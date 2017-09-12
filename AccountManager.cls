@RestResource(urlMapping='/Account/*')
global with sharing class AccountManager {
    @HttpGet
    global static Account getAccount() {
        RestRequest request = RestContext.request;

        // grab the accountId from the end of the URL
        String uri = request.requestURI;
         String accountId = uri.substringBetween('Accounts/','/contacts');

        Account result =  [SELECT Id, Name, (Select Id, Name from Contacts) FROM Account WHERE Id = :accountId];

        return result;

    }
     
}