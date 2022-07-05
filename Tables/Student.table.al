table 50101 Student
{
    Caption = 'Student';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "No."; Code[20])
        {
            DataClassification = CustomerContent;
        }
        field(2; "First Name"; Text[20])
        {
            DataClassification = CustomerContent;
            //Caption
        }
        field(3; "Last Name"; Text[20])
        {
            DataClassification = CustomerContent;
        }
        field(4; "Date of Birth"; Date)
        {
            DataClassification = CustomerContent;
        }
        field(5; "Admission Year"; Date)
        {
            DataClassification = CustomerContent;
        }
        
    }
    keys
    {
        key(PrimaryKey; "No.")
        {
            Clustered = true; //?
        }
    }
}