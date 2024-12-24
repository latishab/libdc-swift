//
//  BLETest-Bridging-Header.h
//  BLETest
//
//  Created by Latisha Besariani on 05/07/24.
//

#ifndef BLETest_Bridging_Header_h
#define BLETest_Bridging_Header_h

// Include local headers
#include "BLEBridge.h"
#include "configuredc.h"

// Include libdivecomputer headers
#include <libdivecomputer/device.h>
#include <libdivecomputer/common.h>
#include <libdivecomputer/parser.h>

// Define the sample callback type with correct signature
typedef void (*dc_sample_callback_t)(dc_sample_type_t type, 
                                   const dc_sample_value_t *value, 
                                   void *userdata);

// Define the dive callback type
typedef int (*dc_dive_callback_t)(const unsigned char *data, unsigned int size, 
                                const unsigned char *fingerprint, unsigned int fsize,
                                void *userdata);

#endif /* BLETest_Bridging_Header_h */
