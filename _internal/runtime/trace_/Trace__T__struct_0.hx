package _internal.runtime.trace_;
import stdgo._internal.unsafe.Unsafe;
@:local @:using(_internal.runtime.trace_.Trace__T__struct_0_static_extension.T__struct_0_static_extension) typedef T__struct_0 = {
    @:embedded
    public var mutex : stdgo._internal.sync.Sync_Mutex.Mutex;
    public var _enabled : stdgo._internal.sync.atomic_.Atomic__Bool_.Bool_;
};
