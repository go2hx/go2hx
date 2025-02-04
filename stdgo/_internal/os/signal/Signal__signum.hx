package stdgo._internal.os.signal;
function _signum(_sig:stdgo._internal.os.Os_signal.Signal):stdgo.GoInt {
        {
            final __type__ = _sig;
            if (stdgo.Go.typeEquals((__type__ : stdgo._internal.syscall.Syscall_signal.Signal))) {
                var _sig:stdgo._internal.syscall.Syscall_signal.Signal = __type__ == null ? ((0 : stdgo.GoInt) : stdgo._internal.syscall.Syscall_signal.Signal) : __type__.__underlying__() == null ? ((0 : stdgo.GoInt) : stdgo._internal.syscall.Syscall_signal.Signal) : __type__ == null ? ((0 : stdgo.GoInt) : stdgo._internal.syscall.Syscall_signal.Signal) : __type__.__underlying__().value;
                var _i = (_sig : stdgo.GoInt);
                if (((_i < (0 : stdgo.GoInt) : Bool) || (_i >= (65 : stdgo.GoInt) : Bool) : Bool)) {
                    return (-1 : stdgo.GoInt);
                };
                return _i;
            } else {
                var _sig:stdgo._internal.os.Os_signal.Signal = __type__ == null ? (null : stdgo._internal.os.Os_signal.Signal) : cast __type__;
                return (-1 : stdgo.GoInt);
            };
        };
    }
