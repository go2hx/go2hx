package stdgo._internal.net.http.internal;
import stdgo._internal.errors.Errors;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.io.Io;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.fmt.Fmt;
function _isASCIISpace(_b:stdgo.GoUInt8):Bool {
        return (((_b == ((32 : stdgo.GoUInt8)) || _b == ((9 : stdgo.GoUInt8)) : Bool) || _b == ((10 : stdgo.GoUInt8)) : Bool) || (_b == (13 : stdgo.GoUInt8)) : Bool);
    }
