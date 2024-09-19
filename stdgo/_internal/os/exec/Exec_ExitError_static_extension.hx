package stdgo._internal.os.exec;
@:keep @:allow(stdgo._internal.os.exec.Exec.ExitError_asInterface) class ExitError_static_extension {
    @:keep
    static public function error( _e:stdgo.Ref<stdgo._internal.os.exec.Exec_ExitError.ExitError>):stdgo.GoString throw "ExitError:os.exec.error is not yet implemented";
    @:embedded
    public static function _userTime( __self__:stdgo._internal.os.exec.Exec_ExitError.ExitError):stdgo._internal.time.Time_Duration.Duration return __self__._userTime();
    @:embedded
    public static function _systemTime( __self__:stdgo._internal.os.exec.Exec_ExitError.ExitError):stdgo._internal.time.Time_Duration.Duration return __self__._systemTime();
    @:embedded
    public static function _sysUsage( __self__:stdgo._internal.os.exec.Exec_ExitError.ExitError):stdgo.AnyInterface return __self__._sysUsage();
    @:embedded
    public static function _sys( __self__:stdgo._internal.os.exec.Exec_ExitError.ExitError):stdgo.AnyInterface return __self__._sys();
    @:embedded
    public static function _success( __self__:stdgo._internal.os.exec.Exec_ExitError.ExitError):Bool return __self__._success();
    @:embedded
    public static function _exited( __self__:stdgo._internal.os.exec.Exec_ExitError.ExitError):Bool return __self__._exited();
    @:embedded
    public static function userTime( __self__:stdgo._internal.os.exec.Exec_ExitError.ExitError):stdgo._internal.time.Time_Duration.Duration return __self__.userTime();
    @:embedded
    public static function systemTime( __self__:stdgo._internal.os.exec.Exec_ExitError.ExitError):stdgo._internal.time.Time_Duration.Duration return __self__.systemTime();
    @:embedded
    public static function sysUsage( __self__:stdgo._internal.os.exec.Exec_ExitError.ExitError):stdgo.AnyInterface return __self__.sysUsage();
    @:embedded
    public static function sys( __self__:stdgo._internal.os.exec.Exec_ExitError.ExitError):stdgo.AnyInterface return __self__.sys();
    @:embedded
    public static function success( __self__:stdgo._internal.os.exec.Exec_ExitError.ExitError):Bool return __self__.success();
    @:embedded
    public static function string( __self__:stdgo._internal.os.exec.Exec_ExitError.ExitError):stdgo.GoString return __self__.string();
    @:embedded
    public static function pid( __self__:stdgo._internal.os.exec.Exec_ExitError.ExitError):stdgo.GoInt return __self__.pid();
    @:embedded
    public static function exited( __self__:stdgo._internal.os.exec.Exec_ExitError.ExitError):Bool return __self__.exited();
    @:embedded
    public static function exitCode( __self__:stdgo._internal.os.exec.Exec_ExitError.ExitError):stdgo.GoInt return __self__.exitCode();
}
