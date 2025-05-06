package stdgo._internal.go.types;
function _assert(_p:Bool):Void {
        //"file:///home/runner/.go/go1.21.3/src/go/types/errors.go#L21"
        if (!_p) {
            var _msg = (("assertion failed" : stdgo.GoString) : stdgo.GoString);
            //"file:///home/runner/.go/go1.21.3/src/go/types/errors.go#L25"
            {
                var __tmp__ = stdgo._internal.runtime.Runtime_caller.caller((1 : stdgo.GoInt)), __0:stdgo.GoUIntptr = __tmp__._0, _file:stdgo.GoString = __tmp__._1, _line:stdgo.GoInt = __tmp__._2, _ok:Bool = __tmp__._3;
                if (_ok) {
                    _msg = stdgo._internal.fmt.Fmt_sprintf.sprintf(("%s:%d: %s" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_line), stdgo.Go.toInterface(_msg))?.__copy__();
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/go/types/errors.go#L28"
            throw stdgo.Go.toInterface(_msg);
        };
    }
