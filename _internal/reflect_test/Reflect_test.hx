package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
@:keep var __init_go2hx__ = {
        try {
            _internal.reflect_test.Reflect_test__loop1._loop1 = (stdgo.Go.setRef(_internal.reflect_test.Reflect_test__loop2._loop2) : stdgo.Ref<_internal.reflect_test.Reflect_test_Loop.Loop>);
            _internal.reflect_test.Reflect_test__loop2._loop2 = (stdgo.Go.setRef(_internal.reflect_test.Reflect_test__loop1._loop1) : stdgo.Ref<_internal.reflect_test.Reflect_test_Loop.Loop>);
            _internal.reflect_test.Reflect_test__loopy1._loopy1 = stdgo.Go.toInterface((stdgo.Go.setRef(_internal.reflect_test.Reflect_test__loopy2._loopy2) : stdgo.Ref<_internal.reflect_test.Reflect_test_Loopy.Loopy>));
            _internal.reflect_test.Reflect_test__loopy2._loopy2 = stdgo.Go.toInterface((stdgo.Go.setRef(_internal.reflect_test.Reflect_test__loopy1._loopy1) : stdgo.Ref<_internal.reflect_test.Reflect_test_Loopy.Loopy>));
            _internal.reflect_test.Reflect_test__cycleMap1._cycleMap1 = ({
                final x = new stdgo.GoMap.GoStringMap<stdgo.AnyInterface>();
                x.__defaultValue__ = () -> (null : stdgo.AnyInterface);
                {};
                x;
            } : stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>);
            _internal.reflect_test.Reflect_test__cycleMap1._cycleMap1[("cycle" : stdgo.GoString)] = stdgo.Go.toInterface(_internal.reflect_test.Reflect_test__cycleMap1._cycleMap1);
            _internal.reflect_test.Reflect_test__cycleMap2._cycleMap2 = ({
                final x = new stdgo.GoMap.GoStringMap<stdgo.AnyInterface>();
                x.__defaultValue__ = () -> (null : stdgo.AnyInterface);
                {};
                x;
            } : stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>);
            _internal.reflect_test.Reflect_test__cycleMap2._cycleMap2[("cycle" : stdgo.GoString)] = stdgo.Go.toInterface(_internal.reflect_test.Reflect_test__cycleMap2._cycleMap2);
            _internal.reflect_test.Reflect_test__cycleMap3._cycleMap3 = ({
                final x = new stdgo.GoMap.GoStringMap<stdgo.AnyInterface>();
                x.__defaultValue__ = () -> (null : stdgo.AnyInterface);
                {};
                x;
            } : stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>);
            _internal.reflect_test.Reflect_test__cycleMap3._cycleMap3[("different" : stdgo.GoString)] = stdgo.Go.toInterface(_internal.reflect_test.Reflect_test__cycleMap3._cycleMap3);
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };
