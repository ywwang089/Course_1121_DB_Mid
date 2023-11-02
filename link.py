import oracledb 
connection = oracledb.connect(user='Group1', password='IGVB44zhK', host='140.117.69.60', port=1521, service_name='ORCLPDB1') 
cursor = connection.cursor()
