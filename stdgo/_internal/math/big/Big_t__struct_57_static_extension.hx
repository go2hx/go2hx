package stdgo._internal.math.big;
@:keep @:allow(stdgo._internal.math.big.Big.T__struct_57_asInterface) class T__struct_57_static_extension {
    @:embedded
    @:localembedfields
    public static function _unlockSlow( __self__:stdgo._internal.math.big.Big_t__struct_57.T__struct_57, _0:stdgo.GoInt32):Void return @:check32 __self__.mutex._unlockSlow(_0);
    @:embedded
    @:localembedfields
    public static function _lockSlow( __self__:stdgo._internal.math.big.Big_t__struct_57.T__struct_57):Void return @:check32 __self__.mutex._lockSlow();
    @:embedded
    @:localembedfields
    public static function unlock( __self__:stdgo._internal.math.big.Big_t__struct_57.T__struct_57):Void return @:check32 __self__.mutex.unlock();
    @:embedded
    @:localembedfields
    public static function tryLock( __self__:stdgo._internal.math.big.Big_t__struct_57.T__struct_57):Bool return @:check32 __self__.mutex.tryLock();
    @:embedded
    @:localembedfields
    public static function lock( __self__:stdgo._internal.math.big.Big_t__struct_57.T__struct_57):Void return @:check32 __self__.mutex.lock();
}
