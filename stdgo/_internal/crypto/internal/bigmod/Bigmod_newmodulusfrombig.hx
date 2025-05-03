package stdgo._internal.crypto.internal.bigmod;
function newModulusFromBig(_n:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>):{ var _0 : stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_modulus.Modulus>; var _1 : stdgo.Error; } {
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/bigmod/nat.go#L355"
        {
            var _b = _n.bits();
            if ((_b.length) == ((0 : stdgo.GoInt))) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/internal/bigmod/nat.go#L356"
                return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("modulus must be >= 0" : stdgo.GoString)) };
            } else if ((_b[(0 : stdgo.GoInt)] & (1u32 : stdgo._internal.math.big.Big_word.Word) : stdgo._internal.math.big.Big_word.Word) != ((1u32 : stdgo._internal.math.big.Big_word.Word))) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/internal/bigmod/nat.go#L358"
                return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("modulus must be odd" : stdgo.GoString)) };
            };
        };
        var _m = (stdgo.Go.setRef((new stdgo._internal.crypto.internal.bigmod.Bigmod_modulus.Modulus() : stdgo._internal.crypto.internal.bigmod.Bigmod_modulus.Modulus)) : stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_modulus.Modulus>);
        (@:checkr _m ?? throw "null pointer dereference")._nat = stdgo._internal.crypto.internal.bigmod.Bigmod_newnat.newNat()._setBig(_n);
        (@:checkr _m ?? throw "null pointer dereference")._leading = ((32 : stdgo.GoInt) - stdgo._internal.crypto.internal.bigmod.Bigmod__bitlen._bitLen((@:checkr (@:checkr _m ?? throw "null pointer dereference")._nat ?? throw "null pointer dereference")._limbs[(((@:checkr (@:checkr _m ?? throw "null pointer dereference")._nat ?? throw "null pointer dereference")._limbs.length) - (1 : stdgo.GoInt) : stdgo.GoInt)]) : stdgo.GoInt);
        (@:checkr _m ?? throw "null pointer dereference")._m0inv = stdgo._internal.crypto.internal.bigmod.Bigmod__minusinversemodw._minusInverseModW((@:checkr (@:checkr _m ?? throw "null pointer dereference")._nat ?? throw "null pointer dereference")._limbs[(0 : stdgo.GoInt)]);
        (@:checkr _m ?? throw "null pointer dereference")._rr = stdgo._internal.crypto.internal.bigmod.Bigmod__rr._rr(_m);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/bigmod/nat.go#L365"
        return { _0 : _m, _1 : (null : stdgo.Error) };
    }
