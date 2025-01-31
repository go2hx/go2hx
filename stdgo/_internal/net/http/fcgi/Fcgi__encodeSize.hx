package stdgo._internal.net.http.fcgi;
import stdgo._internal.errors.Errors;
import stdgo._internal.io.Io;
import stdgo._internal.strings.Strings;
import stdgo._internal.net.Net;
import stdgo._internal.os.Os;
import stdgo._internal.net.http.Http;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.time.Time;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.net.http.cgi.Cgi;
import stdgo._internal.context.Context;
function _encodeSize(_b:stdgo.Slice<stdgo.GoUInt8>, _size:stdgo.GoUInt32):stdgo.GoInt {
        if ((_size > (127u32 : stdgo.GoUInt32) : Bool)) {
            _size = (_size | ((-2147483648u32 : stdgo.GoUInt32)) : stdgo.GoUInt32);
            stdgo._internal.encoding.binary.Binary_bigEndian.bigEndian.putUint32(_b, _size);
            return (4 : stdgo.GoInt);
        };
        _b[(0 : stdgo.GoInt)] = (_size : stdgo.GoUInt8);
        return (1 : stdgo.GoInt);
    }
