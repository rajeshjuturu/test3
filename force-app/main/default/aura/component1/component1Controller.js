/*
({
    validateDate : function(component,Event,helper)
    {
        var today=new Date();
        var day=today.getDay();
        var month=today.getMonth();
        var year=today.getFullYear();
        if(day<10)
        {
            day='0'+day;
        }
        if(month<10)
        {
            month='0'+month;
        }
        var todaysFormatedDate=year+'-'+month+'-'+day;
        if(component.get("v.testDate")!='' && component.get("v.testDate")<todaysFormatedDate){
            component.set("v.dateValidationError",true);
        }else{
            component.set("v.dataValidationError",false);
        }
    },
    submit: function(component,event,helper)
    {
        var res=component.get("v.dataValidationError");
        if(res!=true)
        {
            alert('Date entered is valid');
        }
    }
})
*/

({
    dateUpdate : function(component, event, helper) {
        var today = new Date();        
        var dd = today.getDate();
        var mm = today.getMonth() + 1; //January is 0!
        var yyyy = today.getFullYear();
        // if date is less then 10, then append 0 before date   
        if(dd < 10){
            dd = '0' + dd;
        } 
        // if month is less then 10, then append 0 before date    
        if(mm < 10){
            mm = '0' + mm;
        }
        
        var todayFormattedDate = yyyy+'-'+mm+'-'+dd;
        if(component.get("v.testDate") != '' && component.get("v.testDate") < todayFormattedDate){
            component.set("v.dateValidationError" , true);
        }else{
            component.set("v.dateValidationError" , false);
        }
    },
    
    submit : function(component,event,helper){
        // get the 'dateValidationError' attribute value
        var isDateError = component.get("v.dateValidationError");
        
        if(isDateError != true){
            alert('Entered Date is valid...');
        }
    }
})