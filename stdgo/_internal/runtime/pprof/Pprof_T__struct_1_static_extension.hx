package stdgo._internal.runtime.pprof;
@:keep @:allow(stdgo._internal.runtime.pprof.Pprof.T__struct_1_asInterface) class T__struct_1_static_extension {
    @:embedded
    @:localembedfields
    public static function _unlockSlow( __self__:stdgo._internal.runtime.pprof.Pprof_T__struct_1.T__struct_1, _0:stdgo.GoInt32):Void return @:check3 (__self__.mutex ?? throw "null pointer derefrence")._unlockSlow(_0);
    @:embedded
    @:localembedfields
    public static function _lockSlow( __self__:stdgo._internal.runtime.pprof.Pprof_T__struct_1.T__struct_1):Void return @:check3 (__self__.mutex ?? throw "null pointer derefrence")._lockSlow();
    @:embedded
    @:localembedfields
    public static function unlock( __self__:stdgo._internal.runtime.pprof.Pprof_T__struct_1.T__struct_1):Void return @:check3 (__self__.mutex ?? throw "null pointer derefrence").unlock();
    @:embedded
    @:localembedfields
    public static function tryLock( __self__:stdgo._internal.runtime.pprof.Pprof_T__struct_1.T__struct_1):Bool return @:check3 (__self__.mutex ?? throw "null pointer derefrence").tryLock();
    @:embedded
    @:localembedfields
    public static function lock( __self__:stdgo._internal.runtime.pprof.Pprof_T__struct_1.T__struct_1):Void return @:check3 (__self__.mutex ?? throw "null pointer derefrence").lock();
}
