package stdgo._internal.os.signal;
function _signum(_sig:stdgo._internal.os.Os_signal.Signal):stdgo.GoInt {
        //"file:///home/runner/.go/go1.21.3/src/os/signal/signal_unix.go#L36"
        {
            final __type__ = _sig;
            if (stdgo.Go.typeEquals((__type__ : stdgo._internal.syscall.Syscall_signal.Signal))) {
                var _sig:stdgo._internal.syscall.Syscall_signal.Signal = __type__ == null ? ((0 : stdgo.GoInt) : stdgo._internal.syscall.Syscall_signal.Signal) : __type__.__underlying__() == null ? ((0 : stdgo.GoInt) : stdgo._internal.syscall.Syscall_signal.Signal) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? ((0 : stdgo.GoInt) : stdgo._internal.syscall.Syscall_signal.Signal) : __type__.__underlying__().value);
                var _i = (_sig : stdgo.GoInt);
                //"file:///home/runner/.go/go1.21.3/src/os/signal/signal_unix.go#L39"
                if (((_i < (0 : stdgo.GoInt) : Bool) || (_i >= (65 : stdgo.GoInt) : Bool) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/os/signal/signal_unix.go#L40"
                    return (-1 : stdgo.GoInt);
                };
                //"file:///home/runner/.go/go1.21.3/src/os/signal/signal_unix.go#L42"
                return _i;
            } else {
                var _sig:stdgo._internal.os.Os_signal.Signal = __type__ == null ? (null : stdgo._internal.os.Os_signal.Signal) : cast __type__;
                //"file:///home/runner/.go/go1.21.3/src/os/signal/signal_unix.go#L44"
                return (-1 : stdgo.GoInt);
            };
        };
    }
