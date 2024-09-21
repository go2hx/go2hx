package _internal.flag_test;
import stdgo._internal.flag.Flag;
function testIntFlagOverflow(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        if (false) {
            return;
        };
        stdgo._internal.flag.Flag_resetForTesting.resetForTesting(null);
        stdgo._internal.flag.Flag_int_.int_(("i" : stdgo.GoString), (0 : stdgo.GoInt), stdgo.Go.str()?.__copy__());
        stdgo._internal.flag.Flag_uint.uint(("u" : stdgo.GoString), (0u32 : stdgo.GoUInt), stdgo.Go.str()?.__copy__());
        {
            var _err = (stdgo._internal.flag.Flag_set.set(("i" : stdgo.GoString), ("2147483648" : stdgo.GoString)) : stdgo.Error);
            if (_err == null) {
                _t.error(stdgo.Go.toInterface(("unexpected success setting Int" : stdgo.GoString)));
            };
        };
        {
            var _err = (stdgo._internal.flag.Flag_set.set(("u" : stdgo.GoString), ("4294967296" : stdgo.GoString)) : stdgo.Error);
            if (_err == null) {
                _t.error(stdgo.Go.toInterface(("unexpected success setting Uint" : stdgo.GoString)));
            };
        };
    }
