package _internal.runtime_test;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.unsafe.Unsafe;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.unsafe.Unsafe;
import stdgo._internal.unsafe.Unsafe;
function _applyGCLoad(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):() -> Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var _maxProcs = (stdgo._internal.runtime.Runtime_gomaxprocs.gomaxprocs((-1 : stdgo.GoInt)) : stdgo.GoInt);
            if (_maxProcs == ((1 : stdgo.GoInt))) {
                _b.skip(stdgo.Go.toInterface(("This benchmark can only be run with GOMAXPROCS > 1" : stdgo.GoString)));
            };
            {};
            var _buildTree:stdgo.GoInt -> stdgo.Ref<_internal.runtime_test.Runtime_test_T__applyGCLoad___localname___node_13570.T__applyGCLoad___localname___node_13570> = null;
            _buildTree = function(_depth:stdgo.GoInt):stdgo.Ref<_internal.runtime_test.Runtime_test_T__applyGCLoad___localname___node_13570.T__applyGCLoad___localname___node_13570> {
                var _tree = (stdgo.Go.setRef(({} : _internal.runtime_test.Runtime_test_T__applyGCLoad___localname___node_13570.T__applyGCLoad___localname___node_13570)) : stdgo.Ref<_internal.runtime_test.Runtime_test_T__applyGCLoad___localname___node_13570.T__applyGCLoad___localname___node_13570>);
                if (_depth != ((0 : stdgo.GoInt))) {
                    for (_i => _ in _tree._children) {
                        _tree._children[(_i : stdgo.GoInt)] = _buildTree((_depth - (1 : stdgo.GoInt) : stdgo.GoInt));
                    };
                };
                return _tree;
            };
            var _done = (new stdgo.Chan<_internal.runtime_test.Runtime_test_T_struct0.T_struct0>(0, () -> ({} : _internal.runtime_test.Runtime_test_T_struct0.T_struct0)) : stdgo.Chan<_internal.runtime_test.Runtime_test_T_struct0.T_struct0>);
            var _wg:stdgo._internal.sync.Sync_WaitGroup.WaitGroup = ({} : stdgo._internal.sync.Sync_WaitGroup.WaitGroup);
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < (_maxProcs - (1 : stdgo.GoInt) : stdgo.GoInt) : Bool), _i++, {
                    _wg.add((1 : stdgo.GoInt));
                    stdgo.Go.routine(() -> {
                        var a = function():Void {
                            var __deferstack__:Array<Void -> Void> = [];
                            try {
                                stdgo._internal.internal.Macro.controlFlow({
                                    __deferstack__.unshift(() -> _wg.done());
                                    var _hold:stdgo.Ref<_internal.runtime_test.Runtime_test_T__applyGCLoad___localname___node_13570.T__applyGCLoad___localname___node_13570> = (null : stdgo.Ref<_internal.runtime_test.Runtime_test_T__applyGCLoad___localname___node_13570.T__applyGCLoad___localname___node_13570>);
                                    @:label("loop") while (true) {
                                        _hold = _buildTree((5 : stdgo.GoInt));
                                        {
                                            var __select__ = true;
                                            while (__select__) {
                                                if (_done != null && _done.__isGet__()) {
                                                    __select__ = false;
                                                    {
                                                        _done.__get__();
                                                        {
                                                            @:jump("loop") break;
                                                        };
                                                    };
                                                } else {
                                                    __select__ = false;
                                                    {};
                                                };
                                                #if !js Sys.sleep(0.01) #else null #end;
                                                stdgo._internal.internal.Async.tick();
                                            };
                                        };
                                    };
                                    stdgo._internal.runtime.Runtime_keepAlive.keepAlive(stdgo.Go.toInterface(_hold));
                                });
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
                });
            };
            {
                final __ret__:() -> Void = function():Void {
                    var __deferstack__:Array<Void -> Void> = [];
                    try {
                        if (_done != null) _done.__close__();
                        _wg.wait_();
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
                for (defer in __deferstack__) {
                    defer();
                };
                return __ret__;
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return null;
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
            return null;
        };
    }
