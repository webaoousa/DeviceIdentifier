//Include this code on any .m file 

 size_t size;
    sysctlbyname("hw.machine", NULL, &size, NULL, 0);
    char *devicec = malloc(size);
    sysctlbyname("hw.machine", devicec, &size, NULL, 0);
    NSString *device = [NSString stringWithCString:devicec encoding:NSUTF8StringEncoding];
    free(devicec);
    NSLog(@"Device is %@", device);

// This code return the exact device version inside the logs. Use isEqualtoString to compare with another NSString 
