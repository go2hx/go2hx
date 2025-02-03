package stdgo.sync;
@:structInit @:using(stdgo.sync.Sync.T_poolLocal_static_extension) abstract T_poolLocal(stdgo._internal.sync.Sync_T_poolLocal.T_poolLocal) from stdgo._internal.sync.Sync_T_poolLocal.T_poolLocal to stdgo._internal.sync.Sync_T_poolLocal.T_poolLocal {
    public var _poolLocalInternal(get, set) : T_poolLocalInternal;
    function get__poolLocalInternal():T_poolLocalInternal return this._poolLocalInternal;
    function set__poolLocalInternal(v:T_poolLocalInternal):T_poolLocalInternal {
        this._poolLocalInternal = v;
        return v;
    }
    public var _pad(get, set) : haxe.ds.Vector<std.UInt>;
    function get__pad():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this._pad) i]);
    function set__pad(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this._pad = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>);
        return v;
    }
    public function new(?_poolLocalInternal:T_poolLocalInternal, ?_pad:haxe.ds.Vector<std.UInt>) this = new stdgo._internal.sync.Sync_T_poolLocal.T_poolLocal(_poolLocalInternal, ([for (i in _pad) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
