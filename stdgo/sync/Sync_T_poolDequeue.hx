package stdgo.sync;
@:structInit @:using(stdgo.sync.Sync.T_poolDequeue_static_extension) abstract T_poolDequeue(stdgo._internal.sync.Sync_T_poolDequeue.T_poolDequeue) from stdgo._internal.sync.Sync_T_poolDequeue.T_poolDequeue to stdgo._internal.sync.Sync_T_poolDequeue.T_poolDequeue {
    public var _headTail(get, set) : haxe.UInt64;
    function get__headTail():haxe.UInt64 return this._headTail;
    function set__headTail(v:haxe.UInt64):haxe.UInt64 {
        this._headTail = (v : stdgo.GoUInt64);
        return v;
    }
    public var _vals(get, set) : Array<T_eface>;
    function get__vals():Array<T_eface> return [for (i in this._vals) i];
    function set__vals(v:Array<T_eface>):Array<T_eface> {
        this._vals = ([for (i in v) i] : stdgo.Slice<stdgo._internal.sync.Sync_T_eface.T_eface>);
        return v;
    }
    public function new(?_headTail:haxe.UInt64, ?_vals:Array<T_eface>) this = new stdgo._internal.sync.Sync_T_poolDequeue.T_poolDequeue((_headTail : stdgo.GoUInt64), ([for (i in _vals) i] : stdgo.Slice<stdgo._internal.sync.Sync_T_eface.T_eface>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
