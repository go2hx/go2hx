package stdgo._internal.image.color;
function testCMYKRoundtrip(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        {
            var _r = (0 : stdgo.GoInt);
            while ((_r < (256 : stdgo.GoInt) : Bool)) {
                {
                    var _g = (0 : stdgo.GoInt);
                    while ((_g < (256 : stdgo.GoInt) : Bool)) {
                        {
                            var _b = (0 : stdgo.GoInt);
                            while ((_b < (256 : stdgo.GoInt) : Bool)) {
                                var __0 = (_r : stdgo.GoUInt8), __1 = (_g : stdgo.GoUInt8), __2 = (_b : stdgo.GoUInt8);
var _b0 = __2, _g0 = __1, _r0 = __0;
var __tmp__ = stdgo._internal.image.color.Color_rgbtocmyk.rGBToCMYK(_r0, _g0, _b0), _c:stdgo.GoUInt8 = __tmp__._0, _m:stdgo.GoUInt8 = __tmp__._1, _y:stdgo.GoUInt8 = __tmp__._2, _k:stdgo.GoUInt8 = __tmp__._3;
var __tmp__ = stdgo._internal.image.color.Color_cmyktorgb.cMYKToRGB(_c, _m, _y, _k), _r1:stdgo.GoUInt8 = __tmp__._0, _g1:stdgo.GoUInt8 = __tmp__._1, _b1:stdgo.GoUInt8 = __tmp__._2;
if ((((stdgo._internal.image.color.Color__delta._delta(_r0, _r1) > (1 : stdgo.GoUInt8) : Bool) || (stdgo._internal.image.color.Color__delta._delta(_g0, _g1) > (1 : stdgo.GoUInt8) : Bool) : Bool) || (stdgo._internal.image.color.Color__delta._delta(_b0, _b1) > (1 : stdgo.GoUInt8) : Bool) : Bool)) {
                                    @:check2r _t.fatalf(("\nr0, g0, b0 = %d, %d, %d\nc, m, y, k = %d, %d, %d, %d\nr1, g1, b1 = %d, %d, %d" : stdgo.GoString),
stdgo.Go.toInterface(_r0),
stdgo.Go.toInterface(_g0),
stdgo.Go.toInterface(_b0),
stdgo.Go.toInterface(_c),
stdgo.Go.toInterface(_m),
stdgo.Go.toInterface(_y),
stdgo.Go.toInterface(_k),
stdgo.Go.toInterface(_r1),
stdgo.Go.toInterface(_g1),
stdgo.Go.toInterface(_b1));
                                };
                                _b = (_b + ((3 : stdgo.GoInt)) : stdgo.GoInt);
                            };
                        };
                        _g = (_g + ((5 : stdgo.GoInt)) : stdgo.GoInt);
                    };
                };
                _r = (_r + ((7 : stdgo.GoInt)) : stdgo.GoInt);
            };
        };
    }
