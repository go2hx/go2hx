package stdgo._internal.sync;
function _storePoolChainElt(_pp:stdgo.Ref<stdgo.Ref<stdgo._internal.sync.Sync_t_poolchainelt.T_poolChainElt>>, _v:stdgo.Ref<stdgo._internal.sync.Sync_t_poolchainelt.T_poolChainElt>):Void {
        stdgo._internal.sync.atomic_.Atomic__storepointer.storePointer(((stdgo.Go.toInterface(_pp) : stdgo._internal.unsafe.Unsafe.UnsafePointer).__convert__(stdgo._internal.internal.reflect.Reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(unsafepointer_kind) })) : stdgo.Pointer<stdgo._internal.unsafe.Unsafe.UnsafePointer>), (stdgo.Go.toInterface(_v) : stdgo._internal.unsafe.Unsafe.UnsafePointer));
    }
