#!/usr/bin/env

import rospy
from sensor_msgs.msg import PointCloud2
from sensor_msgs.msg import LaserScan
from laser_geometry import LaserProjection

def enviar_datos(data):
    global com_datos
    global transformacion
    cloud_datos = transformacion.projectLaser(data)
    com_datos.publish(cloud_datos)


def laser2pc():
    global com_datos
    rospy.init_node('laser2pc',anonymous=True)
    com_datos = rospy.Publisher('/laserPointCloud',PointCloud2,queue_size=1)
    rospy.Subscriber('/scan',LaserScan,enviar_datos)
    rospy.spin()


if __name__=='__main__':
    global transformacion
    global com_datos
    transformacion = LaserProjection()
    laser2pc()