using { AMD as my } from '../db/schema';

using AMD from '../db/schema';

@path : '/service/AMD'
service AMDService
{
    entity AMDDetails as
        projection on my.AMDDetails;

    entity NewTables as
        projection on my.NewTables;
}

annotate AMDService with @requires :
[
    'authenticated-user'
];
