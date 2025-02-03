package stdgo.crypto.tls;
@:structInit @:using(stdgo.crypto.tls.Tls.T_finishedMsg_static_extension) abstract T_finishedMsg(stdgo._internal.crypto.tls.Tls_T_finishedMsg.T_finishedMsg) from stdgo._internal.crypto.tls.Tls_T_finishedMsg.T_finishedMsg to stdgo._internal.crypto.tls.Tls_T_finishedMsg.T_finishedMsg {
    public var _raw(get, set) : Array<std.UInt>;
    function get__raw():Array<std.UInt> return [for (i in this._raw) i];
    function set__raw(v:Array<std.UInt>):Array<std.UInt> {
        this._raw = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var _verifyData(get, set) : Array<std.UInt>;
    function get__verifyData():Array<std.UInt> return [for (i in this._verifyData) i];
    function set__verifyData(v:Array<std.UInt>):Array<std.UInt> {
        this._verifyData = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public function new(?_raw:Array<std.UInt>, ?_verifyData:Array<std.UInt>) this = new stdgo._internal.crypto.tls.Tls_T_finishedMsg.T_finishedMsg(([for (i in _raw) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>), ([for (i in _verifyData) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
