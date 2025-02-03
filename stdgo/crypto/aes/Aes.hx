package stdgo.crypto.aes;
final blockSize : haxe.UInt64 = stdgo._internal.crypto.aes.Aes_blockSize.blockSize;
class T_gcmAble_static_extension {
    static public function newGCM(t:stdgo._internal.crypto.aes.Aes_T_gcmAble.T_gcmAble, _nonceSize:StdTypes.Int, _tagSize:StdTypes.Int):stdgo.Tuple<stdgo._internal.crypto.cipher.Cipher_AEAD.AEAD, stdgo.Error> {
        final _nonceSize = (_nonceSize : stdgo.GoInt);
        final _tagSize = (_tagSize : stdgo.GoInt);
        return {
            final obj = stdgo._internal.crypto.aes.Aes_T_gcmAble_static_extension.T_gcmAble_static_extension.newGCM(t, _nonceSize, _tagSize);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
typedef T_gcmAble = stdgo._internal.crypto.aes.Aes_T_gcmAble.T_gcmAble;
class T_cbcEncAble_static_extension {
    static public function newCBCEncrypter(t:stdgo._internal.crypto.aes.Aes_T_cbcEncAble.T_cbcEncAble, _iv:Array<std.UInt>):stdgo._internal.crypto.cipher.Cipher_BlockMode.BlockMode {
        final _iv = ([for (i in _iv) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.crypto.aes.Aes_T_cbcEncAble_static_extension.T_cbcEncAble_static_extension.newCBCEncrypter(t, _iv);
    }
}
typedef T_cbcEncAble = stdgo._internal.crypto.aes.Aes_T_cbcEncAble.T_cbcEncAble;
class T_cbcDecAble_static_extension {
    static public function newCBCDecrypter(t:stdgo._internal.crypto.aes.Aes_T_cbcDecAble.T_cbcDecAble, _iv:Array<std.UInt>):stdgo._internal.crypto.cipher.Cipher_BlockMode.BlockMode {
        final _iv = ([for (i in _iv) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.crypto.aes.Aes_T_cbcDecAble_static_extension.T_cbcDecAble_static_extension.newCBCDecrypter(t, _iv);
    }
}
typedef T_cbcDecAble = stdgo._internal.crypto.aes.Aes_T_cbcDecAble.T_cbcDecAble;
class T_ctrAble_static_extension {
    static public function newCTR(t:stdgo._internal.crypto.aes.Aes_T_ctrAble.T_ctrAble, _iv:Array<std.UInt>):stdgo._internal.crypto.cipher.Cipher_Stream.Stream {
        final _iv = ([for (i in _iv) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.crypto.aes.Aes_T_ctrAble_static_extension.T_ctrAble_static_extension.newCTR(t, _iv);
    }
}
typedef T_ctrAble = stdgo._internal.crypto.aes.Aes_T_ctrAble.T_ctrAble;
@:structInit @:using(stdgo.crypto.aes.Aes.T_aesCipher_static_extension) abstract T_aesCipher(stdgo._internal.crypto.aes.Aes_T_aesCipher.T_aesCipher) from stdgo._internal.crypto.aes.Aes_T_aesCipher.T_aesCipher to stdgo._internal.crypto.aes.Aes_T_aesCipher.T_aesCipher {
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
    public function new(?_enc:Array<std.UInt>, ?_dec:Array<std.UInt>) this = new stdgo._internal.crypto.aes.Aes_T_aesCipher.T_aesCipher(([for (i in _enc) (i : stdgo.GoUInt32)] : stdgo.Slice<stdgo.GoUInt32>), ([for (i in _dec) (i : stdgo.GoUInt32)] : stdgo.Slice<stdgo.GoUInt32>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
typedef KeySizeError = stdgo._internal.crypto.aes.Aes_KeySizeError.KeySizeError;
typedef T_aesCipherPointer = stdgo._internal.crypto.aes.Aes_T_aesCipherPointer.T_aesCipherPointer;
class T_aesCipher_static_extension {
    static public function decrypt(_c:T_aesCipher, _dst:Array<std.UInt>, _src:Array<std.UInt>):Void {
        final _c = (_c : stdgo.Ref<stdgo._internal.crypto.aes.Aes_T_aesCipher.T_aesCipher>);
        final _dst = ([for (i in _dst) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _src = ([for (i in _src) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        stdgo._internal.crypto.aes.Aes_T_aesCipher_static_extension.T_aesCipher_static_extension.decrypt(_c, _dst, _src);
    }
    static public function encrypt(_c:T_aesCipher, _dst:Array<std.UInt>, _src:Array<std.UInt>):Void {
        final _c = (_c : stdgo.Ref<stdgo._internal.crypto.aes.Aes_T_aesCipher.T_aesCipher>);
        final _dst = ([for (i in _dst) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _src = ([for (i in _src) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        stdgo._internal.crypto.aes.Aes_T_aesCipher_static_extension.T_aesCipher_static_extension.encrypt(_c, _dst, _src);
    }
    static public function blockSize(_c:T_aesCipher):StdTypes.Int {
        final _c = (_c : stdgo.Ref<stdgo._internal.crypto.aes.Aes_T_aesCipher.T_aesCipher>);
        return stdgo._internal.crypto.aes.Aes_T_aesCipher_static_extension.T_aesCipher_static_extension.blockSize(_c);
    }
}
typedef KeySizeErrorPointer = stdgo._internal.crypto.aes.Aes_KeySizeErrorPointer.KeySizeErrorPointer;
class KeySizeError_static_extension {
    static public function error(_k:KeySizeError):String {
        return stdgo._internal.crypto.aes.Aes_KeySizeError_static_extension.KeySizeError_static_extension.error(_k);
    }
}
/**
    Package aes implements AES encryption (formerly Rijndael), as defined in
    U.S. Federal Information Processing Standards Publication 197.
    
    The AES operations in this package are not implemented using constant-time algorithms.
    An exception is when running on systems with enabled hardware support for AES
    that makes these operations constant-time. Examples include amd64 systems using AES-NI
    extensions and s390x systems using Message-Security-Assist extensions.
    On such systems, when the result of NewCipher is passed to cipher.NewGCM,
    the GHASH operation used by GCM is also constant-time.
**/
class Aes {
    /**
        NewCipher creates and returns a new cipher.Block.
        The key argument should be the AES key,
        either 16, 24, or 32 bytes to select
        AES-128, AES-192, or AES-256.
    **/
    static public inline function newCipher(_key:Array<std.UInt>):stdgo.Tuple<stdgo._internal.crypto.cipher.Cipher_Block.Block, stdgo.Error> {
        final _key = ([for (i in _key) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.crypto.aes.Aes_newCipher.newCipher(_key);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
