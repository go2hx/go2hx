package stdgo._internal.crypto.aes;
@:structInit @:using(stdgo._internal.crypto.aes.Aes_crypttest_static_extension.CryptTest_static_extension) class CryptTest {
    public var _key : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _in : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _out : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public function new(?_key:stdgo.Slice<stdgo.GoUInt8>, ?_in:stdgo.Slice<stdgo.GoUInt8>, ?_out:stdgo.Slice<stdgo.GoUInt8>) {
        if (_key != null) this._key = _key;
        if (_in != null) this._in = _in;
        if (_out != null) this._out = _out;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new CryptTest(_key, _in, _out);
    }
}
