package _internal.strconv_test;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
function testFtoaPowersOfTwo(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        trace("testFtoaPowersOfTwo" + " skip function");
        return;
        {
            var _exp = (-2048 : stdgo.GoInt);
            stdgo.Go.cfor((_exp <= (2048 : stdgo.GoInt) : Bool), _exp++, {
                var _f = (stdgo._internal.math.Math_ldexp.ldexp((1 : stdgo.GoFloat64), _exp) : stdgo.GoFloat64);
                if (!stdgo._internal.math.Math_isInf.isInf(_f, (0 : stdgo.GoInt))) {
                    var _s = (stdgo._internal.strconv.Strconv_formatFloat.formatFloat(_f, (101 : stdgo.GoUInt8), (-1 : stdgo.GoInt), (64 : stdgo.GoInt))?.__copy__() : stdgo.GoString);
                    {
                        var __tmp__ = stdgo._internal.strconv.Strconv_parseFloat.parseFloat(_s?.__copy__(), (64 : stdgo.GoInt)), _x:stdgo.GoFloat64 = __tmp__._0, __0:stdgo.Error = __tmp__._1;
                        if (_x != (_f)) {
                            _t.errorf(("failed roundtrip %v => %s => %v" : stdgo.GoString), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_x));
                        };
                    };
                };
                var _f32 = (_f : stdgo.GoFloat32);
                if (!stdgo._internal.math.Math_isInf.isInf((_f32 : stdgo.GoFloat64), (0 : stdgo.GoInt))) {
                    var _s = (stdgo._internal.strconv.Strconv_formatFloat.formatFloat((_f32 : stdgo.GoFloat64), (101 : stdgo.GoUInt8), (-1 : stdgo.GoInt), (32 : stdgo.GoInt))?.__copy__() : stdgo.GoString);
                    {
                        var __tmp__ = stdgo._internal.strconv.Strconv_parseFloat.parseFloat(_s?.__copy__(), (32 : stdgo.GoInt)), _x:stdgo.GoFloat64 = __tmp__._0, __0:stdgo.Error = __tmp__._1;
                        if ((_x : stdgo.GoFloat32) != (_f32)) {
                            _t.errorf(("failed roundtrip %v => %s => %v" : stdgo.GoString), stdgo.Go.toInterface(_f32), stdgo.Go.toInterface(_s), stdgo.Go.toInterface((_x : stdgo.GoFloat32)));
                        };
                    };
                };
            });
        };
    }
