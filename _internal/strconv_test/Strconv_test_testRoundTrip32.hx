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
function testRoundTrip32(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        #if (interp || js) {
            trace("testRoundTrip32" + " skip targets: " + "interp, js");
            return;
        } #else null #end;
        var _step = ((997u32 : stdgo.GoUInt32) : stdgo.GoUInt32);
        if (stdgo._internal.testing.Testing_short.short()) {
            _step = (99991u32 : stdgo.GoUInt32);
        };
        var _count = (0 : stdgo.GoInt);
        {
            var _i = ((0u32 : stdgo.GoUInt32) : stdgo.GoUInt32);
            stdgo.Go.cfor((_i < (2139095040u32 : stdgo.GoUInt32) : Bool), _i = (_i + (_step) : stdgo.GoUInt32), {
                var _f = (stdgo._internal.math.Math_float32frombits.float32frombits(_i) : stdgo.GoFloat32);
                if ((_i & (1u32 : stdgo.GoUInt32) : stdgo.GoUInt32) == ((1u32 : stdgo.GoUInt32))) {
                    _f = -_f;
                };
                var _s = (stdgo._internal.strconv.Strconv_formatFloat.formatFloat((_f : stdgo.GoFloat64), (103 : stdgo.GoUInt8), (-1 : stdgo.GoInt), (32 : stdgo.GoInt))?.__copy__() : stdgo.GoString);
                var __tmp__ = stdgo._internal.strconv.Strconv_parseFloat.parseFloat(_s?.__copy__(), (32 : stdgo.GoInt)), _parsed:stdgo.GoFloat64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                var _parsed32 = (_parsed : stdgo.GoFloat32);
                if (_err != null) {
                    _t.errorf(("ParseFloat(%q, 32) gave error %s" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_err));
                } else if ((_parsed32 : stdgo.GoFloat64) != (_parsed)) {
                    _t.errorf(("ParseFloat(%q, 32) = %v, not a float32 (nearest is %v)" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_parsed), stdgo.Go.toInterface(_parsed32));
                } else if (_parsed32 != (_f)) {
                    _t.errorf(("ParseFloat(%q, 32) = %b (expected %b)" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_parsed32), stdgo.Go.toInterface(_f));
                };
                _count++;
            });
        };
        _t.logf(("tested %d float32\'s" : stdgo.GoString), stdgo.Go.toInterface(_count));
    }
