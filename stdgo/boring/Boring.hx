package stdgo.boring;
final enabled : Bool = stdgo._internal.crypto.internal.boring.Boring_enabled.enabled;
final randReader : T_randReader = stdgo._internal.crypto.internal.boring.Boring_randreader.randReader;
@:structInit @:using(stdgo.crypto.internal.boring.Boring.PublicKeyECDSA_static_extension) abstract PublicKeyECDSA(stdgo._internal.crypto.internal.boring.Boring_publickeyecdsa.PublicKeyECDSA) from stdgo._internal.crypto.internal.boring.Boring_publickeyecdsa.PublicKeyECDSA to stdgo._internal.crypto.internal.boring.Boring_publickeyecdsa.PublicKeyECDSA {
    public var __1(get, set) : StdTypes.Int;
    function get___1():StdTypes.Int return this.__1;
    function set___1(v:StdTypes.Int):StdTypes.Int {
        this.__1 = (v : stdgo.GoInt);
        return v;
    }
    public function new(?__1:StdTypes.Int) this = new stdgo._internal.crypto.internal.boring.Boring_publickeyecdsa.PublicKeyECDSA((__1 : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.crypto.internal.boring.Boring.PrivateKeyECDSA_static_extension) abstract PrivateKeyECDSA(stdgo._internal.crypto.internal.boring.Boring_privatekeyecdsa.PrivateKeyECDSA) from stdgo._internal.crypto.internal.boring.Boring_privatekeyecdsa.PrivateKeyECDSA to stdgo._internal.crypto.internal.boring.Boring_privatekeyecdsa.PrivateKeyECDSA {
    public var __2(get, set) : StdTypes.Int;
    function get___2():StdTypes.Int return this.__2;
    function set___2(v:StdTypes.Int):StdTypes.Int {
        this.__2 = (v : stdgo.GoInt);
        return v;
    }
    public function new(?__2:StdTypes.Int) this = new stdgo._internal.crypto.internal.boring.Boring_privatekeyecdsa.PrivateKeyECDSA((__2 : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.crypto.internal.boring.Boring.PublicKeyRSA_static_extension) abstract PublicKeyRSA(stdgo._internal.crypto.internal.boring.Boring_publickeyrsa.PublicKeyRSA) from stdgo._internal.crypto.internal.boring.Boring_publickeyrsa.PublicKeyRSA to stdgo._internal.crypto.internal.boring.Boring_publickeyrsa.PublicKeyRSA {
    public var __3(get, set) : StdTypes.Int;
    function get___3():StdTypes.Int return this.__3;
    function set___3(v:StdTypes.Int):StdTypes.Int {
        this.__3 = (v : stdgo.GoInt);
        return v;
    }
    public function new(?__3:StdTypes.Int) this = new stdgo._internal.crypto.internal.boring.Boring_publickeyrsa.PublicKeyRSA((__3 : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.crypto.internal.boring.Boring.PrivateKeyRSA_static_extension) abstract PrivateKeyRSA(stdgo._internal.crypto.internal.boring.Boring_privatekeyrsa.PrivateKeyRSA) from stdgo._internal.crypto.internal.boring.Boring_privatekeyrsa.PrivateKeyRSA to stdgo._internal.crypto.internal.boring.Boring_privatekeyrsa.PrivateKeyRSA {
    public var __4(get, set) : StdTypes.Int;
    function get___4():StdTypes.Int return this.__4;
    function set___4(v:StdTypes.Int):StdTypes.Int {
        this.__4 = (v : stdgo.GoInt);
        return v;
    }
    public function new(?__4:StdTypes.Int) this = new stdgo._internal.crypto.internal.boring.Boring_privatekeyrsa.PrivateKeyRSA((__4 : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.crypto.internal.boring.Boring.PublicKeyECDH_static_extension) abstract PublicKeyECDH(stdgo._internal.crypto.internal.boring.Boring_publickeyecdh.PublicKeyECDH) from stdgo._internal.crypto.internal.boring.Boring_publickeyecdh.PublicKeyECDH to stdgo._internal.crypto.internal.boring.Boring_publickeyecdh.PublicKeyECDH {
    public function new() this = new stdgo._internal.crypto.internal.boring.Boring_publickeyecdh.PublicKeyECDH();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.crypto.internal.boring.Boring.PrivateKeyECDH_static_extension) abstract PrivateKeyECDH(stdgo._internal.crypto.internal.boring.Boring_privatekeyecdh.PrivateKeyECDH) from stdgo._internal.crypto.internal.boring.Boring_privatekeyecdh.PrivateKeyECDH to stdgo._internal.crypto.internal.boring.Boring_privatekeyecdh.PrivateKeyECDH {
    public function new() this = new stdgo._internal.crypto.internal.boring.Boring_privatekeyecdh.PrivateKeyECDH();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
typedef BigInt = stdgo._internal.crypto.internal.boring.Boring_bigint.BigInt;
@:dox(hide) typedef T_randReader = stdgo._internal.crypto.internal.boring.Boring_t_randreader.T_randReader;
typedef PublicKeyECDSAPointer = stdgo._internal.crypto.internal.boring.Boring_publickeyecdsapointer.PublicKeyECDSAPointer;
class PublicKeyECDSA_static_extension {

}
typedef PrivateKeyECDSAPointer = stdgo._internal.crypto.internal.boring.Boring_privatekeyecdsapointer.PrivateKeyECDSAPointer;
class PrivateKeyECDSA_static_extension {

}
typedef PublicKeyRSAPointer = stdgo._internal.crypto.internal.boring.Boring_publickeyrsapointer.PublicKeyRSAPointer;
class PublicKeyRSA_static_extension {

}
typedef PrivateKeyRSAPointer = stdgo._internal.crypto.internal.boring.Boring_privatekeyrsapointer.PrivateKeyRSAPointer;
class PrivateKeyRSA_static_extension {

}
typedef PublicKeyECDHPointer = stdgo._internal.crypto.internal.boring.Boring_publickeyecdhpointer.PublicKeyECDHPointer;
class PublicKeyECDH_static_extension {
    static public function bytes(_:PublicKeyECDH):Array<std.UInt> {
        final _ = (_ : stdgo.Ref<stdgo._internal.crypto.internal.boring.Boring_publickeyecdh.PublicKeyECDH>);
        return [for (i in stdgo._internal.crypto.internal.boring.Boring_publickeyecdh_static_extension.PublicKeyECDH_static_extension.bytes(_)) i];
    }
}
typedef PrivateKeyECDHPointer = stdgo._internal.crypto.internal.boring.Boring_privatekeyecdhpointer.PrivateKeyECDHPointer;
class PrivateKeyECDH_static_extension {
    static public function publicKey(_:PrivateKeyECDH):stdgo.Tuple<PublicKeyECDH, stdgo.Error> {
        final _ = (_ : stdgo.Ref<stdgo._internal.crypto.internal.boring.Boring_privatekeyecdh.PrivateKeyECDH>);
        return {
            final obj = stdgo._internal.crypto.internal.boring.Boring_privatekeyecdh_static_extension.PrivateKeyECDH_static_extension.publicKey(_);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
typedef BigIntPointer = stdgo._internal.crypto.internal.boring.Boring_bigintpointer.BigIntPointer;
class BigInt_static_extension {

}
@:dox(hide) typedef T_randReaderPointer = stdgo._internal.crypto.internal.boring.Boring_t_randreaderpointer.T_randReaderPointer;
@:dox(hide) class T_randReader_static_extension {
    static public function read(_:T_randReader, _b:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.crypto.internal.boring.Boring_t_randreader_static_extension.T_randReader_static_extension.read(_, _b);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
/**
    * Package boring provides access to BoringCrypto implementation functions.
    * Check the constant Enabled to find out whether BoringCrypto is available.
    * If BoringCrypto is not available, the functions in this package all panic.
**/
class Boring {
    /**
        * Unreachable marks code that should be unreachable
        * when BoringCrypto is in use. It is a no-op without BoringCrypto.
    **/
    static public inline function unreachable():Void {
        stdgo._internal.crypto.internal.boring.Boring_unreachable.unreachable();
    }
    /**
        * UnreachableExceptTests marks code that should be unreachable
        * when BoringCrypto is in use. It is a no-op without BoringCrypto.
    **/
    static public inline function unreachableExceptTests():Void {
        stdgo._internal.crypto.internal.boring.Boring_unreachableexcepttests.unreachableExceptTests();
    }
    static public inline function newSHA1():stdgo._internal.hash.Hash_hash.Hash {
        return stdgo._internal.crypto.internal.boring.Boring_newsha1.newSHA1();
    }
    static public inline function newSHA224():stdgo._internal.hash.Hash_hash.Hash {
        return stdgo._internal.crypto.internal.boring.Boring_newsha224.newSHA224();
    }
    static public inline function newSHA256():stdgo._internal.hash.Hash_hash.Hash {
        return stdgo._internal.crypto.internal.boring.Boring_newsha256.newSHA256();
    }
    static public inline function newSHA384():stdgo._internal.hash.Hash_hash.Hash {
        return stdgo._internal.crypto.internal.boring.Boring_newsha384.newSHA384();
    }
    static public inline function newSHA512():stdgo._internal.hash.Hash_hash.Hash {
        return stdgo._internal.crypto.internal.boring.Boring_newsha512.newSHA512();
    }
    static public inline function sHA1(_0:Array<std.UInt>):haxe.ds.Vector<std.UInt> {
        final _0 = ([for (i in _0) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return haxe.ds.Vector.fromArrayCopy([for (i in stdgo._internal.crypto.internal.boring.Boring_sha1.sHA1(_0)) i]);
    }
    static public inline function sHA224(_0:Array<std.UInt>):haxe.ds.Vector<std.UInt> {
        final _0 = ([for (i in _0) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return haxe.ds.Vector.fromArrayCopy([for (i in stdgo._internal.crypto.internal.boring.Boring_sha224.sHA224(_0)) i]);
    }
    static public inline function sHA256(_0:Array<std.UInt>):haxe.ds.Vector<std.UInt> {
        final _0 = ([for (i in _0) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return haxe.ds.Vector.fromArrayCopy([for (i in stdgo._internal.crypto.internal.boring.Boring_sha256.sHA256(_0)) i]);
    }
    static public inline function sHA384(_0:Array<std.UInt>):haxe.ds.Vector<std.UInt> {
        final _0 = ([for (i in _0) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return haxe.ds.Vector.fromArrayCopy([for (i in stdgo._internal.crypto.internal.boring.Boring_sha384.sHA384(_0)) i]);
    }
    static public inline function sHA512(_0:Array<std.UInt>):haxe.ds.Vector<std.UInt> {
        final _0 = ([for (i in _0) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return haxe.ds.Vector.fromArrayCopy([for (i in stdgo._internal.crypto.internal.boring.Boring_sha512.sHA512(_0)) i]);
    }
    static public inline function newHMAC(_h:() -> stdgo._internal.hash.Hash_hash.Hash, _key:Array<std.UInt>):stdgo._internal.hash.Hash_hash.Hash {
        final _h = _h;
        final _key = ([for (i in _key) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.crypto.internal.boring.Boring_newhmac.newHMAC(_h, _key);
    }
    static public inline function newAESCipher(_key:Array<std.UInt>):stdgo.Tuple<stdgo._internal.crypto.cipher.Cipher_block.Block, stdgo.Error> {
        final _key = ([for (i in _key) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.crypto.internal.boring.Boring_newaescipher.newAESCipher(_key);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public inline function newGCMTLS(_0:stdgo._internal.crypto.cipher.Cipher_block.Block):stdgo.Tuple<stdgo._internal.crypto.cipher.Cipher_aead.AEAD, stdgo.Error> {
        return {
            final obj = stdgo._internal.crypto.internal.boring.Boring_newgcmtls.newGCMTLS(_0);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public inline function generateKeyECDSA(_curve:String):stdgo.Tuple.Tuple4<BigInt, BigInt, BigInt, stdgo.Error> {
        final _curve = (_curve : stdgo.GoString);
        return {
            final obj = stdgo._internal.crypto.internal.boring.Boring_generatekeyecdsa.generateKeyECDSA(_curve);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2, _3 : obj._3 };
        };
    }
    static public inline function newPrivateKeyECDSA(_curve:String, x:BigInt, y:BigInt, d:BigInt):stdgo.Tuple<PrivateKeyECDSA, stdgo.Error> {
        final _curve = (_curve : stdgo.GoString);
        return {
            final obj = stdgo._internal.crypto.internal.boring.Boring_newprivatekeyecdsa.newPrivateKeyECDSA(_curve, x, y, d);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public inline function newPublicKeyECDSA(_curve:String, x:BigInt, y:BigInt):stdgo.Tuple<PublicKeyECDSA, stdgo.Error> {
        final _curve = (_curve : stdgo.GoString);
        return {
            final obj = stdgo._internal.crypto.internal.boring.Boring_newpublickeyecdsa.newPublicKeyECDSA(_curve, x, y);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public inline function signMarshalECDSA(_priv:PrivateKeyECDSA, _hash:Array<std.UInt>):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _priv = (_priv : stdgo.Ref<stdgo._internal.crypto.internal.boring.Boring_privatekeyecdsa.PrivateKeyECDSA>);
        final _hash = ([for (i in _hash) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.crypto.internal.boring.Boring_signmarshalecdsa.signMarshalECDSA(_priv, _hash);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public inline function verifyECDSA(_pub:PublicKeyECDSA, _hash:Array<std.UInt>, _sig:Array<std.UInt>):Bool {
        final _pub = (_pub : stdgo.Ref<stdgo._internal.crypto.internal.boring.Boring_publickeyecdsa.PublicKeyECDSA>);
        final _hash = ([for (i in _hash) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _sig = ([for (i in _sig) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.crypto.internal.boring.Boring_verifyecdsa.verifyECDSA(_pub, _hash, _sig);
    }
    static public inline function decryptRSAOAEP(_h:stdgo._internal.hash.Hash_hash.Hash, _mgfHash:stdgo._internal.hash.Hash_hash.Hash, _priv:PrivateKeyRSA, _ciphertext:Array<std.UInt>, _label:Array<std.UInt>):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _priv = (_priv : stdgo.Ref<stdgo._internal.crypto.internal.boring.Boring_privatekeyrsa.PrivateKeyRSA>);
        final _ciphertext = ([for (i in _ciphertext) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _label = ([for (i in _label) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.crypto.internal.boring.Boring_decryptrsaoaep.decryptRSAOAEP(_h, _mgfHash, _priv, _ciphertext, _label);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public inline function decryptRSAPKCS1(_priv:PrivateKeyRSA, _ciphertext:Array<std.UInt>):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _priv = (_priv : stdgo.Ref<stdgo._internal.crypto.internal.boring.Boring_privatekeyrsa.PrivateKeyRSA>);
        final _ciphertext = ([for (i in _ciphertext) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.crypto.internal.boring.Boring_decryptrsapkcs1.decryptRSAPKCS1(_priv, _ciphertext);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public inline function decryptRSANoPadding(_priv:PrivateKeyRSA, _ciphertext:Array<std.UInt>):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _priv = (_priv : stdgo.Ref<stdgo._internal.crypto.internal.boring.Boring_privatekeyrsa.PrivateKeyRSA>);
        final _ciphertext = ([for (i in _ciphertext) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.crypto.internal.boring.Boring_decryptrsanopadding.decryptRSANoPadding(_priv, _ciphertext);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public inline function encryptRSAOAEP(_h:stdgo._internal.hash.Hash_hash.Hash, _mgfHash:stdgo._internal.hash.Hash_hash.Hash, _pub:PublicKeyRSA, _msg:Array<std.UInt>, _label:Array<std.UInt>):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _pub = (_pub : stdgo.Ref<stdgo._internal.crypto.internal.boring.Boring_publickeyrsa.PublicKeyRSA>);
        final _msg = ([for (i in _msg) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _label = ([for (i in _label) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.crypto.internal.boring.Boring_encryptrsaoaep.encryptRSAOAEP(_h, _mgfHash, _pub, _msg, _label);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public inline function encryptRSAPKCS1(_pub:PublicKeyRSA, _msg:Array<std.UInt>):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _pub = (_pub : stdgo.Ref<stdgo._internal.crypto.internal.boring.Boring_publickeyrsa.PublicKeyRSA>);
        final _msg = ([for (i in _msg) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.crypto.internal.boring.Boring_encryptrsapkcs1.encryptRSAPKCS1(_pub, _msg);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public inline function encryptRSANoPadding(_pub:PublicKeyRSA, _msg:Array<std.UInt>):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _pub = (_pub : stdgo.Ref<stdgo._internal.crypto.internal.boring.Boring_publickeyrsa.PublicKeyRSA>);
        final _msg = ([for (i in _msg) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.crypto.internal.boring.Boring_encryptrsanopadding.encryptRSANoPadding(_pub, _msg);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public inline function generateKeyRSA(_bits:StdTypes.Int):{ var _0 : BigInt; var _1 : BigInt; var _2 : BigInt; var _3 : BigInt; var _4 : BigInt; var _5 : BigInt; var _6 : BigInt; var _7 : BigInt; var _8 : stdgo.Error; } {
        final _bits = (_bits : stdgo.GoInt);
        return {
            final obj = stdgo._internal.crypto.internal.boring.Boring_generatekeyrsa.generateKeyRSA(_bits);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2, _3 : obj._3, _4 : obj._4, _5 : obj._5, _6 : obj._6, _7 : obj._7, _8 : obj._8 };
        };
    }
    static public inline function newPrivateKeyRSA(n:BigInt, e:BigInt, d:BigInt, p:BigInt, q:BigInt, dp:BigInt, dq:BigInt, qinv:BigInt):stdgo.Tuple<PrivateKeyRSA, stdgo.Error> {
        return {
            final obj = stdgo._internal.crypto.internal.boring.Boring_newprivatekeyrsa.newPrivateKeyRSA(n, e, d, p, q, dp, dq, qinv);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public inline function newPublicKeyRSA(n:BigInt, e:BigInt):stdgo.Tuple<PublicKeyRSA, stdgo.Error> {
        return {
            final obj = stdgo._internal.crypto.internal.boring.Boring_newpublickeyrsa.newPublicKeyRSA(n, e);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public inline function signRSAPKCS1v15(_priv:PrivateKeyRSA, _h:stdgo._internal.crypto.Crypto_hash.Hash, _hashed:Array<std.UInt>):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _priv = (_priv : stdgo.Ref<stdgo._internal.crypto.internal.boring.Boring_privatekeyrsa.PrivateKeyRSA>);
        final _hashed = ([for (i in _hashed) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.crypto.internal.boring.Boring_signrsapkcs1v15.signRSAPKCS1v15(_priv, _h, _hashed);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public inline function signRSAPSS(_priv:PrivateKeyRSA, _h:stdgo._internal.crypto.Crypto_hash.Hash, _hashed:Array<std.UInt>, _saltLen:StdTypes.Int):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _priv = (_priv : stdgo.Ref<stdgo._internal.crypto.internal.boring.Boring_privatekeyrsa.PrivateKeyRSA>);
        final _hashed = ([for (i in _hashed) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _saltLen = (_saltLen : stdgo.GoInt);
        return {
            final obj = stdgo._internal.crypto.internal.boring.Boring_signrsapss.signRSAPSS(_priv, _h, _hashed, _saltLen);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public inline function verifyRSAPKCS1v15(_pub:PublicKeyRSA, _h:stdgo._internal.crypto.Crypto_hash.Hash, _hashed:Array<std.UInt>, _sig:Array<std.UInt>):stdgo.Error {
        final _pub = (_pub : stdgo.Ref<stdgo._internal.crypto.internal.boring.Boring_publickeyrsa.PublicKeyRSA>);
        final _hashed = ([for (i in _hashed) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _sig = ([for (i in _sig) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.crypto.internal.boring.Boring_verifyrsapkcs1v15.verifyRSAPKCS1v15(_pub, _h, _hashed, _sig);
    }
    static public inline function verifyRSAPSS(_pub:PublicKeyRSA, _h:stdgo._internal.crypto.Crypto_hash.Hash, _hashed:Array<std.UInt>, _sig:Array<std.UInt>, _saltLen:StdTypes.Int):stdgo.Error {
        final _pub = (_pub : stdgo.Ref<stdgo._internal.crypto.internal.boring.Boring_publickeyrsa.PublicKeyRSA>);
        final _hashed = ([for (i in _hashed) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _sig = ([for (i in _sig) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _saltLen = (_saltLen : stdgo.GoInt);
        return stdgo._internal.crypto.internal.boring.Boring_verifyrsapss.verifyRSAPSS(_pub, _h, _hashed, _sig, _saltLen);
    }
    static public inline function eCDH(_0:PrivateKeyECDH, _1:PublicKeyECDH):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _0 = (_0 : stdgo.Ref<stdgo._internal.crypto.internal.boring.Boring_privatekeyecdh.PrivateKeyECDH>);
        final _1 = (_1 : stdgo.Ref<stdgo._internal.crypto.internal.boring.Boring_publickeyecdh.PublicKeyECDH>);
        return {
            final obj = stdgo._internal.crypto.internal.boring.Boring_ecdh.eCDH(_0, _1);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public inline function generateKeyECDH(_0:String):stdgo.Tuple.Tuple3<PrivateKeyECDH, Array<std.UInt>, stdgo.Error> {
        final _0 = (_0 : stdgo.GoString);
        return {
            final obj = stdgo._internal.crypto.internal.boring.Boring_generatekeyecdh.generateKeyECDH(_0);
            { _0 : obj._0, _1 : [for (i in obj._1) i], _2 : obj._2 };
        };
    }
    static public inline function newPrivateKeyECDH(_0:String, _1:Array<std.UInt>):stdgo.Tuple<PrivateKeyECDH, stdgo.Error> {
        final _0 = (_0 : stdgo.GoString);
        final _1 = ([for (i in _1) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.crypto.internal.boring.Boring_newprivatekeyecdh.newPrivateKeyECDH(_0, _1);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public inline function newPublicKeyECDH(_0:String, _1:Array<std.UInt>):stdgo.Tuple<PublicKeyECDH, stdgo.Error> {
        final _0 = (_0 : stdgo.GoString);
        final _1 = ([for (i in _1) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.crypto.internal.boring.Boring_newpublickeyecdh.newPublicKeyECDH(_0, _1);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
