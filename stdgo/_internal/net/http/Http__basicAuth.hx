package stdgo._internal.net.http;
function _basicAuth(_username:stdgo.GoString, _password:stdgo.GoString):stdgo.GoString {
        var _auth = (((_username + (":" : stdgo.GoString)?.__copy__() : stdgo.GoString) + _password?.__copy__() : stdgo.GoString)?.__copy__() : stdgo.GoString);
        return @:check2r stdgo._internal.encoding.base64.Base64_stdEncoding.stdEncoding.encodeToString((_auth : stdgo.Slice<stdgo.GoUInt8>))?.__copy__();
    }
