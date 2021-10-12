#ifndef SCREEN2VIEW_HPP
#define SCREEN2VIEW_HPP

#include <gui_generated/screen2_screen/Screen2ViewBase.hpp>
#include <gui/screen2_screen/Screen2Presenter.hpp>

class Screen2View : public Screen2ViewBase
{
public:
    Screen2View();
    virtual ~Screen2View() {}
    virtual void setupScreen();
    virtual void tearDownScreen();
protected:
    touchgfx::Callback<Screen2View, const touchgfx::Slider&, int> sliderValueStartedChangeCallback;
    touchgfx::Callback<Screen2View, const touchgfx::Slider&, int> sliderValueChangedCallback;
    touchgfx::Callback<Screen2View, const touchgfx::Slider&, int> sliderValueConfirmedCallback;
    void sliderValueStartedChangeCallbackHandler(const touchgfx::Slider& src, int value);
    void sliderValueChangedCallbackHandler(const touchgfx::Slider& src, int value);
    void sliderValueConfirmedCallbackHandler(const touchgfx::Slider& src, int value);
};

#endif // SCREEN2VIEW_HPP
