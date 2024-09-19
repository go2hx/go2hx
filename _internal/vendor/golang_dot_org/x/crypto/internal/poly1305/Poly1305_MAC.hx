package _internal.vendor.golang_dot_org.x.crypto.internal.poly1305;
@:structInit @:using(_internal.vendor.golang_dot_org.x.crypto.internal.poly1305.Poly1305_MAC_static_extension.MAC_static_extension) class MAC {
    @:embedded
    public var _mac : _internal.vendor.golang_dot_org.x.crypto.internal.poly1305.Poly1305_T_mac.T_mac = ({} : _internal.vendor.golang_dot_org.x.crypto.internal.poly1305.Poly1305_T_mac.T_mac);
    public var _finalized : Bool = false;
    public function new(?_mac:_internal.vendor.golang_dot_org.x.crypto.internal.poly1305.Poly1305_T_mac.T_mac, ?_finalized:Bool) {
        if (_mac != null) this._mac = _mac;
        if (_finalized != null) this._finalized = _finalized;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new MAC(_mac, _finalized);
    }
}
