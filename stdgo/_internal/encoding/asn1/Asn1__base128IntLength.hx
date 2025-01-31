package stdgo._internal.encoding.asn1;
import stdgo._internal.math.big.Big;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.time.Time;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.errors.Errors;
import stdgo._internal.unicode.utf16.Utf16;
import stdgo._internal.strings.Strings;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.sort.Sort;
import stdgo._internal.bytes.Bytes;
function _base128IntLength(_n:stdgo.GoInt64):stdgo.GoInt {
        if (_n == ((0i64 : stdgo.GoInt64))) {
            return (1 : stdgo.GoInt);
        };
        var _l = (0 : stdgo.GoInt);
        {
            var _i = (_n : stdgo.GoInt64);
            while ((_i > (0i64 : stdgo.GoInt64) : Bool)) {
                _l++;
                _i = (_i >> ((7i64 : stdgo.GoUInt64)) : stdgo.GoInt64);
            };
        };
        return _l;
    }
