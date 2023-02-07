#include <jvmti.h>
#include <stdlib.h>

JNIEXPORT jint JNICALL Agent_OnLoad(JavaVM *vm, char *options, void *reserved) {
    printf("onLoad\n");
    return 0;
}

JNIEXPORT jint JNICALL Agent_OnAttach(JavaVM *jvm, char *options, void *reserved) {
    printf("onAttach\n");
    return 0;
}

JNIEXPORT void JNICALL Agent_OnUnload(JavaVM *vm) {
    printf("onUnload\n");
}
