package stdgo._internal.encoding.hex;
import stdgo._internal.errors.Errors;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.strings.Strings;
import stdgo._internal.io.Io;
import stdgo._internal.fmt.Fmt;
function decode(_dst:stdgo.Slice<stdgo.GoUInt8>, _src:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        var __0 = (0 : stdgo.GoInt), __1 = (1 : stdgo.GoInt);
var _j = __1, _i = __0;
        while ((_j < (_src.length) : Bool)) {
            var _p = (_src[(_j - (1 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoUInt8);
var _q = (_src[(_j : stdgo.GoInt)] : stdgo.GoUInt8);
var _a = (stdgo.Go.str(255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
0,
1,
2,
3,
4,
5,
6,
"\x07\x08\t",
255,
255,
255,
255,
255,
255,
255,
"\n\x0B\x0C\r",
14,
15,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
"\n\x0B\x0C\r",
14,
15,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255)[(_p : stdgo.GoInt)] : stdgo.GoUInt8);
var _b = (stdgo.Go.str(255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
0,
1,
2,
3,
4,
5,
6,
"\x07\x08\t",
255,
255,
255,
255,
255,
255,
255,
"\n\x0B\x0C\r",
14,
15,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
"\n\x0B\x0C\r",
14,
15,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255)[(_q : stdgo.GoInt)] : stdgo.GoUInt8);
if ((_a > (15 : stdgo.GoUInt8) : Bool)) {
                return { _0 : _i, _1 : stdgo.Go.asInterface((_p : stdgo._internal.encoding.hex.Hex_InvalidByteError.InvalidByteError)) };
            };
if ((_b > (15 : stdgo.GoUInt8) : Bool)) {
                return { _0 : _i, _1 : stdgo.Go.asInterface((_q : stdgo._internal.encoding.hex.Hex_InvalidByteError.InvalidByteError)) };
            };
_dst[(_i : stdgo.GoInt)] = (((_a << (4i64 : stdgo.GoUInt64) : stdgo.GoUInt8)) | _b : stdgo.GoUInt8);
_i++;
            _j = (_j + ((2 : stdgo.GoInt)) : stdgo.GoInt);
        };
        if (((_src.length) % (2 : stdgo.GoInt) : stdgo.GoInt) == ((1 : stdgo.GoInt))) {
            if ((stdgo.Go.str(255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
0,
1,
2,
3,
4,
5,
6,
"\x07\x08\t",
255,
255,
255,
255,
255,
255,
255,
"\n\x0B\x0C\r",
14,
15,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
"\n\x0B\x0C\r",
14,
15,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255)[(_src[(_j - (1 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoInt)] > (15 : stdgo.GoUInt8) : Bool)) {
                return { _0 : _i, _1 : stdgo.Go.asInterface((_src[(_j - (1 : stdgo.GoInt) : stdgo.GoInt)] : stdgo._internal.encoding.hex.Hex_InvalidByteError.InvalidByteError)) };
            };
            return { _0 : _i, _1 : stdgo._internal.encoding.hex.Hex_errLength.errLength };
        };
        return { _0 : _i, _1 : (null : stdgo.Error) };
    }
