package stdgo;
@:structInit @:using(stdgo.crypto.rc4.Rc4.Cipher_static_extension) abstract Cipher(stdgo._internal.crypto.rc4.Rc4_cipher.Cipher) from stdgo._internal.crypto.rc4.Rc4_cipher.Cipher to stdgo._internal.crypto.rc4.Rc4_cipher.Cipher {
    public var _s(get, set) : haxe.ds.Vector<std.UInt>;
    function get__s():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this._s) i]);
    function set__s(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this._s = ([for (i in v) (i : stdgo.GoUInt32)] : stdgo.GoArray<stdgo.GoUInt32>);
        return v;
    }
    public var _i(get, set) : std.UInt;
    function get__i():std.UInt return this._i;
    function set__i(v:std.UInt):std.UInt {
        this._i = (v : stdgo.GoUInt8);
        return v;
    }
    public var _j(get, set) : std.UInt;
    function get__j():std.UInt return this._j;
    function set__j(v:std.UInt):std.UInt {
        this._j = (v : stdgo.GoUInt8);
        return v;
    }
    public function new(?_s:haxe.ds.Vector<std.UInt>, ?_i:std.UInt, ?_j:std.UInt) this = new stdgo._internal.crypto.rc4.Rc4_cipher.Cipher(([for (i in _s) (i : stdgo.GoUInt32)] : stdgo.GoArray<stdgo.GoUInt32>), (_i : stdgo.GoUInt8), (_j : stdgo.GoUInt8));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
typedef KeySizeError = stdgo._internal.crypto.rc4.Rc4_keysizeerror.KeySizeError;
typedef CipherPointer = stdgo._internal.crypto.rc4.Rc4_cipherpointer.CipherPointer;
class Cipher_static_extension {
    static public function xORKeyStream(_c:Cipher, _dst:Array<std.UInt>, _src:Array<std.UInt>):Void {
        final _c = (_c : stdgo.Ref<stdgo._internal.crypto.rc4.Rc4_cipher.Cipher>);
        final _dst = ([for (i in _dst) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _src = ([for (i in _src) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        stdgo._internal.crypto.rc4.Rc4_cipher_static_extension.Cipher_static_extension.xORKeyStream(_c, _dst, _src);
    }
    static public function reset(_c:Cipher):Void {
        final _c = (_c : stdgo.Ref<stdgo._internal.crypto.rc4.Rc4_cipher.Cipher>);
        stdgo._internal.crypto.rc4.Rc4_cipher_static_extension.Cipher_static_extension.reset(_c);
    }
}
typedef KeySizeErrorPointer = stdgo._internal.crypto.rc4.Rc4_keysizeerrorpointer.KeySizeErrorPointer;
class KeySizeError_static_extension {
    static public function error(_k:KeySizeError):String {
        return stdgo._internal.crypto.rc4.Rc4_keysizeerror_static_extension.KeySizeError_static_extension.error(_k);
    }
}
/**
    * Package rc4 implements RC4 encryption, as defined in Bruce Schneier's
    * Applied Cryptography.
    * 
    * RC4 is cryptographically broken and should not be used for secure
    * applications.
**/
class Rc4 {
    /**
        * NewCipher creates and returns a new Cipher. The key argument should be the
        * RC4 key, at least 1 byte and at most 256 bytes.
    **/
    static public inline function newCipher(_key:Array<std.UInt>):stdgo.Tuple<Cipher, stdgo.Error> {
        final _key = ([for (i in _key) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.crypto.rc4.Rc4_newcipher.newCipher(_key);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
