page 56011 "SP Performance Checker Log"
{
    ApplicationArea = All;
    Caption = 'SP Performance Checker Log';
    PageType = List;
    SourceTable = "SP Performance Checker Log";
    Editable = false;
    UsageCategory = History;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("Entry No."; Rec."Entry No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Entry No. field.';
                }
                field("Process Code"; Rec."Process Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Process Code field.';
                }
                field("Process Type"; Rec."Process Type")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Process Type field.';
                }
                field("User ID"; Rec."User ID")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the User ID field.';
                }
                field("Process Start DateTime"; Rec."Process Start DateTime")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Process Start DateTime field.';
                }
                field("Process End DateTime"; Rec."Process End DateTime")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Process End DateTime field.';
                }
                field("Process Duration"; Rec."Process Duration")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Process Duration field.';
                }
                field("Number of Records"; Rec."Number of Records")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Number of Records field.';
                }
            }
        }
    }
}
