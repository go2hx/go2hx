package _internal.crypto.internal.bigmod;
function newModulusFromBig(_n:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>):{ var _0 : stdgo.Ref<_internal.crypto.internal.bigmod.Bigmod_Modulus.Modulus>; var _1 : stdgo.Error; } {
        {
            var _b = _n.bits();
            if ((_b.length) == ((0 : stdgo.GoInt))) {
                return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("modulus must be >= 0" : stdgo.GoString)) };
            } else if ((_b[(0 : stdgo.GoInt)] & (1u32 : stdgo._internal.math.big.Big_Word.Word) : stdgo._internal.math.big.Big_Word.Word) != ((1u32 : stdgo._internal.math.big.Big_Word.Word))) {
                return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("modulus must be odd" : stdgo.GoString)) };
            };
        };
        var _m = (stdgo.Go.setRef((new _internal.crypto.internal.bigmod.Bigmod_Modulus.Modulus() : _internal.crypto.internal.bigmod.Bigmod_Modulus.Modulus)) : stdgo.Ref<_internal.crypto.internal.bigmod.Bigmod_Modulus.Modulus>);
        _m._nat = _internal.crypto.internal.bigmod.Bigmod_newNat.newNat()._setBig(_n);
        _m._leading = ((32 : stdgo.GoInt) - _internal.crypto.internal.bigmod.Bigmod__bitLen._bitLen(_m._nat._limbs[((_m._nat._limbs.length) - (1 : stdgo.GoInt) : stdgo.GoInt)]) : stdgo.GoInt);
        _m._m0inv = _internal.crypto.internal.bigmod.Bigmod__minusInverseModW._minusInverseModW(_m._nat._limbs[(0 : stdgo.GoInt)]);
        _m._rr = _internal.crypto.internal.bigmod.Bigmod__rr._rr(_m);
        return { _0 : _m, _1 : (null : stdgo.Error) };
    }
