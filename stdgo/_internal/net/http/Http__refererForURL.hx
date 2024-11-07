package stdgo._internal.net.http;
function _refererForURL(_lastReq:stdgo.Ref<stdgo._internal.net.url.Url_URL.URL>, _newReq:stdgo.Ref<stdgo._internal.net.url.Url_URL.URL>, _explicitRef:stdgo.GoString):stdgo.GoString {
        if (((_lastReq.scheme == ("https" : stdgo.GoString)) && (_newReq.scheme == ("http" : stdgo.GoString)) : Bool)) {
            return stdgo.Go.str()?.__copy__();
        };
        if (_explicitRef != (stdgo.Go.str())) {
            return _explicitRef?.__copy__();
        };
        var _referer = ((_lastReq.string() : stdgo.GoString)?.__copy__() : stdgo.GoString);
        if ((_lastReq.user != null && ((_lastReq.user : Dynamic).__nil__ == null || !(_lastReq.user : Dynamic).__nil__))) {
            var _auth = (((_lastReq.user.string() : stdgo.GoString) + ("@" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__() : stdgo.GoString);
            _referer = stdgo._internal.strings.Strings_replace.replace(_referer?.__copy__(), _auth?.__copy__(), stdgo.Go.str()?.__copy__(), (1 : stdgo.GoInt))?.__copy__();
        };
        return _referer?.__copy__();
    }
