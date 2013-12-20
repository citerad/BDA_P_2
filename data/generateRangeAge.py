
i = 1
for age in xrange(20, 101):
    if age / 10 == 1:
        group_range = "Menor de 20"
    elif age / 10 == 2:
        group_range = "Entre 20 y 30"
    elif age / 10 == 3:
        group_range = "Entre 30 y 40"
    elif age / 10 == 4:
        group_range = "Entre 40 y 50"
    elif age / 10 == 5:
        group_range = "Entre 50 y 60"
    elif age / 10 == 6:
        group_range = "Entre 60 y 70"
    elif age / 10 == 7:
        group_range = "Entre 70 y 80"
    elif age / 10 == 8:
        group_range = "Entre 80 y 90"
    elif age / 10 == 9:
        group_range = "Entre 90 y 100"
    elif age / 10 == 10:
        group_range = "Entre 100 y 110"
    print 'INSERT INTO "D_EDAD" VALUES (%d, \'%d\', \'%d\', \'%s\', \'%s\');' % (i, age / 10, age, group_range, age)
    i += 1
