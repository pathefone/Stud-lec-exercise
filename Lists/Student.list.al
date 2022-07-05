page 50102 "Student List"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = Student;
    CardPageId = 50101;
    Caption = 'Student List';

    layout
    {
        area(Content)
        {
            repeater(Group)
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
                field("Date of Birth";Rec."Date of Birth")
                {
                    ApplicationArea = All;
                }
                field("Admission Year";Rec."Admission Year")
                {
                    ApplicationArea = All;
                }
            }
        }
    }


    actions
    {
        area(Processing)
        {
            action("Student Lectures")
            {
                ApplicationArea = All;
                RunObject = page "StudentLectures";
                RunPageLink = "Student No." = field("No.");
                

            }
        }
    }

    trigger OnInit()
    var
        AdditionalFunc: Codeunit AdditionalFunc;  
    begin
            AdditionalFunc.InsertLecture('LEC01', 'Biology', 5);
            AdditionalFunc.InsertLecture('LEC02', 'Physics', 4);
            AdditionalFunc.InsertLecture('LEC03', 'Computer Science', 10);
            AdditionalFunc.InsertLecture('LEC04', 'Astrophysics', 8);
    end;
}