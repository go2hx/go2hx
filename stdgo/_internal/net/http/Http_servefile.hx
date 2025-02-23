package stdgo._internal.net.http;
function serveFile(_w:stdgo._internal.net.http.Http_responsewriter.ResponseWriter, _r:stdgo.Ref<stdgo._internal.net.http.Http_request.Request>, _name:stdgo.GoString):Void {
        if (stdgo._internal.net.http.Http__containsdotdot._containsDotDot((@:checkr (@:checkr _r ?? throw "null pointer dereference").uRL ?? throw "null pointer dereference").path?.__copy__())) {
            stdgo._internal.net.http.Http_error.error(_w, ("invalid URL path" : stdgo.GoString), (400 : stdgo.GoInt));
            return;
        };
        var __tmp__ = stdgo._internal.net.http.Http__filepath._filepath.split(_name?.__copy__()), _dir:stdgo.GoString = __tmp__._0, _file:stdgo.GoString = __tmp__._1;
        stdgo._internal.net.http.Http__servefile._serveFile(_w, _r, stdgo.Go.asInterface((_dir : stdgo._internal.net.http.Http_dir.Dir)), _file?.__copy__(), false);
    }
