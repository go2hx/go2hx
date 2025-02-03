package stdgo.crypto.tls;
@:structInit @:using(stdgo.crypto.tls.Tls.T_pskIdentity_static_extension) abstract T_pskIdentity(stdgo._internal.crypto.tls.Tls_T_pskIdentity.T_pskIdentity) from stdgo._internal.crypto.tls.Tls_T_pskIdentity.T_pskIdentity to stdgo._internal.crypto.tls.Tls_T_pskIdentity.T_pskIdentity {
    public var _label(get, set) : Array<std.UInt>;
    function get__label():Array<std.UInt> return [for (i in this._label) i];
    function set__label(v:Array<std.UInt>):Array<std.UInt> {
        this._label = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var _obfuscatedTicketAge(get, set) : std.UInt;
    function get__obfuscatedTicketAge():std.UInt return this._obfuscatedTicketAge;
    function set__obfuscatedTicketAge(v:std.UInt):std.UInt {
        this._obfuscatedTicketAge = (v : stdgo.GoUInt32);
        return v;
    }
    public function new(?_label:Array<std.UInt>, ?_obfuscatedTicketAge:std.UInt) this = new stdgo._internal.crypto.tls.Tls_T_pskIdentity.T_pskIdentity(([for (i in _label) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>), (_obfuscatedTicketAge : stdgo.GoUInt32));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
