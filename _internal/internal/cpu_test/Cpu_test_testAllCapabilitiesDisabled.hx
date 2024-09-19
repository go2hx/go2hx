package _internal.internal.cpu_test;
import stdgo._internal.internal.cpu.Cpu;
function testAllCapabilitiesDisabled(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        _internal.internal.cpu_test.Cpu_test_mustHaveDebugOptionsSupport.mustHaveDebugOptionsSupport(_t);
        if (stdgo._internal.internal.godebug.Godebug_new_.new_(("#cpu.all" : stdgo.GoString)).value() != (("off" : stdgo.GoString))) {
            _t.skipf(("skipping test: GODEBUG=cpu.all=off not set" : stdgo.GoString));
        };
        for (__8 => _o in stdgo._internal.internal.cpu.Cpu_options.options) {
            var _want = (false : Bool);
            {
                var _got = (_o.feature.value : Bool);
                if (_got != (_want)) {
                    _t.errorf(("%v: expected %v, got %v" : stdgo.GoString), stdgo.Go.toInterface(_o.name), stdgo.Go.toInterface(_want), stdgo.Go.toInterface(_got));
                };
            };
        };
    }
