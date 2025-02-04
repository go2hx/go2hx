package stdgo._internal.crypto.internal.nistec;
@:keep @:allow(stdgo._internal.crypto.internal.nistec.Nistec.T_p384Table_asInterface) class T_p384Table_static_extension {
    @:keep
    @:tdfield
    static public function select( _table:stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_t_p384table.T_p384Table>, _p:stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p384point.P384Point>, _n:stdgo.GoUInt8):Void {
        @:recv var _table:stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_t_p384table.T_p384Table> = _table;
        if ((_n >= (16 : stdgo.GoUInt8) : Bool)) {
            throw stdgo.Go.toInterface(("nistec: internal error: p384Table called with out-of-bounds value" : stdgo.GoString));
        };
        @:check2r _p.set(stdgo._internal.crypto.internal.nistec.Nistec_newp384point.newP384Point());
        {
            var _i = ((1 : stdgo.GoUInt8) : stdgo.GoUInt8);
            while ((_i < (16 : stdgo.GoUInt8) : Bool)) {
                var _cond = (stdgo._internal.crypto.subtle.Subtle_constanttimebyteeq.constantTimeByteEq(_i, _n) : stdgo.GoInt);
@:check2r _p.select(_table[((_i - (1 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoInt)], _p, _cond);
                _i++;
            };
        };
    }
}
