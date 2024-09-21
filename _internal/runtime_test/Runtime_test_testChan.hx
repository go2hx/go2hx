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
function testChan(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            {
                var _a0 = stdgo._internal.runtime.Runtime_gomaxprocs.gomaxprocs((4 : stdgo.GoInt));
                __deferstack__.unshift(() -> stdgo._internal.runtime.Runtime_gomaxprocs.gomaxprocs(_a0));
            };
            var n = (200 : stdgo.GoInt);
            if (stdgo._internal.testing.Testing_short.short()) {
                n = (20 : stdgo.GoInt);
            };
            {
                var _chanCap = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_chanCap < n : Bool), _chanCap++, {
                    {
                        var _c = (new stdgo.Chan<stdgo.GoInt>((_chanCap : stdgo.GoInt).toBasic(), () -> (0 : stdgo.GoInt)) : stdgo.Chan<stdgo.GoInt>);
                        var _recv1 = (false : Bool);
                        stdgo.Go.routine(() -> {
                            var a = function():Void {
                                var __deferstack__:Array<Void -> Void> = [];
                                try {
                                    var __blank__ = _c.__get__();
                                    _recv1 = true;
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
                        var _recv2 = (false : Bool);
                        stdgo.Go.routine(() -> {
                            var a = function():Void {
                                var __deferstack__:Array<Void -> Void> = [];
                                try {
                                    var __blank__ = _c.__get__();
                                    _recv2 = true;
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
                        stdgo._internal.time.Time_sleep.sleep((1000000i64 : stdgo._internal.time.Time_Duration.Duration));
                        if ((_recv1 || _recv2 : Bool)) {
                            _t.fatalf(("chan[%d]: receive from empty chan" : stdgo.GoString), stdgo.Go.toInterface(_chanCap));
                        };
                        {
                            var __select__ = true;
                            while (__select__) {
                                if (_c != null && _c.__isGet__()) {
                                    __select__ = false;
                                    {
                                        var __6 = _c.__get__();
                                        {
                                            _t.fatalf(("chan[%d]: receive from empty chan" : stdgo.GoString), stdgo.Go.toInterface(_chanCap));
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
                        {
                            var __select__ = true;
                            while (__select__) {
                                {
                                    __select__ = false;
                                    {};
                                };
                                #if !js Sys.sleep(0.01) #else null #end;
                                stdgo._internal.internal.Async.tick();
                            };
                        };
                        _c.__send__((0 : stdgo.GoInt));
                        _c.__send__((0 : stdgo.GoInt));
                    };
                    {
                        var _c = (new stdgo.Chan<stdgo.GoInt>((_chanCap : stdgo.GoInt).toBasic(), () -> (0 : stdgo.GoInt)) : stdgo.Chan<stdgo.GoInt>);
                        {
                            var _i = (0 : stdgo.GoInt);
                            stdgo.Go.cfor((_i < _chanCap : Bool), _i++, {
                                _c.__send__(_i);
                            });
                        };
                        var _sent = ((0u32 : stdgo.GoUInt32) : stdgo.GoUInt32);
                        stdgo.Go.routine(() -> {
                            var a = function():Void {
                                var __deferstack__:Array<Void -> Void> = [];
                                try {
                                    _c.__send__((0 : stdgo.GoInt));
                                    stdgo._internal.sync.atomic_.Atomic__storeUint32.storeUint32(stdgo.Go.pointer(_sent), (1u32 : stdgo.GoUInt32));
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
                        stdgo._internal.time.Time_sleep.sleep((1000000i64 : stdgo._internal.time.Time_Duration.Duration));
                        if (stdgo._internal.sync.atomic_.Atomic__loadUint32.loadUint32(stdgo.Go.pointer(_sent)) != ((0u32 : stdgo.GoUInt32))) {
                            _t.fatalf(("chan[%d]: send to full chan" : stdgo.GoString), stdgo.Go.toInterface(_chanCap));
                        };
                        {
                            var __select__ = true;
                            while (__select__) {
                                if (_c != null && _c.__isSend__()) {
                                    __select__ = false;
                                    {
                                        _c.__send__((0 : stdgo.GoInt));
                                        {
                                            _t.fatalf(("chan[%d]: send to full chan" : stdgo.GoString), stdgo.Go.toInterface(_chanCap));
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
                        _c.__get__();
                    };
                    {
                        var _c = (new stdgo.Chan<stdgo.GoInt>((_chanCap : stdgo.GoInt).toBasic(), () -> (0 : stdgo.GoInt)) : stdgo.Chan<stdgo.GoInt>);
                        {
                            var _i = (0 : stdgo.GoInt);
                            stdgo.Go.cfor((_i < _chanCap : Bool), _i++, {
                                _c.__send__(_i);
                            });
                        };
                        if (_c != null) _c.__close__();
                        {
                            var _i = (0 : stdgo.GoInt);
                            stdgo.Go.cfor((_i < _chanCap : Bool), _i++, {
                                var _v = (_c.__get__() : stdgo.GoInt);
                                if (_v != (_i)) {
                                    _t.fatalf(("chan[%d]: received %v, expected %v" : stdgo.GoString), stdgo.Go.toInterface(_chanCap), stdgo.Go.toInterface(_v), stdgo.Go.toInterface(_i));
                                };
                            });
                        };
                        {
                            var _v = (_c.__get__() : stdgo.GoInt);
                            if (_v != ((0 : stdgo.GoInt))) {
                                _t.fatalf(("chan[%d]: received %v, expected %v" : stdgo.GoString), stdgo.Go.toInterface(_chanCap), stdgo.Go.toInterface(_v), stdgo.Go.toInterface((0 : stdgo.GoInt)));
                            };
                        };
                        {
                            var __tmp__ = _c.__smartGet__(), _v = __tmp__._0, _ok = __tmp__._1;
                            if (((_v != (0 : stdgo.GoInt)) || _ok : Bool)) {
                                _t.fatalf(("chan[%d]: received %v/%v, expected %v/%v" : stdgo.GoString), stdgo.Go.toInterface(_chanCap), stdgo.Go.toInterface(_v), stdgo.Go.toInterface(_ok), stdgo.Go.toInterface((0 : stdgo.GoInt)), stdgo.Go.toInterface(false));
                            };
                        };
                    };
                    {
                        var _c = (new stdgo.Chan<stdgo.GoInt>((_chanCap : stdgo.GoInt).toBasic(), () -> (0 : stdgo.GoInt)) : stdgo.Chan<stdgo.GoInt>);
                        var _done = (new stdgo.Chan<Bool>(0, () -> false) : stdgo.Chan<Bool>);
                        stdgo.Go.routine(() -> {
                            var a = function():Void {
                                var __deferstack__:Array<Void -> Void> = [];
                                try {
                                    var __tmp__ = _c.__smartGet__(), _v = __tmp__._0, _ok = __tmp__._1;
                                    _done.__send__(((_v == (0 : stdgo.GoInt)) && (_ok == false) : Bool));
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
                        stdgo._internal.time.Time_sleep.sleep((1000000i64 : stdgo._internal.time.Time_Duration.Duration));
                        if (_c != null) _c.__close__();
                        if (!_done.__get__()) {
                            _t.fatalf(("chan[%d]: received non zero from closed chan" : stdgo.GoString), stdgo.Go.toInterface(_chanCap));
                        };
                    };
                    {
                        var _c = (new stdgo.Chan<stdgo.GoInt>((_chanCap : stdgo.GoInt).toBasic(), () -> (0 : stdgo.GoInt)) : stdgo.Chan<stdgo.GoInt>);
                        stdgo.Go.routine(() -> {
                            var a = function():Void {
                                var __deferstack__:Array<Void -> Void> = [];
                                try {
                                    {
                                        var _i = (0 : stdgo.GoInt);
                                        stdgo.Go.cfor((_i < (100 : stdgo.GoInt) : Bool), _i++, {
                                            _c.__send__(_i);
                                        });
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
                            };
                            a();
                        });
                        {
                            var _i = (0 : stdgo.GoInt);
                            stdgo.Go.cfor((_i < (100 : stdgo.GoInt) : Bool), _i++, {
                                var _v = (_c.__get__() : stdgo.GoInt);
                                if (_v != (_i)) {
                                    _t.fatalf(("chan[%d]: received %v, expected %v" : stdgo.GoString), stdgo.Go.toInterface(_chanCap), stdgo.Go.toInterface(_v), stdgo.Go.toInterface(_i));
                                };
                            });
                        };
                        stdgo.Go.routine(() -> {
                            var a = function():Void {
                                var __deferstack__:Array<Void -> Void> = [];
                                try {
                                    {
                                        var _i = (0 : stdgo.GoInt);
                                        stdgo.Go.cfor((_i < (100 : stdgo.GoInt) : Bool), _i++, {
                                            _c.__send__(_i);
                                        });
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
                            };
                            a();
                        });
                        {
                            var _i = (0 : stdgo.GoInt);
                            stdgo.Go.cfor((_i < (100 : stdgo.GoInt) : Bool), _i++, {
                                var __tmp__ = _c.__smartGet__(), _v = __tmp__._0, _ok = __tmp__._1;
                                if (!_ok) {
                                    _t.fatalf(("chan[%d]: receive failed, expected %v" : stdgo.GoString), stdgo.Go.toInterface(_chanCap), stdgo.Go.toInterface(_i));
                                };
                                if (_v != (_i)) {
                                    _t.fatalf(("chan[%d]: received %v, expected %v" : stdgo.GoString), stdgo.Go.toInterface(_chanCap), stdgo.Go.toInterface(_v), stdgo.Go.toInterface(_i));
                                };
                            });
                        };
                        {};
                        {};
                        {
                            var _p = (0 : stdgo.GoInt);
                            stdgo.Go.cfor((_p < (4 : stdgo.GoInt) : Bool), _p++, {
                                stdgo.Go.routine(() -> {
                                    var a = function():Void {
                                        var __deferstack__:Array<Void -> Void> = [];
                                        try {
                                            {
                                                var _i = (0 : stdgo.GoInt);
                                                stdgo.Go.cfor((_i < (1000 : stdgo.GoInt) : Bool), _i++, {
                                                    _c.__send__(_i);
                                                });
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
                                    };
                                    a();
                                });
                            });
                        };
                        var _done = (new stdgo.Chan<stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>>(0, () -> (null : stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>)) : stdgo.Chan<stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>>);
                        {
                            var _p = (0 : stdgo.GoInt);
                            stdgo.Go.cfor((_p < (4 : stdgo.GoInt) : Bool), _p++, {
                                stdgo.Go.routine(() -> {
                                    var a = function():Void {
                                        var __deferstack__:Array<Void -> Void> = [];
                                        try {
                                            var _recv = ({
                                                final x = new stdgo.GoMap.GoIntMap<stdgo.GoInt>();
                                                x.__defaultValue__ = () -> (0 : stdgo.GoInt);
                                                {};
                                                x;
                                            } : stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>);
                                            {
                                                var _i = (0 : stdgo.GoInt);
                                                stdgo.Go.cfor((_i < (1000 : stdgo.GoInt) : Bool), _i++, {
                                                    var _v = (_c.__get__() : stdgo.GoInt);
                                                    _recv[_v] = ((_recv[_v] ?? (0 : stdgo.GoInt)) + (1 : stdgo.GoInt) : stdgo.GoInt);
                                                });
                                            };
                                            _done.__send__(_recv);
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
                        var _recv = ({
                            final x = new stdgo.GoMap.GoIntMap<stdgo.GoInt>();
                            x.__defaultValue__ = () -> (0 : stdgo.GoInt);
                            {};
                            x;
                        } : stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>);
                        {
                            var _p = (0 : stdgo.GoInt);
                            stdgo.Go.cfor((_p < (4 : stdgo.GoInt) : Bool), _p++, {
                                for (_k => _v in _done.__get__()) {
                                    _recv[_k] = ((_recv[_k] ?? (0 : stdgo.GoInt)) + _v : stdgo.GoInt);
                                };
                            });
                        };
                        if ((_recv.length) != ((1000 : stdgo.GoInt))) {
                            _t.fatalf(("chan[%d]: received %v values, expected %v" : stdgo.GoString), stdgo.Go.toInterface(_chanCap), stdgo.Go.toInterface((_recv.length)), stdgo.Go.toInterface((1000 : stdgo.GoInt)));
                        };
                        for (__6 => _v in _recv) {
                            if (_v != ((4 : stdgo.GoInt))) {
                                _t.fatalf(("chan[%d]: received %v values, expected %v" : stdgo.GoString), stdgo.Go.toInterface(_chanCap), stdgo.Go.toInterface(_v), stdgo.Go.toInterface((4 : stdgo.GoInt)));
                            };
                        };
                    };
                    {
                        var _c = (new stdgo.Chan<stdgo.GoInt>((_chanCap : stdgo.GoInt).toBasic(), () -> (0 : stdgo.GoInt)) : stdgo.Chan<stdgo.GoInt>);
                        if (((_c.length != (0 : stdgo.GoInt)) || (_c.capacity != _chanCap) : Bool)) {
                            _t.fatalf(("chan[%d]: bad len/cap, expect %v/%v, got %v/%v" : stdgo.GoString), stdgo.Go.toInterface(_chanCap), stdgo.Go.toInterface((0 : stdgo.GoInt)), stdgo.Go.toInterface(_chanCap), stdgo.Go.toInterface((_c.length)), stdgo.Go.toInterface(_c.capacity));
                        };
                        {
                            var _i = (0 : stdgo.GoInt);
                            stdgo.Go.cfor((_i < _chanCap : Bool), _i++, {
                                _c.__send__(_i);
                            });
                        };
                        if (((_c.length != _chanCap) || (_c.capacity != _chanCap) : Bool)) {
                            _t.fatalf(("chan[%d]: bad len/cap, expect %v/%v, got %v/%v" : stdgo.GoString), stdgo.Go.toInterface(_chanCap), stdgo.Go.toInterface(_chanCap), stdgo.Go.toInterface(_chanCap), stdgo.Go.toInterface((_c.length)), stdgo.Go.toInterface(_c.capacity));
                        };
                    };
                });
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
