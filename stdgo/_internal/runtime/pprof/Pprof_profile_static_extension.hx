package stdgo._internal.runtime.pprof;
@:keep @:allow(stdgo._internal.runtime.pprof.Pprof.Profile_asInterface) class Profile_static_extension {
    @:keep
    @:tdfield
    static public function writeTo( _p:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_profile.Profile>, _w:stdgo._internal.io.Io_writer.Writer, _debug:stdgo.GoInt):stdgo.Error {
        @:recv var _p:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_profile.Profile> = _p;
        if ((@:checkr _p ?? throw "null pointer dereference")._name == ((stdgo.Go.str() : stdgo.GoString))) {
            throw stdgo.Go.toInterface(("pprof: use of zero Profile" : stdgo.GoString));
        };
        if ((@:checkr _p ?? throw "null pointer dereference")._write != null) {
            return (@:checkr _p ?? throw "null pointer dereference")._write(_w, _debug);
        };
        @:check2 (@:checkr _p ?? throw "null pointer dereference")._mu.lock();
        var _all = (new stdgo.Slice<stdgo.Slice<stdgo.GoUIntptr>>((0 : stdgo.GoInt).toBasic(), ((@:checkr _p ?? throw "null pointer dereference")._m.length)) : stdgo.Slice<stdgo.Slice<stdgo.GoUIntptr>>);
        for (__0 => _stk in (@:checkr _p ?? throw "null pointer dereference")._m) {
            _all = (_all.__append__(_stk));
        };
        @:check2 (@:checkr _p ?? throw "null pointer dereference")._mu.unlock();
        stdgo._internal.sort.Sort_slice.slice(stdgo.Go.toInterface(_all), function(_i:stdgo.GoInt, _j:stdgo.GoInt):Bool {
            var __0 = _all[(_i : stdgo.GoInt)], __1 = _all[(_j : stdgo.GoInt)];
var _u = __1, _t = __0;
            {
                var _k = (0 : stdgo.GoInt);
                while (((_k < (_t.length) : Bool) && (_k < (_u.length) : Bool) : Bool)) {
                    if (_t[(_k : stdgo.GoInt)] != (_u[(_k : stdgo.GoInt)])) {
                        return (_t[(_k : stdgo.GoInt)] < _u[(_k : stdgo.GoInt)] : Bool);
                    };
                    _k++;
                };
            };
            return ((_t.length) < (_u.length) : Bool);
        });
        return stdgo._internal.runtime.pprof.Pprof__printcountprofile._printCountProfile(_w, _debug, (@:checkr _p ?? throw "null pointer dereference")._name?.__copy__(), stdgo.Go.asInterface((_all : stdgo._internal.runtime.pprof.Pprof_t_stackprofile.T_stackProfile)));
    }
    @:keep
    @:tdfield
    static public function remove( _p:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_profile.Profile>, _value:stdgo.AnyInterface):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_profile.Profile> = _p;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            @:check2 (@:checkr _p ?? throw "null pointer dereference")._mu.lock();
            {
                final __f__ = @:check2 (@:checkr _p ?? throw "null pointer dereference")._mu.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            if ((@:checkr _p ?? throw "null pointer dereference")._m != null) (@:checkr _p ?? throw "null pointer dereference")._m.__remove__(_value);
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    throw e;
                };
                return;
            };
        } catch(__exception__) {
            {
                var exe:Dynamic = __exception__.native;
                if ((exe is haxe.ValueException)) exe = exe.value;
                if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                    if (__exception__.message == "__return__") throw "__return__";
                    exe = stdgo.Go.toInterface(__exception__.message);
                };
                stdgo.Go.recover_exception = exe;
                {
                    function f() {
                        try {
                            {
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                            };
                        } catch(__exception__2) {
                            var exe:Dynamic = __exception__2.native;
                            if ((exe is haxe.ValueException)) exe = exe.value;
                            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                                if (__exception__.message == "__return__") throw "__return__";
                                exe = stdgo.Go.toInterface(__exception__.message);
                            };
                            stdgo.Go.recover_exception = exe;
                            f();
                        };
                    };
                    f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    throw e;
                };
                return;
            };
        };
    }
    @:keep
    @:tdfield
    static public function add( _p:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_profile.Profile>, _value:stdgo.AnyInterface, _skip:stdgo.GoInt):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_profile.Profile> = _p;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            if ((@:checkr _p ?? throw "null pointer dereference")._name == ((stdgo.Go.str() : stdgo.GoString))) {
                throw stdgo.Go.toInterface(("pprof: use of uninitialized Profile" : stdgo.GoString));
            };
            if ((@:checkr _p ?? throw "null pointer dereference")._write != null) {
                throw stdgo.Go.toInterface((("pprof: Add called on built-in Profile " : stdgo.GoString) + (@:checkr _p ?? throw "null pointer dereference")._name?.__copy__() : stdgo.GoString));
            };
            var _stk = (new stdgo.Slice<stdgo.GoUIntptr>((32 : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.GoUIntptr>);
            var _n = (stdgo._internal.runtime.Runtime_callers.callers((_skip + (1 : stdgo.GoInt) : stdgo.GoInt), (_stk.__slice__(0) : stdgo.Slice<stdgo.GoUIntptr>)) : stdgo.GoInt);
            _stk = (_stk.__slice__(0, _n) : stdgo.Slice<stdgo.GoUIntptr>);
            if ((_stk.length) == ((0 : stdgo.GoInt))) {
                _stk = (new stdgo.Slice<stdgo.GoUIntptr>(1, 1, ...[stdgo._internal.internal.abi.Abi_funcpcabiinternal.funcPCABIInternal(stdgo.Go.toInterface(stdgo._internal.runtime.pprof.Pprof__lostprofileevent._lostProfileEvent))]) : stdgo.Slice<stdgo.GoUIntptr>);
            };
            @:check2 (@:checkr _p ?? throw "null pointer dereference")._mu.lock();
            {
                final __f__ = @:check2 (@:checkr _p ?? throw "null pointer dereference")._mu.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            if (((@:checkr _p ?? throw "null pointer dereference")._m[_value] ?? (null : stdgo.Slice<stdgo.GoUIntptr>)) != null) {
                throw stdgo.Go.toInterface(("pprof: Profile.Add of duplicate value" : stdgo.GoString));
            };
            (@:checkr _p ?? throw "null pointer dereference")._m[_value] = _stk;
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    throw e;
                };
                return;
            };
        } catch(__exception__) {
            {
                var exe:Dynamic = __exception__.native;
                if ((exe is haxe.ValueException)) exe = exe.value;
                if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                    if (__exception__.message == "__return__") throw "__return__";
                    exe = stdgo.Go.toInterface(__exception__.message);
                };
                stdgo.Go.recover_exception = exe;
                {
                    function f() {
                        try {
                            {
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                            };
                        } catch(__exception__2) {
                            var exe:Dynamic = __exception__2.native;
                            if ((exe is haxe.ValueException)) exe = exe.value;
                            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                                if (__exception__.message == "__return__") throw "__return__";
                                exe = stdgo.Go.toInterface(__exception__.message);
                            };
                            stdgo.Go.recover_exception = exe;
                            f();
                        };
                    };
                    f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    throw e;
                };
                return;
            };
        };
    }
    @:keep
    @:tdfield
    static public function count( _p:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_profile.Profile>):stdgo.GoInt {
        @:recv var _p:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_profile.Profile> = _p;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            @:check2 (@:checkr _p ?? throw "null pointer dereference")._mu.lock();
            {
                final __f__ = @:check2 (@:checkr _p ?? throw "null pointer dereference")._mu.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            if ((@:checkr _p ?? throw "null pointer dereference")._count != null) {
                {
                    final __ret__:stdgo.GoInt = (@:checkr _p ?? throw "null pointer dereference")._count();
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return __ret__;
                };
            };
            {
                final __ret__:stdgo.GoInt = ((@:checkr _p ?? throw "null pointer dereference")._m.length);
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                return __ret__;
            };
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    throw e;
                };
                return (0 : stdgo.GoInt);
            };
        } catch(__exception__) {
            {
                var exe:Dynamic = __exception__.native;
                if ((exe is haxe.ValueException)) exe = exe.value;
                if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                    if (__exception__.message == "__return__") throw "__return__";
                    exe = stdgo.Go.toInterface(__exception__.message);
                };
                stdgo.Go.recover_exception = exe;
                {
                    function f() {
                        try {
                            {
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                            };
                        } catch(__exception__2) {
                            var exe:Dynamic = __exception__2.native;
                            if ((exe is haxe.ValueException)) exe = exe.value;
                            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                                if (__exception__.message == "__return__") throw "__return__";
                                exe = stdgo.Go.toInterface(__exception__.message);
                            };
                            stdgo.Go.recover_exception = exe;
                            f();
                        };
                    };
                    f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    throw e;
                };
                return (0 : stdgo.GoInt);
            };
        };
    }
    @:keep
    @:tdfield
    static public function name( _p:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_profile.Profile>):stdgo.GoString {
        @:recv var _p:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_profile.Profile> = _p;
        return (@:checkr _p ?? throw "null pointer dereference")._name?.__copy__();
    }
}
