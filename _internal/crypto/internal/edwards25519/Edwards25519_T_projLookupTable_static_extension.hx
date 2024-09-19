package _internal.crypto.internal.edwards25519;
@:keep @:allow(_internal.crypto.internal.edwards25519.Edwards25519.T_projLookupTable_asInterface) class T_projLookupTable_static_extension {
    @:keep
    static public function selectInto( _v:stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_T_projLookupTable.T_projLookupTable>, _dest:stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_T_projCached.T_projCached>, _x:stdgo.GoInt8):Void {
        @:recv var _v:stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_T_projLookupTable.T_projLookupTable> = _v;
        var _xmask = (_x >> (7i64 : stdgo.GoUInt64) : stdgo.GoInt8);
        var _xabs = ((((_x + _xmask : stdgo.GoInt8)) ^ _xmask : stdgo.GoInt8) : stdgo.GoUInt8);
        _dest.zero();
        {
            var _j = (1 : stdgo.GoInt);
            stdgo.Go.cfor((_j <= (8 : stdgo.GoInt) : Bool), _j++, {
                var _cond = (stdgo._internal.crypto.subtle.Subtle_constantTimeByteEq.constantTimeByteEq(_xabs, (_j : stdgo.GoUInt8)) : stdgo.GoInt);
                _dest.select((stdgo.Go.setRef(_v._points[(_j - (1 : stdgo.GoInt) : stdgo.GoInt)]) : stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_T_projCached.T_projCached>), _dest, _cond);
            });
        };
        _dest.condNeg(((_xmask & (1 : stdgo.GoInt8) : stdgo.GoInt8) : stdgo.GoInt));
    }
    @:keep
    static public function fromP3( _v:stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_T_projLookupTable.T_projLookupTable>, _q:stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_Point.Point>):Void {
        @:recv var _v:stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_T_projLookupTable.T_projLookupTable> = _v;
        _v._points[(0 : stdgo.GoInt)].fromP3(_q);
        var _tmpP3 = (new _internal.crypto.internal.edwards25519.Edwards25519_Point.Point() : _internal.crypto.internal.edwards25519.Edwards25519_Point.Point);
        var _tmpP1xP1 = (new _internal.crypto.internal.edwards25519.Edwards25519_T_projP1xP1.T_projP1xP1() : _internal.crypto.internal.edwards25519.Edwards25519_T_projP1xP1.T_projP1xP1);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (7 : stdgo.GoInt) : Bool), _i++, {
                _v._points[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)].fromP3(_tmpP3._fromP1xP1(_tmpP1xP1.add(_q, (stdgo.Go.setRef(_v._points[(_i : stdgo.GoInt)]) : stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_T_projCached.T_projCached>))));
            });
        };
    }
}
