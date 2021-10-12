#include <gui/model/Model.hpp>
#include <gui/model/ModelListener.hpp>
#include <cmsis_os.h>
extern osSemaphoreId_t binarySemTuyaHandle;
Model::Model() : modelListener(0)
{

}

void Model::tick()
{

	if(osSemaphoreAcquire(binarySemTuyaHandle, (TickType_t)10) == osOK) {
		TuyaReady();
	}
}
void Model::TuyaReady() {
	modelListener->TuyaReady();
}
