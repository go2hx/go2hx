package stdgo._internal.image.color;
function testYCbCrToRGBConsistency(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        {
            var _y = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_y < (256 : stdgo.GoInt) : Bool), _y = (_y + ((7 : stdgo.GoInt)) : stdgo.GoInt), {
                {
                    var _cb = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_cb < (256 : stdgo.GoInt) : Bool), _cb = (_cb + ((5 : stdgo.GoInt)) : stdgo.GoInt), {
                        {
                            var _cr = (0 : stdgo.GoInt);
                            stdgo.Go.cfor((_cr < (256 : stdgo.GoInt) : Bool), _cr = (_cr + ((3 : stdgo.GoInt)) : stdgo.GoInt), {
                                var _x = (new stdgo._internal.image.color.Color_YCbCr.YCbCr((_y : stdgo.GoUInt8), (_cb : stdgo.GoUInt8), (_cr : stdgo.GoUInt8)) : stdgo._internal.image.color.Color_YCbCr.YCbCr);
                                var __tmp__ = _x.rgba(), _r0:stdgo.GoUInt32 = __tmp__._0, _g0:stdgo.GoUInt32 = __tmp__._1, _b0:stdgo.GoUInt32 = __tmp__._2, __0:stdgo.GoUInt32 = __tmp__._3;
                                var __0 = ((_r0 >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt8), __1 = ((_g0 >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt8), __2 = ((_b0 >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt8);
var _b1 = __2, _g1 = __1, _r1 = __0;
                                var __tmp__ = stdgo._internal.image.color.Color_ycbCrToRGB.ycbCrToRGB(_x.y, _x.cb, _x.cr), _r2:stdgo.GoUInt8 = __tmp__._0, _g2:stdgo.GoUInt8 = __tmp__._1, _b2:stdgo.GoUInt8 = __tmp__._2;
                                if (((_r1 != (_r2) || _g1 != (_g2) : Bool) || (_b1 != _b2) : Bool)) {
                                    _t.fatalf(("y, cb, cr = %d, %d, %d\nr1, g1, b1 = %d, %d, %d\nr2, g2, b2 = %d, %d, %d" : stdgo.GoString), stdgo.Go.toInterface(_y), stdgo.Go.toInterface(_cb), stdgo.Go.toInterface(_cr), stdgo.Go.toInterface(_r1), stdgo.Go.toInterface(_g1), stdgo.Go.toInterface(_b1), stdgo.Go.toInterface(_r2), stdgo.Go.toInterface(_g2), stdgo.Go.toInterface(_b2));
                                };
                            });
                        };
                    });
                };
            });
        };
    }
