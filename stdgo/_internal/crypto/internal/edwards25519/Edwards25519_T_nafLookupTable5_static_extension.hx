package stdgo._internal.crypto.internal.edwards25519;
@:keep @:allow(stdgo._internal.crypto.internal.edwards25519.Edwards25519.T_nafLookupTable5_asInterface) class T_nafLookupTable5_static_extension {
    @:keep
    @:tdfield
    static public function selectInto( _v:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_T_nafLookupTable5.T_nafLookupTable5>, _dest:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_T_projCached.T_projCached>, _x:stdgo.GoInt8):Void {
        @:recv var _v:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_T_nafLookupTable5.T_nafLookupTable5> = _v;
        {
            var __tmp__ = (@:checkr _v ?? throw "null pointer dereference")._points[((_x / (2 : stdgo.GoInt8) : stdgo.GoInt8) : stdgo.GoInt)];
            var x = (_dest : stdgo._internal.crypto.internal.edwards25519.Edwards25519_T_projCached.T_projCached);
            x.yplusX = __tmp__?.yplusX;
            x.yminusX = __tmp__?.yminusX;
            x.z = __tmp__?.z;
            x.t2d = __tmp__?.t2d;
        };
    }
    @:keep
    @:tdfield
    static public function fromP3( _v:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_T_nafLookupTable5.T_nafLookupTable5>, _q:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_Point.Point>):Void {
        @:recv var _v:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_T_nafLookupTable5.T_nafLookupTable5> = _v;
        @:check2 (@:checkr _v ?? throw "null pointer dereference")._points[(0 : stdgo.GoInt)].fromP3(_q);
        var _q2 = (new stdgo._internal.crypto.internal.edwards25519.Edwards25519_Point.Point() : stdgo._internal.crypto.internal.edwards25519.Edwards25519_Point.Point);
        @:check2 _q2.add(_q, _q);
        var _tmpP3 = (new stdgo._internal.crypto.internal.edwards25519.Edwards25519_Point.Point() : stdgo._internal.crypto.internal.edwards25519.Edwards25519_Point.Point);
        var _tmpP1xP1 = (new stdgo._internal.crypto.internal.edwards25519.Edwards25519_T_projP1xP1.T_projP1xP1() : stdgo._internal.crypto.internal.edwards25519.Edwards25519_T_projP1xP1.T_projP1xP1);
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (7 : stdgo.GoInt) : Bool)) {
                @:check2 (@:checkr _v ?? throw "null pointer dereference")._points[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)].fromP3(@:check2 _tmpP3._fromP1xP1(@:check2 _tmpP1xP1.add((stdgo.Go.setRef(_q2) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_Point.Point>), (stdgo.Go.setRef((@:checkr _v ?? throw "null pointer dereference")._points[(_i : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_T_projCached.T_projCached>))));
                _i++;
            };
        };
    }
}
