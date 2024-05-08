table 56010 "SP Performance Checker Setup"
{
    Caption = 'SP Performance Checker Setup';
    DataClassification = CustomerContent;
    
    fields
    {
        field(1; "Primary Key"; Code[10])
        {
            Caption = 'Primary Key';
        }
        field(2; "Item No. Series"; Code[20])
        {
            Caption = 'Item No. Series';
        }
        field(3; "Sales Order No. Series"; Code[20])
        {
            Caption = 'Sales Order No. Series';
        }
        field(4; "Purchase Order No. Series"; Code[20])
        {
            Caption = 'Purchase Order No. Series';
        }
        field(5; "Customer No. Series"; Code[20])
        {
            Caption = 'Customer No. Series';
        }
        field(6; "Vendor No. Series"; Code[20])
        {
            Caption = 'Vendor No. Series';
        }
        field(7; "Item Journal Template"; Code[10])
        {
            Caption = 'Item Journal Template';
        }
        field(8; "Item Journal Batch"; Code[10])
        {
            Caption = 'Item Journal Batch';
        }
    }
    keys
    {
        key(PK; "Primary Key")
        {
            Clustered = true;
        }
    }
}
