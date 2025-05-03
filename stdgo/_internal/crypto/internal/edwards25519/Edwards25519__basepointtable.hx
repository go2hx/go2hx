package stdgo._internal.crypto.internal.edwards25519;
function _basepointTable():stdgo.Ref<stdgo.GoArray<stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_affinelookuptable.T_affineLookupTable>> {
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/edwards25519/scalarmult.go#L12"
        stdgo._internal.crypto.internal.edwards25519.Edwards25519__basepointtableprecomp._basepointTablePrecomp._initOnce.do_(function():Void {
            var _p = stdgo._internal.crypto.internal.edwards25519.Edwards25519_newgeneratorpoint.newGeneratorPoint();
            //"file:///home/runner/.go/go1.21.3/src/crypto/internal/edwards25519/scalarmult.go#L14"
            {
                var _i = (0 : stdgo.GoInt);
                while ((_i < (32 : stdgo.GoInt) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/crypto/internal/edwards25519/scalarmult.go#L15"
                    stdgo._internal.crypto.internal.edwards25519.Edwards25519__basepointtableprecomp._basepointTablePrecomp._table[(_i : stdgo.GoInt)].fromP3(_p);
//"file:///home/runner/.go/go1.21.3/src/crypto/internal/edwards25519/scalarmult.go#L16"
                    {
                        var _j = (0 : stdgo.GoInt);
                        while ((_j < (8 : stdgo.GoInt) : Bool)) {
                            //"file:///home/runner/.go/go1.21.3/src/crypto/internal/edwards25519/scalarmult.go#L17"
                            _p.add(_p, _p);
                            _j++;
                        };
                    };
                    _i++;
                };
            };
        });
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/edwards25519/scalarmult.go#L21"
        return (stdgo.Go.setRef(stdgo._internal.crypto.internal.edwards25519.Edwards25519__basepointtableprecomp._basepointTablePrecomp._table) : stdgo.Ref<stdgo.GoArray<stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_affinelookuptable.T_affineLookupTable>>);
    }
