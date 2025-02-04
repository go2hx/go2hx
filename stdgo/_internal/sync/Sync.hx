package stdgo._internal.sync;
@:keep var __init_go2hx__ = {
        try {
            var __tmp__0 = stdgo._internal.sync.Sync__expunged._expunged, __tmp__1 = stdgo._internal.sync.Sync_runtime_semacquire.runtime_Semacquire, __tmp__2 = stdgo._internal.sync.Sync_runtime_semrelease.runtime_Semrelease, __tmp__3 = stdgo._internal.sync.Sync_runtime_procpin.runtime_procPin, __tmp__4 = stdgo._internal.sync.Sync_runtime_procunpin.runtime_procUnpin;
            stdgo._internal.sync.Sync__runtime_registerpoolcleanup._runtime_registerPoolCleanup(stdgo._internal.sync.Sync__poolcleanup._poolCleanup);
            var _n:stdgo._internal.sync.Sync_t_notifylist.T_notifyList = ({} : stdgo._internal.sync.Sync_t_notifylist.T_notifyList);
            stdgo._internal.sync.Sync__runtime_notifylistcheck._runtime_notifyListCheck(stdgo._internal.unsafe.Unsafe_sizeof.sizeof(stdgo.Go.toInterface(_n)));
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };
