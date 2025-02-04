package stdgo._internal.crypto.internal.edwards25519;
function _basepointTable():stdgo.Ref<stdgo.GoArray<stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_affinelookuptable.T_affineLookupTable>> {
        @:check2 stdgo._internal.crypto.internal.edwards25519.Edwards25519__basepointtableprecomp._basepointTablePrecomp._initOnce.do_(function():Void {
            var _p = stdgo._internal.crypto.internal.edwards25519.Edwards25519_newgeneratorpoint.newGeneratorPoint();
            {
                var _i = (0 : stdgo.GoInt);
                while ((_i < (32 : stdgo.GoInt) : Bool)) {
                    @:check2 stdgo._internal.crypto.internal.edwards25519.Edwards25519__basepointtableprecomp._basepointTablePrecomp._table[(_i : stdgo.GoInt)].fromP3(_p);
{
                        var _j = (0 : stdgo.GoInt);
                        while ((_j < (8 : stdgo.GoInt) : Bool)) {
                            @:check2r _p.add(_p, _p);
                            _j++;
                        };
                    };
                    _i++;
                };
            };
        });
        return (stdgo.Go.setRef(stdgo._internal.crypto.internal.edwards25519.Edwards25519__basepointtableprecomp._basepointTablePrecomp._table) : stdgo.Ref<stdgo.GoArray<stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_affinelookuptable.T_affineLookupTable>>);
    }
