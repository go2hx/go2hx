package stdgo._internal.net.http.fcgi;
function _addFastCGIEnvToContext(_s:stdgo.GoString):Bool {
        //"file:///home/runner/.go/go1.21.3/src/net/http/fcgi/child.go#L375"
        {
            final __value__ = _s;
            if (__value__ == (("CONTENT_LENGTH" : stdgo.GoString)) || __value__ == (("CONTENT_TYPE" : stdgo.GoString)) || __value__ == (("HTTPS" : stdgo.GoString)) || __value__ == (("PATH_INFO" : stdgo.GoString)) || __value__ == (("QUERY_STRING" : stdgo.GoString)) || __value__ == (("REMOTE_ADDR" : stdgo.GoString)) || __value__ == (("REMOTE_HOST" : stdgo.GoString)) || __value__ == (("REMOTE_PORT" : stdgo.GoString)) || __value__ == (("REQUEST_METHOD" : stdgo.GoString)) || __value__ == (("REQUEST_URI" : stdgo.GoString)) || __value__ == (("SCRIPT_NAME" : stdgo.GoString)) || __value__ == (("SERVER_PROTOCOL" : stdgo.GoString))) {
                //"file:///home/runner/.go/go1.21.3/src/net/http/fcgi/child.go#L380"
                return false;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/net/http/fcgi/child.go#L382"
        if (stdgo._internal.strings.Strings_hasprefix.hasPrefix(_s?.__copy__(), ("HTTP_" : stdgo.GoString))) {
            //"file:///home/runner/.go/go1.21.3/src/net/http/fcgi/child.go#L383"
            return false;
        };
        //"file:///home/runner/.go/go1.21.3/src/net/http/fcgi/child.go#L389"
        {
            final __value__ = _s;
            if (__value__ == (("REMOTE_USER" : stdgo.GoString))) {
                //"file:///home/runner/.go/go1.21.3/src/net/http/fcgi/child.go#L391"
                return true;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/net/http/fcgi/child.go#L394"
        return true;
    }
