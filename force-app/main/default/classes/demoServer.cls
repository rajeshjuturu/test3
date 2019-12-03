public with sharing class demoServer {
    @AuraEnabled
    public static Account[] getRecordData(){
        return [select id,Name,Phone from Account limit 10];
    }
}