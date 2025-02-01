package stdgo._internal.crypto.internal.nistec.fiat;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.crypto.subtle.Subtle;
import stdgo._internal.errors.Errors;
function _p384SetOne(_out1:stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_T_p384MontgomeryDomainFieldElement.T_p384MontgomeryDomainFieldElement>):Void {
        _out1[(0 : stdgo.GoInt)] = (-4294967295i64 : stdgo.GoUInt64);
        _out1[(1 : stdgo.GoInt)] = (4294967295i64 : stdgo.GoUInt64);
        _out1[(2 : stdgo.GoInt)] = (1i64 : stdgo.GoUInt64);
        _out1[(3 : stdgo.GoInt)] = (0i64 : stdgo.GoUInt64);
        _out1[(4 : stdgo.GoInt)] = (0i64 : stdgo.GoUInt64);
        _out1[(5 : stdgo.GoInt)] = (0i64 : stdgo.GoUInt64);
    }
