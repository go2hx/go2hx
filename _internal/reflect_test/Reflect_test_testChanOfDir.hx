package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
function testChanOfDir(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        {};
        var _crt = (stdgo._internal.reflect.Reflect_chanOf.chanOf((1 : stdgo._internal.reflect.Reflect_ChanDir.ChanDir), stdgo._internal.reflect.Reflect_typeOf.typeOf(stdgo.Go.toInterface((stdgo.Go.str() : _internal.reflect_test.Reflect_test_T_testChanOfDir___localname___T_159545.T_testChanOfDir___localname___T_159545)))) : stdgo._internal.reflect.Reflect_Type_.Type_);
        var _cst = (stdgo._internal.reflect.Reflect_chanOf.chanOf((2 : stdgo._internal.reflect.Reflect_ChanDir.ChanDir), stdgo._internal.reflect.Reflect_typeOf.typeOf(stdgo.Go.toInterface((stdgo.Go.str() : _internal.reflect_test.Reflect_test_T_testChanOfDir___localname___T_159545.T_testChanOfDir___localname___T_159545)))) : stdgo._internal.reflect.Reflect_Type_.Type_);
        {};
        _internal.reflect_test.Reflect_test__checkSameType._checkSameType(_t, stdgo._internal.reflect.Reflect_chanOf.chanOf((1 : stdgo._internal.reflect.Reflect_ChanDir.ChanDir), stdgo._internal.reflect.Reflect_typeOf.typeOf(stdgo.Go.toInterface((1 : _internal.reflect_test.Reflect_test_T_testChanOfDir___localname___T1_159686.T_testChanOfDir___localname___T1_159686)))), stdgo.Go.toInterface((null : stdgo.Chan<_internal.reflect_test.Reflect_test_T_testChanOfDir___localname___T1_159686.T_testChanOfDir___localname___T1_159686>)));
        _internal.reflect_test.Reflect_test__checkSameType._checkSameType(_t, stdgo._internal.reflect.Reflect_chanOf.chanOf((2 : stdgo._internal.reflect.Reflect_ChanDir.ChanDir), stdgo._internal.reflect.Reflect_typeOf.typeOf(stdgo.Go.toInterface((1 : _internal.reflect_test.Reflect_test_T_testChanOfDir___localname___T1_159686.T_testChanOfDir___localname___T1_159686)))), stdgo.Go.toInterface((null : stdgo.Chan<_internal.reflect_test.Reflect_test_T_testChanOfDir___localname___T1_159686.T_testChanOfDir___localname___T1_159686>)));
        if ((_crt.chanDir().string() : stdgo.GoString) != (("<-chan" : stdgo.GoString))) {
            _t.errorf(("chan dir: have %q, want %q" : stdgo.GoString), stdgo.Go.toInterface((_crt.chanDir().string() : stdgo.GoString)), stdgo.Go.toInterface(("<-chan" : stdgo.GoString)));
        };
        if ((_cst.chanDir().string() : stdgo.GoString) != (("chan<-" : stdgo.GoString))) {
            _t.errorf(("chan dir: have %q, want %q" : stdgo.GoString), stdgo.Go.toInterface((_cst.chanDir().string() : stdgo.GoString)), stdgo.Go.toInterface(("chan<-" : stdgo.GoString)));
        };
    }
