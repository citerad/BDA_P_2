
startYear = 2010
endYear = 2013
i = 1
for year in xrange(startYear, endYear + 1):
    for month in xrange(0, 12):

        if month==0:
        	qm = 1
        	name='Enero'
        	day=31

        elif month==1:
        	qm = 1
        	name='Febrero'
        	day=28
        	if (year % 4 == 0 and (year % 100 != 0 or year % 400 == 0)):
        		day=29

        elif month==2:
        	qm = 1
        	name='Marzo'
        	day=31

        elif month==3:
        	qm = 2
        	name='Abril'
        	day=30

        elif month==4:
        	qm = 2
        	name='Mayo'
        	day=31

        elif month==5:
        	qm = 2
        	name='Junio'
        	day=30

        elif month==6:
        	qm = 3
        	name='Julio'
        	day=31

        elif month==7:
        	qm = 3
        	name='Agosto'
        	day=31

        elif month==8:
        	qm = 3
        	name='Septiembre'
        	day=30

        elif month==9:
        	qm = 4
        	name='Octubre'
        	day=31

        elif month==10:
        	qm = 4
        	name='Noviembre'
        	day=30

        elif month==11:
        	qm = 4
        	name='Diciembre'
        	day=31

        for day in xrange(1,day+1):

            if day<10:
                print 'INSERT INTO "D_TIEMPO" VALUES (\'%d\', \'%d\', \'%d\', \'%d\', \'%d\',  \'%d\',\'T%d\',\'%s\',\'0%d\');' % (i, year, qm, month+1,day,year,qm,name,day)
            else:
                print 'INSERT INTO "D_TIEMPO" VALUES (\'%d\', \'%d\', \'%d\', \'%d\', \'%d\',  \'%d\',\'T%d\',\'%s\',\'%d\');' % (i, year, qm, month+1,day,year,qm,name,day)
            i += 1
