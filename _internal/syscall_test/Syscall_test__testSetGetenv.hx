package _internal.syscall_test;
function _testSetGetenv(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>, _key:stdgo.GoString, _value:stdgo.GoString):Void {
        var _err = (stdgo._internal.syscall.Syscall_setenv.setenv(_key?.__copy__(), _value?.__copy__()) : stdgo.Error);
        if (_err != null) {
            _t.fatalf(("Setenv failed to set %q: %v" : stdgo.GoString), stdgo.Go.toInterface(_value), stdgo.Go.toInterface(_err));
        };
        var __tmp__ = stdgo._internal.syscall.Syscall_getenv.getenv(_key?.__copy__()), _newvalue:stdgo.GoString = __tmp__._0, _found:Bool = __tmp__._1;
        if (!_found) {
            _t.fatalf(("Getenv failed to find %v variable (want value %q)" : stdgo.GoString), stdgo.Go.toInterface(_key), stdgo.Go.toInterface(_value));
        };
        if (_newvalue != (_value)) {
            _t.fatalf(("Getenv(%v) = %q; want %q" : stdgo.GoString), stdgo.Go.toInterface(_key), stdgo.Go.toInterface(_newvalue), stdgo.Go.toInterface(_value));
        };
    }
