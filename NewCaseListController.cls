public class NewCaseListController {
 public String byNew = 'New';

public List<Case> getNewCases() {
      
    List<Case> results = new List<Case>();
    results = [SELECT Id, CaseNumber FROM Case WHERE Status = 'New'];

    return results;
 }
     
}