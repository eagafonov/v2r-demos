#include <AP_HAL.h>
#include <AP_HAL_Linux.h>

const AP_HAL::HAL& hal = AP_HAL_Linux;  // Hardware abstraction layer

void setup()
{
    hal.console->printf("Hello from HAL setup!!!\n");
}

void loop()
{
     hal.console->printf("Hello from HAL loop!!! %d\n", hal.scheduler->millis());
     hal.scheduler->delay(1000);
}

AP_HAL_MAIN();    // special macro that replace's one of Arduino's to setup the code (e.g. ensure loop() is called in a loop).