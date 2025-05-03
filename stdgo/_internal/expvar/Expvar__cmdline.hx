package stdgo._internal.expvar;
function _cmdline():stdgo.AnyInterface {
        //"file:///home/runner/.go/go1.21.3/src/expvar/expvar.go#L360"
        return stdgo.Go.toInterface(stdgo._internal.os.Os_args.args);
    }
