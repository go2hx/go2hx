package stdgo._internal.testing.slogtest;
function _withSource(_s:stdgo.GoString):stdgo.GoString {
        var __tmp__ = stdgo._internal.runtime.Runtime_caller.caller((1 : stdgo.GoInt)), __0:stdgo.GoUIntptr = __tmp__._0, _file:stdgo.GoString = __tmp__._1, _line:stdgo.GoInt = __tmp__._2, _ok:Bool = __tmp__._3;
        //"file:///home/runner/.go/go1.21.3/src/testing/slogtest/slogtest.go#L308"
        if (!_ok) {
            //"file:///home/runner/.go/go1.21.3/src/testing/slogtest/slogtest.go#L309"
            throw stdgo.Go.toInterface(("runtime.Caller failed" : stdgo.GoString));
        };
        //"file:///home/runner/.go/go1.21.3/src/testing/slogtest/slogtest.go#L311"
        return stdgo._internal.fmt.Fmt_sprintf.sprintf(("%s (%s:%d)" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_line))?.__copy__();
    }
