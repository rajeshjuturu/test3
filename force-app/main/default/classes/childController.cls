public class childController
{
	@auraEnabled
	public static List<contact> getContacts()
	{
		List<Contact> totalList = new List<Contact>();
		for(Contact con: [select id,name,email from Contact]){
		totalList.add(con);
		}
		return totalList;
	}
	
	@auraEnabled
	public static void addParentAccount(String parentId, List<String> lstOfContactId)
	{
		List<contact> lstContacts=new List<contact>();
		for(String contactId: lstOfContactId){
			contact obj=new contact();
			obj.id=contactId;
			obj.AccountId=parentId;
			lstContacts.add(obj);
		}
		update lstContacts;
	}
}