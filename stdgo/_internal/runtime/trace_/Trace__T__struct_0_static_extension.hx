package stdgo._internal.runtime.trace_;
import stdgo._internal.context.Context;
import stdgo._internal.sync.atomic_.Atomic_;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.runtime.Runtime;
@:keep @:allow(stdgo._internal.runtime.trace_.Trace_.T__struct_0_asInterface) class T__struct_0_static_extension {
    @:embedded
    @:localembedfields
    public static function _unlockSlow( __self__:stdgo._internal.runtime.trace_.Trace__T__struct_0.T__struct_0, _0:stdgo.GoInt32):Void return @:check32 __self__.mutex._unlockSlow(_0);
    @:embedded
    @:localembedfields
    public static function _lockSlow( __self__:stdgo._internal.runtime.trace_.Trace__T__struct_0.T__struct_0):Void return @:check32 __self__.mutex._lockSlow();
    @:embedded
    @:localembedfields
    public static function unlock( __self__:stdgo._internal.runtime.trace_.Trace__T__struct_0.T__struct_0):Void return @:check32 __self__.mutex.unlock();
    @:embedded
    @:localembedfields
    public static function tryLock( __self__:stdgo._internal.runtime.trace_.Trace__T__struct_0.T__struct_0):Bool return @:check32 __self__.mutex.tryLock();
    @:embedded
    @:localembedfields
    public static function lock( __self__:stdgo._internal.runtime.trace_.Trace__T__struct_0.T__struct_0):Void return @:check32 __self__.mutex.lock();
}
