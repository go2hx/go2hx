package stdgo._internal.internal.singleflight;
@:keep @:allow(stdgo._internal.internal.singleflight.Singleflight.Group_asInterface) class Group_static_extension {
    @:keep
    @:tdfield
    static public function forgetUnshared( _g:stdgo.Ref<stdgo._internal.internal.singleflight.Singleflight_group.Group>, _key:stdgo.GoString):Bool {
        @:recv var _g:stdgo.Ref<stdgo._internal.internal.singleflight.Singleflight_group.Group> = _g;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            //"file:///home/runner/.go/go1.21.3/src/internal/singleflight/singleflight.go#L112"
            (@:checkr _g ?? throw "null pointer dereference")._mu.lock();
            {
                final __f__ = (@:checkr _g ?? throw "null pointer dereference")._mu.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            var __tmp__ = ((@:checkr _g ?? throw "null pointer dereference")._m != null && (@:checkr _g ?? throw "null pointer dereference")._m.__exists__(_key?.__copy__()) ? { _0 : (@:checkr _g ?? throw "null pointer dereference")._m[_key?.__copy__()], _1 : true } : { _0 : (null : stdgo.Ref<stdgo._internal.internal.singleflight.Singleflight_t_call.T_call>), _1 : false }), _c:stdgo.Ref<stdgo._internal.internal.singleflight.Singleflight_t_call.T_call> = __tmp__._0, _ok:Bool = __tmp__._1;
            //"file:///home/runner/.go/go1.21.3/src/internal/singleflight/singleflight.go#L115"
            if (!_ok) {
                //"file:///home/runner/.go/go1.21.3/src/internal/singleflight/singleflight.go#L116"
                {
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return true;
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/internal/singleflight/singleflight.go#L118"
            if ((@:checkr _c ?? throw "null pointer dereference")._dups == ((0 : stdgo.GoInt))) {
                //"file:///home/runner/.go/go1.21.3/src/internal/singleflight/singleflight.go#L119"
                if ((@:checkr _g ?? throw "null pointer dereference")._m != null) (@:checkr _g ?? throw "null pointer dereference")._m.__remove__(_key);
                //"file:///home/runner/.go/go1.21.3/src/internal/singleflight/singleflight.go#L120"
                {
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return true;
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/internal/singleflight/singleflight.go#L122"
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                return false;
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
                return false;
            };
        } catch(__exception__) {
            {
                var exe:Dynamic = __exception__.native;
                if ((exe is haxe.ValueException)) exe = exe.value;
                if ((exe is stdgo.AnyInterface.AnyInterfaceData) == false) {
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
                return false;
            };
        };
    }
    @:keep
    @:tdfield
    static public function _doCall( _g:stdgo.Ref<stdgo._internal.internal.singleflight.Singleflight_group.Group>, _c:stdgo.Ref<stdgo._internal.internal.singleflight.Singleflight_t_call.T_call>, _key:stdgo.GoString, _fn:() -> { var _0 : stdgo.AnyInterface; var _1 : stdgo.Error; }):Void {
        @:recv var _g:stdgo.Ref<stdgo._internal.internal.singleflight.Singleflight_group.Group> = _g;
        {
            var __tmp__ = _fn();
            (@:checkr _c ?? throw "null pointer dereference")._val = @:tmpset0 __tmp__._0;
            (@:checkr _c ?? throw "null pointer dereference")._err = @:tmpset0 __tmp__._1;
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/singleflight/singleflight.go#L95"
        (@:checkr _g ?? throw "null pointer dereference")._mu.lock();
        //"file:///home/runner/.go/go1.21.3/src/internal/singleflight/singleflight.go#L96"
        (@:checkr _c ?? throw "null pointer dereference")._wg.done();
        //"file:///home/runner/.go/go1.21.3/src/internal/singleflight/singleflight.go#L97"
        if (((@:checkr _g ?? throw "null pointer dereference")._m[_key] ?? (null : stdgo.Ref<stdgo._internal.internal.singleflight.Singleflight_t_call.T_call>)) == (_c)) {
            //"file:///home/runner/.go/go1.21.3/src/internal/singleflight/singleflight.go#L98"
            if ((@:checkr _g ?? throw "null pointer dereference")._m != null) (@:checkr _g ?? throw "null pointer dereference")._m.__remove__(_key);
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/singleflight/singleflight.go#L100"
        for (__20 => _ch in (@:checkr _c ?? throw "null pointer dereference")._chans) {
            //"file:///home/runner/.go/go1.21.3/src/internal/singleflight/singleflight.go#L101"
            _ch.__send__((new stdgo._internal.internal.singleflight.Singleflight_result.Result((@:checkr _c ?? throw "null pointer dereference")._val, (@:checkr _c ?? throw "null pointer dereference")._err, ((@:checkr _c ?? throw "null pointer dereference")._dups > (0 : stdgo.GoInt) : Bool)) : stdgo._internal.internal.singleflight.Singleflight_result.Result));
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/singleflight/singleflight.go#L103"
        (@:checkr _g ?? throw "null pointer dereference")._mu.unlock();
    }
    @:keep
    @:tdfield
    static public function doChan( _g:stdgo.Ref<stdgo._internal.internal.singleflight.Singleflight_group.Group>, _key:stdgo.GoString, _fn:() -> { var _0 : stdgo.AnyInterface; var _1 : stdgo.Error; }):stdgo.Chan<stdgo._internal.internal.singleflight.Singleflight_result.Result> {
        @:recv var _g:stdgo.Ref<stdgo._internal.internal.singleflight.Singleflight_group.Group> = _g;
        var _ch = (new stdgo.Chan<stdgo._internal.internal.singleflight.Singleflight_result.Result>((1 : stdgo.GoInt).toBasic(), () -> ({} : stdgo._internal.internal.singleflight.Singleflight_result.Result)) : stdgo.Chan<stdgo._internal.internal.singleflight.Singleflight_result.Result>);
        //"file:///home/runner/.go/go1.21.3/src/internal/singleflight/singleflight.go#L71"
        (@:checkr _g ?? throw "null pointer dereference")._mu.lock();
        //"file:///home/runner/.go/go1.21.3/src/internal/singleflight/singleflight.go#L72"
        if ((@:checkr _g ?? throw "null pointer dereference")._m == null) {
            (@:checkr _g ?? throw "null pointer dereference")._m = (({
                final x = new stdgo.GoMap.GoStringMap<stdgo.Ref<stdgo._internal.internal.singleflight.Singleflight_t_call.T_call>>();
                x.__defaultValue__ = () -> (null : stdgo.Ref<stdgo._internal.internal.singleflight.Singleflight_t_call.T_call>);
                {};
                x;
            } : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.internal.singleflight.Singleflight_t_call.T_call>>) : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.internal.singleflight.Singleflight_t_call.T_call>>);
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/singleflight/singleflight.go#L75"
        {
            var __tmp__ = ((@:checkr _g ?? throw "null pointer dereference")._m != null && (@:checkr _g ?? throw "null pointer dereference")._m.__exists__(_key?.__copy__()) ? { _0 : (@:checkr _g ?? throw "null pointer dereference")._m[_key?.__copy__()], _1 : true } : { _0 : (null : stdgo.Ref<stdgo._internal.internal.singleflight.Singleflight_t_call.T_call>), _1 : false }), _c:stdgo.Ref<stdgo._internal.internal.singleflight.Singleflight_t_call.T_call> = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_ok) {
                //"file:///home/runner/.go/go1.21.3/src/internal/singleflight/singleflight.go#L76"
                (@:checkr _c ?? throw "null pointer dereference")._dups++;
                (@:checkr _c ?? throw "null pointer dereference")._chans = ((@:checkr _c ?? throw "null pointer dereference")._chans.__append__(_ch) : stdgo.Slice<stdgo.Chan<stdgo._internal.internal.singleflight.Singleflight_result.Result>>);
                //"file:///home/runner/.go/go1.21.3/src/internal/singleflight/singleflight.go#L78"
                (@:checkr _g ?? throw "null pointer dereference")._mu.unlock();
                //"file:///home/runner/.go/go1.21.3/src/internal/singleflight/singleflight.go#L79"
                return _ch;
            };
        };
        var _c = (stdgo.Go.setRef(({ _chans : (new stdgo.Slice<stdgo.Chan<stdgo._internal.internal.singleflight.Singleflight_result.Result>>(1, 1, ...[_ch]) : stdgo.Slice<stdgo.Chan<stdgo._internal.internal.singleflight.Singleflight_result.Result>>) } : stdgo._internal.internal.singleflight.Singleflight_t_call.T_call)) : stdgo.Ref<stdgo._internal.internal.singleflight.Singleflight_t_call.T_call>);
        //"file:///home/runner/.go/go1.21.3/src/internal/singleflight/singleflight.go#L82"
        (@:checkr _c ?? throw "null pointer dereference")._wg.add((1 : stdgo.GoInt));
        (@:checkr _g ?? throw "null pointer dereference")._m[_key] = _c;
        //"file:///home/runner/.go/go1.21.3/src/internal/singleflight/singleflight.go#L84"
        (@:checkr _g ?? throw "null pointer dereference")._mu.unlock();
        //"file:///home/runner/.go/go1.21.3/src/internal/singleflight/singleflight.go#L86"
        {
            final __tmp__0 = _c;
final __tmp__1 = _key?.__copy__();
final __tmp__2 = _fn;
            stdgo.Go.routine(() -> _g._doCall(__tmp__0, __tmp__1, __tmp__2));
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/singleflight/singleflight.go#L88"
        return _ch;
    }
    @:keep
    @:tdfield
    static public function do_( _g:stdgo.Ref<stdgo._internal.internal.singleflight.Singleflight_group.Group>, _key:stdgo.GoString, _fn:() -> { var _0 : stdgo.AnyInterface; var _1 : stdgo.Error; }):{ var _0 : stdgo.AnyInterface; var _1 : stdgo.Error; var _2 : Bool; } {
        @:recv var _g:stdgo.Ref<stdgo._internal.internal.singleflight.Singleflight_group.Group> = _g;
        var _v = (null : stdgo.AnyInterface), _err = (null : stdgo.Error), _shared = false;
        //"file:///home/runner/.go/go1.21.3/src/internal/singleflight/singleflight.go#L48"
        (@:checkr _g ?? throw "null pointer dereference")._mu.lock();
        //"file:///home/runner/.go/go1.21.3/src/internal/singleflight/singleflight.go#L49"
        if ((@:checkr _g ?? throw "null pointer dereference")._m == null) {
            (@:checkr _g ?? throw "null pointer dereference")._m = (({
                final x = new stdgo.GoMap.GoStringMap<stdgo.Ref<stdgo._internal.internal.singleflight.Singleflight_t_call.T_call>>();
                x.__defaultValue__ = () -> (null : stdgo.Ref<stdgo._internal.internal.singleflight.Singleflight_t_call.T_call>);
                {};
                x;
            } : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.internal.singleflight.Singleflight_t_call.T_call>>) : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.internal.singleflight.Singleflight_t_call.T_call>>);
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/singleflight/singleflight.go#L52"
        {
            var __tmp__ = ((@:checkr _g ?? throw "null pointer dereference")._m != null && (@:checkr _g ?? throw "null pointer dereference")._m.__exists__(_key?.__copy__()) ? { _0 : (@:checkr _g ?? throw "null pointer dereference")._m[_key?.__copy__()], _1 : true } : { _0 : (null : stdgo.Ref<stdgo._internal.internal.singleflight.Singleflight_t_call.T_call>), _1 : false }), _c:stdgo.Ref<stdgo._internal.internal.singleflight.Singleflight_t_call.T_call> = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_ok) {
                //"file:///home/runner/.go/go1.21.3/src/internal/singleflight/singleflight.go#L53"
                (@:checkr _c ?? throw "null pointer dereference")._dups++;
                //"file:///home/runner/.go/go1.21.3/src/internal/singleflight/singleflight.go#L54"
                (@:checkr _g ?? throw "null pointer dereference")._mu.unlock();
                //"file:///home/runner/.go/go1.21.3/src/internal/singleflight/singleflight.go#L55"
                (@:checkr _c ?? throw "null pointer dereference")._wg.wait_();
                //"file:///home/runner/.go/go1.21.3/src/internal/singleflight/singleflight.go#L56"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.AnyInterface; var _1 : stdgo.Error; var _2 : Bool; } = { _0 : (@:checkr _c ?? throw "null pointer dereference")._val, _1 : (@:checkr _c ?? throw "null pointer dereference")._err, _2 : true };
                    _v = __tmp__._0;
                    _err = __tmp__._1;
                    _shared = __tmp__._2;
                    __tmp__;
                };
            };
        };
        var _c = (stdgo.Go.setRef(({} : stdgo._internal.internal.singleflight.Singleflight_t_call.T_call)) : stdgo.Ref<stdgo._internal.internal.singleflight.Singleflight_t_call.T_call>);
        //"file:///home/runner/.go/go1.21.3/src/internal/singleflight/singleflight.go#L59"
        (@:checkr _c ?? throw "null pointer dereference")._wg.add((1 : stdgo.GoInt));
        (@:checkr _g ?? throw "null pointer dereference")._m[_key] = _c;
        //"file:///home/runner/.go/go1.21.3/src/internal/singleflight/singleflight.go#L61"
        (@:checkr _g ?? throw "null pointer dereference")._mu.unlock();
        //"file:///home/runner/.go/go1.21.3/src/internal/singleflight/singleflight.go#L63"
        _g._doCall(_c, _key?.__copy__(), _fn);
        //"file:///home/runner/.go/go1.21.3/src/internal/singleflight/singleflight.go#L64"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.AnyInterface; var _1 : stdgo.Error; var _2 : Bool; } = { _0 : (@:checkr _c ?? throw "null pointer dereference")._val, _1 : (@:checkr _c ?? throw "null pointer dereference")._err, _2 : ((@:checkr _c ?? throw "null pointer dereference")._dups > (0 : stdgo.GoInt) : Bool) };
            _v = __tmp__._0;
            _err = __tmp__._1;
            _shared = __tmp__._2;
            __tmp__;
        };
    }
}
