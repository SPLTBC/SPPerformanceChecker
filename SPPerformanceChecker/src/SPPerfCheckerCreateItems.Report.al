report 56010 "SP Perf. Checker Create Items"
{
    Caption = 'SP Perf. Checker Create Items';
    UsageCategory = Tasks;
    ApplicationArea = All;
    ProcessingOnly = true;

    requestpage
    {
        layout
        {
            area(content)
            {
                group(Options)
                {
                    field("No. of Records"; NoOfRecords)
                    {
                        Caption = 'No. of Records';
                        ToolTip = 'Specifies the number of records to be created.';
                        ApplicationArea = All;
                        MinValue = 0;
                    }
                }
            }
        }
    }

    trigger OnPreReport()
    begin
        SPPerformanceChecker.CreateItems(NoOfRecords);
    end;

    var
        SPPerformanceChecker: Codeunit "SP Performance Checker Mgt.";
        NoOfRecords: Integer;
}
