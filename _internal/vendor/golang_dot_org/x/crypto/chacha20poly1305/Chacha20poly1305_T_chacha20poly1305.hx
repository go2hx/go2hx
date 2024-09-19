package _internal.vendor.golang_dot_org.x.crypto.chacha20poly1305;
@:structInit @:using(_internal.vendor.golang_dot_org.x.crypto.chacha20poly1305.Chacha20poly1305_T_chacha20poly1305_static_extension.T_chacha20poly1305_static_extension) class T_chacha20poly1305 {
    public var _key : stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(32, 32, ...[for (i in 0 ... 32) (0 : stdgo.GoUInt8)]);
    public function new(?_key:stdgo.GoArray<stdgo.GoUInt8>) {
        if (_key != null) this._key = _key;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_chacha20poly1305(_key);
    }
}
