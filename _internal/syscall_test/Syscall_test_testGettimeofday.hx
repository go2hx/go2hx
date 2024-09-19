package _internal.syscall_test;
function testGettimeofday(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        if (true) {
            _t.skip(stdgo.Go.toInterface(("not implemented on js" : stdgo.GoString)));
        };
        var _tv = (stdgo.Go.setRef((new stdgo._internal.syscall.Syscall_Timeval.Timeval() : stdgo._internal.syscall.Syscall_Timeval.Timeval)) : stdgo.Ref<stdgo._internal.syscall.Syscall_Timeval.Timeval>);
        {
            var _err = (stdgo._internal.syscall.Syscall_gettimeofday.gettimeofday(_tv) : stdgo.Error);
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
        };
        if (((_tv.sec == (0i64 : stdgo.GoInt64)) && (_tv.usec == (0i64 : stdgo.GoInt64)) : Bool)) {
            _t.fatal(stdgo.Go.toInterface(("Sec and Usec both zero" : stdgo.GoString)));
        };
    }
