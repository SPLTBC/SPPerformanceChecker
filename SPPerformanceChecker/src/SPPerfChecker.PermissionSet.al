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
        page "SP Performance Checker Log" = X;
}