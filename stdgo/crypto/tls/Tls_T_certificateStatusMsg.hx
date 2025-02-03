package stdgo.crypto.tls;
@:structInit @:using(stdgo.crypto.tls.Tls.T_certificateStatusMsg_static_extension) abstract T_certificateStatusMsg(stdgo._internal.crypto.tls.Tls_T_certificateStatusMsg.T_certificateStatusMsg) from stdgo._internal.crypto.tls.Tls_T_certificateStatusMsg.T_certificateStatusMsg to stdgo._internal.crypto.tls.Tls_T_certificateStatusMsg.T_certificateStatusMsg {
    public var _raw(get, set) : Array<std.UInt>;
    function get__raw():Array<std.UInt> return [for (i in this._raw) i];
    function set__raw(v:Array<std.UInt>):Array<std.UInt> {
        this._raw = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var _response(get, set) : Array<std.UInt>;
    function get__response():Array<std.UInt> return [for (i in this._response) i];
    function set__response(v:Array<std.UInt>):Array<std.UInt> {
        this._response = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public function new(?_raw:Array<std.UInt>, ?_response:Array<std.UInt>) this = new stdgo._internal.crypto.tls.Tls_T_certificateStatusMsg.T_certificateStatusMsg(([for (i in _raw) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>), ([for (i in _response) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
