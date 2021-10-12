#ifndef CONFIG_PAGEPRESENTER_HPP
#define CONFIG_PAGEPRESENTER_HPP

#include <gui/model/ModelListener.hpp>
#include <mvp/Presenter.hpp>

using namespace touchgfx;

class config_pageView;

class config_pagePresenter : public touchgfx::Presenter, public ModelListener
{
public:
    config_pagePresenter(config_pageView& v);

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

    virtual ~config_pagePresenter() {};

private:
    config_pagePresenter();

    config_pageView& view;
};

#endif // CONFIG_PAGEPRESENTER_HPP
