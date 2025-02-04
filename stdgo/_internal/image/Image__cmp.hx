package stdgo._internal.image;
function _cmp(_cm:stdgo._internal.image.color.Color_model.Model, _c0:stdgo._internal.image.color.Color_color.Color, _c1:stdgo._internal.image.color.Color_color.Color):Bool {
        var __tmp__ = _cm.convert(_c0).rGBA(), _r0:stdgo.GoUInt32 = __tmp__._0, _g0:stdgo.GoUInt32 = __tmp__._1, _b0:stdgo.GoUInt32 = __tmp__._2, _a0:stdgo.GoUInt32 = __tmp__._3;
        var __tmp__ = _cm.convert(_c1).rGBA(), _r1:stdgo.GoUInt32 = __tmp__._0, _g1:stdgo.GoUInt32 = __tmp__._1, _b1:stdgo.GoUInt32 = __tmp__._2, _a1:stdgo.GoUInt32 = __tmp__._3;
        return (((_r0 == (_r1) && _g0 == (_g1) : Bool) && _b0 == (_b1) : Bool) && (_a0 == _a1) : Bool);
    }
