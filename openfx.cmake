find_path( OPENFX_CXX_INCLUDE ofxsImageEffect.h PATHS ${CMAKE_CURRENT_LIST_DIR}/support/include )  
find_path( OPENFX_C_INCLUDE ofxImageEffect.h PATHS ${CMAKE_CURRENT_LIST_DIR}/include )  

#TODO: pixelTypes.h needs to be provided and the next line should be uncommented
#find_path( OPENFX_MY_INCLUDE pixelTypes.h PATHS $ENV{DEV_RBASE}/libaziopenfx-0.1 )  

find_path( OPENFX_LIB ofxSupport.lib PATHS $ENV{DEV_RBASE}/openfx-1.3/support/lib64 )
	  
set(Openfx_LIBRARIES debug ${OPENFX_LIB}/ofxSupportd.lib optimized ${OPENFX_LIB}/ofxSupport.lib)
include_directories(${OPENFX_CXX_INCLUDE} ${OPENFX_C_INCLUDE} ${OPENFX_MY_INCLUDE})

macro(AziOpenFx)
endmacro(AziOpenFx)