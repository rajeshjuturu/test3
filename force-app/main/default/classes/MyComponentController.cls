public class MyComponentController
{
public List<contact> idList{get;set;}
public List<String> nameList{get;set;}

public ApexPages.StandardSetController setRecords{
	get{
        if(setRecords==null)
        {
            System.debug('MyComponentController.setRecords-->'+idList);
            System.debug('MyComponentController.setRecords-->'+nameList);
            setRecords=new ApexPages.StandardSetController(getIdListRecrds());
            setRecords.setPageSize(4);
        }
        return setRecords;
	}
    set;
}
public List<contact> getMyobjects()
{
	List<contact> sobtList=new List<contact>();
	sobtList=setRecords.getRecords();
	return sobtList;
}
    public List<contact> getIdListRecrds() {
       List<contact> IdListRecrds =idList;
       return IdListRecrds;
    }

	
}