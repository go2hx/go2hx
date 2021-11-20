package stdgo.crypto.ed25519;
import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;
@:named class PublicKey {
    public function equal(_x:stdgo.crypto.Crypto.PublicKey):Bool {
        var _pub = this.__copy__();
        var __tmp__ = try {
            { value : new PublicKey(((_x.value : stdgo.crypto.Crypto.PublicKey))), ok : true };
        } catch(_) {
            { value : new PublicKey(), ok : false };
        }, _xx = __tmp__.value, _ok = __tmp__.ok;
        if (!_ok) {
            return false;
        };
        return stdgo.bytes.Bytes.equal(_pub.__copy__().__t__, _xx.__copy__().__t__);
    }
    public var __t__ : Slice<GoUInt8>;
    public function new(?t:Slice<GoUInt8>) {
        __t__ = t == null ? new Slice<GoUInt8>().nil() : t;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    @:implicit
    public function toString():GoString return Go.string(__t__);
    public function __copy__() return new PublicKey(__t__);
    public function __append__(args:haxe.Rest<GoUInt8>) return new PublicKey(this.__t__.__append__(...args));
    public function __slice__(low:GoInt, high:GoInt = -1) return new PublicKey(this.__t__.__slice__(low, high));
}
@:named class PrivateKey {
    public function sign(_rand:stdgo.io.Io.Reader, _message:Slice<GoByte>, _opts:stdgo.crypto.Crypto.SignerOpts):{ var _0 : Slice<GoByte>; var _1 : Error; } {
        var _priv = this.__copy__();
        var _signature:Slice<GoByte> = new Slice<GoUInt8>().nil(), _err:Error = ((null : stdgo.Error));
        if (_opts.hashFunc().__t__ != new stdgo.crypto.Crypto.Hash(((0 : GoUInt))).__t__) {
            return { _0 : new Slice<GoUInt8>().nil(), _1 : stdgo.errors.Errors.new_("ed25519: cannot sign hashed message") };
        };
        return { _0 : Ed25519.sign(_priv.__copy__(), _message), _1 : ((null : stdgo.Error)) };
    }
    public function seed():Slice<GoByte> {
        var _priv = this.__copy__();
        var _seed:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((seedSize : GoInt)).toBasic()) ((0 : GoUInt8))]);
        Go.copy(_seed, _priv.__slice__(0, ((32 : GoInt))));
        return _seed;
    }
    public function equal(_x:stdgo.crypto.Crypto.PrivateKey):Bool {
        var _priv = this.__copy__();
        var __tmp__ = try {
            { value : new PrivateKey(((_x.value : stdgo.crypto.Crypto.PrivateKey))), ok : true };
        } catch(_) {
            { value : new PrivateKey(), ok : false };
        }, _xx = __tmp__.value, _ok = __tmp__.ok;
        if (!_ok) {
            return false;
        };
        return stdgo.bytes.Bytes.equal(_priv.__copy__().__t__, _xx.__copy__().__t__);
    }
    public function public_():stdgo.crypto.Crypto.PublicKey {
        var _priv = this.__copy__();
        var _publicKey:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((publicKeySize : GoInt)).toBasic()) ((0 : GoUInt8))]);
        Go.copy(_publicKey, _priv.__slice__(((32 : GoInt))));
        return Go.toInterface(new PublicKey(_publicKey).__copy__());
    }
    public var __t__ : Slice<GoUInt8>;
    public function new(?t:Slice<GoUInt8>) {
        __t__ = t == null ? new Slice<GoUInt8>().nil() : t;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    @:implicit
    public function toString():GoString return Go.string(__t__);
    public function __copy__() return new PrivateKey(__t__);
    public function __append__(args:haxe.Rest<GoUInt8>) return new PrivateKey(this.__t__.__append__(...args));
    public function __slice__(low:GoInt, high:GoInt = -1) return new PrivateKey(this.__t__.__slice__(low, high));
}
final publicKeySize : GoInt64 = ((32 : GoUnTypedInt));
final privateKeySize : GoInt64 = ((64 : GoUnTypedInt));
final seedSize : GoInt64 = ((32 : GoUnTypedInt));
final signatureSize : GoInt64 = ((64 : GoUnTypedInt));
/**
    // GenerateKey generates a public/private key pair using entropy from rand.
    // If rand is nil, crypto/rand.Reader will be used.
**/
function generateKey(_rand:stdgo.io.Io.Reader):{ var _0 : PublicKey; var _1 : PrivateKey; var _2 : Error; } {
        if (_rand == null) {
            _rand = stdgo.crypto.rand.Rand.reader;
        };
        var _seed:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((seedSize : GoInt)).toBasic()) ((0 : GoUInt8))]);
        {
            var __tmp__ = stdgo.io.Io.readFull(_rand, _seed), _:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return { _0 : new PublicKey(), _1 : new PrivateKey(), _2 : _err };
            };
        };
        var _privateKey:PrivateKey = newKeyFromSeed(_seed).__copy__();
        var _publicKey:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((publicKeySize : GoInt)).toBasic()) ((0 : GoUInt8))]);
        Go.copy(_publicKey, _privateKey.__slice__(((32 : GoInt))));
        return { _0 : new PublicKey(_publicKey), _1 : _privateKey.__copy__(), _2 : ((null : stdgo.Error)) };
    }
