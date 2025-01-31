package stdgo._internal.net.netip;
import stdgo._internal.internal.bytealg.Bytealg;
import stdgo._internal.errors.Errors;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.internal.intern.Intern;
import stdgo._internal.internal.itoa.Itoa;
import stdgo._internal.math.bits.Bits;
function _stringsLastIndexByte(_s:stdgo.GoString, _b:stdgo.GoUInt8):stdgo.GoInt {
        {
            var _i = ((_s.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
            while ((_i >= (0 : stdgo.GoInt) : Bool)) {
                if (_s[(_i : stdgo.GoInt)] == (_b)) {
                    return _i;
                };
                _i--;
            };
        };
        return (-1 : stdgo.GoInt);
    }
