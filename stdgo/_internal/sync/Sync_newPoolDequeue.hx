package stdgo._internal.sync;
function newPoolDequeue(_n:stdgo.GoInt):stdgo._internal.sync.Sync_PoolDequeue.PoolDequeue {
        var _d = (stdgo.Go.setRef(({ _vals : (new stdgo.Slice<stdgo._internal.sync.Sync_T_eface.T_eface>((_n : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((_n : stdgo.GoInt).toBasic() > 0 ? (_n : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.sync.Sync_T_eface.T_eface)]) : stdgo.Slice<stdgo._internal.sync.Sync_T_eface.T_eface>) } : stdgo._internal.sync.Sync_T_poolDequeue.T_poolDequeue)) : stdgo.Ref<stdgo._internal.sync.Sync_T_poolDequeue.T_poolDequeue>);
        _d._headTail = _d._pack((-500u32 : stdgo.GoUInt32), (-500u32 : stdgo.GoUInt32));
        return stdgo.Go.asInterface(_d);
    }