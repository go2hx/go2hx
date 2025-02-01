package stdgo._internal.crypto.internal.edwards25519;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.errors.Errors;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.crypto.subtle.Subtle;
function _basepointTable():stdgo.Ref<stdgo.GoArray<stdgo._internal.crypto.internal.edwards25519.Edwards25519_T_affineLookupTable.T_affineLookupTable>> {
        @:check2 stdgo._internal.crypto.internal.edwards25519.Edwards25519__basepointTablePrecomp._basepointTablePrecomp._initOnce.do_(function():Void {
            var _p = stdgo._internal.crypto.internal.edwards25519.Edwards25519_newGeneratorPoint.newGeneratorPoint();
            {
                var _i = (0 : stdgo.GoInt);
                while ((_i < (32 : stdgo.GoInt) : Bool)) {
                    @:check2 stdgo._internal.crypto.internal.edwards25519.Edwards25519__basepointTablePrecomp._basepointTablePrecomp._table[(_i : stdgo.GoInt)].fromP3(_p);
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
        return (stdgo.Go.setRef(stdgo._internal.crypto.internal.edwards25519.Edwards25519__basepointTablePrecomp._basepointTablePrecomp._table) : stdgo.Ref<stdgo.GoArray<stdgo._internal.crypto.internal.edwards25519.Edwards25519_T_affineLookupTable.T_affineLookupTable>>);
    }
