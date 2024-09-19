package stdgo._internal.net.http;
function _removeEmptyPort(_host:stdgo.GoString):stdgo.GoString {
        if (stdgo._internal.net.http.Http__hasPort._hasPort(_host?.__copy__())) {
            return stdgo._internal.strings.Strings_trimSuffix.trimSuffix(_host?.__copy__(), (":" : stdgo.GoString))?.__copy__();
        };
        return _host?.__copy__();
    }
