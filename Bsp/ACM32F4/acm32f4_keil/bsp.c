#include "include.h"

UART_HandleTypeDef UART2_Handle;

/*
*********************************************************************************************************
*                                         TIMER IRQ HANDLER
*
* Description : This function handles the timer interrupt that is used to generate TICKs for uC/OS-II.
*
* Arguments   : none
*
* Note(s)     : 1) The timer is 'reloaded' with the count at compare + the time for the next interrupt.
*                  Since we are using 'unsigned' integer math, overflows are irrelevant.
*********************************************************************************************************
*/

void  Tmr_TickISR_Handler(void)
{
    OSIntEnter();                                               /* Tell uC/OS-II that we are starting an ISR                */

    OSTimeTick();                                               /* Call uC/OS-II's OSTimeTick()                             */

    OSIntExit();                                                /* Tell uC/OS-II that we are leaving the ISR                */
}

void  Tmr_TickInit(void)
{
    SysTick_Config(System_Get_SystemClock() / OS_TICKS_PER_SEC);
}

/*********************************************************************************
* Function    : HAL_UART_MspInit
* Description : Initialize the UART MSP.
* Input       : huart: UART handle.
* Output      : 
* Author      : Chris_Kyle                         Data : 2020 
**********************************************************************************/
void HAL_UART_MspInit(UART_HandleTypeDef *huart)
{
    /* 
      NOTE: This function should be modified, when the callback is needed,
      the HAL_UART_MspInit can be implemented in the user file.
    */

    /* For Example */
    GPIO_InitTypeDef    GPIO_Uart1;
    
    if (huart->Instance == UART1) 
    {
        /* Enable Clock */
        System_Module_Enable(EN_UART1);
        //System_Module_Enable(EN_GPIOAB);
        
        /* Initialization GPIO */
        /* A9:Tx  A10:Rx */
        GPIO_Uart1.Pin       = GPIO_PIN_9 | GPIO_PIN_10;
        GPIO_Uart1.Mode      = GPIO_MODE_AF_PP;
        GPIO_Uart1.Pull      = GPIO_PULLUP;
        GPIO_Uart1.Alternate = GPIO_FUNCTION_2;
        
        HAL_GPIO_Init(GPIOA, &GPIO_Uart1);
        
        if (huart->Init.HwFlowCtl & UART_HWCONTROL_CTS) 
        {
            /* A11:CTS */
            GPIO_Uart1.Pin = GPIO_PIN_11;
            
            HAL_GPIO_Init(GPIOA, &GPIO_Uart1);
        }

        if (huart->Init.HwFlowCtl & UART_HWCONTROL_RTS) 
        {
            /* A12:RTS */
            GPIO_Uart1.Pin = GPIO_PIN_12;
            
            HAL_GPIO_Init(GPIOA, &GPIO_Uart1);
        }

        /* NVIC Config */
        NVIC_ClearPendingIRQ(UART1_IRQn);
        NVIC_SetPriority(UART1_IRQn, 5);
        NVIC_EnableIRQ(UART1_IRQn);
    }  
    else if (huart->Instance == UART2) 
    {
        /* Enable Clock */
        System_Module_Enable(EN_UART2);
        //System_Module_Enable(EN_GPIOAB);
        
        /* Initialization GPIO */
        /* A9:Tx  A10:Rx */
        GPIO_Uart1.Pin       = GPIO_PIN_2 | GPIO_PIN_3;
        GPIO_Uart1.Mode      = GPIO_MODE_AF_PP;
        GPIO_Uart1.Pull      = GPIO_PULLUP;
        GPIO_Uart1.Alternate = GPIO_FUNCTION_2;
        
        HAL_GPIO_Init(GPIOA, &GPIO_Uart1);
        
        if (huart->Init.HwFlowCtl & UART_HWCONTROL_CTS) 
        {
            /* A11:CTS */
            GPIO_Uart1.Pin = GPIO_PIN_0;
            
            HAL_GPIO_Init(GPIOA, &GPIO_Uart1);
        }

        if (huart->Init.HwFlowCtl & UART_HWCONTROL_RTS) 
        {
            /* A12:RTS */
            GPIO_Uart1.Pin = GPIO_PIN_1;
            
            HAL_GPIO_Init(GPIOA, &GPIO_Uart1);
        }

        /* NVIC Config */
        NVIC_ClearPendingIRQ(UART2_IRQn);
        NVIC_SetPriority(UART2_IRQn, 5);
        NVIC_EnableIRQ(UART2_IRQn);
    }
}

void uart_init(void)
{
    UART_HandleTypeDef *uart;

    uart = &UART2_Handle;
    uart->Instance        = UART2;
    uart->Init.BaudRate   = 115200;
    uart->Init.WordLength = UART_WORDLENGTH_8B;
    uart->Init.StopBits   = UART_STOPBITS_1;
    uart->Init.Parity     = UART_PARITY_NONE;
    uart->Init.Mode       = UART_MODE_TX_RX_DEBUG;
    uart->Init.HwFlowCtl  = UART_HWCONTROL_NONE;
    uart->Init.Mode       = UART_MODE_TX_RX_DEBUG;
    uart->Init.HwFlowCtl  = UART_HWCONTROL_NONE;

    HAL_UART_Init(uart);

    /* Enable TX interrupt */
    //uart->Instance->IE |= UART_IE_TXI;
}

void BSPInit(void)
{
    /* Setup the System. */
    System_Init();

    /* Init the UART. */
    uart_init();

    /* SysTick Init. */
    Tmr_TickInit();
}

