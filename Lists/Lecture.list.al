page 50103 LectureList
{
    PageType = List;
    UsageCategory = None;
    SourceTable = Lecture;
    Caption = 'Lecture List';

    layout
    {
        area(Content)
        {
            repeater(Lectures)
            {
                field("Code"; Rec."Code")
                {
                    ApplicationArea = All;
                }
                field(Description; Rec.Description)
                {
                    ApplicationArea = All;
                }
                field(Credits; Rec.Credits)
                {
                    ApplicationArea = All;
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