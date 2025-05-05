package stdgo._internal.internal.coverage.pods;
function _warning(_s:stdgo.GoString, _a:haxe.Rest<stdgo.AnyInterface>):Void {
        var _a = new stdgo.Slice<stdgo.AnyInterface>(_a.length, 0, ..._a);
        //"file:///home/runner/.go/go1.21.3/src/internal/coverage/pods/pods.go#L194"
        stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface(stdgo._internal.os.Os_stderr.stderr), ("warning: " : stdgo.GoString));
        //"file:///home/runner/.go/go1.21.3/src/internal/coverage/pods/pods.go#L195"
        stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface(stdgo._internal.os.Os_stderr.stderr), _s?.__copy__(), ...(_a : Array<stdgo.AnyInterface>));
        //"file:///home/runner/.go/go1.21.3/src/internal/coverage/pods/pods.go#L196"
        stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface(stdgo._internal.os.Os_stderr.stderr), ("\n" : stdgo.GoString));
    }
