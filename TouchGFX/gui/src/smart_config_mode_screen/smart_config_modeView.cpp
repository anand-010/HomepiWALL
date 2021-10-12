#include <gui/smart_config_mode_screen/smart_config_modeView.hpp>
extern "C"
{
	#include <wifi.h>
}
smart_config_modeView::smart_config_modeView()
{
}

void smart_config_modeView::setupScreen()
{
    smart_config_modeViewBase::setupScreen();
}

void smart_config_modeView::tearDownScreen()
{
    smart_config_modeViewBase::tearDownScreen();
}
void smart_config_modeView::smartConfigMode() {
	mcu_set_wifi_mode(SMART_CONFIG_STATE);
}

