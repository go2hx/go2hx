package stdgo.crypto.internal.edwards25519;
class T_affineLookupTable_static_extension {
    static public function selectInto(_v:T_affineLookupTable, _dest:T_affineCached, _x:StdTypes.Int):Void {
        final _v = (_v : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_T_affineLookupTable.T_affineLookupTable>);
        final _dest = (_dest : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_T_affineCached.T_affineCached>);
        final _x = (_x : stdgo.GoInt8);
        stdgo._internal.crypto.internal.edwards25519.Edwards25519_T_affineLookupTable_static_extension.T_affineLookupTable_static_extension.selectInto(_v, _dest, _x);
    }
    static public function fromP3(_v:T_affineLookupTable, _q:Point):Void {
        final _v = (_v : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_T_affineLookupTable.T_affineLookupTable>);
        final _q = (_q : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_Point.Point>);
        stdgo._internal.crypto.internal.edwards25519.Edwards25519_T_affineLookupTable_static_extension.T_affineLookupTable_static_extension.fromP3(_v, _q);
    }
}
