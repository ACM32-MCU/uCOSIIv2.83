#define   MAIN_GLOBALS
/* Operating System Header AND   Board Support Header */
#include "include.h"

#define  TASK_STK_SIZE                 128       /* Size of each task's stacks (# of WORDs)      */
OS_STK           TaskStartStk[TASK_STK_SIZE];
OS_STK           TaskUserStk[TASK_STK_SIZE];  
OS_STK           TaskLedStk[TASK_STK_SIZE];

#define MAX_USER_VALUE 0xF

void TaskStart(void *arg)
{
    FP64 curCyc = 0.0;
    while (1)
    {
        OSTimeDly(200);
        printf("TaskSUser  task2 is runing!!!%lf\r\n", 3.14159 * curCyc * curCyc);
        curCyc += 1.01;
    }
}


void TaskUser(void *arg)
{
    FP64 curTick = 0.0;

    while (1)
    {
        printf("TaskSUser  task1 is runing!!! %lf\r\n", curTick);

        OSTimeDly(400);

        curTick = (FP64)OSTimeGet();
        printf("TaskSUser  task1 is runing!!! %lf\r\n", curTick);

    }
}

void TaskLed(void *arg)
{
    FP64 curTick = 0.0;
    GPIO_InitTypeDef GPIO_Init;
    enum_PinState_t fe_PinState = GPIO_PIN_SET;    
    
    GPIO_Init.Pin = GPIO_PIN_3;
    GPIO_Init.Alternate = GPIO_FUNCTION_0;
    GPIO_Init.Mode = GPIO_MODE_OUTPUT_PP;
    GPIO_Init.Pull = GPIO_PULLDOWN;
    HAL_GPIO_Init(GPIOF, &GPIO_Init);
    
    while (1)
    {
        HAL_GPIO_WritePin(GPIOF, GPIO_PIN_3, fe_PinState);
        OSTimeDly(OS_TICKS_PER_SEC/2);
        fe_PinState = !fe_PinState;
    }
}

extern void BSPInit(void);

int main(void)
{
    BSPInit();
    OSInit();

    OSTaskCreate(TaskStart, (void *)0, (void *)&TaskStartStk[TASK_STK_SIZE - 1], OS_LOWEST_PRIO - 11);
    OSTaskCreate(TaskUser, (void *)0, (void *)&TaskUserStk[TASK_STK_SIZE - 1], OS_LOWEST_PRIO - 15); 
    OSTaskCreate(TaskLed, (void *)0, (void *)&TaskLedStk[TASK_STK_SIZE - 1], OS_LOWEST_PRIO - 16);

    OSStart();
}
