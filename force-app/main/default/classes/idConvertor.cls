public with sharing class idConvertor {
    public String inputId{get;set;}
    public String outputId{get;set;}
 
    public PageReference convert(){
        outputId = convertId(inputId);
        return null;
    }
 
    String convertId(String inputId){
        string suffix = '';
        integer flags;
        try{
            for (integer i = 0; i < 3; i++) {
                flags = 0;
                for (integer j = 0; j < 5; j++) {
                    string c = inputId.substring(i * 5 + j,i * 5 + j + 1);
                    if (c.toUpperCase().equals(c) && c >= 'A' && c <= 'Z') {
                        flags = flags + (1 << j);
                    }
                }
                if (flags <= 25) {
                    suffix += 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'.substring(flags,flags+1);
                }else{
                    suffix += '012345'.substring(flags - 26, flags-25);
                }
            }
        }
        catch(Exception exc){
            ApexPages.addmessage(new ApexPages.message(ApexPages.severity.ERROR,'Please enter Valid 15 digit Id'));
        }
        String outputId = inputId+suffix;
        return outputId;
    }
}