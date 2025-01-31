package stdgo._internal.crypto.cipher;
import stdgo._internal.errors.Errors;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.crypto.internal.alias.Alias;
import stdgo._internal.crypto.subtle.Subtle;
import stdgo._internal.io.Io;
@:structInit @:using(stdgo._internal.crypto.cipher.Cipher_T_ofb_static_extension.T_ofb_static_extension) class T_ofb {
    public var _b : stdgo._internal.crypto.cipher.Cipher_Block.Block = (null : stdgo._internal.crypto.cipher.Cipher_Block.Block);
    public var _cipher : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _out : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _outUsed : stdgo.GoInt = 0;
    public function new(?_b:stdgo._internal.crypto.cipher.Cipher_Block.Block, ?_cipher:stdgo.Slice<stdgo.GoUInt8>, ?_out:stdgo.Slice<stdgo.GoUInt8>, ?_outUsed:stdgo.GoInt) {
        if (_b != null) this._b = _b;
        if (_cipher != null) this._cipher = _cipher;
        if (_out != null) this._out = _out;
        if (_outUsed != null) this._outUsed = _outUsed;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_ofb(_b, _cipher, _out, _outUsed);
    }
}
