#include <gui/screen2_screen/Screen2View.hpp>
extern "C" {
	#include "usbd_cdc_if.h"
}
Unicode::UnicodeChar txtBuffer[10] = {0};
Screen2View::Screen2View():    sliderValueStartedChangeCallback(this, &Screen2View::sliderValueStartedChangeCallbackHandler),
	    sliderValueChangedCallback(this, &Screen2View::sliderValueChangedCallbackHandler),
	    sliderValueConfirmedCallback(this, &Screen2View::sliderValueConfirmedCallbackHandler)
{
	slider1.setStartValueCallback(sliderValueStartedChangeCallback);
	slider1.setNewValueCallback(sliderValueChangedCallback);
	slider1.setStopValueCallback(sliderValueConfirmedCallback);
}

void Screen2View::setupScreen()
{
    Screen2ViewBase::setupScreen();
}

void Screen2View::tearDownScreen()
{
    Screen2ViewBase::tearDownScreen();
}
void Screen2View::sliderValueStartedChangeCallbackHandler(const touchgfx::Slider& src, int value)
{
    if (&src == &slider1)
    {
    	Unicode::snprintf(txtBuffer, 10, "%d", value);
    	CDC_Transmit_FS((uint8_t *)txtBuffer, 10);
    	circleProgress1.setValue(value * 20);
    }
}
void Screen2View::sliderValueChangedCallbackHandler(const touchgfx::Slider& src, int value)
{
    if (&src == &slider1)
    {
    	Unicode::snprintf(txtBuffer, 10, "%d", value);
    	CDC_Transmit_FS((uint8_t *)txtBuffer, 10);
    	circleProgress1.setValue(value * 20);
    }
}
void Screen2View::sliderValueConfirmedCallbackHandler(const touchgfx::Slider& src, int value)
{
    if (&src == &slider1)
    {
    	Unicode::snprintf(txtBuffer, 10, "%d", value);
    	CDC_Transmit_FS((uint8_t *)txtBuffer, 10);
    	circleProgress1.setValue(value * 20);
    }
}
