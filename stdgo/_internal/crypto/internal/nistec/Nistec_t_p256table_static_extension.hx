package stdgo._internal.crypto.internal.nistec;
@:keep @:allow(stdgo._internal.crypto.internal.nistec.Nistec.T_p256Table_asInterface) class T_p256Table_static_extension {
    @:keep
    @:tdfield
    static public function select( _table:stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_t_p256table.T_p256Table>, _p:stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p256point.P256Point>, _n:stdgo.GoUInt8):Void {
        @:recv var _table:stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_t_p256table.T_p256Table> = _table;
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p256.go#L333"
        if ((_n >= (16 : stdgo.GoUInt8) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p256.go#L334"
            throw stdgo.Go.toInterface(("nistec: internal error: p256Table called with out-of-bounds value" : stdgo.GoString));
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p256.go#L336"
        _p.set(stdgo._internal.crypto.internal.nistec.Nistec_newp256point.newP256Point());
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p256.go#L337"
        {
            var _i = ((1 : stdgo.GoUInt8) : stdgo.GoUInt8);
            while ((_i < (16 : stdgo.GoUInt8) : Bool)) {
                var _cond = (stdgo._internal.crypto.subtle.Subtle_constanttimebyteeq.constantTimeByteEq(_i, _n) : stdgo.GoInt);
//"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p256.go#L339"
                _p.select(_table[((_i - (1 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoInt)], _p, _cond);
                _i++;
            };
        };
    }
}
