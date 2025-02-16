package stdgo;
final blockSize : haxe.UInt64 = stdgo._internal.crypto.aes.Aes_blocksize.blockSize;
@:dox(hide) class T_gcmAble_static_extension {
    static public function newGCM(t:stdgo._internal.crypto.aes.Aes_t_gcmable.T_gcmAble, _nonceSize:StdTypes.Int, _tagSize:StdTypes.Int):stdgo.Tuple<stdgo._internal.crypto.cipher.Cipher_aead.AEAD, stdgo.Error> {
        final _nonceSize = (_nonceSize : stdgo.GoInt);
        final _tagSize = (_tagSize : stdgo.GoInt);
        return {
            final obj = stdgo._internal.crypto.aes.Aes_t_gcmable_static_extension.T_gcmAble_static_extension.newGCM(t, _nonceSize, _tagSize);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
@:dox(hide) @:forward abstract T_gcmAble(stdgo._internal.crypto.aes.Aes_t_gcmable.T_gcmAble) from stdgo._internal.crypto.aes.Aes_t_gcmable.T_gcmAble to stdgo._internal.crypto.aes.Aes_t_gcmable.T_gcmAble {
    @:from
    static function fromHaxeInterface(x:{ function newGCM(_nonceSize:StdTypes.Int, _tagSize:StdTypes.Int):stdgo.Tuple<stdgo._internal.crypto.cipher.Cipher_aead.AEAD, stdgo.Error>; }):T_gcmAble {
        var __f__:Void -> stdgo.AnyInterface = null;
        final y:T_gcmAble = { newGCM : (_0, _1) -> x.newGCM(_0, _1), __underlying__ : () -> __f__() };
        __f__ = () -> stdgo.Go.toInterface(y);
        return y;
    }
}
@:dox(hide) class T_cbcEncAble_static_extension {
    static public function newCBCEncrypter(t:stdgo._internal.crypto.aes.Aes_t_cbcencable.T_cbcEncAble, _iv:Array<std.UInt>):stdgo._internal.crypto.cipher.Cipher_blockmode.BlockMode {
        final _iv = ([for (i in _iv) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.crypto.aes.Aes_t_cbcencable_static_extension.T_cbcEncAble_static_extension.newCBCEncrypter(t, _iv);
    }
}
@:dox(hide) @:forward abstract T_cbcEncAble(stdgo._internal.crypto.aes.Aes_t_cbcencable.T_cbcEncAble) from stdgo._internal.crypto.aes.Aes_t_cbcencable.T_cbcEncAble to stdgo._internal.crypto.aes.Aes_t_cbcencable.T_cbcEncAble {
    @:from
    static function fromHaxeInterface(x:{ function newCBCEncrypter(_iv:Array<std.UInt>):stdgo._internal.crypto.cipher.Cipher_blockmode.BlockMode; }):T_cbcEncAble {
        var __f__:Void -> stdgo.AnyInterface = null;
        final y:T_cbcEncAble = { newCBCEncrypter : _0 -> x.newCBCEncrypter([for (i in _0) i]), __underlying__ : () -> __f__() };
        __f__ = () -> stdgo.Go.toInterface(y);
        return y;
    }
}
@:dox(hide) class T_cbcDecAble_static_extension {
    static public function newCBCDecrypter(t:stdgo._internal.crypto.aes.Aes_t_cbcdecable.T_cbcDecAble, _iv:Array<std.UInt>):stdgo._internal.crypto.cipher.Cipher_blockmode.BlockMode {
        final _iv = ([for (i in _iv) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.crypto.aes.Aes_t_cbcdecable_static_extension.T_cbcDecAble_static_extension.newCBCDecrypter(t, _iv);
    }
}
@:dox(hide) @:forward abstract T_cbcDecAble(stdgo._internal.crypto.aes.Aes_t_cbcdecable.T_cbcDecAble) from stdgo._internal.crypto.aes.Aes_t_cbcdecable.T_cbcDecAble to stdgo._internal.crypto.aes.Aes_t_cbcdecable.T_cbcDecAble {
    @:from
    static function fromHaxeInterface(x:{ function newCBCDecrypter(_iv:Array<std.UInt>):stdgo._internal.crypto.cipher.Cipher_blockmode.BlockMode; }):T_cbcDecAble {
        var __f__:Void -> stdgo.AnyInterface = null;
        final y:T_cbcDecAble = { newCBCDecrypter : _0 -> x.newCBCDecrypter([for (i in _0) i]), __underlying__ : () -> __f__() };
        __f__ = () -> stdgo.Go.toInterface(y);
        return y;
    }
}
@:dox(hide) class T_ctrAble_static_extension {
    static public function newCTR(t:stdgo._internal.crypto.aes.Aes_t_ctrable.T_ctrAble, _iv:Array<std.UInt>):stdgo._internal.crypto.cipher.Cipher_stream.Stream {
        final _iv = ([for (i in _iv) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.crypto.aes.Aes_t_ctrable_static_extension.T_ctrAble_static_extension.newCTR(t, _iv);
    }
}
@:dox(hide) @:forward abstract T_ctrAble(stdgo._internal.crypto.aes.Aes_t_ctrable.T_ctrAble) from stdgo._internal.crypto.aes.Aes_t_ctrable.T_ctrAble to stdgo._internal.crypto.aes.Aes_t_ctrable.T_ctrAble {
    @:from
    static function fromHaxeInterface(x:{ function newCTR(_iv:Array<std.UInt>):stdgo._internal.crypto.cipher.Cipher_stream.Stream; }):T_ctrAble {
        var __f__:Void -> stdgo.AnyInterface = null;
        final y:T_ctrAble = { newCTR : _0 -> x.newCTR([for (i in _0) i]), __underlying__ : () -> __f__() };
        __f__ = () -> stdgo.Go.toInterface(y);
        return y;
    }
}
@:structInit @:using(stdgo.crypto.aes.Aes.T_aesCipher_static_extension) @:dox(hide) abstract T_aesCipher(stdgo._internal.crypto.aes.Aes_t_aescipher.T_aesCipher) from stdgo._internal.crypto.aes.Aes_t_aescipher.T_aesCipher to stdgo._internal.crypto.aes.Aes_t_aescipher.T_aesCipher {
    public var _enc(get, set) : Array<std.UInt>;
    function get__enc():Array<std.UInt> return [for (i in this._enc) i];
    function set__enc(v:Array<std.UInt>):Array<std.UInt> {
        this._enc = ([for (i in v) (i : stdgo.GoUInt32)] : stdgo.Slice<stdgo.GoUInt32>);
        return v;
    }
    public var _dec(get, set) : Array<std.UInt>;
    function get__dec():Array<std.UInt> return [for (i in this._dec) i];
    function set__dec(v:Array<std.UInt>):Array<std.UInt> {
        this._dec = ([for (i in v) (i : stdgo.GoUInt32)] : stdgo.Slice<stdgo.GoUInt32>);
        return v;
    }
    public function new(?_enc:Array<std.UInt>, ?_dec:Array<std.UInt>) this = new stdgo._internal.crypto.aes.Aes_t_aescipher.T_aesCipher(([for (i in _enc) (i : stdgo.GoUInt32)] : stdgo.Slice<stdgo.GoUInt32>), ([for (i in _dec) (i : stdgo.GoUInt32)] : stdgo.Slice<stdgo.GoUInt32>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
typedef KeySizeError = stdgo._internal.crypto.aes.Aes_keysizeerror.KeySizeError;
@:dox(hide) typedef T_aesCipherPointer = stdgo._internal.crypto.aes.Aes_t_aescipherpointer.T_aesCipherPointer;
@:dox(hide) class T_aesCipher_static_extension {
    static public function decrypt(_c:T_aesCipher, _dst:Array<std.UInt>, _src:Array<std.UInt>):Void {
        final _c = (_c : stdgo.Ref<stdgo._internal.crypto.aes.Aes_t_aescipher.T_aesCipher>);
        final _dst = ([for (i in _dst) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _src = ([for (i in _src) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        stdgo._internal.crypto.aes.Aes_t_aescipher_static_extension.T_aesCipher_static_extension.decrypt(_c, _dst, _src);
    }
    static public function encrypt(_c:T_aesCipher, _dst:Array<std.UInt>, _src:Array<std.UInt>):Void {
        final _c = (_c : stdgo.Ref<stdgo._internal.crypto.aes.Aes_t_aescipher.T_aesCipher>);
        final _dst = ([for (i in _dst) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _src = ([for (i in _src) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        stdgo._internal.crypto.aes.Aes_t_aescipher_static_extension.T_aesCipher_static_extension.encrypt(_c, _dst, _src);
    }
    static public function blockSize(_c:T_aesCipher):StdTypes.Int {
        final _c = (_c : stdgo.Ref<stdgo._internal.crypto.aes.Aes_t_aescipher.T_aesCipher>);
        return stdgo._internal.crypto.aes.Aes_t_aescipher_static_extension.T_aesCipher_static_extension.blockSize(_c);
    }
}
typedef KeySizeErrorPointer = stdgo._internal.crypto.aes.Aes_keysizeerrorpointer.KeySizeErrorPointer;
class KeySizeError_static_extension {
    static public function error(_k:KeySizeError):String {
        return stdgo._internal.crypto.aes.Aes_keysizeerror_static_extension.KeySizeError_static_extension.error(_k);
    }
}
/**
    * Package aes implements AES encryption (formerly Rijndael), as defined in
    * U.S. Federal Information Processing Standards Publication 197.
    * 
    * The AES operations in this package are not implemented using constant-time algorithms.
    * An exception is when running on systems with enabled hardware support for AES
    * that makes these operations constant-time. Examples include amd64 systems using AES-NI
    * extensions and s390x systems using Message-Security-Assist extensions.
    * On such systems, when the result of NewCipher is passed to cipher.NewGCM,
    * the GHASH operation used by GCM is also constant-time.
**/
class Aes {
    /**
        * NewCipher creates and returns a new cipher.Block.
        * The key argument should be the AES key,
        * either 16, 24, or 32 bytes to select
        * AES-128, AES-192, or AES-256.
    **/
    static public inline function newCipher(_key:Array<std.UInt>):stdgo.Tuple<stdgo._internal.crypto.cipher.Cipher_block.Block, stdgo.Error> {
        final _key = ([for (i in _key) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.crypto.aes.Aes_newcipher.newCipher(_key);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
