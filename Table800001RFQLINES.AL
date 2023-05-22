Table 50101 "RFQ Lines"
{

    fields
    {
        field(1; "Line  No"; Integer)
        {

            AutoIncrement=true;
            Caption = 'LINE NO.';
        }
        field(2; "RFQ Line No."; Integer)
        {
            Caption = 'RFQ Line No.';
            Editable = false;
            TableRelation = Item;
        }
        field(3; "Item."; Code[20])
        {
            Caption = 'Item No';
            TableRelation = item."No.";
            trigger OnValidate()
            var
                Cont: Record Contact;
            begin


                GV.Get("Item.");




                Description := GV.Description;
                "Expected Cost" := GV."Unit Cost";
                "Budgeted Amount" := GV."Budgeted Amount";



            end;


            
        }
        
        field(4; Description; Text[100])
        {
            Caption = 'Description';
        }
        field(5; "QTY Requested"; Integer)
        {
            Caption = 'QTY Requested';
        }
        field(6; "Expected Cost"; Integer)
        {
            Caption = 'Expected Cost';
        }
        
        field(7; "QTY On Hand"; Integer)
        {
            Caption = 'Quantity on Hand';
            Editable=false;
            TableRelation=Item;
        }
        field(8; "Budgeted Amount"; Integer)
        {
            
            
        }
        field(9; "Remaining Amount"; Integer)
        {
            Caption = 'Remaining Amount';
            Editable=false;
        }
        field(10; "RFQ Done"; Integer)
        {
            Caption = 'RFQ Done';
        }
        field(11; "Department"; Option)
        {
            Caption = 'Department';
            OptionCaption='BSS,RENT,TEST,TRAIN,ADMIN,INF';
            OptionMembers="BSS","RENT","TEST","TRAIN","ADMIN","INF";
        }
        field(12; "Consolidated RFQ No";Integer)
        {
        Caption='Consolidated RFQ No';
        Editable=false;
          
        }
        
        field(13; "Consolidated RFQ Line";Integer)
        {
        Caption='Consolidated RFQ Line';
        Editable=false;
          
        }
        
        field(14; "RFQ NO";Code[50])
        {
        Description = 'RFQ NO from  no series';
            //TableRelation="No. Series".Code;
          
        }
   
            
    }
    
    keys
    {
        key(PrimaryKey;"Line  No" )
        {
            Clustered = TRUE;
        }
    }
    var
    GV:Record Item;

        
}