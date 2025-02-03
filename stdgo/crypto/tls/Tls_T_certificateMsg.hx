package stdgo.crypto.tls;
@:structInit @:using(stdgo.crypto.tls.Tls.T_certificateMsg_static_extension) abstract T_certificateMsg(stdgo._internal.crypto.tls.Tls_T_certificateMsg.T_certificateMsg) from stdgo._internal.crypto.tls.Tls_T_certificateMsg.T_certificateMsg to stdgo._internal.crypto.tls.Tls_T_certificateMsg.T_certificateMsg {
    public var _raw(get, set) : Array<std.UInt>;
    function get__raw():Array<std.UInt> return [for (i in this._raw) i];
    function set__raw(v:Array<std.UInt>):Array<std.UInt> {
        this._raw = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var _certificates(get, set) : Array<Array<std.UInt>>;
    function get__certificates():Array<Array<std.UInt>> return [for (i in this._certificates) [for (i in i) i]];
    function set__certificates(v:Array<Array<std.UInt>>):Array<Array<std.UInt>> {
        this._certificates = ([for (i in v) ([for (i in i) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>)] : stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>);
        return v;
    }
    public function new(?_raw:Array<std.UInt>, ?_certificates:Array<Array<std.UInt>>) this = new stdgo._internal.crypto.tls.Tls_T_certificateMsg.T_certificateMsg(([for (i in _raw) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>), ([for (i in _certificates) ([for (i in i) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>)] : stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
