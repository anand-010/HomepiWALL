#include "main.h"
#include "cmsis_os.h"
#include "usb_device.h"
extern UART_HandleTypeDef huart6;
uint8_t tuyaChar[1] = {0};
uint8_t sample_array[1];
void tuyaUart(unsigned char value) {

	sample_array[0] = (uint8_t) value;
	HAL_UART_Transmit(&huart6, (uint8_t *) sample_array, 1, 200);
}
void setUartInterrupt() {
	HAL_UART_Receive_IT(&huart6, tuyaChar, 1);
}
void HAL_UART_RxCpltCallback(UART_HandleTypeDef *huart)
{
	CDC_Transmit_FS("y",1);
	//io_write(&SERIAL.io, (uint8_t *)sample_array, 1);
	uart_receive_input((unsigned const char) tuyaChar[0]);
    HAL_UART_Receive_IT(&huart6, tuyaChar, 1);
}

void transmitUart(uint8_t*);
void transmitUart(uint8_t* msg){
	HAL_UART_Transmit(&huart6, msg, 3, 200);
}
