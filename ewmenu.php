<!-- Begin Main Menu -->
<?php $RootMenu = new cMenu(EW_MENUBAR_ID) ?>
<?php

// Generate all menu items
$RootMenu->IsRoot = TRUE;
$RootMenu->AddMenuItem(1, "mi_t0101_cabang", $Language->MenuPhrase("1", "MenuText"), "t0101_cabanglist.php", -1, "", AllowListMenu('{B8F5959D-CB6C-4187-BE43-478B4AED8700}t0101_cabang'), FALSE, FALSE);
$RootMenu->AddMenuItem(2, "mi_t9901_employees", $Language->MenuPhrase("2", "MenuText"), "t9901_employeeslist.php", -1, "", AllowListMenu('{B8F5959D-CB6C-4187-BE43-478B4AED8700}t9901_employees'), FALSE, FALSE);
$RootMenu->AddMenuItem(3, "mi_t9902_userlevels", $Language->MenuPhrase("3", "MenuText"), "t9902_userlevelslist.php", -1, "", (@$_SESSION[EW_SESSION_USER_LEVEL] & EW_ALLOW_ADMIN) == EW_ALLOW_ADMIN, FALSE, FALSE);
$RootMenu->AddMenuItem(5, "mi_t9904_audittrail", $Language->MenuPhrase("5", "MenuText"), "t9904_audittraillist.php", -1, "", AllowListMenu('{B8F5959D-CB6C-4187-BE43-478B4AED8700}t9904_audittrail'), FALSE, FALSE);
$RootMenu->AddMenuItem(-2, "mi_changepwd", $Language->Phrase("ChangePwd"), "changepwd.php", -1, "", IsLoggedIn() && !IsSysAdmin());
$RootMenu->AddMenuItem(-1, "mi_logout", $Language->Phrase("Logout"), "logout.php", -1, "", IsLoggedIn());
$RootMenu->AddMenuItem(-1, "mi_login", $Language->Phrase("Login"), "login.php", -1, "", !IsLoggedIn() && substr(@$_SERVER["URL"], -1 * strlen("login.php")) <> "login.php");
$RootMenu->Render();
?>
<!-- End Main Menu -->
