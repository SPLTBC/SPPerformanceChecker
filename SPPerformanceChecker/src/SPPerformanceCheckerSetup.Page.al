page 56010 "SP Performance Checker Setup"
{
    Caption = 'SP Performance Checker Setup';
    PageType = Card;
    SourceTable = "SP Performance Checker Setup";
    UsageCategory = Administration;
    ApplicationArea = All;

    layout
    {
        area(content)
        {
            group(General)
            {
                Caption = 'General';

                field("Item No. Series"; Rec."Item No. Series")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Item No. Series field.';
                    TableRelation = "No. Series";
                }
                field("Customer No. Series"; Rec."Customer No. Series")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Customer No. Series field.';
                    TableRelation = "No. Series";
                }
                field("Vendor No. Series"; Rec."Vendor No. Series")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Vendor No. Series field.';
                    TableRelation = "No. Series";
                }
                field("Sales Order No. Series"; Rec."Sales Order No. Series")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Sales Order No. Series field.';
                    TableRelation = "No. Series";
                }
                field("Purchase Order No. Series"; Rec."Purchase Order No. Series")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Purchase Order No. Series field.';
                    TableRelation = "No. Series";
                }
                field("Item Journal Template"; Rec."Item Journal Template")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Item Journal Template field.';
                    TableRelation = "Item Journal Template";
                }
                field("Item Journal Batch"; Rec."Item Journal Batch")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Item Journal Batch field.';
                    TableRelation = "Item Journal Batch";
                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(CreateItems)
            {
                Caption = 'Create Items';
                Description = 'Create Items';
                ToolTip = 'Creates items depending on the number of records specified.';
                Promoted = true;
                PromotedCategory = Process;
                ApplicationArea = All;

                trigger OnAction()
                begin
                    Clear(SPPerformanceCheckerMgt);
                    SPPerfCheckerCreateItems.RunModal();
                end;
            }
        }
    }

    trigger OnOpenPage()
    begin
        Rec.Reset();
        if not Rec.Get() then begin
            Rec.Init();
            Rec.Insert();
        end;
    end;

    var
        SPPerfCheckerCreateItems: Report "SP Perf. Checker Create Items";
        SPPerformanceCheckerMgt: Codeunit "SP Performance Checker Mgt.";
}
