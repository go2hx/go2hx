package stdgo._internal.internal.syscall.unix;
function isNonblock(_fd:stdgo.GoInt):{ var _0 : Bool; var _1 : stdgo.Error; } {
        var _nonblocking = false, _err = (null : stdgo.Error);
        return {
            final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : (null : stdgo.Error) };
            _nonblocking = __tmp__._0;
            _err = __tmp__._1;
            __tmp__;
        };
    }
