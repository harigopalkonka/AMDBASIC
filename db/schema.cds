namespace AMD;

using
{
    Country,
    Currency,
    Language,
    User,
    cuid,
    extensible,
    managed,
    temporal
}
from '@sap/cds/common';

entity AMDDetails
{
    key AMD_Id : UUID
        @Core.Computed;
    MRC : String(100);
    Leagal_Entity : String(100);
    Status : String(100);
    Created_By : String(100);
    Created_On : String(100);
    No_Of_Assets : String(100);
    newTables : Association to one NewTables;
}

entity NewTables
{
    key ID : UUID
        @Core.Computed;
    MRC : String(100);
    Leagal_Entity : String(100);
}
