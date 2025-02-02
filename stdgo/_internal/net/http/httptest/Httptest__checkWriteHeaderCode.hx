package stdgo._internal.net.http.httptest;
function _checkWriteHeaderCode(_code:stdgo.GoInt):Void {
        if (((_code < (100 : stdgo.GoInt) : Bool) || (_code > (999 : stdgo.GoInt) : Bool) : Bool)) {
            throw stdgo.Go.toInterface(stdgo._internal.fmt.Fmt_sprintf.sprintf(("invalid WriteHeader code %v" : stdgo.GoString), stdgo.Go.toInterface(_code)));
        };
    }
