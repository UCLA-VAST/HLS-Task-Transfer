/************************************************************************************
 *  (c) Copyright 2014-2020 Falcon Computing Solutions, Inc. All rights reserved.
 *
 *  This file contains confidential and proprietary information
 *  of Falcon Computing Solutions, Inc. and is protected under U.S. and
 *  international copyright and other intellectual property laws.
 *
 ************************************************************************************/



#ifndef __SIM_AP_SHIFT_REG_H__
#define __SIM_AP_SHIFT_REG_H__


/*
 * This file contains a C++ model of shift register.
 * It defines C level simulation model.
 */
#ifndef __cplusplus
#error C++ is required to include this header file
#else

#ifdef __HLS_SYN__
#error ap_shift_reg simulation header file is not applicable for synthesis
#else

#include <cassert>

//////////////////////////////////////////////
// C level simulation model for ap_shift_reg
//////////////////////////////////////////////
template<typename __SHIFT_T__, unsigned int __SHIFT_DEPTH__ = 32>
class ap_shift_reg
{
  public:
    /// Constructors
    ap_shift_reg(); 
    ap_shift_reg(const char* name); 
    /// Destructor
    virtual ~ap_shift_reg(); 

  private:
    /// Make copy constructor and assignment operator private
    ap_shift_reg(const ap_shift_reg< __SHIFT_T__, __SHIFT_DEPTH__ >& shreg)
   ; 

    ap_shift_reg& operator = (const ap_shift_reg< __SHIFT_T__,
        __SHIFT_DEPTH__ >& shreg)
;
  public:
    // Shift the queue, push to back and read from a given address.
    __SHIFT_T__ shift(__SHIFT_T__ DataIn,
        unsigned int Addr = __SHIFT_DEPTH__ - 1, bool Enable = true)
;
    // Read from a given address.
    __SHIFT_T__ read(unsigned int Addr = __SHIFT_DEPTH__ - 1) const
;
  protected:
    __SHIFT_T__ Array[__SHIFT_DEPTH__];
};

#endif //__SYNTHESIS__

#endif //__cplusplus

#endif //__SIM_AP_SHIFT_REG_H__
