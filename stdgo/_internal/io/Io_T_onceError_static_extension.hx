package stdgo._internal.io;
@:keep @:allow(stdgo._internal.io.Io.T_onceError_asInterface) class T_onceError_static_extension {
    @:keep
    @:tdfield
    static public function load( _a:stdgo.Ref<stdgo._internal.io.Io_T_onceError.T_onceError>):stdgo.Error {
        @:recv var _a:stdgo.Ref<stdgo._internal.io.Io_T_onceError.T_onceError> = _a;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            @:check2r _a.lock();
            {
                final __f__ = @:check2r _a.unlock;
                __deferstack__.unshift(() -> __f__());
            };
            {
                final __ret__:stdgo.Error = (@:checkr _a ?? throw "null pointer dereference")._err;
                for (defer in __deferstack__) {
                    __deferstack__.remove(defer);
                    defer();
                };
                return __ret__;
            };
            {
                for (defer in __deferstack__) {
                    __deferstack__.remove(defer);
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return (null : stdgo.Error);
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
                __deferstack__.remove(defer);
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return (null : stdgo.Error);
        };
    }
    @:keep
    @:tdfield
    static public function store( _a:stdgo.Ref<stdgo._internal.io.Io_T_onceError.T_onceError>, _err:stdgo.Error):Void {
        @:recv var _a:stdgo.Ref<stdgo._internal.io.Io_T_onceError.T_onceError> = _a;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            @:check2r _a.lock();
            {
                final __f__ = @:check2r _a.unlock;
                __deferstack__.unshift(() -> __f__());
            };
            if ((@:checkr _a ?? throw "null pointer dereference")._err != null) {
                {
                    for (defer in __deferstack__) {
                        __deferstack__.remove(defer);
                        defer();
                    };
                    return;
                };
            };
            (@:checkr _a ?? throw "null pointer dereference")._err = _err;
            {
                for (defer in __deferstack__) {
                    __deferstack__.remove(defer);
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
                __deferstack__.remove(defer);
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return;
        };
    }
    @:embedded
    @:embeddededffieldsffun
    public static function _unlockSlow( __self__:stdgo._internal.io.Io_T_onceError.T_onceError, _0:stdgo.GoInt32):Void return @:_5 __self__._unlockSlow(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function _lockSlow( __self__:stdgo._internal.io.Io_T_onceError.T_onceError):Void return @:_5 __self__._lockSlow();
    @:embedded
    @:embeddededffieldsffun
    public static function unlock( __self__:stdgo._internal.io.Io_T_onceError.T_onceError):Void return @:_5 __self__.unlock();
    @:embedded
    @:embeddededffieldsffun
    public static function tryLock( __self__:stdgo._internal.io.Io_T_onceError.T_onceError):Bool return @:_5 __self__.tryLock();
    @:embedded
    @:embeddededffieldsffun
    public static function lock( __self__:stdgo._internal.io.Io_T_onceError.T_onceError):Void return @:_5 __self__.lock();
}
