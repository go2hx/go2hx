package stdgo._internal.net.http;
function _localRedirect(_w:stdgo._internal.net.http.Http_ResponseWriter.ResponseWriter, _r:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>, _newPath:stdgo.GoString):Void {
        {
            var _q = ((@:checkr (@:checkr _r ?? throw "null pointer dereference").uRL ?? throw "null pointer dereference").rawQuery?.__copy__() : stdgo.GoString);
            if (_q != (stdgo.Go.str())) {
                _newPath = (_newPath + ((("?" : stdgo.GoString) + _q?.__copy__() : stdgo.GoString))?.__copy__() : stdgo.GoString);
            };
        };
        _w.header().set(("Location" : stdgo.GoString), _newPath?.__copy__());
        _w.writeHeader((301 : stdgo.GoInt));
    }
