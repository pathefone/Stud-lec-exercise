table 50103 StudentLecture
{
    DataClassification = ToBeClassified;
    Caption = 'Student Lecture';
    
    fields
    {
        field(1; "ID"; Integer)
        {
            DataClassification = CustomerContent;
            AutoIncrement = true;
        }
        field(2;"Student No."; Code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = Student;
            
        }
        field(3; "Lecture Code"; Code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = Lecture;
        }
    }
    
    keys
    {
        key(PK; "ID")
        {
            Clustered = true;
        }
    }
    
    var
        myInt: Integer;
    
    trigger OnInsert()
    begin
        
    end;
    
    
}