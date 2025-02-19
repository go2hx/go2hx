package stdgo._internal.crypto.aes;
@:structInit @:using(stdgo._internal.crypto.aes.Aes_keytest_static_extension.KeyTest_static_extension) class KeyTest {
    public var _key : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _enc : stdgo.Slice<stdgo.GoUInt32> = (null : stdgo.Slice<stdgo.GoUInt32>);
    public var _dec : stdgo.Slice<stdgo.GoUInt32> = (null : stdgo.Slice<stdgo.GoUInt32>);
    public function new(?_key:stdgo.Slice<stdgo.GoUInt8>, ?_enc:stdgo.Slice<stdgo.GoUInt32>, ?_dec:stdgo.Slice<stdgo.GoUInt32>) {
        if (_key != null) this._key = _key;
        if (_enc != null) this._enc = _enc;
        if (_dec != null) this._dec = _dec;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new KeyTest(_key, _enc, _dec);
    }
}
