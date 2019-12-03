@RestResource(urlMapping='/getAccountOnExternalIdtofetchsinglerecord/*')
   global with sharing class getAccounttoSingleRecord {
  
        @Httpget
      global static Account fetchAccount(){
        Account obj=new Account();
        RestRequest req = RestContext.request;

        RestResponse res = Restcontext.response;

        string accId = req.requestURI.substring(req.requestURI.lastIndexOf('/')+1);

      obj=[Select id , name from Account where id=:accId];

    

        return obj;

      }

   }