package stdgo._internal.os.signal;
function ignore(_sig:haxe.Rest<stdgo._internal.os.Os_signal.Signal>):Void {
        var _sig = new stdgo.Slice<stdgo._internal.os.Os_signal.Signal>(_sig.length, 0, ..._sig);
        //"file:///home/runner/.go/go1.21.3/src/os/signal/signal.go#L87"
        stdgo._internal.os.signal.Signal__cancel._cancel(_sig, stdgo._internal.os.signal.Signal__ignoresignal._ignoreSignal);
    }
