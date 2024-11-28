package stdgo._internal.internal.syscall.unix;
function kernelVersion():{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; } {
        var _major = (0 : stdgo.GoInt), _minor = (0 : stdgo.GoInt);
        return {
            final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; } = { _0 : (0 : stdgo.GoInt), _1 : (0 : stdgo.GoInt) };
            _major = __tmp__._0;
            _minor = __tmp__._1;
            __tmp__;
        };
    }
