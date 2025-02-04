package stdgo._internal.image.color;
function _eq(_c0:stdgo._internal.image.color.Color_color.Color, _c1:stdgo._internal.image.color.Color_color.Color):stdgo.Error {
        var __tmp__ = _c0.rGBA(), _r0:stdgo.GoUInt32 = __tmp__._0, _g0:stdgo.GoUInt32 = __tmp__._1, _b0:stdgo.GoUInt32 = __tmp__._2, _a0:stdgo.GoUInt32 = __tmp__._3;
        var __tmp__ = _c1.rGBA(), _r1:stdgo.GoUInt32 = __tmp__._0, _g1:stdgo.GoUInt32 = __tmp__._1, _b1:stdgo.GoUInt32 = __tmp__._2, _a1:stdgo.GoUInt32 = __tmp__._3;
        if ((((_r0 != (_r1) || _g0 != (_g1) : Bool) || _b0 != (_b1) : Bool) || (_a0 != _a1) : Bool)) {
            return stdgo._internal.fmt.Fmt_errorf.errorf(("got  0x%04x 0x%04x 0x%04x 0x%04x\nwant 0x%04x 0x%04x 0x%04x 0x%04x" : stdgo.GoString), stdgo.Go.toInterface(_r0), stdgo.Go.toInterface(_g0), stdgo.Go.toInterface(_b0), stdgo.Go.toInterface(_a0), stdgo.Go.toInterface(_r1), stdgo.Go.toInterface(_g1), stdgo.Go.toInterface(_b1), stdgo.Go.toInterface(_a1));
        };
        return (null : stdgo.Error);
    }
