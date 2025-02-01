package stdgo._internal.sync;
import stdgo._internal.unsafe.Unsafe;
import _internal.sync.atomic_.Atomic_;
import stdgo._internal.internal.race.Race;
import stdgo._internal.runtime.Runtime;
@:keep @:follow @:using(stdgo._internal.sync.Sync_Mutex_static_extension.Mutex_static_extension) typedef MutexPointer = stdgo.Pointer<stdgo._internal.sync.Sync_Mutex.Mutex>;
