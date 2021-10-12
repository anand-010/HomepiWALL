extern "C"
{
	#include "usb_device.h"
	#include <wifi.h>
	#include<StructDefenitions.h>
	extern struct switchData SwitchDatas[10];
	struct switchData prevData[10];
}
#include <gui/screen1_screen/Screen1View.hpp>
#include<SwitchOperations.hpp>
#define BLUE Color::getColorFrom24BitRGB(0, 0, 255)
#include <BitmapDatabase.hpp>
#include <stm32f7xx_hal.h>
bool clickType = false;
bool isDragged = false;
bool isTimeElasped = false;
#ifdef SIMULATOR
	const uint32_t cacheSize = 0x300000;
    uint16_t* sdram = (uint16_t*)sdramBuffer;
#else
    const uint32_t cacheSize = 0x300000;
    uint16_t* sdram = (uint16_t*)(0xC011EE00);
#endif
//BitmapId dynamicBitmap1, dynamicBitmap2;
Screen1View::Screen1View() :boxClickedCallback(this, &Screen1View::boxClickHandler) { }

void Screen1View::setupScreen()
{
    Screen1ViewBase::setupScreen();
    image1.setClickAction(boxClickedCallback);
    image2.setClickAction(boxClickedCallback);
    image3.setClickAction(boxClickedCallback);
    image4.setClickAction(boxClickedCallback);
    image6.setClickAction(boxClickedCallback);
    image7.setClickAction(boxClickedCallback);
    for(uint8_t i=0; i< 10; i++){
    	SwitchDatas[i] = {
    			false,
				0
    	};
    	prevData[i] = {
    			false,
				0
    	};
    }
//    Bitmap::setCache(sdram, cacheSize, 2); //320Kb cache
//    dynamicBitmap1 = Bitmap::dynamicBitmapCreate(440, 272, Bitmap::RGB565);
//    dynamicBitmap2 = Bitmap::dynamicBitmapCreate(272, 432, Bitmap::RGB565);
//    page1.setCacheBitmap(dynamicBitmap1);/
//    container8.setCacheBitmap(dynamicBitmap1);
//    page1.enableCachedMode(true);
//    container8.enableCachedMode(true);
//    page1.updateCache();
//    container8.updateCache();
}

