package stdgo._internal.net;
@:structInit @:using(stdgo._internal.net.Net_t_policytableentry_static_extension.T_policyTableEntry_static_extension) class T_policyTableEntry {
    public var prefix : stdgo._internal.net.netip.Netip_prefix.Prefix = ({} : stdgo._internal.net.netip.Netip_prefix.Prefix);
    public var precedence : stdgo.GoUInt8 = 0;
    public var label : stdgo.GoUInt8 = 0;
    public function new(?prefix:stdgo._internal.net.netip.Netip_prefix.Prefix, ?precedence:stdgo.GoUInt8, ?label:stdgo.GoUInt8) {
        if (prefix != null) this.prefix = prefix;
        if (precedence != null) this.precedence = precedence;
        if (label != null) this.label = label;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_policyTableEntry(prefix, precedence, label);
    }
}
