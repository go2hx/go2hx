package _internal.internal.cpu_test;
import stdgo._internal.internal.cpu.Cpu;
function testDisableAllCapabilities(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        _internal.internal.cpu_test.Cpu_test_mustSupportFeatureDetection.mustSupportFeatureDetection(_t);
        _internal.internal.cpu_test.Cpu_test__runDebugOptionsTest._runDebugOptionsTest(_t, ("TestAllCapabilitiesDisabled" : stdgo.GoString), ("cpu.all=off" : stdgo.GoString));
    }
