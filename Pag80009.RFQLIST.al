page 50109 "RFQ LIST"
{
    ApplicationArea = Basic, Suite;
    Caption = 'RFQ LIST';
    PageType = List;
    SourceTable = RFQ;
    UsageCategory = Lists;
    CardPageId = RFQ;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("RFQ NO"; Rec."RFQ NO")
                {
                    ApplicationArea = Basic;
                    ToolTip = 'Specifies the value of the RFQ NO field.';
                }
                field("RFQ DATE"; Rec."RFQ DATE")
                {
                    ApplicationArea = Basic;
                    ToolTip = 'Specifies the value of the RFQ DATE field.';
                }

                field("RFQ STATUS"; Rec."RFQ STATUS")
                {
                    ApplicationArea = Basic;
                    ToolTip = 'Specifies the value of the RFQ STATUS field.';
                }
            }
        }
    }
}
