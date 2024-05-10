permissionset 56010 "SP Perf. Checker"
{
    Access = Internal;
    Assignable = true;
    Caption = 'All permissions', Locked = true;
    Permissions = table "SP Performance Checker Setup" = X,
        tabledata "SP Performance Checker Setup" = RIMD,
        page "SP Performance Checker Setup" = X,
        report "SP Perf. Checker Create Items" = X,
        codeunit "SP Performance Checker Mgt." = X,
        tabledata "SP Performance Checker Log" = RIMD,
        table "SP Performance Checker Log" = X,
        page "SP Performance Checker Log" = X,
        codeunit "SP Perf. Checker Create Item" = X,
        codeunit "SP Perf. Checker Create Cust." = X,
        codeunit "SP Perf. Checker Create Vendor" = X,
        codeunit "SP Perf. Checker Create SO" = X,
        codeunit "SP Perf. Checker Create PO" = X,
        codeunit "SP Perf. Checker Post SO" = X,
        codeunit "SP Perf. Checker Post Item Jnl" = X,
        codeunit "SP Perf. Checker Post PO" = X;
}