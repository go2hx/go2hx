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
@:named @:using(stdgo.crypto.ed25519.Ed25519.PublicKey_static_extension) typedef PublicKey = Slice<GoUInt8>;
@:named @:using(stdgo.crypto.ed25519.Ed25519.PrivateKey_static_extension) typedef PrivateKey = Slice<GoUInt8>;
/**
    // GenerateKey generates a public/private key pair using entropy from rand.
    // If rand is nil, crypto/rand.Reader will be used.
**/
function generateKey(_rand:stdgo.io.Io.Reader):{ var _0 : PublicKey; var _1 : PrivateKey; var _2 : Error; } {
        if (_rand == null) {
            _rand = stdgo.crypto.rand.Rand.reader;
        };
        var _seed = new Slice<GoUInt8>(...[for (i in 0 ... ((((32 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]);
        {
            var __tmp__ = stdgo.io.Io.readFull(_rand, _seed), _0:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return { _0 : null, _1 : null, _2 : _err };
            };
        };
        var _privateKey:PrivateKey = newKeyFromSeed(_seed);
        var _publicKey = new Slice<GoUInt8>(...[for (i in 0 ... ((((32 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]);
        Go.copySlice(_publicKey, ((_privateKey.__slice__(((32 : GoInt))) : PrivateKey)));
        return { _0 : _publicKey, _1 : _privateKey, _2 : ((null : stdgo.Error)) };
    }
/**
    // NewKeyFromSeed calculates a private key from a seed. It will panic if
    // len(seed) is not SeedSize. This function is provided for interoperability
    // with RFC 8032. RFC 8032's private keys correspond to seeds in this
    // package.
**/
function newKeyFromSeed(_seed:Slice<GoByte>):PrivateKey {
        var _privateKey = new Slice<GoUInt8>(...[for (i in 0 ... ((((64 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]);
        _newKeyFromSeed(_privateKey, _seed);
        return _privateKey;
    }
function _newKeyFromSeed(_privateKey:Slice<GoByte>, _seed:Slice<GoByte>):Void {
        {
            var _l:GoInt = (_seed != null ? _seed.length : ((0 : GoInt)));
            if (_l != ((32 : GoInt))) {
                throw Go.toInterface(((("ed25519: bad seed length: " : GoString))) + stdgo.strconv.Strconv.itoa(_l));
            };
        };
        var _h = (stdgo.crypto.sha512.Sha512.sum512(_seed) == null ? null : stdgo.crypto.sha512.Sha512.sum512(_seed).__copy__());
        var _s = crypto.ed25519.internal.edwards25519.Edwards25519.newScalar().setBytesWithClamping(((_h.__slice__(0, ((32 : GoInt))) : Slice<GoUInt8>)));
        var a = (((new crypto.ed25519.internal.edwards25519.Edwards25519.Point() : crypto.ed25519.internal.edwards25519.Edwards25519.Point))).scalarBaseMult(_s);
        var _publicKey = a.bytes();
        Go.copySlice(_privateKey, _seed);
        Go.copySlice(((_privateKey.__slice__(((32 : GoInt))) : Slice<GoUInt8>)), _publicKey);
    }
/**
    // Sign signs the message with privateKey and returns a signature. It will
    // panic if len(privateKey) is not PrivateKeySize.
**/
function sign(_privateKey:PrivateKey, _message:Slice<GoByte>):Slice<GoByte> {
        var _signature = new Slice<GoUInt8>(...[for (i in 0 ... ((((64 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]);
        _sign(_signature, _privateKey, _message);
        return _signature;
    }
function _sign(_signature:Slice<GoByte>, _privateKey:Slice<GoByte>, _message:Slice<GoByte>):Void {
        {
            var _l:GoInt = (_privateKey != null ? _privateKey.length : ((0 : GoInt)));
            if (_l != ((64 : GoInt))) {
                throw Go.toInterface(((("ed25519: bad private key length: " : GoString))) + stdgo.strconv.Strconv.itoa(_l));
            };
        };
        var _seed = ((_privateKey.__slice__(0, ((32 : GoInt))) : Slice<GoUInt8>)), _publicKey = ((_privateKey.__slice__(((32 : GoInt))) : Slice<GoUInt8>));
        var _h = (stdgo.crypto.sha512.Sha512.sum512(_seed) == null ? null : stdgo.crypto.sha512.Sha512.sum512(_seed).__copy__());
        var _s = crypto.ed25519.internal.edwards25519.Edwards25519.newScalar().setBytesWithClamping(((_h.__slice__(0, ((32 : GoInt))) : Slice<GoUInt8>)));
        var _prefix = ((_h.__slice__(((32 : GoInt))) : Slice<GoUInt8>));
        var _mh:stdgo.hash.Hash.Hash = stdgo.crypto.sha512.Sha512.new_();
        _mh.write(_prefix);
        _mh.write(_message);
        var _messageDigest = new Slice<GoUInt8>(...[for (i in 0 ... ((((0 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]).__setCap__(((((64 : GoInt)) : GoInt)).toBasic());
        _messageDigest = _mh.sum(_messageDigest);
        var _r = crypto.ed25519.internal.edwards25519.Edwards25519.newScalar().setUniformBytes(_messageDigest);
        var r = (((new crypto.ed25519.internal.edwards25519.Edwards25519.Point() : crypto.ed25519.internal.edwards25519.Edwards25519.Point))).scalarBaseMult(_r);
        var _kh:stdgo.hash.Hash.Hash = stdgo.crypto.sha512.Sha512.new_();
        _kh.write(r.bytes());
        _kh.write(_publicKey);
        _kh.write(_message);
        var _hramDigest = new Slice<GoUInt8>(...[for (i in 0 ... ((((0 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]).__setCap__(((((64 : GoInt)) : GoInt)).toBasic());
        _hramDigest = _kh.sum(_hramDigest);
        var _k = crypto.ed25519.internal.edwards25519.Edwards25519.newScalar().setUniformBytes(_hramDigest);
        var s = crypto.ed25519.internal.edwards25519.Edwards25519.newScalar().multiplyAdd(_k, _s, _r);
        Go.copySlice(((_signature.__slice__(0, ((32 : GoInt))) : Slice<GoUInt8>)), r.bytes());
        Go.copySlice(((_signature.__slice__(((32 : GoInt))) : Slice<GoUInt8>)), s.bytes());
    }
/**
    // Verify reports whether sig is a valid signature of message by publicKey. It
    // will panic if len(publicKey) is not PublicKeySize.
**/
function verify(_publicKey:PublicKey, _message:Slice<GoByte>, _sig:Slice<GoByte>):Bool {
        {
            var _l:GoInt = (_publicKey != null ? _publicKey.length : ((0 : GoInt)));
            if (_l != ((32 : GoInt))) {
                throw Go.toInterface(((("ed25519: bad public key length: " : GoString))) + stdgo.strconv.Strconv.itoa(_l));
            };
        };
        if (((_sig != null ? _sig.length : ((0 : GoInt))) != ((64 : GoInt))) || (((_sig != null ? _sig[((63 : GoInt))] : ((0 : GoUInt8))) & ((224 : GoUInt8))) != ((0 : GoUInt8)))) {
            return false;
        };
        var __tmp__ = (((new crypto.ed25519.internal.edwards25519.Edwards25519.Point() : crypto.ed25519.internal.edwards25519.Edwards25519.Point))).setBytes(_publicKey), a:Ref<crypto.ed25519.internal.edwards25519.Edwards25519.Point> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return false;
        };
        var _kh:stdgo.hash.Hash.Hash = stdgo.crypto.sha512.Sha512.new_();
        _kh.write(((_sig.__slice__(0, ((32 : GoInt))) : Slice<GoUInt8>)));
        _kh.write(_publicKey);
        _kh.write(_message);
        var _hramDigest = new Slice<GoUInt8>(...[for (i in 0 ... ((((0 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]).__setCap__(((((64 : GoInt)) : GoInt)).toBasic());
        _hramDigest = _kh.sum(_hramDigest);
        var _k = crypto.ed25519.internal.edwards25519.Edwards25519.newScalar().setUniformBytes(_hramDigest);
        var __tmp__ = crypto.ed25519.internal.edwards25519.Edwards25519.newScalar().setCanonicalBytes(((_sig.__slice__(((32 : GoInt))) : Slice<GoUInt8>))), s:Ref<crypto.ed25519.internal.edwards25519.Edwards25519.Scalar> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return false;
        };
        var _minusA = (((new crypto.ed25519.internal.edwards25519.Edwards25519.Point() : crypto.ed25519.internal.edwards25519.Edwards25519.Point))).negate(a);
        var r = (((new crypto.ed25519.internal.edwards25519.Edwards25519.Point() : crypto.ed25519.internal.edwards25519.Edwards25519.Point))).varTimeDoubleScalarBaseMult(_k, _minusA, s);
        return stdgo.bytes.Bytes.equal(((_sig.__slice__(0, ((32 : GoInt))) : Slice<GoUInt8>)), r.bytes());
    }
@:keep class PublicKey_static_extension {
    /**
        // Equal reports whether pub and x have the same value.
    **/
    @:keep
    public static function equal( _pub:PublicKey, _x:stdgo.crypto.Crypto.PublicKey):Bool {
        var __tmp__ = try {
            { value : ((((_x.value : Dynamic)).__t__ : PublicKey)), ok : true };
        } catch(_) {
            { value : new PublicKey(), ok : false };
        }, _xx = __tmp__.value, _ok = __tmp__.ok;
        if (!_ok) {
            return false;
        };
        return stdgo.bytes.Bytes.equal(_pub, _xx);
    }
}
class PublicKey_wrapper {
    /**
        // Equal reports whether pub and x have the same value.
    **/
    @:keep
    public var equal : stdgo.crypto.Crypto.PublicKey -> Bool = null;
    public function new(__self__) this.__self__ = __self__;
    public function __underlying__() return Go.toInterface(__self__);
    var __self__ : PublicKey;
}
@:keep class PrivateKey_static_extension {
    /**
        // Sign signs the given message with priv.
        // Ed25519 performs two passes over messages to be signed and therefore cannot
        // handle pre-hashed messages. Thus opts.HashFunc() must return zero to
        // indicate the message hasn't been hashed. This can be achieved by passing
        // crypto.Hash(0) as the value for opts.
    **/
    @:keep
    public static function sign( _priv:PrivateKey, _rand:stdgo.io.Io.Reader, _message:Slice<GoByte>, _opts:stdgo.crypto.Crypto.SignerOpts):{ var _0 : Slice<GoByte>; var _1 : Error; } {
        var _signature:Slice<GoByte> = ((null : Slice<GoUInt8>)), _err:Error = ((null : stdgo.Error));
        if (_opts.hashFunc() != ((((0 : GoUInt)) : stdgo.crypto.Crypto.Hash))) {
            return { _0 : ((null : Slice<GoUInt8>)), _1 : stdgo.errors.Errors.new_(((("ed25519: cannot sign hashed message" : GoString)))) };
        };
        return { _0 : stdgo.crypto.ed25519.Ed25519.sign(_priv, _message), _1 : ((null : stdgo.Error)) };
    }
    /**
        // Seed returns the private key seed corresponding to priv. It is provided for
        // interoperability with RFC 8032. RFC 8032's private keys correspond to seeds
        // in this package.
    **/
    @:keep
    public static function seed( _priv:PrivateKey):Slice<GoByte> {
        var _seed = new Slice<GoUInt8>(...[for (i in 0 ... ((((32 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]);
        Go.copySlice(_seed, ((_priv.__slice__(0, ((32 : GoInt))) : PrivateKey)));
        return _seed;
    }
    /**
        // Equal reports whether priv and x have the same value.
    **/
    @:keep
    public static function equal( _priv:PrivateKey, _x:stdgo.crypto.Crypto.PrivateKey):Bool {
        var __tmp__ = try {
            { value : ((((_x.value : Dynamic)).__t__ : PrivateKey)), ok : true };
        } catch(_) {
            { value : new PrivateKey(), ok : false };
        }, _xx = __tmp__.value, _ok = __tmp__.ok;
        if (!_ok) {
            return false;
        };
        return stdgo.bytes.Bytes.equal(_priv, _xx);
    }
    /**
        // Public returns the PublicKey corresponding to priv.
    **/
    @:keep
    public static function public_( _priv:PrivateKey):stdgo.crypto.Crypto.PublicKey {
        var _publicKey = new Slice<GoUInt8>(...[for (i in 0 ... ((((32 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]);
        Go.copySlice(_publicKey, ((_priv.__slice__(((32 : GoInt))) : PrivateKey)));
        return Go.toInterface(((_publicKey : PublicKey)));
    }
}
class PrivateKey_wrapper {
    /**
        // Sign signs the given message with priv.
        // Ed25519 performs two passes over messages to be signed and therefore cannot
        // handle pre-hashed messages. Thus opts.HashFunc() must return zero to
        // indicate the message hasn't been hashed. This can be achieved by passing
        // crypto.Hash(0) as the value for opts.
    **/
    @:keep
    public var sign : (stdgo.io.Io.Reader, Slice<GoByte>, stdgo.crypto.Crypto.SignerOpts) -> { var _0 : Slice<GoByte>; var _1 : Error; } = null;
    /**
        // Seed returns the private key seed corresponding to priv. It is provided for
        // interoperability with RFC 8032. RFC 8032's private keys correspond to seeds
        // in this package.
    **/
    @:keep
    public var seed : () -> Slice<GoByte> = null;
    /**
        // Equal reports whether priv and x have the same value.
    **/
    @:keep
    public var equal : stdgo.crypto.Crypto.PrivateKey -> Bool = null;
    /**
        // Public returns the PublicKey corresponding to priv.
    **/
    @:keep
    public var public_ : () -> stdgo.crypto.Crypto.PublicKey = null;
    public function new(__self__) this.__self__ = __self__;
    public function __underlying__() return Go.toInterface(__self__);
    var __self__ : PrivateKey;
}