void Screen1View::tearDownScreen()
{
    Screen1ViewBase::tearDownScreen();
}
void Screen1View::boxClickHandler(const Image& b, const ClickEvent& e){
	if(&b == &image1) {
		if(e.getType() == ClickEvent::RELEASED) {
		//		image1.
		SwitchOP(image1, DPID_SWITCH_1, GPIOG, GPIO_PIN_6, 0);
//				if(SwitchDatas[0].state) {
//
//
//		//			Unicode::snprintf(txtBuffer, 10, "%d", 1);
//		//			textArea1.setWildcard(txtBuffer);
//		//			textArea1.setColor(BLUE);
//		//			textArea1.invalidate();
//
//					image1.setBitmap(BITMAP_BULB_ON_ID);
//					image1.invalidate();
//		//			OutputD3(false);
//					HAL_GPIO_WritePin(GPIOG, GPIO_PIN_6, GPIO_PIN_RESET);
//					SwitchDatas[0].state = !SwitchDatas[0].state;
//					mcu_dp_bool_update(DPID_SWITCH_1, false);
//		//			transmitUart((uint8_t *)"onn");
//				}
//				else {
//		//			Unicode::snprintf(txtBuffer, 10, "%d", 1);
//		//			textArea1.setWildcard(txtBuffer);
//		//			textArea1.setColor(BLUE);
//		//			textArea1.invalidate();
//
//					image1.setBitmap(BITMAP_BULB_OFF_ID);
//					image1.invalidate();
//		//			OutputD3(true);
//					HAL_GPIO_WritePin(GPIOG, GPIO_PIN_6, GPIO_PIN_SET);
//					SwitchDatas[0].state = !SwitchDatas[0].state;
//					mcu_dp_bool_update(DPID_SWITCH_1, true);
//		//			transmitUart((uint8_t *)"off");
//				}
		//		page1.updateCache();
		//		Unicode::snprintf(txtBuffer, 10, "%d", 3);
		//		textArea1.setWildcard(txtBuffer);
		//		textArea1.setColor(BLUE);
		//		textArea1.invalidate();
		//
		//		bulb1.setBitmap(BITMAP_BULB_OFF_ID);
		//
		//		image1.setBitmap(BITMAP_PURPLE_BG_ID);
		//		image1.invalidate();
		//		transmitUart((uint8_t *)"mmm");
			}
	}
	if(&b == &image2) {
			if(e.getType() == ClickEvent::RELEASED) {
				SwitchOP(image2, DPID_SWITCH_2, GPIOB, GPIO_PIN_4, 1);
//					if(SwitchDatas[1].state) {
//						image2.setBitmap(BITMAP_BULB_ON_ID);
//						image2.invalidate();
//						HAL_GPIO_WritePin(GPIOB, GPIO_PIN_4, GPIO_PIN_RESET);
//						SwitchDatas[1].state = !SwitchDatas[1].state;
//						mcu_dp_bool_update(DPID_SWITCH_2, false);
//					}
//					else {
//						image2.setBitmap(BITMAP_BULB_OFF_ID);
//						image2.invalidate();
//						HAL_GPIO_WritePin(GPIOB, GPIO_PIN_4, GPIO_PIN_SET);
//						SwitchDatas[1].state = !SwitchDatas[1].state;
//						mcu_dp_bool_update(DPID_SWITCH_2, true);
//					}
				}
		}
	if(&b == &image3) {
	    if(e.getType() == ClickEvent::PRESSED)
	    {
	        isPressed = true;
	    }
	    if(e.getType() == ClickEvent::RELEASED)
	    {
	        isPressed = false;
	        if(!isTimeElasped && !isDragged) {
	        	if(SwitchDatas[2].state) {
	        							image3.setBitmap(BITMAP_FAN_ON_ID);
	        							image3.invalidate();
	        							HAL_GPIO_WritePin(GPIOG, GPIO_PIN_7, GPIO_PIN_RESET);
	        							SwitchDatas[2].state = !SwitchDatas[2].state;
	        							mcu_dp_bool_update(DPID_SWITCH_2, false);
	        						}
	        						else {
	        							image3.setBitmap(BITMAP_FAN_OFF_ID);
	        							image3.invalidate();
	        							HAL_GPIO_WritePin(GPIOG, GPIO_PIN_7, GPIO_PIN_SET);
	        							SwitchDatas[2].state = !SwitchDatas[2].state;
	        							mcu_dp_bool_update(DPID_SWITCH_2, true);
	        						}
	        }
	    }
//		static_cast<FrontendApplication*>(Application::getInstance())->gotoScreen2ScreenCoverTransitionEast();
	}
	if(&b == &image4) {
			if(e.getType() == ClickEvent::RELEASED) {
					if(SwitchDatas[4].state) {
						image4.setBitmap(BITMAP_BULB_ON_ID);
						image4.invalidate();
						HAL_GPIO_WritePin(GPIOI, GPIO_PIN_0, GPIO_PIN_RESET);
						SwitchDatas[4].state = !SwitchDatas[4].state;
						mcu_dp_bool_update(DPID_SWITCH_2, false);
					}
					else {
						image4.setBitmap(BITMAP_BULB_OFF_ID);
						image4.invalidate();
						HAL_GPIO_WritePin(GPIOI, GPIO_PIN_0, GPIO_PIN_SET);
						SwitchDatas[4].state = !SwitchDatas[4].state;
						mcu_dp_bool_update(DPID_SWITCH_2, true);
					}
				}
		}
	if(&b == &image7) {
			if(e.getType() == ClickEvent::RELEASED) {
					if(SwitchDatas[7].state) {
						image7.setBitmap(BITMAP_BULB_ON_ID);
						image7.invalidate();
						HAL_GPIO_WritePin(GPIOA, GPIO_PIN_8, GPIO_PIN_RESET);
						SwitchDatas[7].state = !SwitchDatas[7].state;
						mcu_dp_bool_update(DPID_SWITCH_2, false);
					}
					else {
						image7.setBitmap(BITMAP_BULB_OFF_ID);
						image7.invalidate();
						HAL_GPIO_WritePin(GPIOA, GPIO_PIN_8, GPIO_PIN_SET);
						SwitchDatas[7].state = !SwitchDatas[7].state;
						mcu_dp_bool_update(DPID_SWITCH_2, true);
					}
				}
		}
	if(&b == &image6) {
			if(e.getType() == ClickEvent::RELEASED) {
					if(SwitchDatas[6].state) {
						image6.setBitmap(BITMAP_BULB_ON_ID);
						image6.invalidate();
						HAL_GPIO_WritePin(GPIOI, GPIO_PIN_2, GPIO_PIN_RESET);
						SwitchDatas[6].state = !SwitchDatas[6].state;
						mcu_dp_bool_update(DPID_SWITCH_2, false);
					}
					else {
						image6.setBitmap(BITMAP_BULB_OFF_ID);
						image6.invalidate();
						HAL_GPIO_WritePin(GPIOI, GPIO_PIN_2, GPIO_PIN_SET);
						SwitchDatas[6].state = !SwitchDatas[6].state;
						mcu_dp_bool_update(DPID_SWITCH_2, true);
					}
				}
		}
}
void Screen1View::switch1operation(bool value) {
	if(value) {
		image1.setBitmap(BITMAP_BULB_ON_ID);
		image1.invalidate();
	}
	else {
		image1.setBitmap(BITMAP_BULB_OFF_ID);
		image1.invalidate();
	}
}
void Screen1View::TuyaReady(){
	for(uint8_t j=0; j<10; j++){
		if(SwitchDatas[j].state != prevData[j].state) {

		}
	}

	if(SwitchDatas[0].state) {
		image1.setBitmap(BITMAP_BULB_ON_ID);
		image1.invalidate();
		HAL_GPIO_WritePin(GPIOG, GPIO_PIN_6, GPIO_PIN_RESET);
		SwitchDatas[0].state = !SwitchDatas[0].state;
		mcu_dp_bool_update(DPID_SWITCH_1, true);
	}
	else {
		image1.setBitmap(BITMAP_BULB_OFF_ID);
		image1.invalidate();
		HAL_GPIO_WritePin(GPIOG, GPIO_PIN_6, GPIO_PIN_SET);
		SwitchDatas[0].state = !SwitchDatas[0].state;
		mcu_dp_bool_update(DPID_SWITCH_1, false);
	}
}
void Screen1View::handleTickEvent()
{
	if(isDragged){
		tickCounter = 0;
		isPressed = false;
	}
    if(isPressed)
    {
        tickCounter++;
        if(tickCounter%60 == 0) //3 seconds have passed
        {
        	isTimeElasped = true;
            tickCounter = 0;
//            Application::getInstance()->unregisterTimerWidget(this);
            static_cast<FrontendApplication*>(Application::getInstance())->gotoScreen2ScreenCoverTransitionEast();
        }
    }
    else
    {
        tickCounter = 0;
    }
}
void Screen1View::handleDragEvent(const DragEvent& evt)
{
	//Here if we start dragging, we should send a CANCEL event to the currently PRESSED item, and start dragging the swipecontainer.
	switch_box_swipe.handleDragEvent(evt);
	if(evt.getDeltaX() > 5 || evt.getDeltaX() < -5){
		isDragged = true;
	}
}
void Screen1View::handleClickEvent(const ClickEvent& evt)
{
	switch_box_swipe.handleClickEvent(evt);
//	image1.handleClickEvent(evt);
        // The recipient of the initial touch is impossible to determine. Are we trying to drag but accidentally started on the same position as a button? Logic dictates that we're trying to press the button, so check for intersection and issue event manually.
	if(image1.getRect().intersect(evt.getX()-40, evt.getY()) && evt.getType() == ClickEvent::RELEASED &&!isDragged)
	{
		image1.handleClickEvent(evt);
	}
	if(image2.getRect().intersect(evt.getX()-40, evt.getY()) && evt.getType() == ClickEvent::RELEASED &&!isDragged)
	{
		image2.handleClickEvent(evt);
	}
	if(image3.getRect().intersect(evt.getX()-40, evt.getY()) &&!isDragged)
	{
		image3.handleClickEvent(evt);
	}
	if(image4.getRect().intersect(evt.getX()-40, evt.getY()) && evt.getType() == ClickEvent::RELEASED &&!isDragged)
	{
		image4.handleClickEvent(evt);
	}
	if(image6.getRect().intersect(evt.getX()-40, evt.getY()) && evt.getType() == ClickEvent::RELEASED &&!isDragged)
	{
		image6.handleClickEvent(evt);
	}
	if(image7.getRect().intersect(evt.getX()-40, evt.getY()) && evt.getType() == ClickEvent::RELEASED &&!isDragged)
	{
		image7.handleClickEvent(evt);
	}
	if(buttonWithIcon1.getRect().intersect(evt.getX()-40, evt.getY()) && evt.getType() == ClickEvent::RELEASED &&!isDragged)
	{
		buttonWithIcon1.handleClickEvent(evt);
	}
	if(buttonWithIcon1_1.getRect().intersect(evt.getX()-40, evt.getY()) && evt.getType() == ClickEvent::RELEASED &&!isDragged)
	{
		buttonWithIcon1_1.handleClickEvent(evt);
	}
	if(wifi_btn.getRect().intersect(evt.getX(), evt.getY()))
	{
		wifi_btn.handleClickEvent(evt);
	}
	if(config_btn.getRect().intersect(evt.getX(), evt.getY()))
	{
		config_btn.handleClickEvent(evt);
	}
	if(settings_btn.getRect().intersect(evt.getX(), evt.getY()))
	{
		settings_btn.handleClickEvent(evt);
	}
	if(evt.getType() == ClickEvent::RELEASED) {
		isDragged = false;
	}
	if(evt.getType() == ClickEvent::PRESSED) {
		isTimeElasped = false;
	}
//	else
//	{
//		mySwipeContainer.handleClickEvent(evt);
//	}
//
//	// && no longer intersects OR the swipe container is swiping. What should the functionality be? If you're dragging but are within the button rect, should it receive a release event to trigger a callback or not?
//	if (wasDragging && evt.getType() == ClickEvent::RELEASED)
//	{
//		//In this casesend a cancel event. we do not want the button to send a released event
//		myButton.handleClickEvent(ClickEvent(ClickEvent::CANCEL, 0, 0));
//	}
}
