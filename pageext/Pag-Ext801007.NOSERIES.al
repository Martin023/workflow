pageextension 50107 NOSERIES extends "Purchases & Payables Setup"
{
    layout
    {
        
     addbefore("Posted Invoice Nos.")
        
        {
        
            field(RFQ; Rec.RFQ)
            {
                ApplicationArea = All;
                
               
                Editable = true;
                
  
            }
               
              
      }
    }
 }
