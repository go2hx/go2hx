package stdgo._internal.crypto.rc4;
@:structInit @:using(stdgo._internal.crypto.rc4.Rc4_t_rc4test_static_extension.T_rc4Test_static_extension) class T_rc4Test {
    public var _key : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _keystream : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public function new(?_key:stdgo.Slice<stdgo.GoUInt8>, ?_keystream:stdgo.Slice<stdgo.GoUInt8>) {
        if (_key != null) this._key = _key;
        if (_keystream != null) this._keystream = _keystream;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_rc4Test(_key, _keystream);
    }
}
