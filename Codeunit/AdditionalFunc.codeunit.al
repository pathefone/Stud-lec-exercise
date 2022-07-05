codeunit 50101 AdditionalFunc
{
    procedure InsertLecture("Code": Code[20]; Description: Text[50]; Credits: Integer)
    begin
        LectureRecord.Init();
        LectureRecord."Code" := "Code";
        LectureRecord.Description := Description;
        LectureRecord.Credits := Credits;
        if LectureRecord.Insert() <> true then
            exit;
            

    end;

    procedure IsLectureCodeValid("Lecture Code": Code[20]) IsValid: Boolean
    begin
        if "Lecture Code" <> '' then 
            IsValid := true
    end;

    procedure GetDescription("Lecture Code": Code[20]) Description: Text[50]
    begin
        if IsLectureCodeValid("Lecture Code") then begin
        LectureRecord.Get("Lecture Code");
        Description := LectureRecord.Description;
        end

        
    end;

    procedure GetCredit("Lecture Code": Code[20]) Credit: Integer
    begin
        if IsLectureCodeValid("Lecture Code") then begin
        LectureRecord.Get("Lecture Code");
        Credit := LectureRecord.Credits;
        end

    end;



    var 
        LectureRecord: Record Lecture;
}