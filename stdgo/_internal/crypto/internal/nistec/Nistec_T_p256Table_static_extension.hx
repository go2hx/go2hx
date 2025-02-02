package stdgo._internal.crypto.internal.nistec;
@:keep @:allow(stdgo._internal.crypto.internal.nistec.Nistec.T_p256Table_asInterface) class T_p256Table_static_extension {
    @:keep
    @:tdfield
    static public function select( _table:stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_T_p256Table.T_p256Table>, _p:stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_P256Point.P256Point>, _n:stdgo.GoUInt8):Void {
        @:recv var _table:stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_T_p256Table.T_p256Table> = _table;
        if ((_n >= (16 : stdgo.GoUInt8) : Bool)) {
            throw stdgo.Go.toInterface(("nistec: internal error: p256Table called with out-of-bounds value" : stdgo.GoString));
        };
        @:check2r _p.set(stdgo._internal.crypto.internal.nistec.Nistec_newP256Point.newP256Point());
        {
            var _i = ((1 : stdgo.GoUInt8) : stdgo.GoUInt8);
            while ((_i < (16 : stdgo.GoUInt8) : Bool)) {
                var _cond = (stdgo._internal.crypto.subtle.Subtle_constantTimeByteEq.constantTimeByteEq(_i, _n) : stdgo.GoInt);
@:check2r _p.select(_table[((_i - (1 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoInt)], _p, _cond);
                _i++;
            };
        };
    }
}
