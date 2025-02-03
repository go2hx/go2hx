package stdgo.crypto.internal.boring;
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
    static public inline function unreachable():Void {
        stdgo._internal.crypto.internal.boring.Boring_unreachable.unreachable();
    }
    /**
        UnreachableExceptTests marks code that should be unreachable
        when BoringCrypto is in use. It is a no-op without BoringCrypto.
    **/
    static public inline function unreachableExceptTests():Void {
        stdgo._internal.crypto.internal.boring.Boring_unreachableExceptTests.unreachableExceptTests();
    }
    static public inline function newSHA1():stdgo._internal.hash.Hash_Hash.Hash {
        return stdgo._internal.crypto.internal.boring.Boring_newSHA1.newSHA1();
    }
    static public inline function newSHA224():stdgo._internal.hash.Hash_Hash.Hash {
        return stdgo._internal.crypto.internal.boring.Boring_newSHA224.newSHA224();
    }
    static public inline function newSHA256():stdgo._internal.hash.Hash_Hash.Hash {
        return stdgo._internal.crypto.internal.boring.Boring_newSHA256.newSHA256();
    }
    static public inline function newSHA384():stdgo._internal.hash.Hash_Hash.Hash {
        return stdgo._internal.crypto.internal.boring.Boring_newSHA384.newSHA384();
    }
    static public inline function newSHA512():stdgo._internal.hash.Hash_Hash.Hash {
        return stdgo._internal.crypto.internal.boring.Boring_newSHA512.newSHA512();
    }
    static public inline function sHA1(_0:Array<std.UInt>):haxe.ds.Vector<std.UInt> {
        final _0 = ([for (i in _0) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return haxe.ds.Vector.fromArrayCopy([for (i in stdgo._internal.crypto.internal.boring.Boring_sHA1.sHA1(_0)) i]);
    }
    static public inline function sHA224(_0:Array<std.UInt>):haxe.ds.Vector<std.UInt> {
        final _0 = ([for (i in _0) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return haxe.ds.Vector.fromArrayCopy([for (i in stdgo._internal.crypto.internal.boring.Boring_sHA224.sHA224(_0)) i]);
    }
    static public inline function sHA256(_0:Array<std.UInt>):haxe.ds.Vector<std.UInt> {
        final _0 = ([for (i in _0) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return haxe.ds.Vector.fromArrayCopy([for (i in stdgo._internal.crypto.internal.boring.Boring_sHA256.sHA256(_0)) i]);
    }
    static public inline function sHA384(_0:Array<std.UInt>):haxe.ds.Vector<std.UInt> {
        final _0 = ([for (i in _0) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return haxe.ds.Vector.fromArrayCopy([for (i in stdgo._internal.crypto.internal.boring.Boring_sHA384.sHA384(_0)) i]);
    }
    static public inline function sHA512(_0:Array<std.UInt>):haxe.ds.Vector<std.UInt> {
        final _0 = ([for (i in _0) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return haxe.ds.Vector.fromArrayCopy([for (i in stdgo._internal.crypto.internal.boring.Boring_sHA512.sHA512(_0)) i]);
    }
    static public inline function newHMAC(_h:() -> stdgo._internal.hash.Hash_Hash.Hash, _key:Array<std.UInt>):stdgo._internal.hash.Hash_Hash.Hash {
        final _h = _h;
        final _key = ([for (i in _key) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.crypto.internal.boring.Boring_newHMAC.newHMAC(_h, _key);
    }
    static public inline function newAESCipher(_key:Array<std.UInt>):stdgo.Tuple<stdgo._internal.crypto.cipher.Cipher_Block.Block, stdgo.Error> {
        final _key = ([for (i in _key) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.crypto.internal.boring.Boring_newAESCipher.newAESCipher(_key);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public inline function newGCMTLS(_0:stdgo._internal.crypto.cipher.Cipher_Block.Block):stdgo.Tuple<stdgo._internal.crypto.cipher.Cipher_AEAD.AEAD, stdgo.Error> {
        return {
            final obj = stdgo._internal.crypto.internal.boring.Boring_newGCMTLS.newGCMTLS(_0);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public inline function generateKeyECDSA(_curve:String):stdgo.Tuple.Tuple4<BigInt, BigInt, BigInt, stdgo.Error> {
        final _curve = (_curve : stdgo.GoString);
        return {
            final obj = stdgo._internal.crypto.internal.boring.Boring_generateKeyECDSA.generateKeyECDSA(_curve);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2, _3 : obj._3 };
        };
    }
    static public inline function newPrivateKeyECDSA(_curve:String, x:BigInt, y:BigInt, d:BigInt):stdgo.Tuple<PrivateKeyECDSA, stdgo.Error> {
        final _curve = (_curve : stdgo.GoString);
        return {
            final obj = stdgo._internal.crypto.internal.boring.Boring_newPrivateKeyECDSA.newPrivateKeyECDSA(_curve, x, y, d);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public inline function newPublicKeyECDSA(_curve:String, x:BigInt, y:BigInt):stdgo.Tuple<PublicKeyECDSA, stdgo.Error> {
        final _curve = (_curve : stdgo.GoString);
        return {
            final obj = stdgo._internal.crypto.internal.boring.Boring_newPublicKeyECDSA.newPublicKeyECDSA(_curve, x, y);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public inline function signMarshalECDSA(_priv:PrivateKeyECDSA, _hash:Array<std.UInt>):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _priv = (_priv : stdgo.Ref<stdgo._internal.crypto.internal.boring.Boring_PrivateKeyECDSA.PrivateKeyECDSA>);
        final _hash = ([for (i in _hash) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.crypto.internal.boring.Boring_signMarshalECDSA.signMarshalECDSA(_priv, _hash);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public inline function verifyECDSA(_pub:PublicKeyECDSA, _hash:Array<std.UInt>, _sig:Array<std.UInt>):Bool {
        final _pub = (_pub : stdgo.Ref<stdgo._internal.crypto.internal.boring.Boring_PublicKeyECDSA.PublicKeyECDSA>);
        final _hash = ([for (i in _hash) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _sig = ([for (i in _sig) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.crypto.internal.boring.Boring_verifyECDSA.verifyECDSA(_pub, _hash, _sig);
    }
    static public inline function decryptRSAOAEP(_h:stdgo._internal.hash.Hash_Hash.Hash, _mgfHash:stdgo._internal.hash.Hash_Hash.Hash, _priv:PrivateKeyRSA, _ciphertext:Array<std.UInt>, _label:Array<std.UInt>):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _priv = (_priv : stdgo.Ref<stdgo._internal.crypto.internal.boring.Boring_PrivateKeyRSA.PrivateKeyRSA>);
        final _ciphertext = ([for (i in _ciphertext) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _label = ([for (i in _label) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.crypto.internal.boring.Boring_decryptRSAOAEP.decryptRSAOAEP(_h, _mgfHash, _priv, _ciphertext, _label);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public inline function decryptRSAPKCS1(_priv:PrivateKeyRSA, _ciphertext:Array<std.UInt>):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _priv = (_priv : stdgo.Ref<stdgo._internal.crypto.internal.boring.Boring_PrivateKeyRSA.PrivateKeyRSA>);
        final _ciphertext = ([for (i in _ciphertext) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.crypto.internal.boring.Boring_decryptRSAPKCS1.decryptRSAPKCS1(_priv, _ciphertext);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public inline function decryptRSANoPadding(_priv:PrivateKeyRSA, _ciphertext:Array<std.UInt>):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _priv = (_priv : stdgo.Ref<stdgo._internal.crypto.internal.boring.Boring_PrivateKeyRSA.PrivateKeyRSA>);
        final _ciphertext = ([for (i in _ciphertext) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.crypto.internal.boring.Boring_decryptRSANoPadding.decryptRSANoPadding(_priv, _ciphertext);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public inline function encryptRSAOAEP(_h:stdgo._internal.hash.Hash_Hash.Hash, _mgfHash:stdgo._internal.hash.Hash_Hash.Hash, _pub:PublicKeyRSA, _msg:Array<std.UInt>, _label:Array<std.UInt>):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _pub = (_pub : stdgo.Ref<stdgo._internal.crypto.internal.boring.Boring_PublicKeyRSA.PublicKeyRSA>);
        final _msg = ([for (i in _msg) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _label = ([for (i in _label) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.crypto.internal.boring.Boring_encryptRSAOAEP.encryptRSAOAEP(_h, _mgfHash, _pub, _msg, _label);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public inline function encryptRSAPKCS1(_pub:PublicKeyRSA, _msg:Array<std.UInt>):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _pub = (_pub : stdgo.Ref<stdgo._internal.crypto.internal.boring.Boring_PublicKeyRSA.PublicKeyRSA>);
        final _msg = ([for (i in _msg) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.crypto.internal.boring.Boring_encryptRSAPKCS1.encryptRSAPKCS1(_pub, _msg);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public inline function encryptRSANoPadding(_pub:PublicKeyRSA, _msg:Array<std.UInt>):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _pub = (_pub : stdgo.Ref<stdgo._internal.crypto.internal.boring.Boring_PublicKeyRSA.PublicKeyRSA>);
        final _msg = ([for (i in _msg) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.crypto.internal.boring.Boring_encryptRSANoPadding.encryptRSANoPadding(_pub, _msg);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public inline function generateKeyRSA(_bits:StdTypes.Int):{ var _0 : BigInt; var _1 : BigInt; var _2 : BigInt; var _3 : BigInt; var _4 : BigInt; var _5 : BigInt; var _6 : BigInt; var _7 : BigInt; var _8 : stdgo.Error; } {
        final _bits = (_bits : stdgo.GoInt);
        return {
            final obj = stdgo._internal.crypto.internal.boring.Boring_generateKeyRSA.generateKeyRSA(_bits);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2, _3 : obj._3, _4 : obj._4, _5 : obj._5, _6 : obj._6, _7 : obj._7, _8 : obj._8 };
        };
    }
    static public inline function newPrivateKeyRSA(n:BigInt, e:BigInt, d:BigInt, p:BigInt, q:BigInt, dp:BigInt, dq:BigInt, qinv:BigInt):stdgo.Tuple<PrivateKeyRSA, stdgo.Error> {
        return {
            final obj = stdgo._internal.crypto.internal.boring.Boring_newPrivateKeyRSA.newPrivateKeyRSA(n, e, d, p, q, dp, dq, qinv);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public inline function newPublicKeyRSA(n:BigInt, e:BigInt):stdgo.Tuple<PublicKeyRSA, stdgo.Error> {
        return {
            final obj = stdgo._internal.crypto.internal.boring.Boring_newPublicKeyRSA.newPublicKeyRSA(n, e);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public inline function signRSAPKCS1v15(_priv:PrivateKeyRSA, _h:stdgo._internal.crypto.Crypto_Hash.Hash, _hashed:Array<std.UInt>):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _priv = (_priv : stdgo.Ref<stdgo._internal.crypto.internal.boring.Boring_PrivateKeyRSA.PrivateKeyRSA>);
        final _hashed = ([for (i in _hashed) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.crypto.internal.boring.Boring_signRSAPKCS1v15.signRSAPKCS1v15(_priv, _h, _hashed);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public inline function signRSAPSS(_priv:PrivateKeyRSA, _h:stdgo._internal.crypto.Crypto_Hash.Hash, _hashed:Array<std.UInt>, _saltLen:StdTypes.Int):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _priv = (_priv : stdgo.Ref<stdgo._internal.crypto.internal.boring.Boring_PrivateKeyRSA.PrivateKeyRSA>);
        final _hashed = ([for (i in _hashed) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _saltLen = (_saltLen : stdgo.GoInt);
        return {
            final obj = stdgo._internal.crypto.internal.boring.Boring_signRSAPSS.signRSAPSS(_priv, _h, _hashed, _saltLen);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public inline function verifyRSAPKCS1v15(_pub:PublicKeyRSA, _h:stdgo._internal.crypto.Crypto_Hash.Hash, _hashed:Array<std.UInt>, _sig:Array<std.UInt>):stdgo.Error {
        final _pub = (_pub : stdgo.Ref<stdgo._internal.crypto.internal.boring.Boring_PublicKeyRSA.PublicKeyRSA>);
        final _hashed = ([for (i in _hashed) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _sig = ([for (i in _sig) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.crypto.internal.boring.Boring_verifyRSAPKCS1v15.verifyRSAPKCS1v15(_pub, _h, _hashed, _sig);
    }
    static public inline function verifyRSAPSS(_pub:PublicKeyRSA, _h:stdgo._internal.crypto.Crypto_Hash.Hash, _hashed:Array<std.UInt>, _sig:Array<std.UInt>, _saltLen:StdTypes.Int):stdgo.Error {
        final _pub = (_pub : stdgo.Ref<stdgo._internal.crypto.internal.boring.Boring_PublicKeyRSA.PublicKeyRSA>);
        final _hashed = ([for (i in _hashed) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _sig = ([for (i in _sig) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _saltLen = (_saltLen : stdgo.GoInt);
        return stdgo._internal.crypto.internal.boring.Boring_verifyRSAPSS.verifyRSAPSS(_pub, _h, _hashed, _sig, _saltLen);
    }
    static public inline function eCDH(_0:PrivateKeyECDH, _1:PublicKeyECDH):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _0 = (_0 : stdgo.Ref<stdgo._internal.crypto.internal.boring.Boring_PrivateKeyECDH.PrivateKeyECDH>);
        final _1 = (_1 : stdgo.Ref<stdgo._internal.crypto.internal.boring.Boring_PublicKeyECDH.PublicKeyECDH>);
        return {
            final obj = stdgo._internal.crypto.internal.boring.Boring_eCDH.eCDH(_0, _1);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public inline function generateKeyECDH(_0:String):stdgo.Tuple.Tuple3<PrivateKeyECDH, Array<std.UInt>, stdgo.Error> {
        final _0 = (_0 : stdgo.GoString);
        return {
            final obj = stdgo._internal.crypto.internal.boring.Boring_generateKeyECDH.generateKeyECDH(_0);
            { _0 : obj._0, _1 : [for (i in obj._1) i], _2 : obj._2 };
        };
    }
    static public inline function newPrivateKeyECDH(_0:String, _1:Array<std.UInt>):stdgo.Tuple<PrivateKeyECDH, stdgo.Error> {
        final _0 = (_0 : stdgo.GoString);
        final _1 = ([for (i in _1) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.crypto.internal.boring.Boring_newPrivateKeyECDH.newPrivateKeyECDH(_0, _1);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public inline function newPublicKeyECDH(_0:String, _1:Array<std.UInt>):stdgo.Tuple<PublicKeyECDH, stdgo.Error> {
        final _0 = (_0 : stdgo.GoString);
        final _1 = ([for (i in _1) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.crypto.internal.boring.Boring_newPublicKeyECDH.newPublicKeyECDH(_0, _1);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
