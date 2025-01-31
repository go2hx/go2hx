package stdgo._internal.internal.profile;
import stdgo._internal.errors.Errors;
import _internal.internal.lazyregexp.Lazyregexp;
import stdgo._internal.strings.Strings;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.io.Io;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.math.Math;
import stdgo._internal.compress.gzip.Gzip;
import stdgo._internal.sort.Sort;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.time.Time;
import stdgo._internal.regexp.Regexp;
function _encodeVarint(_b:stdgo.Ref<stdgo._internal.internal.profile.Profile_T_buffer.T_buffer>, _x:stdgo.GoUInt64):Void {
        while ((_x >= (128i64 : stdgo.GoUInt64) : Bool)) {
            (@:checkr _b ?? throw "null pointer dereference")._data = ((@:checkr _b ?? throw "null pointer dereference")._data.__append__(((_x : stdgo.GoUInt8) | (128 : stdgo.GoUInt8) : stdgo.GoUInt8)));
            _x = (_x >> ((7i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
        };
        (@:checkr _b ?? throw "null pointer dereference")._data = ((@:checkr _b ?? throw "null pointer dereference")._data.__append__((_x : stdgo.GoUInt8)));
    }
