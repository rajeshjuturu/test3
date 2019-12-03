public class componentController
{
	public String ReceivedString{set;get;}
	public List<String> ReceivedListString{set;get;}
	public List<sObject> ReceivedObjectList{set;get;}
	public List<sObject> displaysobjectList{get;set;}
	public List<String> fieldList{set;get;}
	
	public componentController()
	{
		fieldList=new List<String>();
		fieldList.add('name');
		fieldList.add('Id');
	}
	
	public List<Account> getAccList(){
		displaysobjectList=[select id,name,description from Account where id IN: ReceivedObjectList];
		return displaysobjectList;
	}
}