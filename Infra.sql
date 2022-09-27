MIGRAR DE EC DE EXECUTIVO
DECLARE @socialEventId as NVARCHAR(256)
DECLARE @businessAccountExecutiveId as NVARCHAR(256)
DECLARE @newExecutiveId as NVARCHAR(256)
DECLARE @oldExecutiveId as NVARCHAR(256)
DECLARE EC_Cursor CURSOR FOR
select id, SocialEventFinance_Id, /* ALTERAR AQUI >>>>>> */ 789 /* <<<<<<<*/, AccountExecutive_Id
  from BusinessEstablishmentAccountExecutives
  where IsAttending = 1
    and SocialEventFinance_Id in (1880,2056,2063,2261,2550,2678,2820,2828,3305,3356,3597,3651,4025,4056,4070,
4144,4244,4294,4366,4682,4745,4872,4937,5182,5296,5392,5579,5585,5596,5626,
5695,5770,6121,6160,6414,7132,7378,7629,7842,8168,8284,8947,9056,9453,9802,
9997,10383,10495,11707,12288,13418,13456,13962,14360,14696,15469,15939,16005); /* INSERIR AQUI O ID DOS ECS */
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


-- ===================================================================================================


MIGRAR DE EC DE EXECUTIVO
DECLARE @socialEventId as NVARCHAR(256)
DECLARE @businessAccountExecutiveId as NVARCHAR(256)
DECLARE @newExecutiveId as NVARCHAR(256)
DECLARE @oldExecutiveId as NVARCHAR(256)
DECLARE EC_Cursor CURSOR FOR
select id, SocialEventFinance_Id, /* ALTERAR AQUI >>>>>> */ 794 /* <<<<<<<*/, AccountExecutive_Id
  from BusinessEstablishmentAccountExecutives
  where IsAttending = 1
    and SocialEventFinance_Id in (1894,2087,2371,2879,2934,2972,2996,3316,3436,3447,3491,
3710,3794,3853,3908,4159,4185,4188,4279,4367,4386,4429,
4527,4838,4961,5181,5192,5308,5565,5724,6005,6029,6089,
6156,6187,6191,6524,6544,6602,7205,7211,7423,8574,9110,
9258,9498,9502,9631,9789,9807,9923,10138,10407,10491,11052,
11699,11982,12387,12481,12834,12843,13480,14388,14689,15073,
18804,19060,20159,22800,24462,24487,14244); /* INSERIR AQUI O ID DOS ECS */
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


-- ==================================================================================================


MIGRAR DE EC DE EXECUTIVO
DECLARE @socialEventId as NVARCHAR(256)
DECLARE @businessAccountExecutiveId as NVARCHAR(256)
DECLARE @newExecutiveId as NVARCHAR(256)
DECLARE @oldExecutiveId as NVARCHAR(256)
DECLARE EC_Cursor CURSOR FOR
select id, SocialEventFinance_Id, /* ALTERAR AQUI >>>>>> */ 1165 /* <<<<<<<*/, AccountExecutive_Id
  from BusinessEstablishmentAccountExecutives
  where IsAttending = 1
    and SocialEventFinance_Id in (1557,1722,1994,1998,2133,2498,2507,2533,2826,2903,2969,2976,
3099,3293,3335,3374,3586,3891,4044,4220,4256,4531,4857,5195,
5228,5461,5483,5911,6199,6228,6265,6345,6427,6547,6986,7014,
7220,7230,7405,7481,7712,7905,7938,8335,8558,8642,8794,9008,
9520,10454,10482,10968,11881,13376,13497,13588,13796,13917,
13955,14277,14572,15220,17440,17613,18311,18548,19152,20722,
20745,21235,21760,22728,25298,28659,28665); /* INSERIR AQUI O ID DOS ECS */
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


-- ==================================================================================================


MIGRAR DE EC DE EXECUTIVO
DECLARE @socialEventId as NVARCHAR(256)
DECLARE @businessAccountExecutiveId as NVARCHAR(256)
DECLARE @newExecutiveId as NVARCHAR(256)
DECLARE @oldExecutiveId as NVARCHAR(256)
DECLARE EC_Cursor CURSOR FOR
select id, SocialEventFinance_Id, /* ALTERAR AQUI >>>>>> */ 1197 /* <<<<<<<*/, AccountExecutive_Id
  from BusinessEstablishmentAccountExecutives
  where IsAttending = 1
    and SocialEventFinance_Id in (1618,1651,2387,2424,2600,2625,2793,2944,3048,3346,3500,3523,3540,3888,3951,4119,4155,
4177,4393,4415,4442,4520,4585,4666,4954,5022,5109,5132,5146,5351,5641,5815,5861,6141,
6426,6466,6550,6770,6851,6958,7061,7096,7228,7252,7486,7593,7983,8331,8410,9461,10012,
10716,11594,11772,11784,12040,12235,12238,12987,13651,14527,15343,16213,16294,17520,
18654,20362,25195,26222,26687,27443,28465,1602); /* INSERIR AQUI O ID DOS ECS */
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


