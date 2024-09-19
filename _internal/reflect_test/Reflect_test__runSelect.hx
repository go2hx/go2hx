package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
function _runSelect(_cases:stdgo.Slice<stdgo._internal.reflect.Reflect_SelectCase.SelectCase>, _info:stdgo.Slice<_internal.reflect_test.Reflect_test_T_caseInfo.T_caseInfo>):{ var _0 : stdgo.GoInt; var _1 : stdgo._internal.reflect.Reflect_Value.Value; var _2 : Bool; var _3 : stdgo.AnyInterface; } {
        var __deferstack__:Array<Void -> Void> = [];
        var _chosen = (0 : stdgo.GoInt), _recv = ({} : stdgo._internal.reflect.Reflect_Value.Value), _recvOK = false, _panicErr = (null : stdgo.AnyInterface);
        try {
            __deferstack__.unshift(() -> {
                var a = function():Void {
                    var __deferstack__:Array<Void -> Void> = [];
                    try {
                        _panicErr = ({
                            final r = stdgo.Go.recover_exception;
                            stdgo.Go.recover_exception = null;
                            r;
                        });
                        _internal.reflect_test.Reflect_test__selectWatch._selectWatch.lock();
                        _internal.reflect_test.Reflect_test__selectWatch._selectWatch._info = (null : stdgo.Slice<_internal.reflect_test.Reflect_test_T_caseInfo.T_caseInfo>);
                        _internal.reflect_test.Reflect_test__selectWatch._selectWatch.unlock();
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
            _internal.reflect_test.Reflect_test__selectWatch._selectWatch.lock();
            _internal.reflect_test.Reflect_test__selectWatch._selectWatch._now = stdgo._internal.time.Time_now.now()?.__copy__();
            _internal.reflect_test.Reflect_test__selectWatch._selectWatch._info = _info;
            _internal.reflect_test.Reflect_test__selectWatch._selectWatch.unlock();
            {
                var __tmp__ = stdgo._internal.reflect.Reflect_select.select(_cases);
                _chosen = __tmp__._0;
                _recv = __tmp__._1?.__copy__();
                _recvOK = __tmp__._2;
            };
            {
                final __ret__:{ var _0 : stdgo.GoInt; var _1 : stdgo._internal.reflect.Reflect_Value.Value; var _2 : Bool; var _3 : stdgo.AnyInterface; } = { _0 : _chosen, _1 : _recv, _2 : _recvOK, _3 : _panicErr };
                for (defer in __deferstack__) {
                    defer();
                };
                return __ret__;
            };
            {
                final __ret__:{ var _0 : stdgo.GoInt; var _1 : stdgo._internal.reflect.Reflect_Value.Value; var _2 : Bool; var _3 : stdgo.AnyInterface; } = { _0 : _chosen, _1 : _recv, _2 : _recvOK, _3 : _panicErr };
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return __ret__;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                if (__exception__.message == "__return__") throw "__return__";
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            final __ret__:{ var _0 : stdgo.GoInt; var _1 : stdgo._internal.reflect.Reflect_Value.Value; var _2 : Bool; var _3 : stdgo.AnyInterface; } = { _0 : _chosen, _1 : _recv, _2 : _recvOK, _3 : _panicErr };
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return __ret__;
        };
    }
