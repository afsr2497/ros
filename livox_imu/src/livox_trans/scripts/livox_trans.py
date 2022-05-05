#!/usr/bin/env
from turtle import position
import rospy
import open3d as o3d
import numpy as np
from sensor_msgs.msg import PointCloud2, PointField
from sensor_msgs import point_cloud2
from geometry_msgs.msg import PoseWithCovarianceStamped
import os

def sumar_nubes(lista_datos):
    resultado = lista_datos[0]
    for i in range(1,len(lista_datos)):
        resultado=resultado+lista_datos[i]
    return resultado

def callback2(data):
    global position
    global inclinacion
    position[0] = data.pose.pose.position.x
    position[1] = data.pose.pose.position.y
    position[2] = data.pose.pose.position.z
    inclinacion[0] = data.pose.pose.orientation.x
    inclinacion[1] = data.pose.pose.orientation.y
    inclinacion[2] = data.pose.pose.orientation.z
    inclinacion[3] = data.pose.pose.orientation.w

def callback(data):
    global points_datos
    global count
    global position
    global lista_nubes
    if (count%5 == 0):
        gen = point_cloud2.read_points(data, field_names=("x","y","z"),skip_nans=True)
        out_pcd = o3d.geometry.PointCloud()
        out_pcd.points = o3d.utility.Vector3dVector(gen)
        origin_frame = o3d.geometry.TriangleMesh.create_coordinate_frame()
        R = origin_frame.get_rotation_matrix_from_xyz((0,np.pi/2,0))
        out_pcd.rotate(R,center=(0,0,0))
        matrix_rot = o3d.geometry.get_rotation_matrix_from_quaternion(np.array([inclinacion[1],inclinacion[2],inclinacion[0],inclinacion[3]]))
        out_pcd.rotate(matrix_rot,center = (0,0,0))
        out_pcd.translate((position[0],position[1],position[2]))
        lista_nubes.append(out_pcd)
        if(count == 10300):
            nube = sumar_nubes(lista_nubes)
            ruta_1 = os.environ['HOME'] + "/Desktop/n1.pcd"
            o3d.io.write_point_cloud(ruta_1,nube)
    print(count)
    count = count + 1


    #rospy.loginfo(rospy.get_caller_id() + " I heard " + gen)

def listener():
    rospy.init_node('livox_sus',anonymous=True)
    rospy.Subscriber('/laserPointCloud',PointCloud2,callback)
    rospy.Subscriber('/robot_pose_ekf/odom_combined', PoseWithCovarianceStamped, callback2)
    rospy.spin()

if __name__=='__main__':
    global points_datos
    global count
    global lista_nubes
    global position
    global inclinacion
    points_datos = np.array([[0,0,0]])
    count = 0
    lista_nubes = []
    position = [0,0,0]
    inclinacion = [0,0,0,0]
    listener()
