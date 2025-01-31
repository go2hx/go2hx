package stdgo._internal.crypto.aes;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.crypto.internal.boring.Boring;
import stdgo._internal.crypto.internal.alias.Alias;
import stdgo._internal.strconv.Strconv;
@:structInit @:using(stdgo._internal.crypto.aes.Aes_T_aesCipher_static_extension.T_aesCipher_static_extension) class T_aesCipher {
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
