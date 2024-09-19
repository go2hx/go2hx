package _internal.vendor.golang_dot_org.x.crypto.internal.poly1305;
@:structInit @:using(_internal.vendor.golang_dot_org.x.crypto.internal.poly1305.Poly1305_T_mac_static_extension.T_mac_static_extension) class T_mac {
    @:embedded
    public var _macGeneric : _internal.vendor.golang_dot_org.x.crypto.internal.poly1305.Poly1305_T_macGeneric.T_macGeneric = ({} : _internal.vendor.golang_dot_org.x.crypto.internal.poly1305.Poly1305_T_macGeneric.T_macGeneric);
    public function new(?_macGeneric:_internal.vendor.golang_dot_org.x.crypto.internal.poly1305.Poly1305_T_macGeneric.T_macGeneric) {
        if (_macGeneric != null) this._macGeneric = _macGeneric;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    @:embedded
    public function sum(_out:stdgo.Ref<stdgo.GoArray<stdgo.GoUInt8>>) this._macGeneric.sum(_out);
    @:embedded
    public function write(_p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return this._macGeneric.write(_p);
    public function __copy__() {
        return new T_mac(_macGeneric);
    }
}