/**
    // NewKeyFromSeed calculates a private key from a seed. It will panic if
    // len(seed) is not SeedSize. This function is provided for interoperability
    // with RFC 8032. RFC 8032's private keys correspond to seeds in this
    // package.
**/
function newKeyFromSeed(_seed:Slice<GoByte>):PrivateKey {
        var _privateKey:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((privateKeySize : GoInt)).toBasic()) ((0 : GoUInt8))]);
        _newKeyFromSeed(_privateKey, _seed);
        return new PrivateKey(_privateKey);
    }
function _newKeyFromSeed(_privateKey:Slice<GoByte>, _seed:Slice<GoByte>):Void {
        {
            var _l:GoInt = _seed.length;
            if (_l != seedSize) {
                throw (("ed25519: bad seed length: " : GoString)) + stdgo.strconv.Strconv.itoa(_l);
            };
        };
        var _h:GoArray<GoUInt8> = stdgo.crypto.sha512.Sha512.sum512(_seed).copy();
        var _s:Pointer<crypto.ed25519.internal.edwards25519.Edwards25519.Scalar> = crypto.ed25519.internal.edwards25519.Edwards25519.newScalar().value.setBytesWithClamping(_h.__slice__(0, ((32 : GoInt))));
        var a:Pointer<crypto.ed25519.internal.edwards25519.Edwards25519.Point> = (Go.pointer(new crypto.ed25519.internal.edwards25519.Edwards25519.Point())).value.scalarBaseMult(_s);
        var _publicKey:Slice<GoUInt8> = a.value.bytes();
        Go.copy(_privateKey, _seed);
        Go.copy(_privateKey.__slice__(((32 : GoInt))), _publicKey);
    }
/**
    // Sign signs the message with privateKey and returns a signature. It will
    // panic if len(privateKey) is not PrivateKeySize.
**/
function sign(_privateKey:PrivateKey, _message:Slice<GoByte>):Slice<GoByte> {
        var _signature:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((signatureSize : GoInt)).toBasic()) ((0 : GoUInt8))]);
        _sign(_signature, _privateKey.__copy__().__t__, _message);
        return _signature;
    }
