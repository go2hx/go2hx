package _internal.crypto.internal.edwards25519;
function _basepointTable():stdgo.Ref<stdgo.GoArray<_internal.crypto.internal.edwards25519.Edwards25519_T_affineLookupTable.T_affineLookupTable>> {
        _internal.crypto.internal.edwards25519.Edwards25519__basepointTablePrecomp._basepointTablePrecomp._initOnce.do_(function():Void {
            var _p = _internal.crypto.internal.edwards25519.Edwards25519_newGeneratorPoint.newGeneratorPoint();
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < (32 : stdgo.GoInt) : Bool), _i++, {
                    _internal.crypto.internal.edwards25519.Edwards25519__basepointTablePrecomp._basepointTablePrecomp._table[(_i : stdgo.GoInt)].fromP3(_p);
                    {
                        var _j = (0 : stdgo.GoInt);
                        stdgo.Go.cfor((_j < (8 : stdgo.GoInt) : Bool), _j++, {
                            _p.add(_p, _p);
                        });
                    };
                });
            };
        });
        return (stdgo.Go.setRef(_internal.crypto.internal.edwards25519.Edwards25519__basepointTablePrecomp._basepointTablePrecomp._table) : stdgo.Ref<stdgo.GoArray<_internal.crypto.internal.edwards25519.Edwards25519_T_affineLookupTable.T_affineLookupTable>>);
    }
