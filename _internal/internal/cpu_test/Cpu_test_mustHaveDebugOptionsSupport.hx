package _internal.internal.cpu_test;
import stdgo._internal.internal.cpu.Cpu;
function mustHaveDebugOptionsSupport(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        if (!stdgo._internal.internal.cpu.Cpu_debugOptions.debugOptions) {
            _t.skipf(("skipping test: cpu feature options not supported by OS" : stdgo.GoString));
        };
    }
