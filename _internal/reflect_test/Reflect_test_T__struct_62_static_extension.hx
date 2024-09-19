package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
@:keep @:allow(_internal.reflect_test.Reflect_test.T__struct_62_asInterface) class T__struct_62_static_extension {
    @:embedded
    public static function _unlockSlow( __self__:_internal.reflect_test.Reflect_test_T__struct_62.T__struct_62, _nameOff:stdgo.GoInt32) __self__.mutex._unlockSlow(_nameOff);
    @:embedded
    public static function _lockSlow( __self__:_internal.reflect_test.Reflect_test_T__struct_62.T__struct_62) __self__.mutex._lockSlow();
    @:embedded
    public static function unlock( __self__:_internal.reflect_test.Reflect_test_T__struct_62.T__struct_62) __self__.mutex.unlock();
    @:embedded
    public static function tryLock( __self__:_internal.reflect_test.Reflect_test_T__struct_62.T__struct_62):Bool return return __self__.mutex.tryLock();
    @:embedded
    public static function lock( __self__:_internal.reflect_test.Reflect_test_T__struct_62.T__struct_62) __self__.mutex.lock();
}
