package stdgo.crypto.tls;
@:structInit @:using(stdgo.crypto.tls.Tls.T_encryptedExtensionsMsg_static_extension) abstract T_encryptedExtensionsMsg(stdgo._internal.crypto.tls.Tls_T_encryptedExtensionsMsg.T_encryptedExtensionsMsg) from stdgo._internal.crypto.tls.Tls_T_encryptedExtensionsMsg.T_encryptedExtensionsMsg to stdgo._internal.crypto.tls.Tls_T_encryptedExtensionsMsg.T_encryptedExtensionsMsg {
    public var _raw(get, set) : Array<std.UInt>;
    function get__raw():Array<std.UInt> return [for (i in this._raw) i];
    function set__raw(v:Array<std.UInt>):Array<std.UInt> {
        this._raw = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var _alpnProtocol(get, set) : String;
    function get__alpnProtocol():String return this._alpnProtocol;
    function set__alpnProtocol(v:String):String {
        this._alpnProtocol = (v : stdgo.GoString);
        return v;
    }
    public var _quicTransportParameters(get, set) : Array<std.UInt>;
    function get__quicTransportParameters():Array<std.UInt> return [for (i in this._quicTransportParameters) i];
    function set__quicTransportParameters(v:Array<std.UInt>):Array<std.UInt> {
        this._quicTransportParameters = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var _earlyData(get, set) : Bool;
    function get__earlyData():Bool return this._earlyData;
    function set__earlyData(v:Bool):Bool {
        this._earlyData = v;
        return v;
    }
    public function new(?_raw:Array<std.UInt>, ?_alpnProtocol:String, ?_quicTransportParameters:Array<std.UInt>, ?_earlyData:Bool) this = new stdgo._internal.crypto.tls.Tls_T_encryptedExtensionsMsg.T_encryptedExtensionsMsg(([for (i in _raw) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>), (_alpnProtocol : stdgo.GoString), ([for (i in _quicTransportParameters) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>), _earlyData);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
