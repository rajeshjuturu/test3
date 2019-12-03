Public with sharing class relatedListoverideController {
Public List<Account> conSelectedList{get;set;}
List<Account> conList = New List<Account>();
    public relatedListoverideController(ApexPages.StandardSetController controller) {
    conSelectedList = New List<Account>();
    this.conList = controller.getSelected();
    conSelectedList = [select name,id from Account where id IN:conList];
    }
}