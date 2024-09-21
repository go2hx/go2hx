package _internal.flag_test;
import stdgo._internal.flag.Flag;
function testDefineAfterSet(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _flags = stdgo._internal.flag.Flag_newFlagSet.newFlagSet(("test" : stdgo.GoString), (0 : stdgo._internal.flag.Flag_ErrorHandling.ErrorHandling));
        _flags.set(("myFlag" : stdgo.GoString), ("value" : stdgo.GoString));
        _internal.flag_test.Flag_test__mustPanic._mustPanic(_t, ("DefineAfterSet" : stdgo.GoString), ("flag myFlag set at .*/flag_test.go:.* before being defined" : stdgo.GoString), function():Void {
            var __blank__ = _flags.string(("myFlag" : stdgo.GoString), ("default" : stdgo.GoString), ("usage" : stdgo.GoString));
        });
    }
