#!/usr/bin/env python

import rospy, json, time, socket, httplib
from std_msgs.msg import String

def heartbeat():
    pub = rospy.Publisher('heartbeat', String, queue_size=5)
    rospy.init_node('heartbeat', anonymous=True)
    rate = rospy.Rate(1) # 1 Hz heartbeat per competition rules
    while not rospy.is_shutdown():
        timestamp = time.strftime('%Y%m%d%H%M%S', time.gmtime())
        current_challenge = 'test'
        position = {'datum': 'WGS84', 'latitude': 32, 'longitude': 48}
        # Encode data to JSON
        hb_json = json.dumps({'timestamp': timestamp, 'challenge': current_challenge, 'position': position})
        json_bytes = hb_json.encode('utf-8')

        # POST data to server
        headers = {'Content-Type': 'application/json', 'Content-Length': len(json_bytes)}
        #localhost
        try:
            h = httplib.HTTPConnection('localhost', 80, timeout=2)
            h.request('POST', '/', json_bytes, headers)
            print h.getresponse().read()
        except socket.timeout:
            print "Request timed out!"
        except socket.error:
            print "Socket error!"

        log_str = 'Heartbeat Sent [{0}]: {1}'.format(rospy.get_time(), hb_json)
        pub.publish(log_str)
        rate.sleep()
        
if __name__ == '__main__':
    try:
        heartbeat()
    except rospy.ROSInterruptException:
        pass

