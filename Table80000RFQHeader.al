// Welcome to your new AL extension.
// Remember that object names and IDs should be unique across all extensions.
// AL snippets start with t*, like tpageext - give them a try and happy coding!


table 50100 RFQ
{
    Caption = 'Request for quotation';
    DataPerCompany = true;

    fields
    {
        field(1; "RFQ NO"; Code[50])
        {
            
            Description = 'RFQ NO from  no series';
            
            
            trigger OnValidate()
            begin
                if "RFQ NO" <> xRec."RFQ NO" then begin
                    PurchasesPayablesSetup.Get();
                    NoSeriesMgt.TestManual(PurchasesPayablesSetup."RFQ");
                    "RFQ NO" := '';
                end;
            end;
            
        }
        field(2; "Get Requisition Lines"; Text[30])
        {
            Description = 'Retreive from the purchase requisition';
            
        }
        field(3; "RFQ DATE"; Date)
        {
            Description = 'Request for  quote date';
        }
        
            field(4;"RFQ STATUS";text[40])
        {

        }
        
        field(8; STATUS;Enum "approval enum")
        {
            Description = 'Status';
           
            Editable=false;
        }
        field(7;"No.Series";Code[20])
        {
            Description='No Series';
        }
    }
    keys
    {
        key(PrimaryKey;"RFQ NO" )
        {
            Clustered = TRUE;
        }
    }
  //cont of no series  
trigger OnInsert()
    var
    begin
     if "RFQ NO" = '' then begin
            NoSeriesMgt.InitSeries(GetNoSeriesCode, xRec."No.Series", 0D, "RFQ NO", "No.Series");
        end;

    end;


var
        NoSeriesMgt: Codeunit NoSeriesManagement;
        PurchasesPayablesSetup: Record "Purchases & Payables Setup";
        procedure GetNoSeriesRelCode(NoSeriesCode: Code[20]): Code[10]
    var
       
        NoSrsRel: Record "No. Series Relationship";
    begin
        exit(GetNoSeriesRelCode(NoSeriesCode));


    end;

    local procedure GetNoSeriesCode(): Code[10]
    var
        NoSeriesCode: Code[20];
    begin
        PurchasesPayablesSetup.Get();
        PurchasesPayablesSetup.TestField(RFQ);
        exit(PurchasesPayablesSetup.RFQ);

    end;

        //End of no  series

    
}