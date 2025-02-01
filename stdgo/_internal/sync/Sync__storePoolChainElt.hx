package stdgo._internal.sync;
import stdgo._internal.unsafe.Unsafe;
import _internal.sync.atomic_.Atomic_;
import stdgo._internal.internal.race.Race;
import stdgo._internal.runtime.Runtime;
function _storePoolChainElt(_pp:stdgo.Ref<stdgo.Ref<stdgo._internal.sync.Sync_T_poolChainElt.T_poolChainElt>>, _v:stdgo.Ref<stdgo._internal.sync.Sync_T_poolChainElt.T_poolChainElt>):Void {
        _internal.sync.atomic_.Atomic__storePointer.storePointer(((stdgo.Go.toInterface(_pp) : stdgo._internal.unsafe.Unsafe.UnsafePointer).__convert__(stdgo._internal.internal.reflect.Reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(unsafepointer_kind) })) : stdgo.Pointer<stdgo._internal.unsafe.Unsafe.UnsafePointer>), (stdgo.Go.toInterface(_v) : stdgo._internal.unsafe.Unsafe.UnsafePointer));
    }
