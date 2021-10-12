/*
 * SwitchOperations.hpp
 *
 *  Created on: Oct 12, 2021
 *      Author: Anand s
 */

#ifndef APPLICATION_USER_USERGLOBALVARIABLES_SWITCHOPERATIONS_HPP_
#define APPLICATION_USER_USERGLOBALVARIABLES_SWITCHOPERATIONS_HPP_

#include <BitmapDatabase.hpp>
extern "C"
{
	#include<StructDefenitions.h>
	extern struct switchData SwitchDatas[10];
}
void SwitchOP(Image& image, uint16_t dpid,GPIO_TypeDef* GPIOx, uint16_t GPIO_Pin, uint8_t SwitchNo){
	if(SwitchDatas[SwitchNo].state) {
		image.setBitmap(BITMAP_BULB_ON_ID);
		image.invalidate();
	//			OutputD3(false);
		HAL_GPIO_WritePin(GPIOx, GPIO_Pin, GPIO_PIN_RESET);
		SwitchDatas[SwitchNo].state = !SwitchDatas[SwitchNo].state;
		mcu_dp_bool_update(dpid, false);
	}
	else {
		image.setBitmap(BITMAP_BULB_OFF_ID);
		image.invalidate();
	//			OutputD3(true);
		HAL_GPIO_WritePin(GPIOx, GPIO_Pin, GPIO_PIN_SET);
		SwitchDatas[SwitchNo].state = !SwitchDatas[SwitchNo].state;
		mcu_dp_bool_update(dpid, true);
	}

}
void TuyaSwitchOP(Image& image, uint16_t dpid,GPIO_TypeDef* GPIOx, uint16_t GPIO_Pin, uint8_t SwitchNo){
	if(SwitchDatas[SwitchNo].state) {
		image.setBitmap(BITMAP_BULB_ON_ID);
		image.invalidate();
		HAL_GPIO_WritePin(GPIOx, GPIO_Pin, GPIO_PIN_RESET);
		mcu_dp_bool_update(dpid, true);
	}
	else {
		image.setBitmap(BITMAP_BULB_OFF_ID);
		image.invalidate();
		HAL_GPIO_WritePin(GPIOx, GPIO_Pin, GPIO_PIN_SET);
		mcu_dp_bool_update(dpid, false);
	}
}




#endif /* APPLICATION_USER_USERGLOBALVARIABLES_SWITCHOPERATIONS_HPP_ */
