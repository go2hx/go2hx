package _internal.crypto.internal.edwards25519;
@:keep @:allow(_internal.crypto.internal.edwards25519.Edwards25519.T_nafLookupTable8_asInterface) class T_nafLookupTable8_static_extension {
    @:keep
    static public function selectInto( _v:stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_T_nafLookupTable8.T_nafLookupTable8>, _dest:stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_T_affineCached.T_affineCached>, _x:stdgo.GoInt8):Void {
        @:recv var _v:stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_T_nafLookupTable8.T_nafLookupTable8> = _v;
        {
            var __tmp__ = _v._points[((_x / (2 : stdgo.GoInt8) : stdgo.GoInt8) : stdgo.GoInt)];
            (_dest : _internal.crypto.internal.edwards25519.Edwards25519_T_affineCached.T_affineCached).yplusX = __tmp__.yplusX;
            (_dest : _internal.crypto.internal.edwards25519.Edwards25519_T_affineCached.T_affineCached).yminusX = __tmp__.yminusX;
            (_dest : _internal.crypto.internal.edwards25519.Edwards25519_T_affineCached.T_affineCached).t2d = __tmp__.t2d;
        };
    }
    @:keep
    static public function fromP3( _v:stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_T_nafLookupTable8.T_nafLookupTable8>, _q:stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_Point.Point>):Void {
        @:recv var _v:stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_T_nafLookupTable8.T_nafLookupTable8> = _v;
        _v._points[(0 : stdgo.GoInt)].fromP3(_q);
        var _q2 = (new _internal.crypto.internal.edwards25519.Edwards25519_Point.Point() : _internal.crypto.internal.edwards25519.Edwards25519_Point.Point);
        _q2.add(_q, _q);
        var _tmpP3 = (new _internal.crypto.internal.edwards25519.Edwards25519_Point.Point() : _internal.crypto.internal.edwards25519.Edwards25519_Point.Point);
        var _tmpP1xP1 = (new _internal.crypto.internal.edwards25519.Edwards25519_T_projP1xP1.T_projP1xP1() : _internal.crypto.internal.edwards25519.Edwards25519_T_projP1xP1.T_projP1xP1);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (63 : stdgo.GoInt) : Bool), _i++, {
                _v._points[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)].fromP3(_tmpP3._fromP1xP1(_tmpP1xP1.addAffine((stdgo.Go.setRef(_q2) : stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_Point.Point>), (stdgo.Go.setRef(_v._points[(_i : stdgo.GoInt)]) : stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_T_affineCached.T_affineCached>))));
            });
        };
    }
}
