package stdgo._internal.crypto.internal.edwards25519;
@:keep @:allow(stdgo._internal.crypto.internal.edwards25519.Edwards25519.T_affineLookupTable_asInterface) class T_affineLookupTable_static_extension {
    @:keep
    @:tdfield
    static public function selectInto( _v:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_affinelookuptable.T_affineLookupTable>, _dest:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_affinecached.T_affineCached>, _x:stdgo.GoInt8):Void {
        @:recv var _v:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_affinelookuptable.T_affineLookupTable> = _v;
        var _xmask = (_x >> (7i64 : stdgo.GoUInt64) : stdgo.GoInt8);
        var _xabs = ((((_x + _xmask : stdgo.GoInt8)) ^ _xmask : stdgo.GoInt8) : stdgo.GoUInt8);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/edwards25519/tables.go#L111"
        _dest.zero();
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/edwards25519/tables.go#L112"
        {
            var _j = (1 : stdgo.GoInt);
            while ((_j <= (8 : stdgo.GoInt) : Bool)) {
                var _cond = (stdgo._internal.crypto.subtle.Subtle_constanttimebyteeq.constantTimeByteEq(_xabs, (_j : stdgo.GoUInt8)) : stdgo.GoInt);
//"file:///home/runner/.go/go1.21.3/src/crypto/internal/edwards25519/tables.go#L115"
                _dest.select((stdgo.Go.setRef((@:checkr _v ?? throw "null pointer dereference")._points[(_j - (1 : stdgo.GoInt) : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_affinecached.T_affineCached>), _dest, _cond);
                _j++;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/edwards25519/tables.go#L118"
        _dest.condNeg(((_xmask & (1 : stdgo.GoInt8) : stdgo.GoInt8) : stdgo.GoInt));
    }
    @:keep
    @:tdfield
    static public function fromP3( _v:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_affinelookuptable.T_affineLookupTable>, _q:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_point.Point>):Void {
        @:recv var _v:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_affinelookuptable.T_affineLookupTable> = _v;
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/edwards25519/tables.go#L52"
        (@:checkr _v ?? throw "null pointer dereference")._points[(0 : stdgo.GoInt)].fromP3(_q);
        var _tmpP3 = (new stdgo._internal.crypto.internal.edwards25519.Edwards25519_point.Point() : stdgo._internal.crypto.internal.edwards25519.Edwards25519_point.Point);
        var _tmpP1xP1 = (new stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_projp1xp1.T_projP1xP1() : stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_projp1xp1.T_projP1xP1);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/edwards25519/tables.go#L55"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (7 : stdgo.GoInt) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/internal/edwards25519/tables.go#L57"
                (@:checkr _v ?? throw "null pointer dereference")._points[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)].fromP3(_tmpP3._fromP1xP1(_tmpP1xP1.addAffine(_q, (stdgo.Go.setRef((@:checkr _v ?? throw "null pointer dereference")._points[(_i : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_affinecached.T_affineCached>))));
                _i++;
            };
        };
    }
}
