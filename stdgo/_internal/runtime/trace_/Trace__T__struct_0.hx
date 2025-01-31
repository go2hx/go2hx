package stdgo._internal.runtime.trace_;
import stdgo._internal.context.Context;
import stdgo._internal.sync.atomic_.Atomic_;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.runtime.Runtime;
@:local @:using(stdgo._internal.runtime.trace_.Trace__T__struct_0_static_extension.T__struct_0_static_extension) @:using(stdgo._internal.runtime.trace_.Trace__T__struct_0_static_extension.T__struct_0_static_extension) typedef T__struct_0 = {
    @:embedded
    public var mutex : stdgo._internal.sync.Sync_Mutex.Mutex;
    public var _enabled : stdgo._internal.sync.atomic_.Atomic__Bool_.Bool_;
};