-- ==================================================================================================


MIGRAR DE EC DE EXECUTIVO
DECLARE @socialEventId as NVARCHAR(256)
DECLARE @businessAccountExecutiveId as NVARCHAR(256)
DECLARE @newExecutiveId as NVARCHAR(256)
DECLARE @oldExecutiveId as NVARCHAR(256)
DECLARE EC_Cursor CURSOR FOR
select id, SocialEventFinance_Id, /* ALTERAR AQUI >>>>>> */ 1201 /* <<<<<<<*/, AccountExecutive_Id
  from BusinessEstablishmentAccountExecutives
  where IsAttending = 1
    and SocialEventFinance_Id in (1563,1566,1858,1885,2075,2265,2436,2450,2519,2636,2695,2965,3106,
3185,3886,4039,4082,4091,4163,4219,4392,5114,5198,5204,5283,5287,
5289,5359,5409,5542,5552,5767,5960,5964,5978,5996,6231,6280,6797,
7188,7407,7458,8629,8721,8927,9169,9938,10308,11038,12330,12654,
13280,13388,13513,13781,14338,14574,14621,15462,15635,15680,16418,
16435,18233,18421,18500,19512,21158,21457,22066,24997,25016,28687); /* INSERIR AQUI O ID DOS ECS */
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


-- ==================================================================================================


MIGRAR DE EC DE EXECUTIVO
DECLARE @socialEventId as NVARCHAR(256)
DECLARE @businessAccountExecutiveId as NVARCHAR(256)
DECLARE @newExecutiveId as NVARCHAR(256)
DECLARE @oldExecutiveId as NVARCHAR(256)
DECLARE EC_Cursor CURSOR FOR
select id, SocialEventFinance_Id, /* ALTERAR AQUI >>>>>> */ 1278 /* <<<<<<<*/, AccountExecutive_Id
  from BusinessEstablishmentAccountExecutives
  where IsAttending = 1
    and SocialEventFinance_Id in (1567,1893,1928,2408,2428,2833,2954,2956,3223,3373,3683,3782,3865,3910,4020,4206,4224,4225,4228,4272,
4276,4348,4389,4905,4923,5050,5551,5602,5781,6204,6389,6396,6665,7121,7658,7802,8128,8281,8796,9092,
9409,9616,9809,10367,10609,10672,10904,11005,11318,11556,11783,12763,13674,14302,14445,14694,15095,
15610,15636,16400,17555,18164,18193,18329,21878,21951,22832,22895,24817,24961,25110,25176,28414,28533); /* INSERIR AQUI O ID DOS ECS */
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


-- ==================================================================================================


MIGRAR DE EC DE EXECUTIVO
DECLARE @socialEventId as NVARCHAR(256)
DECLARE @businessAccountExecutiveId as NVARCHAR(256)
DECLARE @newExecutiveId as NVARCHAR(256)
DECLARE @oldExecutiveId as NVARCHAR(256)
DECLARE EC_Cursor CURSOR FOR
select id, SocialEventFinance_Id, /* ALTERAR AQUI >>>>>> */ 1313 /* <<<<<<<*/, AccountExecutive_Id
  from BusinessEstablishmentAccountExecutives
  where IsAttending = 1
    and SocialEventFinance_Id in (1582,1665,1943,1950,2487,2534,2684,2712,2872,2987,2989,2998,3161,3483,3498,
3568,3650,3852,4436,4486,4487,4497,4524,4726,4881,4892,5243,5360,5430,5528,
5639,5865,5907,6700,6914,7066,7312,7731,7883,8687,9166,9318,10527,11209,12649,
12806,13043,14336,14446,14698,14741,14865,15036,15470,15712,15937,15981,15993,
16093,18086,18120,18742,18921,18964,20264,20587,21300,21520,22491,23098,24969,
25938,27164,27692); /* INSERIR AQUI O ID DOS ECS */
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


