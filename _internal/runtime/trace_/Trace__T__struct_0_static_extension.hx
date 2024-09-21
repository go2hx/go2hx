package _internal.runtime.trace_;
import stdgo._internal.unsafe.Unsafe;
@:keep @:allow(_internal.runtime.trace_.Trace_.T__struct_0_asInterface) class T__struct_0_static_extension {
    @:embedded
    public static function _unlockSlow( __self__:_internal.runtime.trace_.Trace__T__struct_0.T__struct_0, __0:stdgo.GoInt32) __self__.mutex._unlockSlow(__0);
    @:embedded
    public static function _lockSlow( __self__:_internal.runtime.trace_.Trace__T__struct_0.T__struct_0) __self__.mutex._lockSlow();
    @:embedded
    public static function unlock( __self__:_internal.runtime.trace_.Trace__T__struct_0.T__struct_0) __self__.mutex.unlock();
    @:embedded
    public static function tryLock( __self__:_internal.runtime.trace_.Trace__T__struct_0.T__struct_0):Bool return return __self__.mutex.tryLock();
    @:embedded
    public static function lock( __self__:_internal.runtime.trace_.Trace__T__struct_0.T__struct_0) __self__.mutex.lock();
}
