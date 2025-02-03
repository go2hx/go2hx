package stdgo.crypto.tls;
@:structInit @:using(stdgo.crypto.tls.Tls.T_keyUpdateMsg_static_extension) abstract T_keyUpdateMsg(stdgo._internal.crypto.tls.Tls_T_keyUpdateMsg.T_keyUpdateMsg) from stdgo._internal.crypto.tls.Tls_T_keyUpdateMsg.T_keyUpdateMsg to stdgo._internal.crypto.tls.Tls_T_keyUpdateMsg.T_keyUpdateMsg {
    public var _raw(get, set) : Array<std.UInt>;
    function get__raw():Array<std.UInt> return [for (i in this._raw) i];
    function set__raw(v:Array<std.UInt>):Array<std.UInt> {
        this._raw = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var _updateRequested(get, set) : Bool;
    function get__updateRequested():Bool return this._updateRequested;
    function set__updateRequested(v:Bool):Bool {
        this._updateRequested = v;
        return v;
    }
    public function new(?_raw:Array<std.UInt>, ?_updateRequested:Bool) this = new stdgo._internal.crypto.tls.Tls_T_keyUpdateMsg.T_keyUpdateMsg(([for (i in _raw) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>), _updateRequested);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
