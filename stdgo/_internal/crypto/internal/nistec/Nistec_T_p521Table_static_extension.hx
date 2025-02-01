package stdgo._internal.crypto.internal.nistec;
import stdgo._internal.errors.Errors;
import stdgo._internal.crypto.subtle.Subtle;
@:keep @:allow(stdgo._internal.crypto.internal.nistec.Nistec.T_p521Table_asInterface) class T_p521Table_static_extension {
    @:keep
    @:tdfield
    static public function select( _table:stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_T_p521Table.T_p521Table>, _p:stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_P521Point.P521Point>, _n:stdgo.GoUInt8):Void {
        @:recv var _table:stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_T_p521Table.T_p521Table> = _table;
        if ((_n >= (16 : stdgo.GoUInt8) : Bool)) {
            throw stdgo.Go.toInterface(("nistec: internal error: p521Table called with out-of-bounds value" : stdgo.GoString));
        };
        @:check2r _p.set(stdgo._internal.crypto.internal.nistec.Nistec_newP521Point.newP521Point());
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
