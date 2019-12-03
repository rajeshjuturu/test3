@isTest
public with sharing class AccountTest {
   @isTest
   public static void TestCountryISOCode()
   {
       Account acc=new Account(name='account10',BillingCountry='USA');
       Account acc1=new Account(name='account11',BillingCountry='India');
       //Account[] accArray=new Account[]{acc,acc1};
       Test.startTest();
       Insert acc;
       Insert acc1;
       Test.stopTest();
       Account acct=[select id,name,billingcountry from account where name='account10'];
       System.assertEquals('United States', acct.BillingCountry);
       //system.assertEquals('India', acc1.BillingCountry);
       
       
       

   }
}