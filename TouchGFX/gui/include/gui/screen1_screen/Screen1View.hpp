#ifndef SCREEN1VIEW_HPP
#define SCREEN1VIEW_HPP

#include <gui_generated/screen1_screen/Screen1ViewBase.hpp>
#include <gui/screen1_screen/Screen1Presenter.hpp>
#include <touchgfx/Color.hpp>
class Screen1View : public Screen1ViewBase
{
public:
	void switch1operation(bool);
    Screen1View();
    virtual ~Screen1View() {}
    virtual void setupScreen();
    virtual void tearDownScreen();
    void boxClickHandler(const Image& b, const ClickEvent& e);
    virtual void TuyaReady();
    Unicode::UnicodeChar txtBuffer[10];
    virtual void handleTickEvent();
protected:
    bool isPressed = false;
    long tickCounter = 0;
    virtual void handleDragEvent(const DragEvent& evt);
    virtual void handleClickEvent(const ClickEvent& evt);
    // Declaring callback type of box and clickEvent
    Callback<Screen1View, const Image&, const ClickEvent&> boxClickedCallback;
};


#endif // SCREEN1VIEW_HPP
