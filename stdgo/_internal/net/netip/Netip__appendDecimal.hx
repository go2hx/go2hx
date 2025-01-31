package stdgo._internal.net.netip;
import stdgo._internal.internal.bytealg.Bytealg;
import stdgo._internal.errors.Errors;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.internal.intern.Intern;
import stdgo._internal.internal.itoa.Itoa;
import stdgo._internal.math.bits.Bits;
function _appendDecimal(_b:stdgo.Slice<stdgo.GoUInt8>, _x:stdgo.GoUInt8):stdgo.Slice<stdgo.GoUInt8> {
        if ((_x >= (100 : stdgo.GoUInt8) : Bool)) {
            _b = (_b.__append__(("0123456789abcdef" : stdgo.GoString)[((_x / (100 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoInt)]));
        };
        if ((_x >= (10 : stdgo.GoUInt8) : Bool)) {
            _b = (_b.__append__(("0123456789abcdef" : stdgo.GoString)[(((_x / (10 : stdgo.GoUInt8) : stdgo.GoUInt8) % (10 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoInt)]));
        };
        return (_b.__append__(("0123456789abcdef" : stdgo.GoString)[((_x % (10 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoInt)]));
    }
