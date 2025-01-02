package stdgo.crypto.internal.boring;
final enabled : Bool = stdgo._internal.crypto.internal.boring.Boring_enabled.enabled;
final randReader : T_randReader = stdgo._internal.crypto.internal.boring.Boring_randReader.randReader;
@:structInit abstract PublicKeyECDSA(stdgo._internal.crypto.internal.boring.Boring_PublicKeyECDSA.PublicKeyECDSA) from stdgo._internal.crypto.internal.boring.Boring_PublicKeyECDSA.PublicKeyECDSA to stdgo._internal.crypto.internal.boring.Boring_PublicKeyECDSA.PublicKeyECDSA {
    public var __1(get, set) : StdTypes.Int;
    function get___1():StdTypes.Int return this.__1;
    function set___1(v:StdTypes.Int):StdTypes.Int {
        this.__1 = v;
        return v;
    }
    public function new(?__1:StdTypes.Int) this = new stdgo._internal.crypto.internal.boring.Boring_PublicKeyECDSA.PublicKeyECDSA(__1);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract PrivateKeyECDSA(stdgo._internal.crypto.internal.boring.Boring_PrivateKeyECDSA.PrivateKeyECDSA) from stdgo._internal.crypto.internal.boring.Boring_PrivateKeyECDSA.PrivateKeyECDSA to stdgo._internal.crypto.internal.boring.Boring_PrivateKeyECDSA.PrivateKeyECDSA {
    public var __2(get, set) : StdTypes.Int;
    function get___2():StdTypes.Int return this.__2;
    function set___2(v:StdTypes.Int):StdTypes.Int {
        this.__2 = v;
        return v;
    }
    public function new(?__2:StdTypes.Int) this = new stdgo._internal.crypto.internal.boring.Boring_PrivateKeyECDSA.PrivateKeyECDSA(__2);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract PublicKeyRSA(stdgo._internal.crypto.internal.boring.Boring_PublicKeyRSA.PublicKeyRSA) from stdgo._internal.crypto.internal.boring.Boring_PublicKeyRSA.PublicKeyRSA to stdgo._internal.crypto.internal.boring.Boring_PublicKeyRSA.PublicKeyRSA {
    public var __3(get, set) : StdTypes.Int;
    function get___3():StdTypes.Int return this.__3;
    function set___3(v:StdTypes.Int):StdTypes.Int {
        this.__3 = v;
        return v;
    }
    public function new(?__3:StdTypes.Int) this = new stdgo._internal.crypto.internal.boring.Boring_PublicKeyRSA.PublicKeyRSA(__3);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract PrivateKeyRSA(stdgo._internal.crypto.internal.boring.Boring_PrivateKeyRSA.PrivateKeyRSA) from stdgo._internal.crypto.internal.boring.Boring_PrivateKeyRSA.PrivateKeyRSA to stdgo._internal.crypto.internal.boring.Boring_PrivateKeyRSA.PrivateKeyRSA {
    public var __4(get, set) : StdTypes.Int;
    function get___4():StdTypes.Int return this.__4;
    function set___4(v:StdTypes.Int):StdTypes.Int {
        this.__4 = v;
        return v;
    }
    public function new(?__4:StdTypes.Int) this = new stdgo._internal.crypto.internal.boring.Boring_PrivateKeyRSA.PrivateKeyRSA(__4);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.crypto.internal.boring.Boring.PublicKeyECDH_static_extension) abstract PublicKeyECDH(stdgo._internal.crypto.internal.boring.Boring_PublicKeyECDH.PublicKeyECDH) from stdgo._internal.crypto.internal.boring.Boring_PublicKeyECDH.PublicKeyECDH to stdgo._internal.crypto.internal.boring.Boring_PublicKeyECDH.PublicKeyECDH {
    public function new() this = new stdgo._internal.crypto.internal.boring.Boring_PublicKeyECDH.PublicKeyECDH();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.crypto.internal.boring.Boring.PrivateKeyECDH_static_extension) abstract PrivateKeyECDH(stdgo._internal.crypto.internal.boring.Boring_PrivateKeyECDH.PrivateKeyECDH) from stdgo._internal.crypto.internal.boring.Boring_PrivateKeyECDH.PrivateKeyECDH to stdgo._internal.crypto.internal.boring.Boring_PrivateKeyECDH.PrivateKeyECDH {
    public function new() this = new stdgo._internal.crypto.internal.boring.Boring_PrivateKeyECDH.PrivateKeyECDH();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
typedef BigInt = stdgo._internal.crypto.internal.boring.Boring_BigInt.BigInt;
typedef T_randReader = stdgo._internal.crypto.internal.boring.Boring_T_randReader.T_randReader;
typedef PublicKeyECDHPointer = stdgo._internal.crypto.internal.boring.Boring_PublicKeyECDHPointer.PublicKeyECDHPointer;
class PublicKeyECDH_static_extension {
    static public function bytes(_:PublicKeyECDH):Array<std.UInt> {
        return [for (i in stdgo._internal.crypto.internal.boring.Boring_PublicKeyECDH_static_extension.PublicKeyECDH_static_extension.bytes(_)) i];
    }
}
typedef PrivateKeyECDHPointer = stdgo._internal.crypto.internal.boring.Boring_PrivateKeyECDHPointer.PrivateKeyECDHPointer;
class PrivateKeyECDH_static_extension {
    static public function publicKey(_:PrivateKeyECDH):stdgo.Tuple<PublicKeyECDH, stdgo.Error> {
        return {
            final obj = stdgo._internal.crypto.internal.boring.Boring_PrivateKeyECDH_static_extension.PrivateKeyECDH_static_extension.publicKey(_);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
typedef T_randReaderPointer = stdgo._internal.crypto.internal.boring.Boring_T_randReaderPointer.T_randReaderPointer;
class T_randReader_static_extension {
    static public function read(_:T_randReader, _b:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _b = ([for (i in _b) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.crypto.internal.boring.Boring_T_randReader_static_extension.T_randReader_static_extension.read(_, _b);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
/**
    Package boring provides access to BoringCrypto implementation functions.
    Check the constant Enabled to find out whether BoringCrypto is available.
    If BoringCrypto is not available, the functions in this package all panic.
**/
class Boring {
    /**
        Unreachable marks code that should be unreachable
        when BoringCrypto is in use. It is a no-op without BoringCrypto.
    **/
    static public function unreachable():Void {
        stdgo._internal.crypto.internal.boring.Boring_unreachable.unreachable();
    }
    /**
        UnreachableExceptTests marks code that should be unreachable
        when BoringCrypto is in use. It is a no-op without BoringCrypto.
    **/
    static public function unreachableExceptTests():Void {
        stdgo._internal.crypto.internal.boring.Boring_unreachableExceptTests.unreachableExceptTests();
    }
    static public function newSHA1():stdgo._internal.hash.Hash_Hash.Hash {
        return stdgo._internal.crypto.internal.boring.Boring_newSHA1.newSHA1();
    }
    static public function newSHA224():stdgo._internal.hash.Hash_Hash.Hash {
        return stdgo._internal.crypto.internal.boring.Boring_newSHA224.newSHA224();
    }
    static public function newSHA256():stdgo._internal.hash.Hash_Hash.Hash {
        return stdgo._internal.crypto.internal.boring.Boring_newSHA256.newSHA256();
    }
    static public function newSHA384():stdgo._internal.hash.Hash_Hash.Hash {
        return stdgo._internal.crypto.internal.boring.Boring_newSHA384.newSHA384();
    }
    static public function newSHA512():stdgo._internal.hash.Hash_Hash.Hash {
        return stdgo._internal.crypto.internal.boring.Boring_newSHA512.newSHA512();
    }
    static public function sHA1(_0:Array<std.UInt>):haxe.ds.Vector<std.UInt> {
        final _0 = ([for (i in _0) i] : stdgo.Slice<stdgo.GoUInt8>);
        return haxe.ds.Vector.fromArrayCopy([for (i in stdgo._internal.crypto.internal.boring.Boring_sHA1.sHA1(_0)) i]);
    }
    static public function sHA224(_0:Array<std.UInt>):haxe.ds.Vector<std.UInt> {
        final _0 = ([for (i in _0) i] : stdgo.Slice<stdgo.GoUInt8>);
        return haxe.ds.Vector.fromArrayCopy([for (i in stdgo._internal.crypto.internal.boring.Boring_sHA224.sHA224(_0)) i]);
    }
    static public function sHA256(_0:Array<std.UInt>):haxe.ds.Vector<std.UInt> {
        final _0 = ([for (i in _0) i] : stdgo.Slice<stdgo.GoUInt8>);
        return haxe.ds.Vector.fromArrayCopy([for (i in stdgo._internal.crypto.internal.boring.Boring_sHA256.sHA256(_0)) i]);
    }
    static public function sHA384(_0:Array<std.UInt>):haxe.ds.Vector<std.UInt> {
        final _0 = ([for (i in _0) i] : stdgo.Slice<stdgo.GoUInt8>);
        return haxe.ds.Vector.fromArrayCopy([for (i in stdgo._internal.crypto.internal.boring.Boring_sHA384.sHA384(_0)) i]);
    }
    static public function sHA512(_0:Array<std.UInt>):haxe.ds.Vector<std.UInt> {
        final _0 = ([for (i in _0) i] : stdgo.Slice<stdgo.GoUInt8>);
        return haxe.ds.Vector.fromArrayCopy([for (i in stdgo._internal.crypto.internal.boring.Boring_sHA512.sHA512(_0)) i]);
    }
    static public function newHMAC(_h:() -> stdgo._internal.hash.Hash_Hash.Hash, _key:Array<std.UInt>):stdgo._internal.hash.Hash_Hash.Hash {
        final _h = _h;
        final _key = ([for (i in _key) i] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.crypto.internal.boring.Boring_newHMAC.newHMAC(_h, _key);
    }
    static public function newAESCipher(_key:Array<std.UInt>):stdgo.Tuple<stdgo._internal.crypto.cipher.Cipher_Block.Block, stdgo.Error> {
        final _key = ([for (i in _key) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.crypto.internal.boring.Boring_newAESCipher.newAESCipher(_key);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function newGCMTLS(_0:stdgo._internal.crypto.cipher.Cipher_Block.Block):stdgo.Tuple<stdgo._internal.crypto.cipher.Cipher_AEAD.AEAD, stdgo.Error> {
        return {
            final obj = stdgo._internal.crypto.internal.boring.Boring_newGCMTLS.newGCMTLS(_0);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function generateKeyECDSA(_curve:String):stdgo.Tuple.Tuple4<BigInt, BigInt, BigInt, stdgo.Error> {
        return {
            final obj = stdgo._internal.crypto.internal.boring.Boring_generateKeyECDSA.generateKeyECDSA(_curve);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2, _3 : obj._3 };
        };
    }
    static public function newPrivateKeyECDSA(_curve:String, x:BigInt, y:BigInt, d:BigInt):stdgo.Tuple<PrivateKeyECDSA, stdgo.Error> {
        return {
            final obj = stdgo._internal.crypto.internal.boring.Boring_newPrivateKeyECDSA.newPrivateKeyECDSA(_curve, x, y, d);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function newPublicKeyECDSA(_curve:String, x:BigInt, y:BigInt):stdgo.Tuple<PublicKeyECDSA, stdgo.Error> {
        return {
            final obj = stdgo._internal.crypto.internal.boring.Boring_newPublicKeyECDSA.newPublicKeyECDSA(_curve, x, y);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function signMarshalECDSA(_priv:PrivateKeyECDSA, _hash:Array<std.UInt>):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _hash = ([for (i in _hash) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.crypto.internal.boring.Boring_signMarshalECDSA.signMarshalECDSA(_priv, _hash);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function verifyECDSA(_pub:PublicKeyECDSA, _hash:Array<std.UInt>, _sig:Array<std.UInt>):Bool {
        final _hash = ([for (i in _hash) i] : stdgo.Slice<stdgo.GoUInt8>);
        final _sig = ([for (i in _sig) i] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.crypto.internal.boring.Boring_verifyECDSA.verifyECDSA(_pub, _hash, _sig);
    }
    static public function decryptRSAOAEP(_h:stdgo._internal.hash.Hash_Hash.Hash, _mgfHash:stdgo._internal.hash.Hash_Hash.Hash, _priv:PrivateKeyRSA, _ciphertext:Array<std.UInt>, _label:Array<std.UInt>):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _ciphertext = ([for (i in _ciphertext) i] : stdgo.Slice<stdgo.GoUInt8>);
        final _label = ([for (i in _label) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.crypto.internal.boring.Boring_decryptRSAOAEP.decryptRSAOAEP(_h, _mgfHash, _priv, _ciphertext, _label);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function decryptRSAPKCS1(_priv:PrivateKeyRSA, _ciphertext:Array<std.UInt>):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _ciphertext = ([for (i in _ciphertext) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.crypto.internal.boring.Boring_decryptRSAPKCS1.decryptRSAPKCS1(_priv, _ciphertext);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function decryptRSANoPadding(_priv:PrivateKeyRSA, _ciphertext:Array<std.UInt>):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _ciphertext = ([for (i in _ciphertext) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.crypto.internal.boring.Boring_decryptRSANoPadding.decryptRSANoPadding(_priv, _ciphertext);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function encryptRSAOAEP(_h:stdgo._internal.hash.Hash_Hash.Hash, _mgfHash:stdgo._internal.hash.Hash_Hash.Hash, _pub:PublicKeyRSA, _msg:Array<std.UInt>, _label:Array<std.UInt>):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _msg = ([for (i in _msg) i] : stdgo.Slice<stdgo.GoUInt8>);
        final _label = ([for (i in _label) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.crypto.internal.boring.Boring_encryptRSAOAEP.encryptRSAOAEP(_h, _mgfHash, _pub, _msg, _label);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function encryptRSAPKCS1(_pub:PublicKeyRSA, _msg:Array<std.UInt>):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _msg = ([for (i in _msg) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.crypto.internal.boring.Boring_encryptRSAPKCS1.encryptRSAPKCS1(_pub, _msg);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function encryptRSANoPadding(_pub:PublicKeyRSA, _msg:Array<std.UInt>):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _msg = ([for (i in _msg) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.crypto.internal.boring.Boring_encryptRSANoPadding.encryptRSANoPadding(_pub, _msg);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function generateKeyRSA(_bits:StdTypes.Int):{ var _0 : BigInt; var _1 : BigInt; var _2 : BigInt; var _3 : BigInt; var _4 : BigInt; var _5 : BigInt; var _6 : BigInt; var _7 : BigInt; var _8 : stdgo.Error; } {
        return {
            final obj = stdgo._internal.crypto.internal.boring.Boring_generateKeyRSA.generateKeyRSA(_bits);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2, _3 : obj._3, _4 : obj._4, _5 : obj._5, _6 : obj._6, _7 : obj._7, _8 : obj._8 };
        };
    }
    static public function newPrivateKeyRSA(n:BigInt, e:BigInt, d:BigInt, p:BigInt, q:BigInt, dp:BigInt, dq:BigInt, qinv:BigInt):stdgo.Tuple<PrivateKeyRSA, stdgo.Error> {
        return {
            final obj = stdgo._internal.crypto.internal.boring.Boring_newPrivateKeyRSA.newPrivateKeyRSA(n, e, d, p, q, dp, dq, qinv);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function newPublicKeyRSA(n:BigInt, e:BigInt):stdgo.Tuple<PublicKeyRSA, stdgo.Error> {
        return {
            final obj = stdgo._internal.crypto.internal.boring.Boring_newPublicKeyRSA.newPublicKeyRSA(n, e);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function signRSAPKCS1v15(_priv:PrivateKeyRSA, _h:stdgo._internal.crypto.Crypto_Hash.Hash, _hashed:Array<std.UInt>):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _hashed = ([for (i in _hashed) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.crypto.internal.boring.Boring_signRSAPKCS1v15.signRSAPKCS1v15(_priv, _h, _hashed);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function signRSAPSS(_priv:PrivateKeyRSA, _h:stdgo._internal.crypto.Crypto_Hash.Hash, _hashed:Array<std.UInt>, _saltLen:StdTypes.Int):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _hashed = ([for (i in _hashed) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.crypto.internal.boring.Boring_signRSAPSS.signRSAPSS(_priv, _h, _hashed, _saltLen);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function verifyRSAPKCS1v15(_pub:PublicKeyRSA, _h:stdgo._internal.crypto.Crypto_Hash.Hash, _hashed:Array<std.UInt>, _sig:Array<std.UInt>):stdgo.Error {
        final _hashed = ([for (i in _hashed) i] : stdgo.Slice<stdgo.GoUInt8>);
        final _sig = ([for (i in _sig) i] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.crypto.internal.boring.Boring_verifyRSAPKCS1v15.verifyRSAPKCS1v15(_pub, _h, _hashed, _sig);
    }
    static public function verifyRSAPSS(_pub:PublicKeyRSA, _h:stdgo._internal.crypto.Crypto_Hash.Hash, _hashed:Array<std.UInt>, _sig:Array<std.UInt>, _saltLen:StdTypes.Int):stdgo.Error {
        final _hashed = ([for (i in _hashed) i] : stdgo.Slice<stdgo.GoUInt8>);
        final _sig = ([for (i in _sig) i] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.crypto.internal.boring.Boring_verifyRSAPSS.verifyRSAPSS(_pub, _h, _hashed, _sig, _saltLen);
    }
    static public function eCDH(_0:PrivateKeyECDH, _1:PublicKeyECDH):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        return {
            final obj = stdgo._internal.crypto.internal.boring.Boring_eCDH.eCDH(_0, _1);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function generateKeyECDH(_0:String):stdgo.Tuple.Tuple3<PrivateKeyECDH, Array<std.UInt>, stdgo.Error> {
        return {
            final obj = stdgo._internal.crypto.internal.boring.Boring_generateKeyECDH.generateKeyECDH(_0);
            { _0 : obj._0, _1 : [for (i in obj._1) i], _2 : obj._2 };
        };
    }
    static public function newPrivateKeyECDH(_0:String, _1:Array<std.UInt>):stdgo.Tuple<PrivateKeyECDH, stdgo.Error> {
        final _1 = ([for (i in _1) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.crypto.internal.boring.Boring_newPrivateKeyECDH.newPrivateKeyECDH(_0, _1);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function newPublicKeyECDH(_0:String, _1:Array<std.UInt>):stdgo.Tuple<PublicKeyECDH, stdgo.Error> {
        final _1 = ([for (i in _1) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.crypto.internal.boring.Boring_newPublicKeyECDH.newPublicKeyECDH(_0, _1);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
