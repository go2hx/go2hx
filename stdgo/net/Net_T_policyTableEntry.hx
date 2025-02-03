package stdgo.net;
@:structInit @:using(stdgo.net.Net.T_policyTableEntry_static_extension) abstract T_policyTableEntry(stdgo._internal.net.Net_T_policyTableEntry.T_policyTableEntry) from stdgo._internal.net.Net_T_policyTableEntry.T_policyTableEntry to stdgo._internal.net.Net_T_policyTableEntry.T_policyTableEntry {
    public var prefix(get, set) : Prefix;
    function get_prefix():Prefix return this.prefix;
    function set_prefix(v:Prefix):Prefix {
        this.prefix = v;
        return v;
    }
    public var precedence(get, set) : std.UInt;
    function get_precedence():std.UInt return this.precedence;
    function set_precedence(v:std.UInt):std.UInt {
        this.precedence = (v : stdgo.GoUInt8);
        return v;
    }
    public var label(get, set) : std.UInt;
    function get_label():std.UInt return this.label;
    function set_label(v:std.UInt):std.UInt {
        this.label = (v : stdgo.GoUInt8);
        return v;
    }
    public function new(?prefix:Prefix, ?precedence:std.UInt, ?label:std.UInt) this = new stdgo._internal.net.Net_T_policyTableEntry.T_policyTableEntry(prefix, (precedence : stdgo.GoUInt8), (label : stdgo.GoUInt8));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
