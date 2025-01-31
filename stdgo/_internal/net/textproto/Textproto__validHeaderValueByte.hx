package stdgo._internal.net.textproto;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.errors.Errors;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.net.Net;
import stdgo._internal.strings.Strings;
import stdgo._internal.io.Io;
function _validHeaderValueByte(_c:stdgo.GoUInt8):Bool {
        {};
        return ((((((1i64 : stdgo.GoUInt64) << _c : stdgo.GoUInt64)) & (((-4294966784i64 : stdgo.GoUInt64) ^ (-1i32 : stdgo.GoInt) : stdgo.GoUInt64)) : stdgo.GoUInt64) | ((((1i64 : stdgo.GoUInt64) << ((_c - (64 : stdgo.GoUInt8) : stdgo.GoUInt8)) : stdgo.GoUInt64)) & (((9223372036854775807i64 : stdgo.GoUInt64) ^ (-1i32 : stdgo.GoInt) : stdgo.GoUInt64)) : stdgo.GoUInt64) : stdgo.GoUInt64)) == ((0i64 : stdgo.GoUInt64));
    }
