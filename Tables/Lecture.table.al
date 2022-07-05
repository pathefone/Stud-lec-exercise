table 50102 Lecture
{
    Caption = 'Lecture';
    DataClassification = ToBeClassified;
    
    fields
    {
        field(1;"Code"; Code[20])
        {
            DataClassification = ToBeClassified;
            
        }
        field(2; Description; Text[50])
        {
            DataClassification = ToBeClassified;
        }
        field(3; Credits; Integer)
        {
            DataClassification = ToBeClassified;
        }
    }
    
    keys
    {
        key(PK; "Code")
        {
            Clustered = true;
        }
    }
    
    var
        myInt: Integer;
    
    trigger OnInsert()
    begin
        
    end;
    
    trigger OnModify()
    begin
        
    end;
    
    trigger OnDelete()
    begin
        
    end;
    
    trigger OnRename()
    begin
        
    end;
    
}