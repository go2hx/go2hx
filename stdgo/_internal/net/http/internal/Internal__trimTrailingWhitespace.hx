package stdgo._internal.net.http.internal;
import stdgo._internal.errors.Errors;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.io.Io;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.fmt.Fmt;
function _trimTrailingWhitespace(_b:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> {
        while ((((_b.length) > (0 : stdgo.GoInt) : Bool) && stdgo._internal.net.http.internal.Internal__isASCIISpace._isASCIISpace(_b[((_b.length) - (1 : stdgo.GoInt) : stdgo.GoInt)]) : Bool)) {
            _b = (_b.__slice__(0, ((_b.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        };
        return _b;
    }
