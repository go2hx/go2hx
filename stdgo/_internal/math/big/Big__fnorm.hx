package stdgo._internal.math.big;
function _fnorm(_m:stdgo._internal.math.big.Big_T_nat.T_nat):stdgo.GoInt64 {
        if ((false && (((_m.length == (0 : stdgo.GoInt)) || (_m[((_m.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] == (0u32 : stdgo._internal.math.big.Big_Word.Word)) : Bool)) : Bool)) {
            throw stdgo.Go.toInterface(("msw of mantissa is 0" : stdgo.GoString));
        };
        var _s = (stdgo._internal.math.big.Big__nlz._nlz(_m[((_m.length) - (1 : stdgo.GoInt) : stdgo.GoInt)]) : stdgo.GoUInt);
        if ((_s > (0u32 : stdgo.GoUInt) : Bool)) {
            var _c = (stdgo._internal.math.big.Big__shlVU._shlVU(_m, _m, _s) : stdgo._internal.math.big.Big_Word.Word);
            if ((false && (_c != (0u32 : stdgo._internal.math.big.Big_Word.Word)) : Bool)) {
                throw stdgo.Go.toInterface(("nlz or shlVU incorrect" : stdgo.GoString));
            };
        };
        return (_s : stdgo.GoInt64);
    }
