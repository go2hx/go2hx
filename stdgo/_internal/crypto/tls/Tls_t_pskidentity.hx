package stdgo._internal.crypto.tls;
@:structInit @:using(stdgo._internal.crypto.tls.Tls_t_pskidentity_static_extension.T_pskIdentity_static_extension) class T_pskIdentity {
    public var _label : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _obfuscatedTicketAge : stdgo.GoUInt32 = 0;
    public function new(?_label:stdgo.Slice<stdgo.GoUInt8>, ?_obfuscatedTicketAge:stdgo.GoUInt32) {
        if (_label != null) this._label = _label;
        if (_obfuscatedTicketAge != null) this._obfuscatedTicketAge = _obfuscatedTicketAge;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_pskIdentity(_label, _obfuscatedTicketAge);
    }
}
