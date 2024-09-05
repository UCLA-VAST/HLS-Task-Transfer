/************************************************************************************
 *  (c) Copyright 2014-2020 Falcon Computing Solutions, Inc. All rights reserved.
 *
 *  This file contains confidential and proprietary information
 *  of Falcon Computing Solutions, Inc. and is protected under U.S. and
 *  international copyright and other intellectual property laws.
 *
 ************************************************************************************/

#ifndef X_HLS_STREAM_SYN_H
#define X_HLS_STREAM_SYN_H

/*
 * This file contains a C++ model of hls::stream.
 * It defines AutoESL synthesis model.
 */
#ifndef __cplusplus
#error C++ is required to include this header file

#else

namespace hls {


//////////////////////////////////////////////
// Synthesis models for stream
//////////////////////////////////////////////
template<typename __STREAM_T__>
class stream
{
  public:
    /// Constructors
     stream(); 

     stream(const char* name); 

  /// Make copy constructor and assignment operator private
  private:  
     stream(const stream< __STREAM_T__ >& chn);

     stream& operator= (const stream< __STREAM_T__ >& chn); 

  public:
    /// Overload >> and << operators to implement read() and write()
     void operator >> (__STREAM_T__& rdata); 

     void operator << (const __STREAM_T__& wdata); 

  /// Public API
  public:
    /// Empty & Full
     bool empty() const; 

     bool full() const ;

    /// Blocking read
     void read(__STREAM_T__& dout); 

     __STREAM_T__ read(); 

    /// Nonblocking read
     bool read_nb(__STREAM_T__& dout); 

    /// Blocking write
     void write(const __STREAM_T__& din); 

    /// Nonblocking write
     bool write_nb(const __STREAM_T__& din); 

    /// Fifo size
     unsigned size(); 
    
  public:  
    __STREAM_T__ V; 
};


} // namespace hls

#endif // __cplusplus
#endif  // X_HLS_STREAM_SYN_H


