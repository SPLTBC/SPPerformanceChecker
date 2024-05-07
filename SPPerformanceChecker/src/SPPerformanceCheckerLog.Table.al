table 56011 "SP Performance Checker Log"
{
    Caption = 'SP Performance Checker Log';
    DataClassification = CustomerContent;

    fields
    {
        field(1; "Entry No."; Integer)
        {
            Caption = 'Entry No.';
        }
        field(2; "Process Code"; Code[20])
        {
            Caption = 'Process Code';
        }
        field(3; "Process Type"; Enum "SP Performance Checker Process Type")
        {
            Caption = 'Process Type';
        }
        field(4; "User ID"; Code[50])
        {
            Caption = 'User ID';
        }
        field(5; "Process Start DateTime"; DateTime)
        {
            Caption = 'Process Start DateTime';
        }
        field(6; "Process End DateTime"; DateTime)
        {
            Caption = 'Process End DateTime';
        }
        field(7; "Process Duration"; Duration)
        {
            Caption = 'Process Duration';
        }
        field(8; "Number of Records"; Integer)
        {
            Caption = 'Number of Records';
        }
    }
    keys
    {
        key(PK; "Entry No.")
        {
            Clustered = true;
        }
        key(Key2; "Process Code", "Process Type")
        { }
    }
}
