
FILE_TO_PARSE = 'ETL_F_VENTAS_ENTRADAS.csv'

with open(FILE_TO_PARSE) as handle:
    lines = handle.readlines()
    for id_line in xrange(1, len(lines)):
        line = lines[id_line]
        parameters = line.replace('\n', '').split(';')
        parameters = [id_line] + parameters
        print "INSERT INTO \"F_VENTAS_ENTRADAS\" VALUES ('%s', '%s', '%s', '%s', '%s', '%s', '%s', '%s', '%s', '%s', '%s');" % tuple(parameters)
