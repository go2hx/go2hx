package stdgo._internal.strconv;
import stdgo._internal.errors.Errors;
import stdgo._internal.math.Math;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.unicode.utf8.Utf8;
function _prefixIsLessThan(_b:stdgo.Slice<stdgo.GoUInt8>, _s:stdgo.GoString):Bool {
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (_s.length) : Bool)) {
                if ((_i >= (_b.length) : Bool)) {
                    return true;
                };
if (_b[(_i : stdgo.GoInt)] != (_s[(_i : stdgo.GoInt)])) {
                    return (_b[(_i : stdgo.GoInt)] < _s[(_i : stdgo.GoInt)] : Bool);
                };
                _i++;
            };
        };
        return false;
    }
