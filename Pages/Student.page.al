page 50101 "Student Card"
{
    Caption = 'Student Card';
    PageType = Card;
    UsageCategory = None;
    SourceTable = Student;

    layout
    {
        area(Content)
        {
            group("General Information")
            {
                field("No."; Rec."No.")
                {
                    ApplicationArea = All;
                }
                field("First Name"; Rec."First Name")
                {
                    ApplicationArea = All;
                }
                field("Last Name"; Rec."Last Name")
                {
                    ApplicationArea = All;
                }
                field("Date of Birth"; Rec."Date of Birth")
                {
                    ApplicationArea = All;

                    trigger OnValidate()
                    var
                        yearOfBirth: Integer;
                    begin
                        yearOfBirth := Date2DMY(Rec."Date of Birth", 3);
                        age := thisYear - yearOfBirth;
                    end;
                }
                field("Admission Year"; Rec."Admission Year")
                {
                    ApplicationArea = All;
                }
                field(Age; age)
                {
                    Caption = 'Age';
                    Enabled = false;
                }



            }
        }
    }


    trigger OnOpenPage()
    begin
        thisYear := Date2DMY(Today, 3);
    end;



    var
        age: Integer;
        thisYear: Integer;
}