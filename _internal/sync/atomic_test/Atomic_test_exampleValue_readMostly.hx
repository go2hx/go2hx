package _internal.sync.atomic_test;
import stdgo._internal.sync.atomic_.Atomic_;
import stdgo._internal.sync.atomic_.Atomic_;
function exampleValue_readMostly():Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            {};
            var _m:stdgo._internal.sync.atomic_.Atomic__Value.Value = ({} : stdgo._internal.sync.atomic_.Atomic__Value.Value);
            _m.store(stdgo.Go.toInterface((({
                final x = new stdgo.GoMap.GoStringMap<stdgo.GoString>();
                x.__defaultValue__ = () -> ("" : stdgo.GoString);
                {};
                x;
            } : stdgo.GoMap<stdgo.GoString, stdgo.GoString>) : _internal.sync.atomic_test.Atomic_test_T_exampleValue_readMostly___localname___Map_1290.T_exampleValue_readMostly___localname___Map_1290)));
            var _mu:stdgo._internal.sync.Sync_Mutex.Mutex = ({} : stdgo._internal.sync.Sync_Mutex.Mutex);
            var _read = (function(_key:stdgo.GoString):stdgo.GoString {
                var _val = ("" : stdgo.GoString);
                var _m1 = (stdgo.Go.typeAssert((_m.load() : _internal.sync.atomic_test.Atomic_test_T_exampleValue_readMostly___localname___Map_1290.T_exampleValue_readMostly___localname___Map_1290)) : _internal.sync.atomic_test.Atomic_test_T_exampleValue_readMostly___localname___Map_1290.T_exampleValue_readMostly___localname___Map_1290);
                return (_m1[_key] ?? ("" : stdgo.GoString))?.__copy__();
            } : stdgo.GoString -> stdgo.GoString);
            var _insert = (function(_key:stdgo.GoString, _val:stdgo.GoString):Void {
                var __deferstack__:Array<Void -> Void> = [];
                try {
                    _mu.lock();
                    __deferstack__.unshift(() -> _mu.unlock());
                    var _m1 = (stdgo.Go.typeAssert((_m.load() : _internal.sync.atomic_test.Atomic_test_T_exampleValue_readMostly___localname___Map_1290.T_exampleValue_readMostly___localname___Map_1290)) : _internal.sync.atomic_test.Atomic_test_T_exampleValue_readMostly___localname___Map_1290.T_exampleValue_readMostly___localname___Map_1290);
                    var _m2 = (({
                        final x = new stdgo.GoMap.GoStringMap<stdgo.GoString>();
                        x.__defaultValue__ = () -> ("" : stdgo.GoString);
                        {};
                        x;
                    } : stdgo.GoMap<stdgo.GoString, stdgo.GoString>) : _internal.sync.atomic_test.Atomic_test_T_exampleValue_readMostly___localname___Map_1290.T_exampleValue_readMostly___localname___Map_1290);
                    for (_k => _v in _m1) {
                        _m2[_k] = _v?.__copy__();
                    };
                    _m2[_key] = _val?.__copy__();
                    _m.store(stdgo.Go.toInterface(_m2));
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
            } : (stdgo.GoString, stdgo.GoString) -> Void);
            {
                var __blank__ = _read;
                var __blank__ = _insert;
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
