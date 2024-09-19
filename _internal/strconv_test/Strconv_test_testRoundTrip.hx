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
function testRoundTrip(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (__0 => _tt in _internal.strconv_test.Strconv_test__roundTripCases._roundTripCases) {
            var _old = (stdgo._internal.strconv.Strconv_setOptimize.setOptimize(false) : Bool);
            var _s = (stdgo._internal.strconv.Strconv_formatFloat.formatFloat(_tt._f, (103 : stdgo.GoUInt8), (-1 : stdgo.GoInt), (64 : stdgo.GoInt))?.__copy__() : stdgo.GoString);
            if (_s != (_tt._s)) {
                _t.errorf(("no-opt FormatFloat(%b) = %s, want %s" : stdgo.GoString), stdgo.Go.toInterface(_tt._f), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_tt._s));
            };
            var __tmp__ = stdgo._internal.strconv.Strconv_parseFloat.parseFloat(_tt._s?.__copy__(), (64 : stdgo.GoInt)), _f:stdgo.GoFloat64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (((_f != _tt._f) || (_err != null) : Bool)) {
                _t.errorf(("no-opt ParseFloat(%s) = %b, %v want %b, nil" : stdgo.GoString), stdgo.Go.toInterface(_tt._s), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_tt._f));
            };
            stdgo._internal.strconv.Strconv_setOptimize.setOptimize(true);
            _s = stdgo._internal.strconv.Strconv_formatFloat.formatFloat(_tt._f, (103 : stdgo.GoUInt8), (-1 : stdgo.GoInt), (64 : stdgo.GoInt))?.__copy__();
            if (_s != (_tt._s)) {
                _t.errorf(("opt FormatFloat(%b) = %s, want %s" : stdgo.GoString), stdgo.Go.toInterface(_tt._f), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_tt._s));
            };
            {
                var __tmp__ = stdgo._internal.strconv.Strconv_parseFloat.parseFloat(_tt._s?.__copy__(), (64 : stdgo.GoInt));
                _f = __tmp__._0;
                _err = __tmp__._1;
            };
            if (((_f != _tt._f) || (_err != null) : Bool)) {
                _t.errorf(("opt ParseFloat(%s) = %b, %v want %b, nil" : stdgo.GoString), stdgo.Go.toInterface(_tt._s), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_tt._f));
            };
            stdgo._internal.strconv.Strconv_setOptimize.setOptimize(_old);
        };
    }
