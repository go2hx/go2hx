package stdgo._internal.internal.fuzz;
function _isInterruptError(_err:stdgo.Error):Bool {
        //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/sys_unimplemented.go#L35"
        throw stdgo.Go.toInterface(("not implemented" : stdgo.GoString));
    }
