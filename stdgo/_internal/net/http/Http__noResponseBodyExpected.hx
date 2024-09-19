package stdgo._internal.net.http;
function _noResponseBodyExpected(_requestMethod:stdgo.GoString):Bool {
        return _requestMethod == (("HEAD" : stdgo.GoString));
    }
