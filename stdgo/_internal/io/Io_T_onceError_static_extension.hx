package stdgo._internal.io;
@:keep @:allow(stdgo._internal.io.Io.T_onceError_asInterface) class T_onceError_static_extension {
    @:keep
    static public function load( _a:stdgo.Ref<stdgo._internal.io.Io_T_onceError.T_onceError>):stdgo.Error {
        @:recv var _a:stdgo.Ref<stdgo._internal.io.Io_T_onceError.T_onceError> = _a;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            _a.lock();
            {
                final __f__ = _a.unlock;
                __deferstack__.unshift(() -> __f__());
            };
            {
                final __ret__:stdgo.Error = _a._err;
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
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return (null : stdgo.Error);
        };
    }
    @:keep
    static public function store( _a:stdgo.Ref<stdgo._internal.io.Io_T_onceError.T_onceError>, _err:stdgo.Error):Void {
        @:recv var _a:stdgo.Ref<stdgo._internal.io.Io_T_onceError.T_onceError> = _a;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            _a.lock();
            {
                final __f__ = _a.unlock;
                __deferstack__.unshift(() -> __f__());
            };
            if (_a._err != null) {
                {
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return;
                };
            };
            _a._err = _err;
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
    @:embedded
    public static function _unlockSlow( __self__:stdgo._internal.io.Io_T_onceError.T_onceError, _new:stdgo.GoInt32) __self__._unlockSlow(_new);
    @:embedded
    public static function _lockSlow( __self__:stdgo._internal.io.Io_T_onceError.T_onceError) __self__._lockSlow();
    @:embedded
    public static function unlock( __self__:stdgo._internal.io.Io_T_onceError.T_onceError) __self__.unlock();
    @:embedded
    public static function tryLock( __self__:stdgo._internal.io.Io_T_onceError.T_onceError):Bool return __self__.tryLock();
    @:embedded
    public static function lock( __self__:stdgo._internal.io.Io_T_onceError.T_onceError) __self__.lock();
}
