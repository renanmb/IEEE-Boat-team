#ifndef _ROS_roboboat_RelayControl_h
#define _ROS_roboboat_RelayControl_h

#include <stdint.h>
#include <string.h>
#include <stdlib.h>
#include "ros/msg.h"
#include "std_msgs/Header.h"

namespace roboboat
{

  class RelayControl : public ros::Msg
  {
    public:
      std_msgs::Header header;
      bool motor;
      bool pump;

    RelayControl():
      header(),
      motor(0),
      pump(0)
    {
    }

    virtual int serialize(unsigned char *outbuffer) const
    {
      int offset = 0;
      offset += this->header.serialize(outbuffer + offset);
      union {
        bool real;
        uint8_t base;
      } u_motor;
      u_motor.real = this->motor;
      *(outbuffer + offset + 0) = (u_motor.base >> (8 * 0)) & 0xFF;
      offset += sizeof(this->motor);
      union {
        bool real;
        uint8_t base;
      } u_pump;
      u_pump.real = this->pump;
      *(outbuffer + offset + 0) = (u_pump.base >> (8 * 0)) & 0xFF;
      offset += sizeof(this->pump);
      return offset;
    }

    virtual int deserialize(unsigned char *inbuffer)
    {
      int offset = 0;
      offset += this->header.deserialize(inbuffer + offset);
      union {
        bool real;
        uint8_t base;
      } u_motor;
      u_motor.base = 0;
      u_motor.base |= ((uint8_t) (*(inbuffer + offset + 0))) << (8 * 0);
      this->motor = u_motor.real;
      offset += sizeof(this->motor);
      union {
        bool real;
        uint8_t base;
      } u_pump;
      u_pump.base = 0;
      u_pump.base |= ((uint8_t) (*(inbuffer + offset + 0))) << (8 * 0);
      this->pump = u_pump.real;
      offset += sizeof(this->pump);
     return offset;
    }

    const char * getType(){ return "roboboat/RelayControl"; };
    const char * getMD5(){ return "d861d440ba0170c43fedaf3385911c0c"; };

  };

}
#endif