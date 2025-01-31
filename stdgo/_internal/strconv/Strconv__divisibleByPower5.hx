package stdgo._internal.strconv;
import stdgo._internal.errors.Errors;
import stdgo._internal.math.Math;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.unicode.utf8.Utf8;
function _divisibleByPower5(_m:stdgo.GoUInt64, _k:stdgo.GoInt):Bool {
        if (_m == ((0i64 : stdgo.GoUInt64))) {
            return true;
        };
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < _k : Bool)) {
                if ((_m % (5i64 : stdgo.GoUInt64) : stdgo.GoUInt64) != ((0i64 : stdgo.GoUInt64))) {
                    return false;
                };
_m = (_m / ((5i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
                _i++;
            };
        };
        return true;
    }
