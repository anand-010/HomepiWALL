#include <gui/config_page_screen/config_pageView.hpp>
#include <stm32f7xx_hal.h>
extern TIM_HandleTypeDef htim2;
config_pageView::config_pageView():sliderValueChangedCallback(this, &config_pageView::sliderValueChangedCallbackHandler)
{

}

void config_pageView::setupScreen()
{
    config_pageViewBase::setupScreen();
    btns_slider.setStartValueCallback(sliderValueChangedCallback);
}

void config_pageView::tearDownScreen()
{
    config_pageViewBase::tearDownScreen();
}
void config_pageView::sliderValueChangedCallbackHandler(const touchgfx::Slider& src, int value)
{
    if (&src == &btns_slider)
    {
        	Unicode::snprintf(txtBuffer, 10, "%d", 100);
//        	textArea1.resizeHeightToCurrentText();
//        	textArea1.invalidate();
        	htim2.Instance->CCR1 = 240 * value;
    }
}