-- ==================================================================================================


MIGRAR DE EC DE EXECUTIVO
DECLARE @socialEventId as NVARCHAR(256)
DECLARE @businessAccountExecutiveId as NVARCHAR(256)
DECLARE @newExecutiveId as NVARCHAR(256)
DECLARE @oldExecutiveId as NVARCHAR(256)
DECLARE EC_Cursor CURSOR FOR
select id, SocialEventFinance_Id, /* ALTERAR AQUI >>>>>> */ 1380 /* <<<<<<<*/, AccountExecutive_Id
  from BusinessEstablishmentAccountExecutives
  where IsAttending = 1
    and SocialEventFinance_Id in (1616,1915,2010,2182,2202,2254,2280,2449,2896,3051,3221,3375,3841,4132,
4142,4250,4292,4317,4340,4494,4753,5386,5389,5588,5782,5995,6282,6415,
6469,6636,6742,7110,7125,7150,7303,7647,7865,8041,8206,9104,9235,9331,
9422,9773,10144,10838,10996,11217,11758,11961,11980,12498,12513,12606,
12684,13018,14035,14305,14515,14866,15179,15449,16578,16793,18169,20529,
21468,21656,25790,28382,28425); /* INSERIR AQUI O ID DOS ECS */
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


-- ==================================================================================================


MIGRAR DE EC DE EXECUTIVO
DECLARE @socialEventId as NVARCHAR(256)
DECLARE @businessAccountExecutiveId as NVARCHAR(256)
DECLARE @newExecutiveId as NVARCHAR(256)
DECLARE @oldExecutiveId as NVARCHAR(256)
DECLARE EC_Cursor CURSOR FOR
select id, SocialEventFinance_Id, /* ALTERAR AQUI >>>>>> */ 1430 /* <<<<<<<*/, AccountExecutive_Id
  from BusinessEstablishmentAccountExecutives
  where IsAttending = 1
    and SocialEventFinance_Id in (1867,1910,2020,2058,2065,2218,2581,3513,3549,3635,3731,3876,4018,
4032,4151,4242,4257,4522,4584,4603,4714,4859,4926,4967,5115,5239,
5498,5546,5741,5942,6068,6293,6303,6711,6947,7442,7603,7978,8089,
8253,8421,8906,9057,9097,9200,9657,9729,10783,11527,11949,12064,
12307,12312,12380,13144,13228,13328,16662,18176,18180,19049,20133,
21098,21377,22397,26517,27574,28843); /* INSERIR AQUI O ID DOS ECS */
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


-- ==================================================================================================


MIGRAR DE EC DE EXECUTIVO
DECLARE @socialEventId as NVARCHAR(256)
DECLARE @businessAccountExecutiveId as NVARCHAR(256)
DECLARE @newExecutiveId as NVARCHAR(256)
DECLARE @oldExecutiveId as NVARCHAR(256)
DECLARE EC_Cursor CURSOR FOR
select id, SocialEventFinance_Id, /* ALTERAR AQUI >>>>>> */ 1431 /* <<<<<<<*/, AccountExecutive_Id
  from BusinessEstablishmentAccountExecutives
  where IsAttending = 1
    and SocialEventFinance_Id in (1561,1901,1931,2117,2178,2429,2552,2846,2960,3065,3533,3623,3639,3767,3890,
3964,4033,4088,4148,4173,4341,4343,4425,4939,5415,5527,5629,5804,5819,5859,
5906,5997,6185,6359,7327,7435,7787,8033,8646,9062,9584,9881,10475,11060,11062,
1834,11910,12030,12991,13384,14149,14550,14932,15006,15019,15932,16049,16678,
16847,16860,16871,16936,17423,17839,18817,19396,21322,21341,22349,22510,24942,25042,8240,5567); /* INSERIR AQUI O ID DOS ECS */
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


-- ==================================================================================================


