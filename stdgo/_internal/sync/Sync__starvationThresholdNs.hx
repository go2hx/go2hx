package stdgo._internal.sync;
import stdgo._internal.unsafe.Unsafe;
import _internal.sync.atomic_.Atomic_;
import stdgo._internal.internal.race.Race;
import stdgo._internal.runtime.Runtime;
final _starvationThresholdNs : stdgo.GoFloat64 = (1e+06 : stdgo.GoFloat64);
