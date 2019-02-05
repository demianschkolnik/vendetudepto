import tasadorbot as tb
import math
import pymysql as mysql
import math
from math import radians, sin, cos, acos, asin,pi,sqrt
from datetime import datetime, timedelta, date
past = datetime.now() - timedelta(days=90)
past=datetime.date(past)
yesterday = datetime.now() - timedelta(days=3)
yesterday=datetime.date(yesterday)
import googleMapApi as gm
import propManager as pm
import sys
import sendMailTasacion as sm



def actualizarActividad():

    sql = "UPDATE pedidos SET activo=0 WHERE activo=1"

    mariadb_connection = mysql.connect(user='root', password='sergei', host='127.0.0.1', database='railstest')
    cur = mariadb_connection.cursor()
    cur.execute(sql)
    mariadb_connection.commit()
    mariadb_connection.close()

def tasacion():
    mariadb_connection = mysql.connect(user='root', password='sergei', host='127.0.0.1', database='railstest')
    cur = mariadb_connection.cursor()
    sql = "SELECT operacion,tipo,sup_util,superficie,dorms,bano,estacionamiento,direccion,comuna,nombre,mail,region,piso,anio FROM pedidos WHERE activo=1"
    cur.execute(sql)
    tasacion=cur.fetchall()
    return tasacion
tasacion=tasacion()
tasacion=tasacion[0]
direccion = tasacion[7]


lat,lon = gm.getCoordsWithAdress(direccion)
precio,nivel,nrcomp,links=tb.calcularTasacion(tasacion[0],tasacion[1],float(lat),float(lon),float(tasacion[2]),float(tasacion[3]),int(tasacion[4]),int(tasacion[5]),int(tasacion[6]))

actualizarActividad()
sm.sendMail(tasacion,precio,nivel,nrcomp)


