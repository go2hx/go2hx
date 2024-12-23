package stdgo._internal.runtime.pprof;
@:keep @:allow(stdgo._internal.runtime.pprof.Pprof.Profile_asInterface) class Profile_static_extension {
    @:keep
    static public function writeTo( _p:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_Profile.Profile>, _w:stdgo._internal.io.Io_Writer.Writer, _debug:stdgo.GoInt):stdgo.Error {
        @:recv var _p:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_Profile.Profile> = _p;
        if (_p._name == (stdgo.Go.str())) {
            throw stdgo.Go.toInterface(("pprof: use of zero Profile" : stdgo.GoString));
        };
        if (_p._write != null) {
            return _p._write(_w, _debug);
        };
        _p._mu.lock();
        var _all = (new stdgo.Slice<stdgo.Slice<stdgo.GoUIntptr>>((0 : stdgo.GoInt).toBasic(), (_p._m.length)) : stdgo.Slice<stdgo.Slice<stdgo.GoUIntptr>>);
        for (__0 => _stk in _p._m) {
            _all = (_all.__append__(_stk));
        };
        _p._mu.unlock();
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
        return stdgo._internal.runtime.pprof.Pprof__printCountProfile._printCountProfile(_w, _debug, _p._name?.__copy__(), stdgo.Go.asInterface((_all : stdgo._internal.runtime.pprof.Pprof_T_stackProfile.T_stackProfile)));
    }
    @:keep
    static public function remove( _p:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_Profile.Profile>, _value:stdgo.AnyInterface):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_Profile.Profile> = _p;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            _p._mu.lock();
            {
                final __f__ = _p._mu.unlock;
                __deferstack__.unshift(() -> __f__());
            };
            if (_p._m != null) _p._m.remove(_value);
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
    @:keep
    static public function add( _p:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_Profile.Profile>, _value:stdgo.AnyInterface, _skip:stdgo.GoInt):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_Profile.Profile> = _p;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            if (_p._name == (stdgo.Go.str())) {
                throw stdgo.Go.toInterface(("pprof: use of uninitialized Profile" : stdgo.GoString));
            };
            if (_p._write != null) {
                throw stdgo.Go.toInterface((("pprof: Add called on built-in Profile " : stdgo.GoString) + _p._name?.__copy__() : stdgo.GoString));
            };
            var _stk = (new stdgo.Slice<stdgo.GoUIntptr>((32 : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.GoUIntptr>);
            var _n = (stdgo._internal.runtime.Runtime_callers.callers((_skip + (1 : stdgo.GoInt) : stdgo.GoInt), (_stk.__slice__(0) : stdgo.Slice<stdgo.GoUIntptr>)) : stdgo.GoInt);
            _stk = (_stk.__slice__(0, _n) : stdgo.Slice<stdgo.GoUIntptr>);
            if ((_stk.length) == ((0 : stdgo.GoInt))) {
                _stk = (new stdgo.Slice<stdgo.GoUIntptr>(1, 1, ...[stdgo._internal.internal.abi.Abi_funcPCABIInternal.funcPCABIInternal(stdgo.Go.toInterface(stdgo._internal.runtime.pprof.Pprof__lostProfileEvent._lostProfileEvent))]) : stdgo.Slice<stdgo.GoUIntptr>);
            };
            _p._mu.lock();
            {
                final __f__ = _p._mu.unlock;
                __deferstack__.unshift(() -> __f__());
            };
            if ((_p._m[_value] ?? (null : stdgo.Slice<stdgo.GoUIntptr>)) != null) {
                throw stdgo.Go.toInterface(("pprof: Profile.Add of duplicate value" : stdgo.GoString));
            };
            _p._m[_value] = _stk;
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
    @:keep
    static public function count( _p:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_Profile.Profile>):stdgo.GoInt {
        @:recv var _p:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_Profile.Profile> = _p;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            _p._mu.lock();
            {
                final __f__ = _p._mu.unlock;
                __deferstack__.unshift(() -> __f__());
            };
            if (_p._count != null) {
                {
                    final __ret__:stdgo.GoInt = _p._count();
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return __ret__;
                };
            };
            {
                final __ret__:stdgo.GoInt = (_p._m.length);
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
                return (0 : stdgo.GoInt);
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
            return (0 : stdgo.GoInt);
        };
    }
    @:keep
    static public function name( _p:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_Profile.Profile>):stdgo.GoString {
        @:recv var _p:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_Profile.Profile> = _p;
        return _p._name?.__copy__();
    }
}
