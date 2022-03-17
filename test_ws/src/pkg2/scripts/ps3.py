#!/usr/bin/env python

import rospy
from std_msgs.msg import Empty
from std_msgs.msg import String
import numpy as np
from pkg1.msg import array1d

last_data = ""
started = False
pub = rospy.Publisher('/top3', array1d, queue_size=10) 

def callback(data):
    print "New message received"
    global started, last_data
    last_data = np.array(data.a) 
    x=sorting_monster(last_data)
    if (not started):
        started = True
    if (started):
        pub.publish(x)
        print "Last message published"
    	now1 = rospy.get_rostime()
    	print(now1)

#def timer_callback(event):
 #   global started, pub, last_data
  #  if (started):
   #     pub.publish(last_data)
    #    print "Last message published"


def listener():
    rospy.init_node('node3', anonymous=True)
    rospy.Subscriber('top2', array1d, callback)
#    timer = rospy.Timer(rospy.Duration(0.5), timer_callback)
    rospy.spin()    
 #   timer.shutdown()
def sorting_monster(x):
    x.sort()
    y1=np.random.shuffle(x)
    return y1

if __name__ == '__main__':
    print "Running"
    listener()
