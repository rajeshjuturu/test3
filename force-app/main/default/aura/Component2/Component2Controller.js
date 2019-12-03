({
    getAccountRecords : function(component, event, helper) {
        var comRecord=component.get("c.getRecordData");
        comRecord.setCallback(this,function(response){
            var Status=response.getState();
            if(Status==='SUCCESS')
            {
                component.set("v.accList",response.getReturnValue());
            }
        })
        $A.enqueueAction(comRecord);
    }

})