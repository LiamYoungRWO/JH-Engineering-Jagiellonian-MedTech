#include <stdio.h>
#include <stdlib.h>
#include <time.h>

// Simulated heart rate (for demonstration purposes)
int getHeartRate() {
    srand(time(NULL));
    return (rand() % 40) + 60; // Generate a random heart rate between 60 and 100 bpm
}

int main() {
    int heartRate = 0;

    while(1) {
        heartRate = getHeartRate();
        printf("Current Heart Rate: %d bpm\n", heartRate);

        // A simple threshold for demonstration. This doesn't represent a real-world decision mechanism.
        if (heartRate < 65) {
            printf("WARNING: Low heart rate detected!\n");
        } else if (heartRate > 95) {
            printf("WARNING: High heart rate detected!\n");
        }

        // Wait for 1 second before checking again
        sleep(1);
    }

    return 0;
}

## compile this code on a system with GCC using the command below

gcc DefibMonitor_Sample.c -o DefibMonitor_Sample


## Then to run

./DefibMonitor_Sample