MIGRAR DE EC DE EXECUTIVO
DECLARE @socialEventId as NVARCHAR(256)
DECLARE @businessAccountExecutiveId as NVARCHAR(256)
DECLARE @newExecutiveId as NVARCHAR(256)
DECLARE @oldExecutiveId as NVARCHAR(256)
DECLARE EC_Cursor CURSOR FOR
select id, SocialEventFinance_Id, /* ALTERAR AQUI >>>>>> */ 1432 /* <<<<<<<*/, AccountExecutive_Id
  from BusinessEstablishmentAccountExecutives
  where IsAttending = 1
    and SocialEventFinance_Id in (1603,1917,2009,2060,2086,2185,2197,2308,2506,2715,2940,3181,3361,3403,3432,
3503,3606,3636,4131,4247,4331,4397,4610,4931,5167,5262,5345,5441,5533,5573,
5667,5691,5776,5982,6014,6177,6267,6353,6374,6433,6532,7033,7109,8079,8196,
8292,8802,9447,9493,9818,10485,11443,12344,12636,12789,13003,13604,14061,
14738,15818,16034,16384,18448,18919,20826,21455,24443,25831); /* INSERIR AQUI O ID DOS ECS */
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


-- ==================================================================================================


MIGRAR DE EC DE EXECUTIVO
DECLARE @socialEventId as NVARCHAR(256)
DECLARE @businessAccountExecutiveId as NVARCHAR(256)
DECLARE @newExecutiveId as NVARCHAR(256)
DECLARE @oldExecutiveId as NVARCHAR(256)
DECLARE EC_Cursor CURSOR FOR
select id, SocialEventFinance_Id, /* ALTERAR AQUI >>>>>> */ 1433 /* <<<<<<<*/, AccountExecutive_Id
  from BusinessEstablishmentAccountExecutives
  where IsAttending = 1
    and SocialEventFinance_Id in (1939,1942,2208,2350,2537,2641,3096,3218,3300,3461,3504,
3770,3903,3970,4221,4262,4540,4543,4574,4668,4757,4780,
4986,5075,5110,5165,5494,5554,5582,5811,5950,6092,6313,
6651,6668,6834,6849,6882,6926,7360,7465,7571,7640,8208,
8512,8959,9046,9497,10178,10801,11615,13315,13394,13813,
13915,14849,15829,16171,16941,17526,18197,18664,19040,
19629,20135,20848,21107,21335,22806,22909,25728,27498,
28592,28901,29027); /* INSERIR AQUI O ID DOS ECS */
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


-- ==================================================================================================


MIGRAR DE EC DE EXECUTIVO
DECLARE @socialEventId as NVARCHAR(256)
DECLARE @businessAccountExecutiveId as NVARCHAR(256)
DECLARE @newExecutiveId as NVARCHAR(256)
DECLARE @oldExecutiveId as NVARCHAR(256)
DECLARE EC_Cursor CURSOR FOR
select id, SocialEventFinance_Id, /* ALTERAR AQUI >>>>>> */ 1438 /* <<<<<<<*/, AccountExecutive_Id
  from BusinessEstablishmentAccountExecutives
  where IsAttending = 1
    and SocialEventFinance_Id in (1555,1863,2006,2046,2123,2231,2527,2578,2582,2591,2659,2893,
2978,2999,3092,3105,4304,4424,5095,5224,5500,5625,5652,5928,
5988,6241,6455,6614,7001,7005,7392,7510,8212,8459,8516,8670,
8853,9465,9561,9576,9722,10362,10430,10759,11650,11897,12333,
12436,12767,12845,12949,13074,13335,13613,13850,14351,14985,
15335,16337,16367,18119,18629,19794,20405,21375,21396,24300,28484); /* INSERIR AQUI O ID DOS ECS */
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


-- ==================================================================================================


MIGRAR DE EC DE EXECUTIVO
DECLARE @socialEventId as NVARCHAR(256)
DECLARE @businessAccountExecutiveId as NVARCHAR(256)
DECLARE @newExecutiveId as NVARCHAR(256)
DECLARE @oldExecutiveId as NVARCHAR(256)
DECLARE EC_Cursor CURSOR FOR
select id, SocialEventFinance_Id, /* ALTERAR AQUI >>>>>> */ 1439 /* <<<<<<<*/, AccountExecutive_Id
  from BusinessEstablishmentAccountExecutives
  where IsAttending = 1
    and SocialEventFinance_Id in (1857,2074,2099,2206,2244,2331,2928,3024,3052,3327,3515,3622,3875,
4233,4236,4253,4384,4413,4417,4485,4548,4566,4615,4651,4683,5355,
5482,5790,5857,6116,6124,6152,6158,6181,6378,6983,7374,7414,7497,
7519,7716,7846,7876,7895,8003,8014,8037,8173,8545,9128,9271,9467,
9999,10377,11236,11680,13249,13960,14699,15616,15905,16457,16713,
18165,18366,18597,18616,20299,20509,21297,26108,26213,26826,11852); /* INSERIR AQUI O ID DOS ECS */
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