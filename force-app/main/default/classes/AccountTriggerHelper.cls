public with sharing class AccountTriggerHelper {
    public static void updateBillingCountry(List<Account> data){
        Map<String,ISO_Countries__c> mapCodes=ISO_Countries__c.getAll();
        system.debug(mapCodes);
       // Map<String,String> counMap=new Map<String,String>([select Name,NameSpace1_Test__ISO_Code__c from NameSpace1_Test__ISO_Countries__c]);
        for(Account acc:data){
             if(mapCodes.get(acc.BillingCountry)!=null)
             {
                 System.debug(acc.BillingCountry+'<--'+mapCodes.get(acc.BillingCountry).ISO_Code__c);
                 acc.BillingCountry=mapCodes.get(acc.BillingCountry).ISO_Code__c;
                 
             }
        }
    }
}