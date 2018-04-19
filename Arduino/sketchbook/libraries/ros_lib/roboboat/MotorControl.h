#ifndef _ROS_roboboat_MotorControl_h
#define _ROS_roboboat_MotorControl_h

#include <stdint.h>
#include <string.h>
#include <stdlib.h>
#include "ros/msg.h"
#include "std_msgs/Header.h"

namespace roboboat
{

  class MotorControl : public ros::Msg
  {
    public:
      std_msgs::Header header;
      uint16_t left_motor;
      uint16_t right_motor;

    MotorControl():
      header(),
      left_motor(0),
      right_motor(0)
    {
    }

    virtual int serialize(unsigned char *outbuffer) const
    {
      int offset = 0;
      offset += this->header.serialize(outbuffer + offset);
      *(outbuffer + offset + 0) = (this->left_motor >> (8 * 0)) & 0xFF;
      *(outbuffer + offset + 1) = (this->left_motor >> (8 * 1)) & 0xFF;
      offset += sizeof(this->left_motor);
      *(outbuffer + offset + 0) = (this->right_motor >> (8 * 0)) & 0xFF;
      *(outbuffer + offset + 1) = (this->right_motor >> (8 * 1)) & 0xFF;
      offset += sizeof(this->right_motor);
      return offset;
    }

    virtual int deserialize(unsigned char *inbuffer)
    {
      int offset = 0;
      offset += this->header.deserialize(inbuffer + offset);
      this->left_motor =  ((uint16_t) (*(inbuffer + offset)));
      this->left_motor |= ((uint16_t) (*(inbuffer + offset + 1))) << (8 * 1);
      offset += sizeof(this->left_motor);
      this->right_motor =  ((uint16_t) (*(inbuffer + offset)));
      this->right_motor |= ((uint16_t) (*(inbuffer + offset + 1))) << (8 * 1);
      offset += sizeof(this->right_motor);
     return offset;
    }

    const char * getType(){ return "roboboat/MotorControl"; };
    const char * getMD5(){ return "4ce58821abb7342cd0cee3d9424cf458"; };

  };

}
#endif