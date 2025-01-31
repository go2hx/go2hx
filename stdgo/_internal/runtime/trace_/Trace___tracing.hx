package stdgo._internal.runtime.trace_;
import stdgo._internal.context.Context;
import stdgo._internal.sync.atomic_.Atomic_;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.runtime.Runtime;
var _tracing : stdgo._internal.runtime.trace_.Trace__T__struct_0.T__struct_0 = ({ mutex : ({} : stdgo._internal.sync.Sync_Mutex.Mutex), _enabled : ({} : stdgo._internal.sync.atomic_.Atomic__Bool_.Bool_) } : stdgo._internal.runtime.trace_.Trace__T__struct_0.T__struct_0);
