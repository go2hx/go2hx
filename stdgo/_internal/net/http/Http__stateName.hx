package stdgo._internal.net.http;
var _stateName : stdgo.GoMap<stdgo._internal.net.http.Http_ConnState.ConnState, stdgo.GoString> = ({
        final x = new stdgo.GoMap.GoIntMap<stdgo.GoString>();
        x.__defaultValue__ = () -> ("" : stdgo.GoString);
        x.set((0 : stdgo._internal.net.http.Http_ConnState.ConnState), ("new" : stdgo.GoString));
x.set((1 : stdgo._internal.net.http.Http_ConnState.ConnState), ("active" : stdgo.GoString));
x.set((2 : stdgo._internal.net.http.Http_ConnState.ConnState), ("idle" : stdgo.GoString));
x.set((3 : stdgo._internal.net.http.Http_ConnState.ConnState), ("hijacked" : stdgo.GoString));
x.set((4 : stdgo._internal.net.http.Http_ConnState.ConnState), ("closed" : stdgo.GoString));
        x;
    } : stdgo.GoMap<stdgo._internal.net.http.Http_ConnState.ConnState, stdgo.GoString>);
