#include <stdio.h>
#include <fcntl.h>
#include <linux/ioctl.h>
#include <linux/v2r/adc.h>
#include <errno.h>
#include <memory.h>
#include <time.h>

int main ( ) {
    int fd;
    int err;

    fd = open("/dev/v2r_adc", O_RDWR);

    if (fd == -1)
    {
            printf("Error in opening file \n");
            return -1;
    };

    struct v2r_adc_single single = {
        .channel=0,
    };

    // Error cases
    printf("\nReading with invlid arguments\n");

    err = ioctl(fd, DM365_ADC_GET_SINGLE, 0);
    printf(" - single to NULL result:%d errno:%d\n", err, errno);

    err = ioctl(fd, DM365_ADC_GET_BLOCK, 0);
    printf(" - block to NULL result:%d errno:%d\n", err, err, errno);

    single.channel = -1;
    err = ioctl(fd, DM365_ADC_GET_SINGLE, &single);
    printf(" - single from invalid channel (-1) result:%d errno:%d\n", err, errno);

    single.channel = 6;
    err = ioctl(fd, DM365_ADC_GET_SINGLE, &single);
    printf(" - single from invalid channel (6) result:%d errno:%d\n", err, errno);

    printf("\nReading all channel on by one\n");

    // Read all channels one by one
    for (single.channel = 0; single.channel < ADC_MAX_CHANNELS; single.channel++) {
        err = ioctl(fd, DM365_ADC_GET_SINGLE, &single);

        if (err) {
            printf(" E ADC%d Failed to read value result:%d errno:%d\n", single.channel, err, errno);
        } else {
            printf("   ADC%d=%d (0x%x)\n", single.channel, single.value, single.value); 
        }
    }

    struct v2r_adc_block block;

    memset(&block, -1, sizeof(block)); // invlidate buffer to see changes in output

    // Read block
    err = ioctl(fd, DM365_ADC_GET_BLOCK, &block);
    if (err) {
        printf("\nReading block result:%d errno:%d\n", err, errno);
    } else {
        printf("\nReading block result - OK\n");
    }

    int i;
    for (i  = 0; i < sizeof(block.values) / sizeof(block.values[0]); i++) {
        printf("   ADC%d=%d (0x%x)\n", i, block.values[i],  block.values[i]); 
    }

    printf("\nReading multiple channels at once\n");

    // Read all channes in reverse order
    struct v2r_adc_multiple multiple;
    multiple.count = 6;

    for (i  = 0; i < sizeof(block.values) / sizeof(block.values[0]); i++) {
        multiple.channels[i] = 5 - i;
    }

    // Read multiple
    err = ioctl(fd, DM365_ADC_GET_MULTIPLE, &multiple);
    if (err) {
        printf("\nReading multiple result:%d errno:%d\n", err, errno);
    } else {
        printf("\nReading multiple result - OK\n");
    }

    for (i  = 0; i < multiple.count; i++) {
        printf("   #%d - %d (0x%x)\n", i, multiple.values[i],  multiple.values[i]);
    }


    int bnchmrk_count = 100;

    printf("\nBenchmarking: read single %d times\n", bnchmrk_count);

    int j;
    single.channel = 0;
    clock_t start = clock();

    for (j = 0; j < bnchmrk_count; j++) {
        ioctl(fd, DM365_ADC_GET_SINGLE, &single);
    }

    clock_t end = clock();

    double msec_per_mesure = (double)(end-start) / CLOCKS_PER_SEC / bnchmrk_count * 1000;

    printf(" %lf ms per single mesure\n", msec_per_mesure);

    printf("\nBenchmarking: read block %d times\n", bnchmrk_count);

    start = clock();
    for (j = 0; j < bnchmrk_count; j++) {
        ioctl(fd, DM365_ADC_GET_BLOCK, &block);
    }
    end = clock();

    msec_per_mesure = (double)(end-start) / CLOCKS_PER_SEC / bnchmrk_count * 1000;

    printf(" %lf ms per block mesure\n", msec_per_mesure);
    
    close(fd);
}