{ isDarwin, lib, ... }:
{ }
// lib.optionalAttrs isDarwin {
  setapp.apps = {
    # query, edit, and manage databases
    # replaces: Base, Postico, SQLiteFlow, SQLiteStudio, SQLPro for SQLite, SQLPro Studio
    "TablePlus" = 297;
  };
}
