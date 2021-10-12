#ifndef CONFIG_PAGEVIEW_HPP
#define CONFIG_PAGEVIEW_HPP

#include <gui_generated/config_page_screen/config_pageViewBase.hpp>
#include <gui/config_page_screen/config_pagePresenter.hpp>

class config_pageView : public config_pageViewBase
{
public:
    config_pageView();
    virtual ~config_pageView() {}
    virtual void setupScreen();
    virtual void tearDownScreen();
    Unicode::UnicodeChar txtBuffer[10];
protected:
    touchgfx::Callback<config_pageView, const touchgfx::Slider&, int> sliderValueChangedCallback;
    void sliderValueChangedCallbackHandler(const touchgfx::Slider& src, int value);
};

#endif // CONFIG_PAGEVIEW_HPP
