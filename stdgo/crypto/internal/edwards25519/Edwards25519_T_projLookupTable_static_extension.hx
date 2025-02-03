package stdgo.crypto.internal.edwards25519;
class T_projLookupTable_static_extension {
    static public function selectInto(_v:T_projLookupTable, _dest:T_projCached, _x:StdTypes.Int):Void {
        final _v = (_v : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_T_projLookupTable.T_projLookupTable>);
        final _dest = (_dest : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_T_projCached.T_projCached>);
        final _x = (_x : stdgo.GoInt8);
        stdgo._internal.crypto.internal.edwards25519.Edwards25519_T_projLookupTable_static_extension.T_projLookupTable_static_extension.selectInto(_v, _dest, _x);
    }
    static public function fromP3(_v:T_projLookupTable, _q:Point):Void {
        final _v = (_v : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_T_projLookupTable.T_projLookupTable>);
        final _q = (_q : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_Point.Point>);
        stdgo._internal.crypto.internal.edwards25519.Edwards25519_T_projLookupTable_static_extension.T_projLookupTable_static_extension.fromP3(_v, _q);
    }
}
