package stdgo._internal.net.http;
function serveFile(_w:stdgo._internal.net.http.Http_ResponseWriter.ResponseWriter, _r:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>, _name:stdgo.GoString):Void {
        if (stdgo._internal.net.http.Http__containsDotDot._containsDotDot(_r.url.path?.__copy__())) {
            stdgo._internal.net.http.Http_error.error(_w, ("invalid URL path" : stdgo.GoString), (400 : stdgo.GoInt));
            return;
        };
        var __tmp__ = stdgo._internal.path.filepath.Filepath_split.split(_name?.__copy__()), _dir:stdgo.GoString = __tmp__._0, _file:stdgo.GoString = __tmp__._1;
        stdgo._internal.net.http.Http__serveFile._serveFile(_w, _r, stdgo.Go.asInterface((_dir : stdgo._internal.net.http.Http_Dir.Dir)), _file?.__copy__(), false);
    }
