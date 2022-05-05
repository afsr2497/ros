#!/usr/bin/env
import rospy
import open3d as o3d
import numpy as np
from sensor_msgs.msg import PointCloud2, PointField
from sensor_msgs import point_cloud2
from geometry_msgs.msg import PoseWithCovarianceStamped

def sumar_nubes(lista_datos):
    resultado = lista_datos[0]
    for i in range(1,len(lista_datos)):
        resultado=resultado+lista_datos[i]
    return resultado

def callback2(data):
    global position
    position[0] = data.pose.pose.position.x
    position[1] = data.pose.pose.position.y
    position[2] = data.pose.pose.position.z

def callback(data):
    global points_datos
    global count
    global position
    global lista_nubes
    if (count%20 == 0):
        gen = point_cloud2.read_points(data, field_names=("x","y","z"),skip_nans=True)
        out_pcd = o3d.geometry.PointCloud()
        out_pcd.points = o3d.utility.Vector3dVector(gen)
        out_pcd.translate((position[0],position[1],position[2]))
        lista_nubes.append(out_pcd)
        if(count == 1000):
            nube = sumar_nubes(lista_nubes)
            o3d.io.write_point_cloud("/home/alexander/nubes/n1.pcd",nube)
    print(count)
    count = count + 1


    #rospy.loginfo(rospy.get_caller_id() + " I heard " + gen)

def listener():
    rospy.init_node('livox_sus',anonymous=True)
    rospy.Subscriber('/livox/lidarPC2',PointCloud2,callback)
    rospy.Subscriber('/robot_pose_ekf/odom_combined', PoseWithCovarianceStamped, callback2)
    rospy.spin()

if __name__=='__main__':
    points_datos = np.array([[0,0,0]])
    count = 0
    lista_nubes = []
    position = [0,0,0]
    listener()
