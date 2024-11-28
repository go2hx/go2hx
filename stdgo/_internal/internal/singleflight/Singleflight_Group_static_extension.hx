package stdgo._internal.internal.singleflight;
@:keep @:allow(stdgo._internal.internal.singleflight.Singleflight.Group_asInterface) class Group_static_extension {
    @:keep
    static public function forgetUnshared( _g:stdgo.Ref<stdgo._internal.internal.singleflight.Singleflight_Group.Group>, _key:stdgo.GoString):Bool {
        @:recv var _g:stdgo.Ref<stdgo._internal.internal.singleflight.Singleflight_Group.Group> = _g;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            _g._mu.lock();
            __deferstack__.unshift(() -> _g._mu.unlock());
            var __tmp__ = (_g._m != null && _g._m.exists(_key?.__copy__()) ? { _0 : _g._m[_key?.__copy__()], _1 : true } : { _0 : (null : stdgo.Ref<stdgo._internal.internal.singleflight.Singleflight_T_call.T_call>), _1 : false }), _c:stdgo.Ref<stdgo._internal.internal.singleflight.Singleflight_T_call.T_call> = __tmp__._0, _ok:Bool = __tmp__._1;
            if (!_ok) {
                {
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return true;
                };
            };
            if (_c._dups == ((0 : stdgo.GoInt))) {
                if (_g._m != null) _g._m.remove(_key);
                {
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return true;
                };
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                return false;
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return false;
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
            return false;
        };
    }
    @:keep
    static public function _doCall( _g:stdgo.Ref<stdgo._internal.internal.singleflight.Singleflight_Group.Group>, _c:stdgo.Ref<stdgo._internal.internal.singleflight.Singleflight_T_call.T_call>, _key:stdgo.GoString, _fn:() -> { var _0 : stdgo.AnyInterface; var _1 : stdgo.Error; }):Void {
        @:recv var _g:stdgo.Ref<stdgo._internal.internal.singleflight.Singleflight_Group.Group> = _g;
        {
            var __tmp__ = _fn();
            _c._val = __tmp__._0;
            _c._err = __tmp__._1;
        };
        _g._mu.lock();
        _c._wg.done();
        if ((_g._m[_key] ?? (null : stdgo.Ref<stdgo._internal.internal.singleflight.Singleflight_T_call.T_call>)) == (_c)) {
            if (_g._m != null) _g._m.remove(_key);
        };
        for (__20 => _ch in _c._chans) {
            _ch.__send__((new stdgo._internal.internal.singleflight.Singleflight_Result.Result(_c._val, _c._err, (_c._dups > (0 : stdgo.GoInt) : Bool)) : stdgo._internal.internal.singleflight.Singleflight_Result.Result));
        };
        _g._mu.unlock();
    }
    @:keep
    static public function doChan( _g:stdgo.Ref<stdgo._internal.internal.singleflight.Singleflight_Group.Group>, _key:stdgo.GoString, _fn:() -> { var _0 : stdgo.AnyInterface; var _1 : stdgo.Error; }):stdgo.Chan<stdgo._internal.internal.singleflight.Singleflight_Result.Result> {
        @:recv var _g:stdgo.Ref<stdgo._internal.internal.singleflight.Singleflight_Group.Group> = _g;
        var _ch = (new stdgo.Chan<stdgo._internal.internal.singleflight.Singleflight_Result.Result>((1 : stdgo.GoInt).toBasic(), () -> ({} : stdgo._internal.internal.singleflight.Singleflight_Result.Result)) : stdgo.Chan<stdgo._internal.internal.singleflight.Singleflight_Result.Result>);
        _g._mu.lock();
        if (_g._m == null) {
            _g._m = ({
                final x = new stdgo.GoMap.GoStringMap<stdgo.Ref<stdgo._internal.internal.singleflight.Singleflight_T_call.T_call>>();
                x.__defaultValue__ = () -> (null : stdgo.Ref<stdgo._internal.internal.singleflight.Singleflight_T_call.T_call>);
                {};
                x;
            } : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.internal.singleflight.Singleflight_T_call.T_call>>);
        };
        {
            var __tmp__ = (_g._m != null && _g._m.exists(_key?.__copy__()) ? { _0 : _g._m[_key?.__copy__()], _1 : true } : { _0 : (null : stdgo.Ref<stdgo._internal.internal.singleflight.Singleflight_T_call.T_call>), _1 : false }), _c:stdgo.Ref<stdgo._internal.internal.singleflight.Singleflight_T_call.T_call> = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_ok) {
                _c._dups++;
                _c._chans = (_c._chans.__append__(_ch));
                _g._mu.unlock();
                return _ch;
            };
        };
        var _c = (stdgo.Go.setRef(({ _chans : (new stdgo.Slice<stdgo.Chan<stdgo._internal.internal.singleflight.Singleflight_Result.Result>>(1, 1, ...[_ch]) : stdgo.Slice<stdgo.Chan<stdgo._internal.internal.singleflight.Singleflight_Result.Result>>) } : stdgo._internal.internal.singleflight.Singleflight_T_call.T_call)) : stdgo.Ref<stdgo._internal.internal.singleflight.Singleflight_T_call.T_call>);
        _c._wg.add((1 : stdgo.GoInt));
        _g._m[_key] = _c;
        _g._mu.unlock();
        stdgo.Go.routine(() -> _g._doCall(_c, _key?.__copy__(), _fn));
        return _ch;
    }
    @:keep
    static public function do_( _g:stdgo.Ref<stdgo._internal.internal.singleflight.Singleflight_Group.Group>, _key:stdgo.GoString, _fn:() -> { var _0 : stdgo.AnyInterface; var _1 : stdgo.Error; }):{ var _0 : stdgo.AnyInterface; var _1 : stdgo.Error; var _2 : Bool; } {
        @:recv var _g:stdgo.Ref<stdgo._internal.internal.singleflight.Singleflight_Group.Group> = _g;
        var _v = (null : stdgo.AnyInterface), _err = (null : stdgo.Error), _shared = false;
        _g._mu.lock();
        if (_g._m == null) {
            _g._m = ({
                final x = new stdgo.GoMap.GoStringMap<stdgo.Ref<stdgo._internal.internal.singleflight.Singleflight_T_call.T_call>>();
                x.__defaultValue__ = () -> (null : stdgo.Ref<stdgo._internal.internal.singleflight.Singleflight_T_call.T_call>);
                {};
                x;
            } : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.internal.singleflight.Singleflight_T_call.T_call>>);
        };
        {
            var __tmp__ = (_g._m != null && _g._m.exists(_key?.__copy__()) ? { _0 : _g._m[_key?.__copy__()], _1 : true } : { _0 : (null : stdgo.Ref<stdgo._internal.internal.singleflight.Singleflight_T_call.T_call>), _1 : false }), _c:stdgo.Ref<stdgo._internal.internal.singleflight.Singleflight_T_call.T_call> = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_ok) {
                _c._dups++;
                _g._mu.unlock();
                _c._wg.wait_();
                return {
                    final __tmp__:{ var _0 : stdgo.AnyInterface; var _1 : stdgo.Error; var _2 : Bool; } = { _0 : _c._val, _1 : _c._err, _2 : true };
                    _v = __tmp__._0;
                    _err = __tmp__._1;
                    _shared = __tmp__._2;
                    __tmp__;
                };
            };
        };
        var _c = (stdgo.Go.setRef(({} : stdgo._internal.internal.singleflight.Singleflight_T_call.T_call)) : stdgo.Ref<stdgo._internal.internal.singleflight.Singleflight_T_call.T_call>);
        _c._wg.add((1 : stdgo.GoInt));
        _g._m[_key] = _c;
        _g._mu.unlock();
        _g._doCall(_c, _key?.__copy__(), _fn);
        return {
            final __tmp__:{ var _0 : stdgo.AnyInterface; var _1 : stdgo.Error; var _2 : Bool; } = { _0 : _c._val, _1 : _c._err, _2 : (_c._dups > (0 : stdgo.GoInt) : Bool) };
            _v = __tmp__._0;
            _err = __tmp__._1;
            _shared = __tmp__._2;
            __tmp__;
        };
    }
}
