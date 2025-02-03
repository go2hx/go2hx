package stdgo.runtime;
private function set_testenvOptimizationOff(v:() -> Bool):() -> Bool {
        stdgo._internal.runtime.Runtime_testenvOptimizationOff.testenvOptimizationOff = v;
        return v;
    }
