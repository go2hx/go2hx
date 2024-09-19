package stdgo._internal.os.signal;
function ignore(_sig:haxe.Rest<stdgo._internal.os.Os_Signal.Signal>):Void {
        var _sig = new stdgo.Slice<stdgo._internal.os.Os_Signal.Signal>(_sig.length, 0, ..._sig);
        stdgo._internal.os.signal.Signal__cancel._cancel(_sig, stdgo._internal.os.signal.Signal__ignoreSignal._ignoreSignal);
    }
