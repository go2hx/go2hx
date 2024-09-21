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
function testParseBool(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (__0 => _test in _internal.strconv_test.Strconv_test__atobtests._atobtests) {
            var __tmp__ = stdgo._internal.strconv.Strconv_parseBool.parseBool(_test._in?.__copy__()), _b:Bool = __tmp__._0, _e:stdgo.Error = __tmp__._1;
            if (_test._err != null) {
                if (_e == null) {
                    _t.errorf(("%s: expected %s but got nil" : stdgo.GoString), stdgo.Go.toInterface(_test._in), stdgo.Go.toInterface(_test._err));
                } else {
                    if (stdgo.Go.toInterface(_test._err) != (stdgo.Go.toInterface((stdgo.Go.typeAssert((stdgo.Go.toInterface(_e) : stdgo.Ref<stdgo._internal.strconv.Strconv_NumError.NumError>)) : stdgo.Ref<stdgo._internal.strconv.Strconv_NumError.NumError>).err))) {
                        _t.errorf(("%s: expected %s but got %s" : stdgo.GoString), stdgo.Go.toInterface(_test._in), stdgo.Go.toInterface(_test._err), stdgo.Go.toInterface(_e));
                    };
                };
            } else {
                if (_e != null) {
                    _t.errorf(("%s: expected no error but got %s" : stdgo.GoString), stdgo.Go.toInterface(_test._in), stdgo.Go.toInterface(_e));
                };
                if (_b != (_test._out)) {
                    _t.errorf(("%s: expected %t but got %t" : stdgo.GoString), stdgo.Go.toInterface(_test._in), stdgo.Go.toInterface(_test._out), stdgo.Go.toInterface(_b));
                };
            };
        };
    }
