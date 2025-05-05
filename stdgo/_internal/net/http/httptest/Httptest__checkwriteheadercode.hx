package stdgo._internal.net.http.httptest;
function _checkWriteHeaderCode(_code:stdgo.GoInt):Void {
        //"file:///home/runner/.go/go1.21.3/src/net/http/httptest/recorder.go#L137"
        if (((_code < (100 : stdgo.GoInt) : Bool) || (_code > (999 : stdgo.GoInt) : Bool) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/net/http/httptest/recorder.go#L138"
            throw stdgo.Go.toInterface(stdgo._internal.fmt.Fmt_sprintf.sprintf(("invalid WriteHeader code %v" : stdgo.GoString), stdgo.Go.toInterface(_code)));
        };
    }
