package stdgo._internal.math.big;
@:keep @:allow(stdgo._internal.math.big.Big.T__struct_57_asInterface) class T__struct_57_static_extension {
    @:embedded
    public static function _unlockSlow( __self__:stdgo._internal.math.big.Big_T__struct_57.T__struct_57, __0:stdgo.GoInt32) __self__.mutex._unlockSlow(__0);
    @:embedded
    public static function _lockSlow( __self__:stdgo._internal.math.big.Big_T__struct_57.T__struct_57) __self__.mutex._lockSlow();
    @:embedded
    public static function unlock( __self__:stdgo._internal.math.big.Big_T__struct_57.T__struct_57) __self__.mutex.unlock();
    @:embedded
    public static function tryLock( __self__:stdgo._internal.math.big.Big_T__struct_57.T__struct_57):Bool return return __self__.mutex.tryLock();
    @:embedded
    public static function lock( __self__:stdgo._internal.math.big.Big_T__struct_57.T__struct_57) __self__.mutex.lock();
}
