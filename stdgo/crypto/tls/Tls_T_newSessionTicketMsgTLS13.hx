package stdgo.crypto.tls;
@:structInit @:using(stdgo.crypto.tls.Tls.T_newSessionTicketMsgTLS13_static_extension) abstract T_newSessionTicketMsgTLS13(stdgo._internal.crypto.tls.Tls_T_newSessionTicketMsgTLS13.T_newSessionTicketMsgTLS13) from stdgo._internal.crypto.tls.Tls_T_newSessionTicketMsgTLS13.T_newSessionTicketMsgTLS13 to stdgo._internal.crypto.tls.Tls_T_newSessionTicketMsgTLS13.T_newSessionTicketMsgTLS13 {
    public var _raw(get, set) : Array<std.UInt>;
    function get__raw():Array<std.UInt> return [for (i in this._raw) i];
    function set__raw(v:Array<std.UInt>):Array<std.UInt> {
        this._raw = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var _lifetime(get, set) : std.UInt;
    function get__lifetime():std.UInt return this._lifetime;
    function set__lifetime(v:std.UInt):std.UInt {
        this._lifetime = (v : stdgo.GoUInt32);
        return v;
    }
    public var _ageAdd(get, set) : std.UInt;
    function get__ageAdd():std.UInt return this._ageAdd;
    function set__ageAdd(v:std.UInt):std.UInt {
        this._ageAdd = (v : stdgo.GoUInt32);
        return v;
    }
    public var _nonce(get, set) : Array<std.UInt>;
    function get__nonce():Array<std.UInt> return [for (i in this._nonce) i];
    function set__nonce(v:Array<std.UInt>):Array<std.UInt> {
        this._nonce = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var _label(get, set) : Array<std.UInt>;
    function get__label():Array<std.UInt> return [for (i in this._label) i];
    function set__label(v:Array<std.UInt>):Array<std.UInt> {
        this._label = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var _maxEarlyData(get, set) : std.UInt;
    function get__maxEarlyData():std.UInt return this._maxEarlyData;
    function set__maxEarlyData(v:std.UInt):std.UInt {
        this._maxEarlyData = (v : stdgo.GoUInt32);
        return v;
    }
    public function new(?_raw:Array<std.UInt>, ?_lifetime:std.UInt, ?_ageAdd:std.UInt, ?_nonce:Array<std.UInt>, ?_label:Array<std.UInt>, ?_maxEarlyData:std.UInt) this = new stdgo._internal.crypto.tls.Tls_T_newSessionTicketMsgTLS13.T_newSessionTicketMsgTLS13(([for (i in _raw) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>), (_lifetime : stdgo.GoUInt32), (_ageAdd : stdgo.GoUInt32), ([for (i in _nonce) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>), ([for (i in _label) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>), (_maxEarlyData : stdgo.GoUInt32));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
