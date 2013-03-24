//Include this code on any .m file 

size_t size;
        sysctlbyname("hw.machine", NULL, &size, NULL, 0);
        char *machine = malloc(size);
        sysctlbyname("hw.machine", machine, &size, NULL, 0);
        NSString *platform = [NSString stringWithCString:machine encoding:NSUTF8StringEncoding];
        free(machine);
       NSLog(@"Device is %@", platform);

// This code return the exact device version inside the logs. Use isEqualtoString to compare with another NSString 
