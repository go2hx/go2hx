package stdgo.crypto.internal.boring;

import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;

/**
	// Package boring provides access to BoringCrypto implementation functions.
	// Check the constant Enabled to find out whether BoringCrypto is available.
	// If BoringCrypto is not available, the functions in this package all panic.
**/
private var __go2hxdoc__package:Bool;

/**
	// Enabled reports whether BoringCrypto is available.
	// When enabled is false, all functions in this package panic.
	//
	// BoringCrypto is only available on linux/amd64 systems.
**/
final enabled:InvalidType = false;

private final _available:InvalidType = false;
final randReader:T_randReader = (0 : T_randReader);

@:structInit class PublicKeyECDSA {
	@:optional
	public var _1:GoInt = 0;

	public function new(?_1:GoInt) {
		if (_1 != null)
			this._1 = _1;
	}

	public function __underlying__()
		return Go.toInterface(this);

	public function __copy__() {
		return new PublicKeyECDSA(_1);
	}
}

@:structInit class PrivateKeyECDSA {
	@:optional
	public var _2:GoInt = 0;

	public function new(?_2:GoInt) {
		if (_2 != null)
			this._2 = _2;
	}

	public function __underlying__()
		return Go.toInterface(this);

	public function __copy__() {
		return new PrivateKeyECDSA(_2);
	}
}

@:structInit class PublicKeyRSA {
	@:optional
	public var _3:GoInt = 0;

	public function new(?_3:GoInt) {
		if (_3 != null)
			this._3 = _3;
	}

	public function __underlying__()
		return Go.toInterface(this);

	public function __copy__() {
		return new PublicKeyRSA(_3);
	}
}

@:structInit class PrivateKeyRSA {
	@:optional
	public var _4:GoInt = 0;

	public function new(?_4:GoInt) {
		if (_4 != null)
			this._4 = _4;
	}

	public function __underlying__()
		return Go.toInterface(this);

	public function __copy__() {
		return new PrivateKeyRSA(_4);
	}
}

/**
	// A BigInt is the raw words from a BigInt.
	// This definition allows us to avoid importing math/big.
	// Conversion between BigInt and *big.Int is in crypto/internal/boring/bbig.
**/
@:named typedef BigInt = Slice<GoUInt>;

@:named @:using(crypto.internal.boring.Boring.T_randReader_static_extension) private typedef T_randReader = GoInt;

/**
	// Unreachable marks code that should be unreachable
	// when BoringCrypto is in use. It is a no-op without BoringCrypto.
**/
function unreachable():Void {
	crypto.internal.boring.sig.Sig.standardCrypto();
}

/**
	// UnreachableExceptTests marks code that should be unreachable
	// when BoringCrypto is in use. It is a no-op without BoringCrypto.
**/
function unreachableExceptTests():Void {}

function newSHA1():stdgo.hash.Hash.Hash {
	throw Go.toInterface(("boringcrypto: not available" : GoString));
}

function newSHA224():stdgo.hash.Hash.Hash {
	throw Go.toInterface(("boringcrypto: not available" : GoString));
}

function newSHA256():stdgo.hash.Hash.Hash {
	throw Go.toInterface(("boringcrypto: not available" : GoString));
}

function newSHA384():stdgo.hash.Hash.Hash {
	throw Go.toInterface(("boringcrypto: not available" : GoString));
}

function newSHA512():stdgo.hash.Hash.Hash {
	throw Go.toInterface(("boringcrypto: not available" : GoString));
}

function sha1(_0:Slice<GoByte>):GoArray<GoByte> {
	throw Go.toInterface(("boringcrypto: not available" : GoString));
}

function sha224(_0:Slice<GoByte>):GoArray<GoByte> {
	throw Go.toInterface(("boringcrypto: not available" : GoString));
}

function sha256(_0:Slice<GoByte>):GoArray<GoByte> {
	throw Go.toInterface(("boringcrypto: not available" : GoString));
}

function sha384(_0:Slice<GoByte>):GoArray<GoByte> {
	throw Go.toInterface(("boringcrypto: not available" : GoString));
}

function sha512(_0:Slice<GoByte>):GoArray<GoByte> {
	throw Go.toInterface(("boringcrypto: not available" : GoString));
}

function newHMAC(_h:() -> stdgo.hash.Hash.Hash, _key:Slice<GoByte>):stdgo.hash.Hash.Hash {
	throw Go.toInterface(("boringcrypto: not available" : GoString));
}

function newAESCipher(_key:Slice<GoByte>):{var _0:stdgo.crypto.cipher.Cipher.Block; var _1:Error;} {
	throw Go.toInterface(("boringcrypto: not available" : GoString));
}

function newGCMTLS(_0:stdgo.crypto.cipher.Cipher.Block):{var _0:stdgo.crypto.cipher.Cipher.AEAD; var _1:Error;} {
	throw Go.toInterface(("boringcrypto: not available" : GoString));
}

function generateKeyECDSA(_curve:GoString):{
	var _0:BigInt;
	var _1:BigInt;
	var _2:BigInt;
	var _3:Error;
} {
	var x:BigInt = new BigInt(0, 0),
		y:BigInt = new BigInt(0, 0),
		d:BigInt = new BigInt(0, 0),
		_err:Error = (null : Error);
	throw Go.toInterface(("boringcrypto: not available" : GoString));
}

function newPrivateKeyECDSA(_curve:GoString, x:BigInt, y:BigInt, d:BigInt):{var _0:Ref<PrivateKeyECDSA>; var _1:Error;} {
	throw Go.toInterface(("boringcrypto: not available" : GoString));
}

function newPublicKeyECDSA(_curve:GoString, x:BigInt, y:BigInt):{var _0:Ref<PublicKeyECDSA>; var _1:Error;} {
	throw Go.toInterface(("boringcrypto: not available" : GoString));
}

