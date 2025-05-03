package stdgo._internal.crypto.internal.nistec;
@:keep @:allow(stdgo._internal.crypto.internal.nistec.Nistec.T_p521Table_asInterface) class T_p521Table_static_extension {
    @:keep
    @:tdfield
    static public function select( _table:stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_t_p521table.T_p521Table>, _p:stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p521point.P521Point>, _n:stdgo.GoUInt8):Void {
        @:recv var _table:stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_t_p521table.T_p521Table> = _table;
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p521.go#L331"
        if ((_n >= (16 : stdgo.GoUInt8) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p521.go#L332"
            throw stdgo.Go.toInterface(("nistec: internal error: p521Table called with out-of-bounds value" : stdgo.GoString));
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p521.go#L334"
        _p.set(stdgo._internal.crypto.internal.nistec.Nistec_newp521point.newP521Point());
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p521.go#L335"
        {
            var _i = ((1 : stdgo.GoUInt8) : stdgo.GoUInt8);
            while ((_i < (16 : stdgo.GoUInt8) : Bool)) {
                var _cond = (stdgo._internal.crypto.subtle.Subtle_constanttimebyteeq.constantTimeByteEq(_i, _n) : stdgo.GoInt);
//"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p521.go#L337"
                _p.select(_table[((_i - (1 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoInt)], _p, _cond);
                _i++;
            };
        };
    }
}
