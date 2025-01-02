package stdgo._internal.net.http;
function _refererForURL(_lastReq:stdgo.Ref<stdgo._internal.net.url.Url_URL.URL>, _newReq:stdgo.Ref<stdgo._internal.net.url.Url_URL.URL>, _explicitRef:stdgo.GoString):stdgo.GoString {
        if ((((@:checkr _lastReq ?? throw "null pointer dereference").scheme == ("https" : stdgo.GoString)) && ((@:checkr _newReq ?? throw "null pointer dereference").scheme == ("http" : stdgo.GoString)) : Bool)) {
            return stdgo.Go.str()?.__copy__();
        };
        if (_explicitRef != (stdgo.Go.str())) {
            return _explicitRef?.__copy__();
        };
        var _referer = ((@:check2r _lastReq.string() : stdgo.GoString)?.__copy__() : stdgo.GoString);
        if (((@:checkr _lastReq ?? throw "null pointer dereference").user != null && (((@:checkr _lastReq ?? throw "null pointer dereference").user : Dynamic).__nil__ == null || !((@:checkr _lastReq ?? throw "null pointer dereference").user : Dynamic).__nil__))) {
            var _auth = (((@:check2r (@:checkr _lastReq ?? throw "null pointer dereference").user.string() : stdgo.GoString) + ("@" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__() : stdgo.GoString);
            _referer = stdgo._internal.strings.Strings_replace.replace(_referer?.__copy__(), _auth?.__copy__(), stdgo.Go.str()?.__copy__(), (1 : stdgo.GoInt))?.__copy__();
        };
        return _referer?.__copy__();
    }
