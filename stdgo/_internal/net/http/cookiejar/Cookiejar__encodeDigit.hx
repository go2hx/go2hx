package stdgo._internal.net.http.cookiejar;
import stdgo._internal.errors.Errors;
import stdgo._internal.time.Time;
import stdgo._internal.net.Net;
import stdgo._internal.strings.Strings;
import stdgo._internal.net.http.internal.ascii.Ascii;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.sort.Sort;
function _encodeDigit(_digit:stdgo.GoInt32):stdgo.GoUInt8 {
        if ((((0 : stdgo.GoInt32) <= _digit : Bool) && (_digit < (26 : stdgo.GoInt32) : Bool) : Bool)) {
            return ((_digit + (97 : stdgo.GoInt32) : stdgo.GoInt32) : stdgo.GoUInt8);
        } else if ((((26 : stdgo.GoInt32) <= _digit : Bool) && (_digit < (36 : stdgo.GoInt32) : Bool) : Bool)) {
            return ((_digit + (22 : stdgo.GoInt32) : stdgo.GoInt32) : stdgo.GoUInt8);
        };
        throw stdgo.Go.toInterface(("cookiejar: internal error in punycode encoding" : stdgo.GoString));
    }
