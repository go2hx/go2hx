package stdgo._internal.crypto.internal.edwards25519;
@:keep @:allow(stdgo._internal.crypto.internal.edwards25519.Edwards25519.T_nafLookupTable5_asInterface) class T_nafLookupTable5_static_extension {
    @:keep
    @:tdfield
    static public function selectInto( _v:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_naflookuptable5.T_nafLookupTable5>, _dest:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_projcached.T_projCached>, _x:stdgo.GoInt8):Void {
        @:recv var _v:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_naflookuptable5.T_nafLookupTable5> = _v;
        {
            var __tmp__ = (@:checkr _v ?? throw "null pointer dereference")._points[((_x / (2 : stdgo.GoInt8) : stdgo.GoInt8) : stdgo.GoInt)];
            var x = (_dest : stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_projcached.T_projCached);
            x.yplusX = __tmp__?.yplusX;
            x.yminusX = __tmp__?.yminusX;
            x.z = __tmp__?.z;
            x.t2d = __tmp__?.t2d;
        };
    }
    @:keep
    @:tdfield
    static public function fromP3( _v:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_naflookuptable5.T_nafLookupTable5>, _q:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_point.Point>):Void {
        @:recv var _v:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_naflookuptable5.T_nafLookupTable5> = _v;
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/edwards25519/tables.go#L65"
        (@:checkr _v ?? throw "null pointer dereference")._points[(0 : stdgo.GoInt)].fromP3(_q);
        var _q2 = (new stdgo._internal.crypto.internal.edwards25519.Edwards25519_point.Point() : stdgo._internal.crypto.internal.edwards25519.Edwards25519_point.Point);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/edwards25519/tables.go#L67"
        _q2.add(_q, _q);
        var _tmpP3 = (new stdgo._internal.crypto.internal.edwards25519.Edwards25519_point.Point() : stdgo._internal.crypto.internal.edwards25519.Edwards25519_point.Point);
        var _tmpP1xP1 = (new stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_projp1xp1.T_projP1xP1() : stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_projp1xp1.T_projP1xP1);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/edwards25519/tables.go#L70"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (7 : stdgo.GoInt) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/internal/edwards25519/tables.go#L71"
                (@:checkr _v ?? throw "null pointer dereference")._points[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)].fromP3(_tmpP3._fromP1xP1(_tmpP1xP1.add((stdgo.Go.setRef(_q2) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_point.Point>), (stdgo.Go.setRef((@:checkr _v ?? throw "null pointer dereference")._points[(_i : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_projcached.T_projCached>))));
                _i++;
            };
        };
    }
}
