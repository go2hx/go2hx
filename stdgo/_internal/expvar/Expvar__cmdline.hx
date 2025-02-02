package stdgo._internal.expvar;
function _cmdline():stdgo.AnyInterface {
        return stdgo.Go.toInterface(stdgo._internal.os.Os_args.args);
    }
