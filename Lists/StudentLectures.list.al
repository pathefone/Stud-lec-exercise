page 50104 StudentLectures
{
    PageType = List;
    UsageCategory = None;
    SourceTable = StudentLecture;
    Caption = 'Student Lectures';

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field("Student No.";Rec."Student No.")
                {
                    ApplicationArea = All;
                    Enabled = false;
                }
                field("Code"; Rec."Lecture Code")
                {
                    ApplicationArea = All;
                    TableRelation = Lecture;

                }


            }
        }
        area(Factboxes)
        {

        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;

                trigger OnAction();
                begin

                end;
            }
        }
    }


}