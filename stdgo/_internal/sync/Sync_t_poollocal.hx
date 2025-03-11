package stdgo._internal.sync;
@:structInit @:using(stdgo._internal.sync.Sync_t_poollocal_static_extension.T_poolLocal_static_extension) class T_poolLocal {
    @:embedded
    public var _poolLocalInternal : stdgo._internal.sync.Sync_t_poollocalinternal.T_poolLocalInternal = ({} : stdgo._internal.sync.Sync_t_poollocalinternal.T_poolLocalInternal);
    public var _pad : stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(112, 112).__setNumber32__();
    public function new(?_poolLocalInternal:stdgo._internal.sync.Sync_t_poollocalinternal.T_poolLocalInternal, ?_pad:stdgo.GoArray<stdgo.GoUInt8>) {
        if (_poolLocalInternal != null) this._poolLocalInternal = _poolLocalInternal;
        if (_pad != null) this._pad = _pad;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_poolLocal(_poolLocalInternal, _pad);
    }
}
