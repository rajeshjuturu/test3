/*
Create an APEX trigger on Account that will standardise country names as per the table below 
(e.g. UK should be replaced with United Kingdom). This should happen every time an account is 
inserted or updated. Any countries not listed in the table should be left unchanged. Only the billing
 country needs to be standardised.

 Create unit tests for the trigger.

Informal Name or Abbreviation	Standard Country Name
UK	                            United Kingdom
Great Britain	                United Kingdom
England	                        United Kingdom
US	                            United States
USA	                            United States
U.S.A.	                        United States
Russia	                        Russian Federation

*/
trigger Trigger1 on Account (before insert,
                            before update,
                            before delete,
                            after insert,
                            after update,
                            after delete,
                            after undelete) {
   // if(Trigger.isBefore && Trigger.isInsert) 
   // {
        AccountTriggerHelper.updateBillingCountry(Trigger.new);
   /* }else if(Trigger.isBefore && Trigger.isUpdate)
    {
        AccountTriggerHelper.updateBillingCountry(Trigger.new);
    }*/
}