package stdgo._internal.os.signal;
function ignored(_sig:stdgo._internal.os.Os_signal.Signal):Bool {
        var _sn = (stdgo._internal.os.signal.Signal__signum._signum(_sig) : stdgo.GoInt);
        return ((_sn >= (0 : stdgo.GoInt) : Bool) && stdgo._internal.os.signal.Signal__signalignored._signalIgnored(_sn) : Bool);
    }
