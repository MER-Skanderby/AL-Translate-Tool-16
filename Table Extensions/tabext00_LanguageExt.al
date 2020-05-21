tableextension 70312100 "BAC Language Ext" extends Language
{
    DrillDownPageId = "BAC Languages";
    LookupPageId = "BAC Languages";

    fields
    {
        field(70312100; "BAC ISO code"; Text[10])
        {
            Caption = 'ISO code';
            DataClassification = SystemMetadata;
            trigger OnValidate()
            var
                ErrorTxt: Label 'ISO code must consist of either a two letter code like ''bg'' for Bulgarian or a five letter code ''en-US'' for English in USA';
            begin
                if strlen("BAC ISO code") <> 2 then
                    if (strlen("BAC ISO code") <> 5) or (StrPos("BAC ISO code", '-') = 0) then
                        Error(ErrorTxt);
            end;
        }
    }
}