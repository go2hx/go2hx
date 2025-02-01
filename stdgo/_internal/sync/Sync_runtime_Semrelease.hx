package stdgo._internal.sync;
import stdgo._internal.unsafe.Unsafe;
import stdgo._internal.sync.atomic_.Atomic_;
import stdgo._internal.internal.race.Race;
import stdgo._internal.runtime.Runtime;
var runtime_Semrelease : (stdgo.Pointer<stdgo.GoUInt32>, Bool, stdgo.GoInt) -> Void = stdgo._internal.sync.Sync__runtime_Semrelease._runtime_Semrelease;