function _sign(_signature:Slice<GoByte>, _privateKey:Slice<GoByte>, _message:Slice<GoByte>):Void {
        {
            var _l:GoInt = _privateKey.length;
            if (_l != privateKeySize) {
                throw (("ed25519: bad private key length: " : GoString)) + stdgo.strconv.Strconv.itoa(_l);
            };
        };
        var _seed:Slice<GoUInt8> = _privateKey.__slice__(0, seedSize), _publicKey:Slice<GoUInt8> = _privateKey.__slice__(seedSize);
        var _h:GoArray<GoUInt8> = stdgo.crypto.sha512.Sha512.sum512(_seed).copy();
        var _s:Pointer<crypto.ed25519.internal.edwards25519.Edwards25519.Scalar> = crypto.ed25519.internal.edwards25519.Edwards25519.newScalar().value.setBytesWithClamping(_h.__slice__(0, ((32 : GoInt))));
        var _prefix:Slice<GoUInt8> = _h.__slice__(((32 : GoInt)));
        var _mh:stdgo.hash.Hash.Hash = stdgo.crypto.sha512.Sha512.new_();
        _mh.write(_prefix);
        _mh.write(_message);
        var _messageDigest:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((((0 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]).setCap(((stdgo.crypto.sha512.Sha512.size : GoInt)).toBasic());
        _messageDigest = _mh.sum(_messageDigest);
        var _r:Pointer<crypto.ed25519.internal.edwards25519.Edwards25519.Scalar> = crypto.ed25519.internal.edwards25519.Edwards25519.newScalar().value.setUniformBytes(_messageDigest);
        var r:Pointer<crypto.ed25519.internal.edwards25519.Edwards25519.Point> = (Go.pointer(new crypto.ed25519.internal.edwards25519.Edwards25519.Point())).value.scalarBaseMult(_r);
        var _kh:stdgo.hash.Hash.Hash = stdgo.crypto.sha512.Sha512.new_();
        _kh.write(r.value.bytes());
        _kh.write(_publicKey);
        _kh.write(_message);
        var _hramDigest:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((((0 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]).setCap(((stdgo.crypto.sha512.Sha512.size : GoInt)).toBasic());
        _hramDigest = _kh.sum(_hramDigest);
        var _k:Pointer<crypto.ed25519.internal.edwards25519.Edwards25519.Scalar> = crypto.ed25519.internal.edwards25519.Edwards25519.newScalar().value.setUniformBytes(_hramDigest);
        var s:Pointer<crypto.ed25519.internal.edwards25519.Edwards25519.Scalar> = crypto.ed25519.internal.edwards25519.Edwards25519.newScalar().value.multiplyAdd(_k, _s, _r);
        Go.copy(_signature.__slice__(0, ((32 : GoInt))), r.value.bytes());
        Go.copy(_signature.__slice__(((32 : GoInt))), s.value.bytes());
    }
/**
    // Verify reports whether sig is a valid signature of message by publicKey. It
    // will panic if len(publicKey) is not PublicKeySize.
**/
function verify(_publicKey:PublicKey, _message:Slice<GoByte>, _sig:Slice<GoByte>):Bool {
        {
            var _l:GoInt = _publicKey.__t__.length;
            if (_l != publicKeySize) {
                throw (("ed25519: bad public key length: " : GoString)) + stdgo.strconv.Strconv.itoa(_l);
            };
        };
        if (_sig.length != signatureSize || _sig[((63 : GoInt))] & ((224 : GoUInt8)) != ((0 : GoUInt8))) {
            return false;
        };
        var __tmp__ = (Go.pointer(new crypto.ed25519.internal.edwards25519.Edwards25519.Point())).value.setBytes(_publicKey.__copy__().__t__), a:Pointer<crypto.ed25519.internal.edwards25519.Edwards25519.Point> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return false;
        };
        var _kh:stdgo.hash.Hash.Hash = stdgo.crypto.sha512.Sha512.new_();
        _kh.write(_sig.__slice__(0, ((32 : GoInt))));
        _kh.write(_publicKey.__copy__().__t__);
        _kh.write(_message);
        var _hramDigest:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((((0 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]).setCap(((stdgo.crypto.sha512.Sha512.size : GoInt)).toBasic());
        _hramDigest = _kh.sum(_hramDigest);
        var _k:Pointer<crypto.ed25519.internal.edwards25519.Edwards25519.Scalar> = crypto.ed25519.internal.edwards25519.Edwards25519.newScalar().value.setUniformBytes(_hramDigest);
        var __tmp__ = crypto.ed25519.internal.edwards25519.Edwards25519.newScalar().value.setCanonicalBytes(_sig.__slice__(((32 : GoInt)))), s:Pointer<crypto.ed25519.internal.edwards25519.Edwards25519.Scalar> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return false;
        };
        var _minusA:Pointer<crypto.ed25519.internal.edwards25519.Edwards25519.Point> = (Go.pointer(new crypto.ed25519.internal.edwards25519.Edwards25519.Point())).value.negate(a);
        var r:Pointer<crypto.ed25519.internal.edwards25519.Edwards25519.Point> = (Go.pointer(new crypto.ed25519.internal.edwards25519.Edwards25519.Point())).value.varTimeDoubleScalarBaseMult(_k, _minusA, s);
        return stdgo.bytes.Bytes.equal(_sig.__slice__(0, ((32 : GoInt))), r.value.bytes());
    }
class PublicKey_extension_fields {
    public function equal(__tmp__, _x:stdgo.crypto.Crypto.PublicKey):Bool return __tmp__.equal(_x);
}
class PrivateKey_extension_fields {
    public function public_(__tmp__):stdgo.crypto.Crypto.PublicKey return __tmp__.public_();
    public function equal(__tmp__, _x:stdgo.crypto.Crypto.PrivateKey):Bool return __tmp__.equal(_x);
    public function seed(__tmp__):Slice<GoByte> return __tmp__.seed();
    public function sign(__tmp__, _rand:stdgo.io.Io.Reader, _message:Slice<GoByte>, _opts:stdgo.crypto.Crypto.SignerOpts):{ var _0 : Slice<GoByte>; var _1 : Error; } return __tmp__.sign(_rand, _message, _opts);
}
