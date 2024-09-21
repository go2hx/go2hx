package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
function testChanOf(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        {};
        var _ct = (stdgo._internal.reflect.Reflect_chanOf.chanOf((3 : stdgo._internal.reflect.Reflect_ChanDir.ChanDir), stdgo._internal.reflect.Reflect_typeOf.typeOf(stdgo.Go.toInterface((stdgo.Go.str() : _internal.reflect_test.Reflect_test_T_testChanOf___localname___T_158542.T_testChanOf___localname___T_158542)))) : stdgo._internal.reflect.Reflect_Type_.Type_);
        var _v = (stdgo._internal.reflect.Reflect_makeChan.makeChan(_ct, (2 : stdgo.GoInt))?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
        stdgo._internal.runtime.Runtime_gc.gc();
        _v.send(stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface((("hello" : stdgo.GoString) : _internal.reflect_test.Reflect_test_T_testChanOf___localname___T_158542.T_testChanOf___localname___T_158542)))?.__copy__());
        stdgo._internal.runtime.Runtime_gc.gc();
        _v.send(stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface((("world" : stdgo.GoString) : _internal.reflect_test.Reflect_test_T_testChanOf___localname___T_158542.T_testChanOf___localname___T_158542)))?.__copy__());
        stdgo._internal.runtime.Runtime_gc.gc();
        var __tmp__ = _v.recv(), _sv1:stdgo._internal.reflect.Reflect_Value.Value = __tmp__._0, __6:Bool = __tmp__._1;
        var __tmp__ = _v.recv(), _sv2:stdgo._internal.reflect.Reflect_Value.Value = __tmp__._0, __7:Bool = __tmp__._1;
        var _s1 = ((_sv1.string() : stdgo.GoString)?.__copy__() : stdgo.GoString);
        var _s2 = ((_sv2.string() : stdgo.GoString)?.__copy__() : stdgo.GoString);
        if (((_s1 != ("hello" : stdgo.GoString)) || (_s2 != ("world" : stdgo.GoString)) : Bool)) {
            _t.errorf(("constructed chan: have %q, %q, want %q, %q" : stdgo.GoString), stdgo.Go.toInterface(_s1), stdgo.Go.toInterface(_s2), stdgo.Go.toInterface(("hello" : stdgo.GoString)), stdgo.Go.toInterface(("world" : stdgo.GoString)));
        };
        {};
        _internal.reflect_test.Reflect_test__checkSameType._checkSameType(_t, stdgo._internal.reflect.Reflect_chanOf.chanOf((3 : stdgo._internal.reflect.Reflect_ChanDir.ChanDir), stdgo._internal.reflect.Reflect_typeOf.typeOf(stdgo.Go.toInterface((1 : _internal.reflect_test.Reflect_test_T_testChanOf___localname___T1_158969.T_testChanOf___localname___T1_158969)))), stdgo.Go.toInterface((null : stdgo.Chan<_internal.reflect_test.Reflect_test_T_testChanOf___localname___T1_158969.T_testChanOf___localname___T1_158969>)));
        var _left:stdgo.Chan<stdgo.Chan<_internal.reflect_test.Reflect_test_T_testChanOf___localname___T_158542.T_testChanOf___localname___T_158542>> = (null : stdgo.Chan<stdgo.Chan<_internal.reflect_test.Reflect_test_T_testChanOf___localname___T_158542.T_testChanOf___localname___T_158542>>);
        var _right:stdgo.Chan<stdgo.Chan<_internal.reflect_test.Reflect_test_T_testChanOf___localname___T_158542.T_testChanOf___localname___T_158542>> = (null : stdgo.Chan<stdgo.Chan<_internal.reflect_test.Reflect_test_T_testChanOf___localname___T_158542.T_testChanOf___localname___T_158542>>);
        var _tLeft = (stdgo._internal.reflect.Reflect_chanOf.chanOf((2 : stdgo._internal.reflect.Reflect_ChanDir.ChanDir), stdgo._internal.reflect.Reflect_chanOf.chanOf((3 : stdgo._internal.reflect.Reflect_ChanDir.ChanDir), stdgo._internal.reflect.Reflect_typeOf.typeOf(stdgo.Go.toInterface((stdgo.Go.str() : _internal.reflect_test.Reflect_test_T_testChanOf___localname___T_158542.T_testChanOf___localname___T_158542))))) : stdgo._internal.reflect.Reflect_Type_.Type_);
        var _tRight = (stdgo._internal.reflect.Reflect_chanOf.chanOf((3 : stdgo._internal.reflect.Reflect_ChanDir.ChanDir), stdgo._internal.reflect.Reflect_chanOf.chanOf((1 : stdgo._internal.reflect.Reflect_ChanDir.ChanDir), stdgo._internal.reflect.Reflect_typeOf.typeOf(stdgo.Go.toInterface((stdgo.Go.str() : _internal.reflect_test.Reflect_test_T_testChanOf___localname___T_158542.T_testChanOf___localname___T_158542))))) : stdgo._internal.reflect.Reflect_Type_.Type_);
        if (!((_tLeft.string() : String) == (stdgo._internal.reflect.Reflect_typeOf.typeOf(stdgo.Go.toInterface(_left)).string() : String))) {
            _t.errorf(("chan<-chan: have %s, want %T" : stdgo.GoString), stdgo.Go.toInterface(_tLeft), stdgo.Go.toInterface(_left));
        };
        if (!((_tRight.string() : String) == (stdgo._internal.reflect.Reflect_typeOf.typeOf(stdgo.Go.toInterface(_right)).string() : String))) {
            _t.errorf(("chan<-chan: have %s, want %T" : stdgo.GoString), stdgo.Go.toInterface(_tRight), stdgo.Go.toInterface(_right));
        };
    }
