codeunit 56010 "SP Performance Checker Mgt."
{
    procedure CreateItems(NoOfRecords: Integer);
    var
        Item: Record Item;
        NoSeriesMgt: Codeunit NoSeriesManagement;
        SPPerformanceCheckerProcessType: Enum "SP Performance Checker Process Type";
        i: Integer;
        StartDT: DateTime;
        EndDT: DateTime;
        ProcessDuration: Duration;
    begin
        GetSPPerformanceCheckerSetup();
        SPPerformanceCheckerSetup.TestField("Item No. Series");

        // Start actual processing
        StartDT := CurrentDateTime;
        for i := 1 to NoOfRecords do begin
            Item.Init();
            NoSeriesMgt.InitSeries(SPPerformanceCheckerSetup."Item No. Series", '', 0D, Item."No.", Item."No. Series");
            Item.Insert(true);
        end;
        EndDT := CurrentDateTime;
        // End actual processing

        ProcessDuration := EndDT - StartDT;
        LogPerformanceChecker('CREATE_ITEM', SPPerformanceCheckerProcessType::"Create Item", StartDT, EndDT, ProcessDuration, NoOfRecords);
    end;

    local procedure GetSPPerformanceCheckerSetup()
    begin
        if not HasPerformanceCheckerSetup then begin
            SPPerformanceCheckerSetup.Get();
            HasPerformanceCheckerSetup := true;
        end;
    end;

    local procedure LogPerformanceChecker(ProcessCode: Code[20]; ProcessType: Enum "SP Performance Checker Process Type"; StartDT: DateTime; EndDT: DateTime; ProcessDuration: Duration; NoOfRecords: Integer)
    var
        SPPerformanceCheckerLog: Record "SP Performance Checker Log";
    begin
        SPPerformanceCheckerLog.Init();
        SPPerformanceCheckerLog."Entry No." := GetLastLogEntryNo() + 1;
        SPPerformanceCheckerLog."Process Code" := ProcessCode;
        SPPerformanceCheckerLog."Process Type" := ProcessType;
        SPPerformanceCheckerLog."Process Start DateTime" := StartDT;
        SPPerformanceCheckerLog."Process End DateTime" := EndDT;
        SPPerformanceCheckerLog."Process Duration" := ProcessDuration;
        SPPerformanceCheckerLog."Number of Records" := NoOfRecords;
        SPPerformanceCheckerLog.Insert();
    end;

    local procedure GetLastLogEntryNo(): Integer
    var
        SPPerformanceCheckerLog: Record "SP Performance Checker Log";
    begin
        SPPerformanceCheckerLog.Reset();
        if SPPerformanceCheckerLog.FindLast() then
            exit(SPPerformanceCheckerLog."Entry No.")
        else
            exit(0);
    end;

    var
        SPPerformanceCheckerSetup: Record "SP Performance Checker Setup";
        HasPerformanceCheckerSetup: Boolean;
}
