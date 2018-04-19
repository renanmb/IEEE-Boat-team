#ifndef _ROS_roboboat_BoatHealth_h
#define _ROS_roboboat_BoatHealth_h

#include <stdint.h>
#include <string.h>
#include <stdlib.h>
#include "ros/msg.h"
#include "std_msgs/Header.h"

namespace roboboat
{

  class BoatHealth : public ros::Msg
  {
    public:
      std_msgs::Header header;
      float temp_l;
      float temp_r;
      float batt_p;
      float batt_l;
      float batt_r;
      bool water_l;
      bool water_m;
      bool water_r;

    BoatHealth():
      header(),
      temp_l(0),
      temp_r(0),
      batt_p(0),
      batt_l(0),
      batt_r(0),
      water_l(0),
      water_m(0),
      water_r(0)
    {
    }

    virtual int serialize(unsigned char *outbuffer) const
    {
      int offset = 0;
      offset += this->header.serialize(outbuffer + offset);
      union {
        float real;
        uint32_t base;
      } u_temp_l;
      u_temp_l.real = this->temp_l;
      *(outbuffer + offset + 0) = (u_temp_l.base >> (8 * 0)) & 0xFF;
      *(outbuffer + offset + 1) = (u_temp_l.base >> (8 * 1)) & 0xFF;
      *(outbuffer + offset + 2) = (u_temp_l.base >> (8 * 2)) & 0xFF;
      *(outbuffer + offset + 3) = (u_temp_l.base >> (8 * 3)) & 0xFF;
      offset += sizeof(this->temp_l);
      union {
        float real;
        uint32_t base;
      } u_temp_r;
      u_temp_r.real = this->temp_r;
      *(outbuffer + offset + 0) = (u_temp_r.base >> (8 * 0)) & 0xFF;
      *(outbuffer + offset + 1) = (u_temp_r.base >> (8 * 1)) & 0xFF;
      *(outbuffer + offset + 2) = (u_temp_r.base >> (8 * 2)) & 0xFF;
      *(outbuffer + offset + 3) = (u_temp_r.base >> (8 * 3)) & 0xFF;
      offset += sizeof(this->temp_r);
      union {
        float real;
        uint32_t base;
      } u_batt_p;
      u_batt_p.real = this->batt_p;
      *(outbuffer + offset + 0) = (u_batt_p.base >> (8 * 0)) & 0xFF;
      *(outbuffer + offset + 1) = (u_batt_p.base >> (8 * 1)) & 0xFF;
      *(outbuffer + offset + 2) = (u_batt_p.base >> (8 * 2)) & 0xFF;
      *(outbuffer + offset + 3) = (u_batt_p.base >> (8 * 3)) & 0xFF;
      offset += sizeof(this->batt_p);
      union {
        float real;
        uint32_t base;
      } u_batt_l;
      u_batt_l.real = this->batt_l;
      *(outbuffer + offset + 0) = (u_batt_l.base >> (8 * 0)) & 0xFF;
      *(outbuffer + offset + 1) = (u_batt_l.base >> (8 * 1)) & 0xFF;
      *(outbuffer + offset + 2) = (u_batt_l.base >> (8 * 2)) & 0xFF;
      *(outbuffer + offset + 3) = (u_batt_l.base >> (8 * 3)) & 0xFF;
      offset += sizeof(this->batt_l);
      union {
        float real;
        uint32_t base;
      } u_batt_r;
      u_batt_r.real = this->batt_r;
      *(outbuffer + offset + 0) = (u_batt_r.base >> (8 * 0)) & 0xFF;
      *(outbuffer + offset + 1) = (u_batt_r.base >> (8 * 1)) & 0xFF;
      *(outbuffer + offset + 2) = (u_batt_r.base >> (8 * 2)) & 0xFF;
      *(outbuffer + offset + 3) = (u_batt_r.base >> (8 * 3)) & 0xFF;
      offset += sizeof(this->batt_r);
      union {
        bool real;
        uint8_t base;
      } u_water_l;
      u_water_l.real = this->water_l;
      *(outbuffer + offset + 0) = (u_water_l.base >> (8 * 0)) & 0xFF;
      offset += sizeof(this->water_l);
      union {
        bool real;
        uint8_t base;
      } u_water_m;
      u_water_m.real = this->water_m;
      *(outbuffer + offset + 0) = (u_water_m.base >> (8 * 0)) & 0xFF;
      offset += sizeof(this->water_m);
      union {
        bool real;
        uint8_t base;
      } u_water_r;
      u_water_r.real = this->water_r;
      *(outbuffer + offset + 0) = (u_water_r.base >> (8 * 0)) & 0xFF;
      offset += sizeof(this->water_r);
      return offset;
    }

