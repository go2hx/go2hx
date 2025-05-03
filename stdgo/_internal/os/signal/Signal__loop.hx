package stdgo._internal.os.signal;
function _loop():Void {
        //"file:///home/runner/.go/go1.21.3/src/os/signal/signal_unix.go#L22"
        while (true) {
            //"file:///home/runner/.go/go1.21.3/src/os/signal/signal_unix.go#L23"
            stdgo._internal.os.signal.Signal__process._process(stdgo.Go.asInterface((stdgo._internal.os.signal.Signal__signal_recv._signal_recv() : stdgo._internal.syscall.Syscall_signal.Signal)));
        };
    }
