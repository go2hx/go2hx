package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
function testChanOfGC(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var _done = (new stdgo.Chan<Bool>((1 : stdgo.GoInt).toBasic(), () -> false) : stdgo.Chan<Bool>);
            stdgo.Go.routine(() -> {
                var a = function():Void {
                    {
                        var __select__ = true;
                        while (__select__) {
                            if (_done != null && _done.__isGet__()) {
                                __select__ = false;
                                {
                                    _done.__get__();
                                    {};
                                };
                            } else if (stdgo._internal.time.Time_after.after((5000000000i64 : stdgo._internal.time.Time_Duration.Duration)) != null && stdgo._internal.time.Time_after.after((5000000000i64 : stdgo._internal.time.Time_Duration.Duration)).__isGet__()) {
                                __select__ = false;
                                {
                                    stdgo._internal.time.Time_after.after((5000000000i64 : stdgo._internal.time.Time_Duration.Duration)).__get__();
                                    {
                                        throw stdgo.Go.toInterface(("deadlock in TestChanOfGC" : stdgo.GoString));
                                    };
                                };
                            };
                            #if !js Sys.sleep(0.01) #else null #end;
                            stdgo._internal.internal.Async.tick();
                        };
                    };
                };
                a();
            });
            __deferstack__.unshift(() -> {
                var a = function():Void {
                    var __deferstack__:Array<Void -> Void> = [];
                    try {
                        _done.__send__(true);
                        {
                            for (defer in __deferstack__) {
                                defer();
                            };
                            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                            return;
                        };
                    } catch(__exception__) {
                        var exe:Dynamic = __exception__.native;
                        if ((exe is haxe.ValueException)) exe = exe.value;
                        if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                            if (__exception__.message == "__return__") throw "__return__";
                            exe = stdgo.Go.toInterface(__exception__.message);
                        };
                        stdgo.Go.recover_exception = exe;
                        for (defer in __deferstack__) {
                            defer();
                        };
                        if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                        return;
                    };
                };
                a();
            });
            {};
            var _tt = (stdgo._internal.reflect.Reflect_typeOf.typeOf(stdgo.Go.toInterface((null : _internal.reflect_test.Reflect_test_T_testChanOfGC___localname___T_160333.T_testChanOfGC___localname___T_160333))) : stdgo._internal.reflect.Reflect_Type_.Type_);
            var _ct = (stdgo._internal.reflect.Reflect_chanOf.chanOf((3 : stdgo._internal.reflect.Reflect_ChanDir.ChanDir), _tt) : stdgo._internal.reflect.Reflect_Type_.Type_);
            {};
            var _x:stdgo.Slice<stdgo.AnyInterface> = (null : stdgo.Slice<stdgo.AnyInterface>);
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < (100 : stdgo.GoInt) : Bool), _i++, {
                    var _v = (stdgo._internal.reflect.Reflect_makeChan.makeChan(_ct, (100 : stdgo.GoInt))?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
                    {
                        var _j = (0 : stdgo.GoInt);
                        stdgo.Go.cfor((_j < (100 : stdgo.GoInt) : Bool), _j++, {
                            var _p = stdgo.Go.pointer((0 : stdgo.GoUIntptr));
                            _p.value = (((_i * (100 : stdgo.GoInt) : stdgo.GoInt) + _j : stdgo.GoInt) : stdgo.GoUIntptr);
                            _v.send(stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(_p)).convert(_tt)?.__copy__());
                        });
                    };
                    var _pv = (stdgo._internal.reflect.Reflect_new_.new_(_ct)?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
                    _pv.elem().set(_v?.__copy__());
                    _x = (_x.__append__(_pv.interface_()));
                });
            };
            stdgo._internal.runtime.Runtime_gc.gc();
            for (_i => _xi in _x) {
                var _v = (stdgo._internal.reflect.Reflect_valueOf.valueOf(_xi).elem()?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
                {
                    var _j = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_j < (100 : stdgo.GoInt) : Bool), _j++, {
                        var __tmp__ = _v.recv(), _pv:stdgo._internal.reflect.Reflect_Value.Value = __tmp__._0, __6:Bool = __tmp__._1;
                        var _k = (_pv.elem().interface_() : stdgo.AnyInterface);
                        if (_k != (stdgo.Go.toInterface((((_i * (100 : stdgo.GoInt) : stdgo.GoInt) + _j : stdgo.GoInt) : stdgo.GoUIntptr)))) {
                            _t.errorf(("lost x[%d][%d] = %d, want %d" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_j), _k, stdgo.Go.toInterface(((_i * (100 : stdgo.GoInt) : stdgo.GoInt) + _j : stdgo.GoInt)));
                        };
                    });
                };
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                if (__exception__.message == "__return__") throw "__return__";
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return;
        };
    }