    virtual int deserialize(unsigned char *inbuffer)
    {
      int offset = 0;
      offset += this->header.deserialize(inbuffer + offset);
      union {
        float real;
        uint32_t base;
      } u_temp_l;
      u_temp_l.base = 0;
      u_temp_l.base |= ((uint32_t) (*(inbuffer + offset + 0))) << (8 * 0);
      u_temp_l.base |= ((uint32_t) (*(inbuffer + offset + 1))) << (8 * 1);
      u_temp_l.base |= ((uint32_t) (*(inbuffer + offset + 2))) << (8 * 2);
      u_temp_l.base |= ((uint32_t) (*(inbuffer + offset + 3))) << (8 * 3);
      this->temp_l = u_temp_l.real;
      offset += sizeof(this->temp_l);
      union {
        float real;
        uint32_t base;
      } u_temp_r;
      u_temp_r.base = 0;
      u_temp_r.base |= ((uint32_t) (*(inbuffer + offset + 0))) << (8 * 0);
      u_temp_r.base |= ((uint32_t) (*(inbuffer + offset + 1))) << (8 * 1);
      u_temp_r.base |= ((uint32_t) (*(inbuffer + offset + 2))) << (8 * 2);
      u_temp_r.base |= ((uint32_t) (*(inbuffer + offset + 3))) << (8 * 3);
      this->temp_r = u_temp_r.real;
      offset += sizeof(this->temp_r);
      union {
        float real;
        uint32_t base;
      } u_batt_p;
      u_batt_p.base = 0;
      u_batt_p.base |= ((uint32_t) (*(inbuffer + offset + 0))) << (8 * 0);
      u_batt_p.base |= ((uint32_t) (*(inbuffer + offset + 1))) << (8 * 1);
      u_batt_p.base |= ((uint32_t) (*(inbuffer + offset + 2))) << (8 * 2);
      u_batt_p.base |= ((uint32_t) (*(inbuffer + offset + 3))) << (8 * 3);
      this->batt_p = u_batt_p.real;
      offset += sizeof(this->batt_p);
      union {
        float real;
        uint32_t base;
      } u_batt_l;
      u_batt_l.base = 0;
      u_batt_l.base |= ((uint32_t) (*(inbuffer + offset + 0))) << (8 * 0);
      u_batt_l.base |= ((uint32_t) (*(inbuffer + offset + 1))) << (8 * 1);
      u_batt_l.base |= ((uint32_t) (*(inbuffer + offset + 2))) << (8 * 2);
      u_batt_l.base |= ((uint32_t) (*(inbuffer + offset + 3))) << (8 * 3);
      this->batt_l = u_batt_l.real;
      offset += sizeof(this->batt_l);
      union {
        float real;
        uint32_t base;
      } u_batt_r;
      u_batt_r.base = 0;
      u_batt_r.base |= ((uint32_t) (*(inbuffer + offset + 0))) << (8 * 0);
      u_batt_r.base |= ((uint32_t) (*(inbuffer + offset + 1))) << (8 * 1);
      u_batt_r.base |= ((uint32_t) (*(inbuffer + offset + 2))) << (8 * 2);
      u_batt_r.base |= ((uint32_t) (*(inbuffer + offset + 3))) << (8 * 3);
      this->batt_r = u_batt_r.real;
      offset += sizeof(this->batt_r);
      union {
        bool real;
        uint8_t base;
      } u_water_l;
      u_water_l.base = 0;
      u_water_l.base |= ((uint8_t) (*(inbuffer + offset + 0))) << (8 * 0);
      this->water_l = u_water_l.real;
      offset += sizeof(this->water_l);
      union {
        bool real;
        uint8_t base;
      } u_water_m;
      u_water_m.base = 0;
      u_water_m.base |= ((uint8_t) (*(inbuffer + offset + 0))) << (8 * 0);
      this->water_m = u_water_m.real;
      offset += sizeof(this->water_m);
      union {
        bool real;
        uint8_t base;
      } u_water_r;
      u_water_r.base = 0;
      u_water_r.base |= ((uint8_t) (*(inbuffer + offset + 0))) << (8 * 0);
      this->water_r = u_water_r.real;
      offset += sizeof(this->water_r);
     return offset;
    }

    const char * getType(){ return "roboboat/BoatHealth"; };
    const char * getMD5(){ return "99250fac6bf2b1f4a6ceeb24cfdc8ed9"; };

  };

}
#endif