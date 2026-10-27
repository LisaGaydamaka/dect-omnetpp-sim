package dect2020scheduledaccess;
simple ScheduledAccessQueue
{
    parameters:
        int D = default(10);                         
        double frameDuration @unit(s) = default(10ms);
        double meanType1ServiceTime @unit(s) = default(0.4166666667ms);
        string type1ServiceDistribution = default("exponential");
        double type1ServiceSCV = default(1.0);       
        bool deriveDectParametersFromD = default(true);
        int L = default(2);                          
        double type2ServiceTime @unit(s) = default(9ms); 
        bool deriveLambdaFromRho = default(true);
        double rho = default(0.05);                 
        double lambdaPerMs = default(0.12);         
        int r = default(30);                         
        int warmupCompletedPackets = default(200000);
        int targetCompletedPackets = default(1000000);
        int rngIndex = default(0);
        bool recordVectors = default(false);
        bool recordTailStatistics = default(false);       
        @class(ScheduledAccessQueue);
        @display("i=block/queue");
}
network DectScheduledAccessNetwork
{
    submodules:
        queue: ScheduledAccessQueue {
            @display("p=200,120");
        }
}
