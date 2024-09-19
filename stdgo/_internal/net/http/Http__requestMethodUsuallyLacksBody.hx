package stdgo._internal.net.http;
function _requestMethodUsuallyLacksBody(_method:stdgo.GoString):Bool {
        {
            final __value__ = _method;
            if (__value__ == (("GET" : stdgo.GoString)) || __value__ == (("HEAD" : stdgo.GoString)) || __value__ == (("DELETE" : stdgo.GoString)) || __value__ == (("OPTIONS" : stdgo.GoString)) || __value__ == (("PROPFIND" : stdgo.GoString)) || __value__ == (("SEARCH" : stdgo.GoString))) {
                return true;
            };
        };
        return false;
    }
