package stdgo._internal.net.http;
function _shouldCopyHeaderOnRedirect(_headerKey:stdgo.GoString, _initial:stdgo.Ref<stdgo._internal.net.url.Url_URL.URL>, _dest:stdgo.Ref<stdgo._internal.net.url.Url_URL.URL>):Bool {
        {
            final __value__ = stdgo._internal.net.http.Http_canonicalHeaderKey.canonicalHeaderKey(_headerKey?.__copy__());
            if (__value__ == (("Authorization" : stdgo.GoString)) || __value__ == (("Www-Authenticate" : stdgo.GoString)) || __value__ == (("Cookie" : stdgo.GoString)) || __value__ == (("Cookie2" : stdgo.GoString))) {
                var _ihost = (stdgo._internal.net.http.Http__idnaASCIIFromURL._idnaASCIIFromURL(_initial)?.__copy__() : stdgo.GoString);
                var _dhost = (stdgo._internal.net.http.Http__idnaASCIIFromURL._idnaASCIIFromURL(_dest)?.__copy__() : stdgo.GoString);
                return stdgo._internal.net.http.Http__isDomainOrSubdomain._isDomainOrSubdomain(_dhost?.__copy__(), _ihost?.__copy__());
            };
        };
        return true;
    }
