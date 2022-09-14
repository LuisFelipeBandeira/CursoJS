MIGRAR DE EC DE EXECUTIVO
DECLARE @socialEventId as NVARCHAR(256)
DECLARE @businessAccountExecutiveId as NVARCHAR(256)
DECLARE @newExecutiveId as NVARCHAR(256)
DECLARE @oldExecutiveId as NVARCHAR(256)
DECLARE EC_Cursor CURSOR FOR
select id, SocialEventFinance_Id, /* ALTERAR AQUI >>>>>> */ 1210 /* <<<<<<<*/, AccountExecutive_Id
  from BusinessEstablishmentAccountExecutives
  where IsAttending = 1
    and SocialEventFinance_Id in (17759,13147,23241,20572,27910,14619,27706,12004,9501,12475,8465,
13139,7847,11678,9494,24255,13082,21745,14739,25804,12298,7368,
8246,13537,18671,8418,23023,11633,20885,22578,13908,14969,16164,
23249,22535,23164,10792,16547,11104,16882,11436,11764,17948,27967,
14070,10575,10927,13550,19833,10275,26205,9396,28605,7352,23219,10192,
13391,15239,19372,10300,6208,14341,18408,11722,10236,14957,11674,14663,
18739,8272,19869,11320,21128,12167,10778,20643,21603,9303,4901,11779,22815,
28651,9348,22400,10922,10220,7595,25659,18212,27788,21973,12117,6284,7267,
11893,27371,25547,10601,19498,22184,6418,27932,17698,12486,18867,26206,
16938,8021,15062,22436,6707,7264,10916,25648,22505,28518,19774,22523,11283,
7344,19823,28544,6133,18348,24433,21292,18043); /* INSERIR AQUI O ID DOS ECS */
OPEN EC_Cursor;
FETCH NEXT FROM EC_Cursor INTO @businessAccountExecutiveId, @socialEventId, @newExecutiveId, @oldExecutiveId
WHILE @@FETCH_STATUS = 0
   BEGIN
        IF @newExecutiveId != @oldExecutiveId
        BEGIN
            UPDATE BusinessEstablishmentAccountExecutives set AttendanceEnd = GETDATE(), IsAttending = 0 where id = @businessAccountExecutiveId;
            INSERT INTO BusinessEstablishmentAccountExecutives VALUES(@newExecutiveId, @socialEventId, DATEADD(MINUTE,1,GETDATE()), DATEADD(YEAR,5,GETDATE()), 1);
            Print 'EC:' + @socialEventId + ' alterado para executivo ' + @newExecutiveId
        END;
    FETCH NEXT FROM EC_Cursor INTO @businessAccountExecutiveId, @socialEventId, @newExecutiveId, @oldExecutiveId;
   END;
CLOSE EC_Cursor;
DEALLOCATE EC_Cursor;

-- ======================================================================================================

MIGRAR DE EC DE EXECUTIVO
DECLARE @socialEventId as NVARCHAR(256)
DECLARE @businessAccountExecutiveId as NVARCHAR(256)
DECLARE @newExecutiveId as NVARCHAR(256)
DECLARE @oldExecutiveId as NVARCHAR(256)
DECLARE EC_Cursor CURSOR FOR
select id, SocialEventFinance_Id, /* ALTERAR AQUI >>>>>> */ 1217 /* <<<<<<<*/, AccountExecutive_Id
  from BusinessEstablishmentAccountExecutives
  where IsAttending = 1
    and SocialEventFinance_Id in (1650,2098,2616,2678,2826,2998,3651,4018,4366,4497,4668,5109,5204,
5430,5482,5906,5913,5950,6181,6293,6398,6983,7109,7220,7486,8292,
8421,8642,9576,11062,11680,12814,12834,12949,13456,13497,13600,
13651,14351,14388,14445,14746,14931,14940,15019,15591,17162,17180,
18616,18901,20045,20479,21126,21336,21622,21655,21656,21997,22113,
22142,22491,22806,24300,24997,25042,25268,25298,25678,25728,25815,
25997,26068,26826,27140,27622,27862,28226,28258,28266,28343,28404,
28411,28428,28437,28486,28489,28536); /* INSERIR AQUI O ID DOS ECS */
OPEN EC_Cursor;
FETCH NEXT FROM EC_Cursor INTO @businessAccountExecutiveId, @socialEventId, @newExecutiveId, @oldExecutiveId
WHILE @@FETCH_STATUS = 0
   BEGIN
        IF @newExecutiveId != @oldExecutiveId
        BEGIN
            UPDATE BusinessEstablishmentAccountExecutives set AttendanceEnd = GETDATE(), IsAttending = 0 where id = @businessAccountExecutiveId;
            INSERT INTO BusinessEstablishmentAccountExecutives VALUES(@newExecutiveId, @socialEventId, DATEADD(MINUTE,1,GETDATE()), DATEADD(YEAR,5,GETDATE()), 1);
            Print 'EC:' + @socialEventId + ' alterado para executivo ' + @newExecutiveId
        END;
    FETCH NEXT FROM EC_Cursor INTO @businessAccountExecutiveId, @socialEventId, @newExecutiveId, @oldExecutiveId;
   END;
CLOSE EC_Cursor;
DEALLOCATE EC_Cursor;