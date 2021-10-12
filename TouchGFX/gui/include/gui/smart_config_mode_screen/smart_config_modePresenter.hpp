#ifndef SMART_CONFIG_MODEPRESENTER_HPP
#define SMART_CONFIG_MODEPRESENTER_HPP

#include <gui/model/ModelListener.hpp>
#include <mvp/Presenter.hpp>

using namespace touchgfx;

class smart_config_modeView;

class smart_config_modePresenter : public touchgfx::Presenter, public ModelListener
{
public:
    smart_config_modePresenter(smart_config_modeView& v);

    /**
     * The activate function is called automatically when this screen is "switched in"
     * (ie. made active). Initialization logic can be placed here.
     */
    virtual void activate();

    /**
     * The deactivate function is called automatically when this screen is "switched out"
     * (ie. made inactive). Teardown functionality can be placed here.
     */
    virtual void deactivate();

    virtual ~smart_config_modePresenter() {};

private:
    smart_config_modePresenter();

    smart_config_modeView& view;
};

#endif // SMART_CONFIG_MODEPRESENTER_HPP
