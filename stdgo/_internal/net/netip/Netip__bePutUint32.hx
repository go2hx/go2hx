package stdgo._internal.net.netip;
import stdgo._internal.internal.bytealg.Bytealg;
import stdgo._internal.errors.Errors;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.internal.intern.Intern;
import stdgo._internal.internal.itoa.Itoa;
import stdgo._internal.math.bits.Bits;
function _bePutUint32(_b:stdgo.Slice<stdgo.GoUInt8>, _v:stdgo.GoUInt32):Void {
        var __blank__ = _b[(3 : stdgo.GoInt)];
        _b[(0 : stdgo.GoInt)] = ((_v >> (24i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt8);
        _b[(1 : stdgo.GoInt)] = ((_v >> (16i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt8);
        _b[(2 : stdgo.GoInt)] = ((_v >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt8);
        _b[(3 : stdgo.GoInt)] = (_v : stdgo.GoUInt8);
    }
