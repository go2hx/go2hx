package stdgo._internal.crypto.aes;
@:structInit @:using(stdgo._internal.crypto.aes.Aes_t_aescipher_static_extension.T_aesCipher_static_extension) class T_aesCipher {
    public var _enc : stdgo.Slice<stdgo.GoUInt32> = (null : stdgo.Slice<stdgo.GoUInt32>);
    public var _dec : stdgo.Slice<stdgo.GoUInt32> = (null : stdgo.Slice<stdgo.GoUInt32>);
    public function new(?_enc:stdgo.Slice<stdgo.GoUInt32>, ?_dec:stdgo.Slice<stdgo.GoUInt32>) {
        if (_enc != null) this._enc = _enc;
        if (_dec != null) this._dec = _dec;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_aesCipher(_enc, _dec);
    }
}
