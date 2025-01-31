package stdgo._internal.net.textproto;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.errors.Errors;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.net.Net;
import stdgo._internal.strings.Strings;
import stdgo._internal.io.Io;
function trimBytes(_b:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> {
        while ((((_b.length) > (0 : stdgo.GoInt) : Bool) && stdgo._internal.net.textproto.Textproto__isASCIISpace._isASCIISpace(_b[(0 : stdgo.GoInt)]) : Bool)) {
            _b = (_b.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        };
        while ((((_b.length) > (0 : stdgo.GoInt) : Bool) && stdgo._internal.net.textproto.Textproto__isASCIISpace._isASCIISpace(_b[((_b.length) - (1 : stdgo.GoInt) : stdgo.GoInt)]) : Bool)) {
            _b = (_b.__slice__(0, ((_b.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        };
        return _b;
    }
