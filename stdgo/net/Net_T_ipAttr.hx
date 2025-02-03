package stdgo.net;
@:structInit @:using(stdgo.net.Net.T_ipAttr_static_extension) abstract T_ipAttr(stdgo._internal.net.Net_T_ipAttr.T_ipAttr) from stdgo._internal.net.Net_T_ipAttr.T_ipAttr to stdgo._internal.net.Net_T_ipAttr.T_ipAttr {
    public var scope(get, set) : T_scope;
    function get_scope():T_scope return this.scope;
    function set_scope(v:T_scope):T_scope {
        this.scope = v;
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
    public function new(?scope:T_scope, ?precedence:std.UInt, ?label:std.UInt) this = new stdgo._internal.net.Net_T_ipAttr.T_ipAttr(scope, (precedence : stdgo.GoUInt8), (label : stdgo.GoUInt8));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
