




import random
start = 1
end = 20
i = 0

for year in xrange(start, end + 1):
    i+=1
    quantita=random.randint(1,6)
    ingreso=random.randint(20,100)
    ingreso=ingreso*quantita


    
    espectaculo=random.randint(1,6)

    if espectaculo<3:
        categoria=1
        espacio=1
        geografia=1
    elif espectaculo<5:
        categoria=2
        espacio=2
        geografia=2
    elif espectaculo<7:
        categoria=3
        espacio=3
        geografia=3

  
    tiempo=random.randint(1295,1300)
    edad=random.randint(20,22)
    print 'INSERT INTO "F_VENTAS_ENTRADAS" VALUES (\'%d\', \'%d\', \'%d\', "costomantenimento", \'%d\', \'%d\',\'%d\',\'%d\',\'%d\',\'%d\');' % (i, ingreso, quantita,categoria,espectaculo,espacio,geografia,tiempo,edad)
