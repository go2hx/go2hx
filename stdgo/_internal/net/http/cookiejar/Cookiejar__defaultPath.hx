package stdgo._internal.net.http.cookiejar;
import stdgo._internal.errors.Errors;
import stdgo._internal.time.Time;
import stdgo._internal.net.Net;
import stdgo._internal.strings.Strings;
import stdgo._internal.net.http.internal.ascii.Ascii;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.sort.Sort;
function _defaultPath(_path:stdgo.GoString):stdgo.GoString {
        if (((_path.length == (0 : stdgo.GoInt)) || (_path[(0 : stdgo.GoInt)] != (47 : stdgo.GoUInt8)) : Bool)) {
            return ("/" : stdgo.GoString);
        };
        var _i = (stdgo._internal.strings.Strings_lastIndex.lastIndex(_path?.__copy__(), ("/" : stdgo.GoString)) : stdgo.GoInt);
        if (_i == ((0 : stdgo.GoInt))) {
            return ("/" : stdgo.GoString);
        };
        return (_path.__slice__(0, _i) : stdgo.GoString)?.__copy__();
    }
