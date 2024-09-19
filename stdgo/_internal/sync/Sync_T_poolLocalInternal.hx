package stdgo._internal.sync;
@:structInit class T_poolLocalInternal {
    public var _private : stdgo.AnyInterface = (null : stdgo.AnyInterface);
    public var _shared : stdgo._internal.sync.Sync_T_poolChain.T_poolChain = ({} : stdgo._internal.sync.Sync_T_poolChain.T_poolChain);
    public function new(?_private:stdgo.AnyInterface, ?_shared:stdgo._internal.sync.Sync_T_poolChain.T_poolChain) {
        if (_private != null) this._private = _private;
        if (_shared != null) this._shared = _shared;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_poolLocalInternal(_private, _shared);
    }
}
