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
function _readSize(_s:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoUInt32; var _1 : stdgo.GoInt; } {
        if ((_s.length) == ((0 : stdgo.GoInt))) {
            return { _0 : (0u32 : stdgo.GoUInt32), _1 : (0 : stdgo.GoInt) };
        };
        var __0 = (_s[(0 : stdgo.GoInt)] : stdgo.GoUInt32), __1 = (1 : stdgo.GoInt);
var _n = __1, _size = __0;
        if ((_size & (128u32 : stdgo.GoUInt32) : stdgo.GoUInt32) != ((0u32 : stdgo.GoUInt32))) {
            if (((_s.length) < (4 : stdgo.GoInt) : Bool)) {
                return { _0 : (0u32 : stdgo.GoUInt32), _1 : (0 : stdgo.GoInt) };
            };
            _n = (4 : stdgo.GoInt);
            _size = stdgo._internal.encoding.binary.Binary_bigEndian.bigEndian.uint32(_s);
            _size = (_size & ((((-2147483648u32 : stdgo.GoUInt32)) ^ (-1i32 : stdgo.GoInt) : stdgo.GoUInt32)) : stdgo.GoUInt32);
        };
        return { _0 : _size, _1 : _n };
    }
