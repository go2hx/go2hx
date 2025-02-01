package stdgo._internal.sync;
import stdgo._internal.unsafe.Unsafe;
import _internal.sync.atomic_.Atomic_;
import stdgo._internal.internal.race.Race;
import stdgo._internal.runtime.Runtime;
@:keep var __init_go2hx__ = {
        try {
            var __tmp__0 = stdgo._internal.sync.Sync__expunged._expunged, __tmp__1 = stdgo._internal.sync.Sync_runtime_Semacquire.runtime_Semacquire, __tmp__2 = stdgo._internal.sync.Sync_runtime_Semrelease.runtime_Semrelease, __tmp__3 = stdgo._internal.sync.Sync_runtime_procPin.runtime_procPin, __tmp__4 = stdgo._internal.sync.Sync_runtime_procUnpin.runtime_procUnpin;
            stdgo._internal.sync.Sync__runtime_registerPoolCleanup._runtime_registerPoolCleanup(stdgo._internal.sync.Sync__poolCleanup._poolCleanup);
            var _n:stdgo._internal.sync.Sync_T_notifyList.T_notifyList = ({} : stdgo._internal.sync.Sync_T_notifyList.T_notifyList);
            stdgo._internal.sync.Sync__runtime_notifyListCheck._runtime_notifyListCheck(stdgo._internal.unsafe.Unsafe_sizeof.sizeof(stdgo.Go.toInterface(_n)));
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };
