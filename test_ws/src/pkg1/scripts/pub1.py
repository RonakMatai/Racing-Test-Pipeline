#!/usr/bin/env python

import rospy
from pkg1.msg import array1d
import numpy as np

def talker():
    pub = rospy.Publisher('top1', array1d , queue_size=10)
    rospy.init_node('custom_talker1', anonymous=True)
    now = rospy.get_rostime()
    rate = rospy.Rate(10) # 10hz
    while not rospy.is_shutdown():
	x=np.random.randint(1000,size=100)
	# the sorting maniac
        x=sorting_monster(x)
        x=sorting_monster(x)
        y=sorting_monster(x)
	l=list(y)
        rospy.loginfo(l)
        pub.publish(l)
        rate.sleep()
    	now1 = rospy.get_rostime()
    	print(now1-now)

def sorting_monster(x):
    # for now we have three iterations
    x1=np.sort(x)
    np.random.shuffle(x1)
    return x1

if __name__ == '__main__':
    try:
        talker()
    except rospy.ROSInterruptException:
        pass
