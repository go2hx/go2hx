package stdgo._internal.crypto.internal.edwards25519;
@:keep @:allow(stdgo._internal.crypto.internal.edwards25519.Edwards25519.T_nafLookupTable8_asInterface) class T_nafLookupTable8_static_extension {
    @:keep
    @:tdfield
    static public function selectInto( _v:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_naflookuptable8.T_nafLookupTable8>, _dest:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_affinecached.T_affineCached>, _x:stdgo.GoInt8):Void {
        @:recv var _v:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_naflookuptable8.T_nafLookupTable8> = _v;
        {
            var __tmp__ = (@:checkr _v ?? throw "null pointer dereference")._points[((_x / (2 : stdgo.GoInt8) : stdgo.GoInt8) : stdgo.GoInt)];
            var x = (_dest : stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_affinecached.T_affineCached);
            x.yplusX = __tmp__?.yplusX;
            x.yminusX = __tmp__?.yminusX;
            x.t2d = __tmp__?.t2d;
        };
    }
    @:keep
    @:tdfield
    static public function fromP3( _v:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_naflookuptable8.T_nafLookupTable8>, _q:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_point.Point>):Void {
        @:recv var _v:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_naflookuptable8.T_nafLookupTable8> = _v;
        @:check2 (@:checkr _v ?? throw "null pointer dereference")._points[(0 : stdgo.GoInt)].fromP3(_q);
        var _q2 = (new stdgo._internal.crypto.internal.edwards25519.Edwards25519_point.Point() : stdgo._internal.crypto.internal.edwards25519.Edwards25519_point.Point);
        @:check2 _q2.add(_q, _q);
        var _tmpP3 = (new stdgo._internal.crypto.internal.edwards25519.Edwards25519_point.Point() : stdgo._internal.crypto.internal.edwards25519.Edwards25519_point.Point);
        var _tmpP1xP1 = (new stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_projp1xp1.T_projP1xP1() : stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_projp1xp1.T_projP1xP1);
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (63 : stdgo.GoInt) : Bool)) {
                @:check2 (@:checkr _v ?? throw "null pointer dereference")._points[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)].fromP3(@:check2 _tmpP3._fromP1xP1(@:check2 _tmpP1xP1.addAffine((stdgo.Go.setRef(_q2) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_point.Point>), (stdgo.Go.setRef((@:checkr _v ?? throw "null pointer dereference")._points[(_i : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_affinecached.T_affineCached>))));
                _i++;
            };
        };
    }
}
