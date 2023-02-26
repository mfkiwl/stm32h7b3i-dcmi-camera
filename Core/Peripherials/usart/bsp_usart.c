/**
  ******************************************************************************
  * @file    bsp_debug_usart.c
  * @author  fire
  * @version V1.0
  * @date    2016-xx-xx
  * @brief   ʹ�ô���2���ض���c��printf������usart�˿�
  ******************************************************************************
  * @attention
  *
  * ʵ��ƽ̨:Ұ��  STM32 H743 ������  
  * ��̳    :http://www.firebbs.cn
  * �Ա�    :http://firestm32.taobao.com
  *
  ******************************************************************************
  */ 
  
#include "bsp_usart.h"

UART_HandleTypeDef UartHandle;
 /**
  * @brief  USARTx GPIO ����,����ģʽ���á�115200 8-N-1
  * @param  ��
  * @retval ��
  */  
void UARTx_Config(void)
{
	GPIO_InitTypeDef GPIO_InitStruct;

	RCC_PeriphCLKInitTypeDef RCC_PeriphClkInit;
			
	UARTx_RX_GPIO_CLK_ENABLE();
	UARTx_TX_GPIO_CLK_ENABLE();
	
	/* ���ô���2ʱ��Դ*/
	RCC_PeriphClkInit.PeriphClockSelection = RCC_PERIPHCLK_USART1;
	RCC_PeriphClkInit.Usart16ClockSelection = RCC_USART16CLKSOURCE_D2PCLK2;
	HAL_RCCEx_PeriphCLKConfig(&RCC_PeriphClkInit);
	/* ʹ�� UART ʱ�� */
	UARTx_CLK_ENABLE();

	/**USART1 GPIO Configuration    
    PA9     ------> USART1_TX
    PA10    ------> USART1_RX 
	*/
	/* ����Tx����Ϊ���ù���  */
	GPIO_InitStruct.Pin = UARTx_TX_PIN;
	GPIO_InitStruct.Mode = GPIO_MODE_AF_PP;
	GPIO_InitStruct.Pull = GPIO_PULLUP;
	GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_HIGH;
	GPIO_InitStruct.Alternate = UARTx_TX_AF;
	HAL_GPIO_Init(UARTx_TX_GPIO_PORT, &GPIO_InitStruct);
	
	/* ����Rx����Ϊ���ù��� */
	GPIO_InitStruct.Pin = UARTx_RX_PIN;
	GPIO_InitStruct.Alternate = UARTx_RX_AF;
	HAL_GPIO_Init(UARTx_RX_GPIO_PORT, &GPIO_InitStruct); 
	
	/* ���ô�USARTx ģʽ */
	UartHandle.Instance = UARTx;
	UartHandle.Init.BaudRate = 115200;
	UartHandle.Init.WordLength = UART_WORDLENGTH_8B;
	UartHandle.Init.StopBits = UART_STOPBITS_1;
	UartHandle.Init.Parity = UART_PARITY_NONE;
	UartHandle.Init.Mode = UART_MODE_TX_RX;
	HAL_UART_Init(&UartHandle);

}

///�ض���c�⺯��printf������USARTx���ض�����ʹ��printf����
int fputc(int ch, FILE *f)
{
    /* ����һ���ֽ����ݵ�����USARTx */
	HAL_UART_Transmit(&UartHandle, (uint8_t *)&ch, 1, 0xFFFF);
	return (ch);
}

///�ض���c�⺯��scanf������USARTx����д����ʹ��scanf��getchar�Ⱥ���
int fgetc(FILE *f)
{	
	int ch;
	/* �ȴ������������� */
	while(__HAL_UART_GET_FLAG(&UartHandle, UART_FLAG_RXNE) == RESET);
	__HAL_UART_CLEAR_OREFLAG(&UartHandle);
	HAL_UART_Receive(&UartHandle, (uint8_t *)&ch, 1, 0xFFFF);
	return (ch);
}
/*********************************************END OF FILE**********************/
