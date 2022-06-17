package stdgo.crypto.ecdsa;
import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;
var _one : Ref<stdgo.math.big.Big.Int_> = new stdgo.math.big.Big.Int_().setInt64(((1 : GoInt64)));
var _errZeroParam : stdgo.Error = stdgo.errors.Errors.new_(((("zero parameter" : GoString))));
var _zeroReader : Ref<T_zr> = ((new T_zr() : T_zr));
typedef T_invertible = StructType & {
    public function inverse(_k:stdgo.math.big.Big.Int_):stdgo.math.big.Big.Int_;
};
typedef T_combinedMult = StructType & {
    public function combinedMult(px:stdgo.math.big.Big.Int_, py:stdgo.math.big.Big.Int_, _s1:Slice<GoByte>, _s2:Slice<GoByte>):{ var _0 : stdgo.math.big.Big.Int_; var _1 : stdgo.math.big.Big.Int_; };
};
@:structInit @:using(stdgo.crypto.ecdsa.Ecdsa.PublicKey_static_extension) class PublicKey {
    @:embedded
    public var curve : stdgo.crypto.elliptic.Elliptic.Curve = ((null : stdgo.crypto.elliptic.Elliptic.Curve));
    public var x : Ref<stdgo.math.big.Big.Int_> = null;
    public var y : Ref<stdgo.math.big.Big.Int_> = null;
    public function new(?curve:stdgo.crypto.elliptic.Elliptic.Curve, ?x:Ref<stdgo.math.big.Big.Int_>, ?y:Ref<stdgo.math.big.Big.Int_>) {
        if (curve != null) this.curve = curve;
        if (x != null) this.x = x;
        if (y != null) this.y = y;
    }
    public function add(_x1:Ref<stdgo.math.big.Big.Int_>, _y1:Ref<stdgo.math.big.Big.Int_>, _x2:Ref<stdgo.math.big.Big.Int_>, _y2:Ref<stdgo.math.big.Big.Int_>):{ var _0 : Ref<stdgo.math.big.Big.Int_>; var _1 : Ref<stdgo.math.big.Big.Int_>; } return curve.add(_x1, _y1, _x2, _y2);
    public function double(_x1:Ref<stdgo.math.big.Big.Int_>, _y1:Ref<stdgo.math.big.Big.Int_>):{ var _0 : Ref<stdgo.math.big.Big.Int_>; var _1 : Ref<stdgo.math.big.Big.Int_>; } return curve.double(_x1, _y1);
    public function isOnCurve(_x:Ref<stdgo.math.big.Big.Int_>, _y:Ref<stdgo.math.big.Big.Int_>):Bool return curve.isOnCurve(_x, _y);
    public function params():Ref<stdgo.crypto.elliptic.Elliptic.CurveParams> return curve.params();
    public function scalarBaseMult(_k:Slice<GoUInt8>):{ var _0 : Ref<stdgo.math.big.Big.Int_>; var _1 : Ref<stdgo.math.big.Big.Int_>; } return curve.scalarBaseMult(_k);
    public function scalarMult(_x1:Ref<stdgo.math.big.Big.Int_>, _y1:Ref<stdgo.math.big.Big.Int_>, _k:Slice<GoUInt8>):{ var _0 : Ref<stdgo.math.big.Big.Int_>; var _1 : Ref<stdgo.math.big.Big.Int_>; } return curve.scalarMult(_x1, _y1, _k);
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new PublicKey(curve, x, y);
    }
}
@:structInit @:using(stdgo.crypto.ecdsa.Ecdsa.PrivateKey_static_extension) class PrivateKey {
    @:embedded
    public var publicKey : PublicKey = new PublicKey();
    public var d : Ref<stdgo.math.big.Big.Int_> = null;
    public function new(?publicKey:PublicKey, ?d:Ref<stdgo.math.big.Big.Int_>) {
        if (publicKey != null) this.publicKey = publicKey;
        if (d != null) this.d = d;
    }
    public function add(_x1:Ref<stdgo.math.big.Big.Int_>, _y1:Ref<stdgo.math.big.Big.Int_>, _x2:Ref<stdgo.math.big.Big.Int_>, _y2:Ref<stdgo.math.big.Big.Int_>):{ var _0 : Ref<stdgo.math.big.Big.Int_>; var _1 : Ref<stdgo.math.big.Big.Int_>; } return publicKey.add(_x1, _y1, _x2, _y2);
    public function double(_x1:Ref<stdgo.math.big.Big.Int_>, _y1:Ref<stdgo.math.big.Big.Int_>):{ var _0 : Ref<stdgo.math.big.Big.Int_>; var _1 : Ref<stdgo.math.big.Big.Int_>; } return publicKey.double(_x1, _y1);
    public function isOnCurve(_x:Ref<stdgo.math.big.Big.Int_>, _y:Ref<stdgo.math.big.Big.Int_>):Bool return publicKey.isOnCurve(_x, _y);
    public function params():Ref<stdgo.crypto.elliptic.Elliptic.CurveParams> return publicKey.params();
    public function scalarBaseMult(_k:Slice<GoUInt8>):{ var _0 : Ref<stdgo.math.big.Big.Int_>; var _1 : Ref<stdgo.math.big.Big.Int_>; } return publicKey.scalarBaseMult(_k);
    public function scalarMult(_x1:Ref<stdgo.math.big.Big.Int_>, _y1:Ref<stdgo.math.big.Big.Int_>, _k:Slice<GoUInt8>):{ var _0 : Ref<stdgo.math.big.Big.Int_>; var _1 : Ref<stdgo.math.big.Big.Int_>; } return publicKey.scalarMult(_x1, _y1, _k);
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new PrivateKey(publicKey, d);
    }
}
@:structInit @:using(stdgo.crypto.ecdsa.Ecdsa.T_zr_static_extension) class T_zr {
    @:embedded
    public var reader : stdgo.io.Io.Reader = ((null : stdgo.io.Io.Reader));
    public function new(?reader:stdgo.io.Io.Reader) {
        if (reader != null) this.reader = reader;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_zr(reader);
    }
}
/**
    // randFieldElement returns a random element of the order of the given
    // curve using the procedure given in FIPS 186-4, Appendix B.5.1.
**/
function _randFieldElement(_c:stdgo.crypto.elliptic.Elliptic.Curve, _rand:stdgo.io.Io.Reader):{ var _0 : stdgo.math.big.Big.Int_; var _1 : Error; } {
        var _k:stdgo.math.big.Big.Int_ = null, _err:Error = ((null : stdgo.Error));
        var _params = _c.params();
        var _b = new Slice<GoUInt8>(...[for (i in 0 ... (((_params.bitSize / ((8 : GoInt))) + ((8 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]);
        {
            var __tmp__ = stdgo.io.Io.readFull(_rand, _b);
            _err = __tmp__._1;
        };
        if (_err != null) {
            return { _0 : _k, _1 : _err };
        };
        _k = new stdgo.math.big.Big.Int_().setBytes(_b);
        var _n = new stdgo.math.big.Big.Int_().sub(_params.n, _one);
        _k.mod(_k, _n);
        _k.add(_k, _one);
        return { _0 : _k, _1 : _err };
    }
/**
    // GenerateKey generates a public and private key pair.
**/
function generateKey(_c:stdgo.crypto.elliptic.Elliptic.Curve, _rand:stdgo.io.Io.Reader):{ var _0 : PrivateKey; var _1 : Error; } {
        var __tmp__ = _randFieldElement(_c, _rand), _k:Ref<stdgo.math.big.Big.Int_> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : null, _1 : _err };
        };
        var _priv = new PrivateKey();
        _priv.publicKey.curve = _c;
        _priv.d = _k;
        {
            var __tmp__ = _c.scalarBaseMult(_k.bytes());
            _priv.publicKey.x = __tmp__._0;
            _priv.publicKey.y = __tmp__._1;
        };
        return { _0 : _priv, _1 : ((null : stdgo.Error)) };
    }
/**
    // hashToInt converts a hash value to an integer. Per FIPS 186-4, Section 6.4,
    // we use the left-most bits of the hash to match the bit-length of the order of
    // the curve. This also performs Step 5 of SEC 1, Version 2.0, Section 4.1.3.
**/
function _hashToInt(_hash:Slice<GoByte>, _c:stdgo.crypto.elliptic.Elliptic.Curve):stdgo.math.big.Big.Int_ {
        var _orderBits:GoInt = _c.params().n.bitLen();
        var _orderBytes:GoInt = (_orderBits + ((7 : GoInt))) / ((8 : GoInt));
        if ((_hash != null ? _hash.length : ((0 : GoInt))) > _orderBytes) {
            _hash = ((_hash.__slice__(0, _orderBytes) : Slice<GoUInt8>));
        };
        var _ret = new stdgo.math.big.Big.Int_().setBytes(_hash);
        var _excess:GoInt = ((_hash != null ? _hash.length : ((0 : GoInt))) * ((8 : GoInt))) - _orderBits;
        if (_excess > ((0 : GoInt))) {
            _ret.rsh(_ret, ((_excess : GoUInt)));
        };
        return _ret;
    }
/**
    // fermatInverse calculates the inverse of k in GF(P) using Fermat's method
    // (exponentiation modulo P - 2, per Euler's theorem). This has better
    // constant-time properties than Euclid's method (implemented in
    // math/big.Int.ModInverse and FIPS 186-4, Appendix C.1) although math/big
    // itself isn't strictly constant-time so it's not perfect.
**/
function _fermatInverse(_k:stdgo.math.big.Big.Int_, n:stdgo.math.big.Big.Int_):stdgo.math.big.Big.Int_ {
        var _two = stdgo.math.big.Big.newInt(((2 : GoInt64)));
        var _nMinus2 = new stdgo.math.big.Big.Int_().sub(n, _two);
        return new stdgo.math.big.Big.Int_().exp(_k, _nMinus2, n);
    }
/**
    // Sign signs a hash (which should be the result of hashing a larger message)
    // using the private key, priv. If the hash is longer than the bit-length of the
    // private key's curve order, the hash will be truncated to that length. It
    // returns the signature as a pair of integers. Most applications should use
    // SignASN1 instead of dealing directly with r, s.
**/
function sign(_rand:stdgo.io.Io.Reader, _priv:PrivateKey, _hash:Slice<GoByte>):{ var _0 : stdgo.math.big.Big.Int_; var _1 : stdgo.math.big.Big.Int_; var _2 : Error; } {
        var _r:stdgo.math.big.Big.Int_ = null, _s:stdgo.math.big.Big.Int_ = null, _err:Error = ((null : stdgo.Error));
        crypto.internal.randutil.Randutil.maybeReadByte(_rand);
        var _entropy = new Slice<GoUInt8>(...[for (i in 0 ... ((((32 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]);
        {
            var __tmp__ = stdgo.io.Io.readFull(_rand, _entropy);
            _err = __tmp__._1;
        };
        if (_err != null) {
            return { _0 : _r, _1 : _s, _2 : _err };
        };
        var _md:stdgo.hash.Hash.Hash = stdgo.crypto.sha512.Sha512.new_();
        _md.write(_priv.d.bytes());
        _md.write(_entropy);
        _md.write(_hash);
        var _key = ((_md.sum(((null : Slice<GoUInt8>))).__slice__(0, ((32 : GoInt))) : Slice<GoUInt8>));
        var __tmp__ = stdgo.crypto.aes.Aes.newCipher(_key), _block:stdgo.crypto.cipher.Cipher.Block = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : null, _1 : null, _2 : _err };
        };
        var _csprng:stdgo.crypto.cipher.Cipher.StreamReader = (({ r : _zeroReader, s : stdgo.crypto.cipher.Cipher.newCTR(_block, ((((("IV for ECDSA CTR" : GoString))) : Slice<GoByte>))) } : stdgo.crypto.cipher.Cipher.StreamReader));
        var _c:stdgo.crypto.elliptic.Elliptic.Curve = _priv.publicKey.curve;
        return _sign(_priv, _csprng, _c, _hash);
    }
function _signGeneric(_priv:PrivateKey, _csprng:stdgo.crypto.cipher.Cipher.StreamReader, _c:stdgo.crypto.elliptic.Elliptic.Curve, _hash:Slice<GoByte>):{ var _0 : stdgo.math.big.Big.Int_; var _1 : stdgo.math.big.Big.Int_; var _2 : Error; } {
        var _r:stdgo.math.big.Big.Int_ = null, _s:stdgo.math.big.Big.Int_ = null, _err:Error = ((null : stdgo.Error));
        var n = _c.params().n;
        if (n.sign() == ((0 : GoInt))) {
            return { _0 : null, _1 : null, _2 : _errZeroParam };
        };
        var _k:stdgo.math.big.Big.Int_ = null, _kInv:stdgo.math.big.Big.Int_ = null;
        while (true) {
            while (true) {
                {
                    var __tmp__ = _randFieldElement(_c, _csprng);
                    _k = __tmp__._0;
                    _err = {
                        final __self__ = new stdgo.Error_wrapper(__tmp__._1);
                        __self__;
                    };
                };
                if (_err != null) {
                    _r = null;
                    return { _0 : _r, _1 : _s, _2 : _err };
                };
                {
                    var __tmp__ = try {
                        { value : ((((_priv.curve.__underlying__().value : Dynamic)) : T_invertible)), ok : true };
                    } catch(_) {
                        { value : ((null : T_invertible)), ok : false };
                    }, _in = __tmp__.value, _ok = __tmp__.ok;
                    if (_ok) {
                        _kInv = _in.inverse(_k);
                    } else {
                        _kInv = _fermatInverse(_k, n);
                    };
                };
                {
                    var __tmp__ = _priv.curve.scalarBaseMult(_k.bytes());
                    _r = __tmp__._0;
                };
                _r.mod(_r, n);
                if (_r.sign() != ((0 : GoInt))) {
                    break;
                };
            };
            var _e = _hashToInt(_hash, _c);
            _s = new stdgo.math.big.Big.Int_().mul(_priv.d, _r);
            _s.add(_s, _e);
            _s.mul(_s, _kInv);
            _s.mod(_s, n);
            if (_s.sign() != ((0 : GoInt))) {
                break;
            };
        };
        return { _0 : _r, _1 : _s, _2 : _err };
    }
/**
    // SignASN1 signs a hash (which should be the result of hashing a larger message)
    // using the private key, priv. If the hash is longer than the bit-length of the
    // private key's curve order, the hash will be truncated to that length. It
    // returns the ASN.1 encoded signature.
**/
function signASN1(_rand:stdgo.io.Io.Reader, _priv:PrivateKey, _hash:Slice<GoByte>):{ var _0 : Slice<GoByte>; var _1 : Error; } {
        return _priv.sign(_rand, _hash, ((null : stdgo.crypto.Crypto.SignerOpts)));
    }
/**
    // Verify verifies the signature in r, s of hash using the public key, pub. Its
    // return value records whether the signature is valid. Most applications should
    // use VerifyASN1 instead of dealing directly with r, s.
**/
function verify(_pub:PublicKey, _hash:Slice<GoByte>, _r:stdgo.math.big.Big.Int_, _s:stdgo.math.big.Big.Int_):Bool {
        var _c:stdgo.crypto.elliptic.Elliptic.Curve = _pub.curve;
        var n = _c.params().n;
        if ((_r.sign() <= ((0 : GoInt))) || (_s.sign() <= ((0 : GoInt)))) {
            return false;
        };
        if ((_r.cmp(n) >= ((0 : GoInt))) || (_s.cmp(n) >= ((0 : GoInt)))) {
            return false;
        };
        return _verify(_pub, _c, _hash, _r, _s);
    }
function _verifyGeneric(_pub:PublicKey, _c:stdgo.crypto.elliptic.Elliptic.Curve, _hash:Slice<GoByte>, _r:stdgo.math.big.Big.Int_, _s:stdgo.math.big.Big.Int_):Bool {
        var _e = _hashToInt(_hash, _c);
        var _w:stdgo.math.big.Big.Int_ = null;
        var n = _c.params().n;
        {
            var __tmp__ = try {
                { value : ((((_c.__underlying__().value : Dynamic)) : T_invertible)), ok : true };
            } catch(_) {
                { value : ((null : T_invertible)), ok : false };
            }, _in = __tmp__.value, _ok = __tmp__.ok;
            if (_ok) {
                _w = _in.inverse(_s);
            } else {
                _w = new stdgo.math.big.Big.Int_().modInverse(_s, n);
            };
        };
        var _u1 = _e.mul(_e, _w);
        _u1.mod(_u1, n);
        var _u2 = _w.mul(_r, _w);
        _u2.mod(_u2, n);
        var _x:stdgo.math.big.Big.Int_ = null, _y:stdgo.math.big.Big.Int_ = null;
        {
            var __tmp__ = try {
                { value : ((((_c.__underlying__().value : Dynamic)) : T_combinedMult)), ok : true };
            } catch(_) {
                { value : ((null : T_combinedMult)), ok : false };
            }, _opt = __tmp__.value, _ok = __tmp__.ok;
            if (_ok) {
                {
                    var __tmp__ = _opt.combinedMult(_pub.x, _pub.y, _u1.bytes(), _u2.bytes());
                    _x = __tmp__._0;
                    _y = __tmp__._1;
                };
            } else {
                var __tmp__ = _c.scalarBaseMult(_u1.bytes()), _x1:Ref<stdgo.math.big.Big.Int_> = __tmp__._0, _y1:Ref<stdgo.math.big.Big.Int_> = __tmp__._1;
                var __tmp__ = _c.scalarMult(_pub.x, _pub.y, _u2.bytes()), _x2:Ref<stdgo.math.big.Big.Int_> = __tmp__._0, _y2:Ref<stdgo.math.big.Big.Int_> = __tmp__._1;
                {
                    var __tmp__ = _c.add(_x1, _y1, _x2, _y2);
                    _x = __tmp__._0;
                    _y = __tmp__._1;
                };
            };
        };
        if ((_x.sign() == ((0 : GoInt))) && (_y.sign() == ((0 : GoInt)))) {
            return false;
        };
        _x.mod(_x, n);
        return _x.cmp(_r) == ((0 : GoInt));
    }
/**
    // VerifyASN1 verifies the ASN.1 encoded signature, sig, of hash using the
    // public key, pub. Its return value records whether the signature is valid.
**/
function verifyASN1(_pub:PublicKey, _hash:Slice<GoByte>, _sig:Slice<GoByte>):Bool {
        var _r:Ref<stdgo.math.big.Big.Int_> = ((new stdgo.math.big.Big.Int_() : stdgo.math.big.Big.Int_)), _s:Ref<stdgo.math.big.Big.Int_> = ((new stdgo.math.big.Big.Int_() : stdgo.math.big.Big.Int_)), _inner:vendor.golang_org.x.crypto.cryptobyte.Cryptobyte.String_ = new vendor.golang_org.x.crypto.cryptobyte.Cryptobyte.String_();
        var _input:vendor.golang_org.x.crypto.cryptobyte.Cryptobyte.String_ = ((_sig : vendor.golang_org.x.crypto.cryptobyte.Cryptobyte.String_));
        if ((((!_input.readASN1(_inner, ((48 : GoUInt8))) || !_input.empty()) || !_inner.readASN1Integer(Go.toInterface(_r))) || !_inner.readASN1Integer(Go.toInterface(_s))) || !_inner.empty()) {
            return false;
        };
        return verify(_pub, _hash, _r, _s);
    }
function _sign(_priv:PrivateKey, _csprng:stdgo.crypto.cipher.Cipher.StreamReader, _c:stdgo.crypto.elliptic.Elliptic.Curve, _hash:Slice<GoByte>):{ var _0 : stdgo.math.big.Big.Int_; var _1 : stdgo.math.big.Big.Int_; var _2 : Error; } {
        var _r:stdgo.math.big.Big.Int_ = null, _s:stdgo.math.big.Big.Int_ = null, _err:Error = ((null : stdgo.Error));
        return _signGeneric(_priv, _csprng, _c, _hash);
    }
function _verify(_pub:PublicKey, _c:stdgo.crypto.elliptic.Elliptic.Curve, _hash:Slice<GoByte>, _r:stdgo.math.big.Big.Int_, _s:stdgo.math.big.Big.Int_):Bool {
        return _verifyGeneric(_pub, _c, _hash, _r, _s);
    }
@:keep class PublicKey_static_extension {
    /**
        // Equal reports whether pub and x have the same value.
        //
        // Two keys are only considered to have the same value if they have the same Curve value.
        // Note that for example elliptic.P256() and elliptic.P256().Params() are different
        // values, as the latter is a generic not constant time implementation.
    **/
    @:keep
    public static function equal( _pub:PublicKey, _x:stdgo.crypto.Crypto.PublicKey):Bool {
        var __tmp__ = try {
            { value : ((_x.value : PublicKey)), ok : true };
        } catch(_) {
            { value : null, ok : false };
        }, _xx = __tmp__.value, _ok = __tmp__.ok;
        if (!_ok) {
            return false;
        };
        return ((_pub.x.cmp(_xx.x) == ((0 : GoInt))) && (_pub.y.cmp(_xx.y) == ((0 : GoInt)))) && (_pub.curve == _xx.curve);
    }
}
class PublicKey_wrapper {
    /**
        // Equal reports whether pub and x have the same value.
        //
        // Two keys are only considered to have the same value if they have the same Curve value.
        // Note that for example elliptic.P256() and elliptic.P256().Params() are different
        // values, as the latter is a generic not constant time implementation.
    **/
    @:keep
    public var equal : stdgo.crypto.Crypto.PublicKey -> Bool = null;
    public function new(__self__) this.__self__ = __self__;
    public function __underlying__() return Go.toInterface(__self__);
    var __self__ : PublicKey;
}
@:keep class PrivateKey_static_extension {
    /**
        // Sign signs digest with priv, reading randomness from rand. The opts argument
        // is not currently used but, in keeping with the crypto.Signer interface,
        // should be the hash function used to digest the message.
        //
        // This method implements crypto.Signer, which is an interface to support keys
        // where the private part is kept in, for example, a hardware module. Common
        // uses can use the SignASN1 function in this package directly.
    **/
    @:keep
    public static function sign( _priv:PrivateKey, _rand:stdgo.io.Io.Reader, _digest:Slice<GoByte>, _opts:stdgo.crypto.Crypto.SignerOpts):{ var _0 : Slice<GoByte>; var _1 : Error; } {
        var __tmp__ = stdgo.crypto.ecdsa.Ecdsa.sign(_rand, _priv, _digest), _r:Ref<stdgo.math.big.Big.Int_> = __tmp__._0, _s:Ref<stdgo.math.big.Big.Int_> = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        if (_err != null) {
            return { _0 : ((null : Slice<GoUInt8>)), _1 : _err };
        };
        var _b:vendor.golang_org.x.crypto.cryptobyte.Cryptobyte.Builder = new vendor.golang_org.x.crypto.cryptobyte.Cryptobyte.Builder();
        _b.addASN1(((48 : GoUInt8)), function(_b:vendor.golang_org.x.crypto.cryptobyte.Cryptobyte.Builder):Void {
            _b.addASN1BigInt(_r);
            _b.addASN1BigInt(_s);
        });
        return _b.bytes();
    }
    /**
        // Equal reports whether priv and x have the same value.
        //
        // See PublicKey.Equal for details on how Curve is compared.
    **/
    @:keep
    public static function equal( _priv:PrivateKey, _x:stdgo.crypto.Crypto.PrivateKey):Bool {
        var __tmp__ = try {
            { value : ((_x.value : PrivateKey)), ok : true };
        } catch(_) {
            { value : null, ok : false };
        }, _xx = __tmp__.value, _ok = __tmp__.ok;
        if (!_ok) {
            return false;
        };
        return _priv.publicKey.equal(Go.toInterface(_xx.publicKey)) && (_priv.d.cmp(_xx.d) == ((0 : GoInt)));
    }
    /**
        // Public returns the public key corresponding to priv.
    **/
    @:keep
    public static function public_( _priv:PrivateKey):stdgo.crypto.Crypto.PublicKey {
        return Go.toInterface(_priv.publicKey);
    }
}
class PrivateKey_wrapper {
    /**
        // Sign signs digest with priv, reading randomness from rand. The opts argument
        // is not currently used but, in keeping with the crypto.Signer interface,
        // should be the hash function used to digest the message.
        //
        // This method implements crypto.Signer, which is an interface to support keys
        // where the private part is kept in, for example, a hardware module. Common
        // uses can use the SignASN1 function in this package directly.
    **/
    @:keep
    public var sign : (stdgo.io.Io.Reader, Slice<GoByte>, stdgo.crypto.Crypto.SignerOpts) -> { var _0 : Slice<GoByte>; var _1 : Error; } = null;
    /**
        // Equal reports whether priv and x have the same value.
        //
        // See PublicKey.Equal for details on how Curve is compared.
    **/
    @:keep
    public var equal : stdgo.crypto.Crypto.PrivateKey -> Bool = null;
    /**
        // Public returns the public key corresponding to priv.
    **/
    @:keep
    public var public_ : () -> stdgo.crypto.Crypto.PublicKey = null;
    public function new(__self__) this.__self__ = __self__;
    public function __underlying__() return Go.toInterface(__self__);
    var __self__ : PrivateKey;
}
@:keep class T_zr_static_extension {
    /**
        // Read replaces the contents of dst with zeros.
    **/
    @:keep
    public static function read( _z:T_zr, _dst:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var _n:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
        for (_i => _ in _dst) {
            if (_dst != null) _dst[_i] = ((0 : GoUInt8));
        };
        return { _0 : (_dst != null ? _dst.length : ((0 : GoInt))), _1 : ((null : stdgo.Error)) };
    }
}
class T_zr_wrapper {
    /**
        // Read replaces the contents of dst with zeros.
    **/
    @:keep
    public var read : Slice<GoByte> -> { var _0 : GoInt; var _1 : Error; } = null;
    public function new(__self__) this.__self__ = __self__;
    public function __underlying__() return Go.toInterface(__self__);
    var __self__ : T_zr;
}
