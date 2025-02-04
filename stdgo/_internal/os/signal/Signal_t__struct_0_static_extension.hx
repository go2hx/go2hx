package stdgo._internal.os.signal;
@:keep @:allow(stdgo._internal.os.signal.Signal.T__struct_0_asInterface) class T__struct_0_static_extension {
    @:embedded
    @:localembedfields
    public static function _unlockSlow( __self__:stdgo._internal.os.signal.Signal_t__struct_0.T__struct_0, _0:stdgo.GoInt32):Void return @:check32 __self__.mutex._unlockSlow(_0);
    @:embedded
    @:localembedfields
    public static function _lockSlow( __self__:stdgo._internal.os.signal.Signal_t__struct_0.T__struct_0):Void return @:check32 __self__.mutex._lockSlow();
    @:embedded
    @:localembedfields
    public static function unlock( __self__:stdgo._internal.os.signal.Signal_t__struct_0.T__struct_0):Void return @:check32 __self__.mutex.unlock();
    @:embedded
    @:localembedfields
    public static function tryLock( __self__:stdgo._internal.os.signal.Signal_t__struct_0.T__struct_0):Bool return @:check32 __self__.mutex.tryLock();
    @:embedded
    @:localembedfields
    public static function lock( __self__:stdgo._internal.os.signal.Signal_t__struct_0.T__struct_0):Void return @:check32 __self__.mutex.lock();
}
