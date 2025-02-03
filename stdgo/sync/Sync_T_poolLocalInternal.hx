package stdgo.sync;
@:structInit @:using(stdgo.sync.Sync.T_poolLocalInternal_static_extension) abstract T_poolLocalInternal(stdgo._internal.sync.Sync_T_poolLocalInternal.T_poolLocalInternal) from stdgo._internal.sync.Sync_T_poolLocalInternal.T_poolLocalInternal to stdgo._internal.sync.Sync_T_poolLocalInternal.T_poolLocalInternal {
    public var _private(get, set) : stdgo.AnyInterface;
    function get__private():stdgo.AnyInterface return this._private;
    function set__private(v:stdgo.AnyInterface):stdgo.AnyInterface {
        this._private = (v : stdgo.AnyInterface);
        return v;
    }
    public var _shared(get, set) : T_poolChain;
    function get__shared():T_poolChain return this._shared;
    function set__shared(v:T_poolChain):T_poolChain {
        this._shared = v;
        return v;
    }
    public function new(?_private:stdgo.AnyInterface, ?_shared:T_poolChain) this = new stdgo._internal.sync.Sync_T_poolLocalInternal.T_poolLocalInternal((_private : stdgo.AnyInterface), _shared);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
