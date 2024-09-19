package _internal.crypto.internal.nistec;
@:keep @:allow(_internal.crypto.internal.nistec.Nistec.T_p224Table_asInterface) class T_p224Table_static_extension {
    @:keep
    static public function select( _table:stdgo.Ref<_internal.crypto.internal.nistec.Nistec_T_p224Table.T_p224Table>, _p:stdgo.Ref<_internal.crypto.internal.nistec.Nistec_P224Point.P224Point>, _n:stdgo.GoUInt8):Void {
        @:recv var _table:stdgo.Ref<_internal.crypto.internal.nistec.Nistec_T_p224Table.T_p224Table> = _table;
        if ((_n >= (16 : stdgo.GoUInt8) : Bool)) {
            throw stdgo.Go.toInterface(("nistec: internal error: p224Table called with out-of-bounds value" : stdgo.GoString));
        };
        _p.set(_internal.crypto.internal.nistec.Nistec_newP224Point.newP224Point());
        {
            var _i = ((1 : stdgo.GoUInt8) : stdgo.GoUInt8);
            stdgo.Go.cfor((_i < (16 : stdgo.GoUInt8) : Bool), _i++, {
                var _cond = (stdgo._internal.crypto.subtle.Subtle_constantTimeByteEq.constantTimeByteEq(_i, _n) : stdgo.GoInt);
                _p.select(_table[((_i - (1 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoInt)], _p, _cond);
            });
        };
    }
}