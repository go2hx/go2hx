package stdgo._internal.net.http;
function _http2asciiToLower(_s:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : Bool; } {
        var _lower = ("" : stdgo.GoString), _ok = false;
        if (!stdgo._internal.net.http.Http__http2isASCIIPrint._http2isASCIIPrint(_s?.__copy__())) {
            return { _0 : stdgo.Go.str()?.__copy__(), _1 : false };
        };
        return { _0 : stdgo._internal.strings.Strings_toLower.toLower(_s?.__copy__())?.__copy__(), _1 : true };
    }