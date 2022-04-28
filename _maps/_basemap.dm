//#define LOWMEMORYMODE //uncomment this to load centcom and runtime station and thats it.

#include "map_files\generic\CentCom_Lumos.dmm"

#ifndef LOWMEMORYMODE
	#ifdef ALL_MAPS
		#include "map_files\Mining\Lavaland_Lumos.dmm"
		#include "map_files\debug\runtimestation.dmm"
		#include "map_files\Deltastation\DeltaStation2_Lumos.dmm"
		#include "map_files\MetaStation\MetaStation_Lumos.dmm"
		#include "map_files\OmegaStation\OmegaStation_Lumos.dmm"
		#include "map_files\PubbyStation\PubbyStation_Lumos.dmm"
		#include "map_files\BoxStation\BoxStation_Lumos.dmm"
		#include "map_files\LambdaStation\lambda_Lumos.dmm"
		#include "map_files\DIYstation/DIYstation.dmm"
		#include "map_files\SpookyStation\SpookyStation.dmm"

		#ifdef CIBUILDING
			#include "templates.dm"
		#endif
	#endif
#endif
