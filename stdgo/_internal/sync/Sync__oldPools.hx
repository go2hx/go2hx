package stdgo._internal.sync;
import stdgo._internal.unsafe.Unsafe;
import _internal.sync.atomic_.Atomic_;
import stdgo._internal.internal.race.Race;
import stdgo._internal.runtime.Runtime;
var _oldPools : stdgo.Slice<stdgo.Ref<stdgo._internal.sync.Sync_Pool.Pool>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.sync.Sync_Pool.Pool>>);
