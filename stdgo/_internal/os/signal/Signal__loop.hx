package stdgo._internal.os.signal;
function _loop():Void {
        while (true) {
            stdgo._internal.os.signal.Signal__process._process(stdgo.Go.asInterface((stdgo._internal.os.signal.Signal__signal_recv._signal_recv() : stdgo._internal.syscall.Syscall_signal.Signal)));
        };
    }