function signMarshalECDSA(_priv:Ref<PrivateKeyECDSA>, _hash:Slice<GoByte>):{var _0:Slice<GoByte>; var _1:Error;} {
	throw Go.toInterface(("boringcrypto: not available" : GoString));
}

function verifyECDSA(_pub:Ref<PublicKeyECDSA>, _hash:Slice<GoByte>, _sig:Slice<GoByte>):Bool {
	throw Go.toInterface(("boringcrypto: not available" : GoString));
}

function decryptRSAOAEP(_h:stdgo.hash.Hash.Hash, _priv:Ref<PrivateKeyRSA>, _ciphertext:Slice<GoByte>,
		_label:Slice<GoByte>):{var _0:Slice<GoByte>; var _1:Error;} {
	throw Go.toInterface(("boringcrypto: not available" : GoString));
}

function decryptRSAPKCS1(_priv:Ref<PrivateKeyRSA>, _ciphertext:Slice<GoByte>):{var _0:Slice<GoByte>; var _1:Error;} {
	throw Go.toInterface(("boringcrypto: not available" : GoString));
}

function decryptRSANoPadding(_priv:Ref<PrivateKeyRSA>, _ciphertext:Slice<GoByte>):{var _0:Slice<GoByte>; var _1:Error;} {
	throw Go.toInterface(("boringcrypto: not available" : GoString));
}

function encryptRSAOAEP(_h:stdgo.hash.Hash.Hash, _pub:Ref<PublicKeyRSA>, _msg:Slice<GoByte>, _label:Slice<GoByte>):{var _0:Slice<GoByte>; var _1:Error;} {
	throw Go.toInterface(("boringcrypto: not available" : GoString));
}

function encryptRSAPKCS1(_pub:Ref<PublicKeyRSA>, _msg:Slice<GoByte>):{var _0:Slice<GoByte>; var _1:Error;} {
	throw Go.toInterface(("boringcrypto: not available" : GoString));
}

function encryptRSANoPadding(_pub:Ref<PublicKeyRSA>, _msg:Slice<GoByte>):{var _0:Slice<GoByte>; var _1:Error;} {
	throw Go.toInterface(("boringcrypto: not available" : GoString));
}

function generateKeyRSA(_bits:GoInt):{
	var _0:BigInt;
	var _1:BigInt;
	var _2:BigInt;
	var _3:BigInt;
	var _4:BigInt;
	var _5:BigInt;
	var _6:BigInt;
	var _7:BigInt;
	var _8:Error;
} {
	var n:BigInt = new BigInt(0, 0),
		e:BigInt = new BigInt(0, 0),
		d:BigInt = new BigInt(0, 0),
		p:BigInt = new BigInt(0, 0),
		q:BigInt = new BigInt(0, 0),
		dp:BigInt = new BigInt(0, 0),
		dq:BigInt = new BigInt(0, 0),
		qinv:BigInt = new BigInt(0, 0),
		_err:Error = (null : Error);
	throw Go.toInterface(("boringcrypto: not available" : GoString));
}

function newPrivateKeyRSA(n:BigInt, e:BigInt, d:BigInt, p:BigInt, q:BigInt, dp:BigInt, dq:BigInt, qinv:BigInt):{var _0:Ref<PrivateKeyRSA>; var _1:Error;} {
	throw Go.toInterface(("boringcrypto: not available" : GoString));
}

function newPublicKeyRSA(n:BigInt, e:BigInt):{var _0:Ref<PublicKeyRSA>; var _1:Error;} {
	throw Go.toInterface(("boringcrypto: not available" : GoString));
}

function signRSAPKCS1v15(_priv:Ref<PrivateKeyRSA>, _h:stdgo.crypto.Crypto.Hash, _hashed:Slice<GoByte>):{var _0:Slice<GoByte>; var _1:Error;} {
	throw Go.toInterface(("boringcrypto: not available" : GoString));
}

function signRSAPSS(_priv:Ref<PrivateKeyRSA>, _h:stdgo.crypto.Crypto.Hash, _hashed:Slice<GoByte>, _saltLen:GoInt):{var _0:Slice<GoByte>; var _1:Error;} {
	throw Go.toInterface(("boringcrypto: not available" : GoString));
}

function verifyRSAPKCS1v15(_pub:Ref<PublicKeyRSA>, _h:stdgo.crypto.Crypto.Hash, _hashed:Slice<GoByte>, _sig:Slice<GoByte>):Error {
	throw Go.toInterface(("boringcrypto: not available" : GoString));
}

function verifyRSAPSS(_pub:Ref<PublicKeyRSA>, _h:stdgo.crypto.Crypto.Hash, _hashed:Slice<GoByte>, _sig:Slice<GoByte>, _saltLen:GoInt):Error {
	throw Go.toInterface(("boringcrypto: not available" : GoString));
}

class T_randReader_asInterface {
	@:keep
	public function read(_b:Slice<GoByte>):{var _0:GoInt; var _1:Error;}
		return __self__.value.read(_b);

	public function new(__self__, __type__) {
		this.__self__ = __self__;
		this.__type__ = __type__;
	}

	public function __underlying__()
		return new AnyInterface((__type__.kind() == stdgo.reflect.Reflect.ptr
			&& !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic),
			__type__);

	var __self__:Pointer<T_randReader>;
	var __type__:stdgo.internal.reflect.Reflect._Type;
}

@:keep @:allow(crypto.internal.boring.Boring.T_randReader_asInterface) class T_randReader_static_extension {
	@:keep
	static public function read(_:T_randReader, _b:Slice<GoByte>):{var _0:GoInt; var _1:Error;} {
		throw Go.toInterface(("boringcrypto: not available" : GoString));
	}
}
