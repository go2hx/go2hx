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
function testParseFloatIncorrectBitSize(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        {};
        {};
        for (__0 => _bitSize in (new stdgo.Slice<stdgo.GoInt>(4, 4, ...[(0 : stdgo.GoInt), (10 : stdgo.GoInt), (100 : stdgo.GoInt), (128 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>)) {
            var __tmp__ = stdgo._internal.strconv.Strconv_parseFloat.parseFloat(("1.5e308" : stdgo.GoString), _bitSize), _f:stdgo.GoFloat64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatalf(("ParseFloat(%q, %d) gave error %s" : stdgo.GoString), stdgo.Go.toInterface(("1.5e308" : stdgo.GoString)), stdgo.Go.toInterface(_bitSize), stdgo.Go.toInterface(_err));
            };
            if (_f != (1.5e+308 : stdgo.GoFloat64)) {
                _t.fatalf(("ParseFloat(%q, %d) = %g (expected %g)" : stdgo.GoString), stdgo.Go.toInterface(("1.5e308" : stdgo.GoString)), stdgo.Go.toInterface(_bitSize), stdgo.Go.toInterface(_f), stdgo.Go.toInterface((1.5e+308 : stdgo.GoFloat64)));
            };
        };
    }
