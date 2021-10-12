#ifndef SMART_CONFIG_MODEVIEW_HPP
#define SMART_CONFIG_MODEVIEW_HPP

#include <gui_generated/smart_config_mode_screen/smart_config_modeViewBase.hpp>
#include <gui/smart_config_mode_screen/smart_config_modePresenter.hpp>

class smart_config_modeView : public smart_config_modeViewBase
{
public:
    smart_config_modeView();
    virtual ~smart_config_modeView() {}
    virtual void setupScreen();
    virtual void tearDownScreen();
    virtual void smartConfigMode();
protected:
};

#endif // SMART_CONFIG_MODEVIEW_HPP
