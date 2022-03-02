import cx_Oracle

cx_Oracle.init_oracle_client(lib_dir=r"C:\Users\gshinde\Downloads\instantclient-basic-windows.x64-19.9.0.0.0dbru\instantclient_19_9")
#constr="sys/SYS1234@localhost:1521/xepdb1"

conn = cx_Oracle.connect(user="sys", password="SYS1234",
                               dsn="localhost/xepdb1",
                               mode=cx_Oracle.SYSDBA, encoding="UTF-8")

#conn=cx_Oracle.connect(constr)

cur=conn.cursor()

sqlTxt='SELECT Item_ID,Item_Type,Item_UOM,Price FROM ITEMS'
cur.execute(sqlTxt)
# print(cur.execute(sqlTxt))

(item_id, item_name, uom, price) = cur.fetchone()
print(item_name)


cur.close()
conn.close()