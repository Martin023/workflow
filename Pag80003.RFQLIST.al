page 50103 RFQLIST
{
    ApplicationArea = All;
    Caption = 'RFQLIST';
    PageType = ListPart;
    SourceTable = "RFQ Lines";
    UsageCategory = Administration;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("Line  No"; Rec."Line  No")
                {
                    ApplicationArea = Basic;
                    ToolTip = 'Specifies the value of the LINE NO. field.';
                }


                field("RFQ NO"; Rec."RFQ NO")
                {
                    ApplicationArea = Basic;
                    ToolTip = 'Specifies the value of the Budgeted Amount field.';

                }
                field("RFQ Line No."; Rec."RFQ Line No.")
                {
                    ApplicationArea = Basic;
                    ToolTip = 'Specifies the value of the RFQ Line No. field.';
                }
                field("Item."; Rec."Item.")
                {
                    ApplicationArea = Basic;
                    ToolTip = 'Specifies the value of the Item. field.';
                }
                field(Description; Rec.Description)
                {
                    ApplicationArea = Basic;
                    ToolTip = 'Specifies the value of the Description field.';
                }
                field("QTY Requested"; Rec."QTY Requested")
                {
                    ApplicationArea = Basic;
                    ToolTip = 'Specifies the value of the QTY Requested field.';
                }
                field("Expected Cost"; Rec."Expected Cost")
                {
                    ApplicationArea = Basic;
                    ToolTip = 'Specifies the value of the Expected Cost field.';
                }
                field("QTY On Hand"; Rec."QTY On Hand")
                {
                    ApplicationArea = Basic;
                    ToolTip = 'Specifies the value of the Quantity on Hand field.';
                }

                field("Budgeted Amount"; Rec."Budgeted Amount")
                {
                    ApplicationArea = Basic;
                    ToolTip = 'Specifies the value of the Budgeted Amount field.';
                }
                field("Remaining Amount"; Rec."Remaining Amount")
                {
                    ApplicationArea = Basic;
                    ToolTip = 'Specifies the value of the Remaining Amount field.';
                }
                field("RFQ Done"; Rec."RFQ Done")
                {
                    ApplicationArea = Basic;
                    ToolTip = 'Specifies the value of the RFQ Done field.';
                }
                field(Department; Rec.Department)
                {
                    ApplicationArea = Basic;
                    ToolTip = 'Specifies the value of the Department field.';
                }

                field("Consolidated RFQ No"; Rec."Consolidated RFQ No")
                {
                    ApplicationArea = Basic;
                    ToolTip = 'Specifies the value of the Consolidated RFQ No field.';
                }
                field("Consolidated RFQ Line"; Rec."Consolidated RFQ Line")
                {
                    ApplicationArea = Basic;
                    ToolTip = 'Specifies the value of the Consolidated RFQ Line field.';
                }










            }
        }
    }
}
