#!/usr/bin/env
import rospy
from sensor_msgs.msg import PointCloud2, PointField
from sensor_msgs import point_cloud2

def callback(data):
    gen = point_cloud2.read_points(data, field_names=("x","y","z"),skip_nans=True)
    contador = 0
    for p in gen:
        print(len(p))
        contador = contador + 1
    print(contador)
    #rospy.loginfo(rospy.get_caller_id() + " I heard " + gen)

def listener():
    rospy.init_node('livox_sus',anonymous=True)
    rospy.Subscriber('/livox/lidarPC2',PointCloud2,callback)
    rospy.spin()

if __name__=='__main__':
    listener()
