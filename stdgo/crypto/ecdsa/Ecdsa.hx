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
typedef T_invertible = StructType & {
    public function inverse(_k:Pointer<stdgo.math.big.Big.Int_>):Pointer<stdgo.math.big.Big.Int_>;
};
typedef T_combinedMult = StructType & {
    public function combinedMult(_bigX:Pointer<stdgo.math.big.Big.Int_>, _bigY:Pointer<stdgo.math.big.Big.Int_>, _baseScalar:Slice<GoByte>, _scalar:Slice<GoByte>):{ var _0 : Pointer<stdgo.math.big.Big.Int_>; var _1 : Pointer<stdgo.math.big.Big.Int_>; };
};
@:structInit class PublicKey {
    public function equal(_x:stdgo.crypto.Crypto.PublicKey):Bool {
        var _pub = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var __tmp__ = try {
            { value : ((_x.value : Pointer<PublicKey>)), ok : true };
        } catch(_) {
            { value : new Pointer<PublicKey>().nil(), ok : false };
        }, _xx = __tmp__.value, _ok = __tmp__.ok;
        if (!_ok) {
            return false;
        };
        return _pub.value.x.value.cmp(_xx.value.x) == ((0 : GoInt)) && _pub.value.y.value.cmp(_xx.value.y) == ((0 : GoInt)) && Go.toInterface(_pub.value.curve) == Go.toInterface(_xx.value.curve);
    }
    @:embedded
    public var curve : stdgo.crypto.elliptic.Elliptic.Curve = ((null : stdgo.crypto.elliptic.Elliptic.Curve));
    public var x : Pointer<stdgo.math.big.Big.Int_> = new Pointer<stdgo.math.big.Big.Int_>().nil();
    public var y : Pointer<stdgo.math.big.Big.Int_> = new Pointer<stdgo.math.big.Big.Int_>().nil();
    public function new(?curve:stdgo.crypto.elliptic.Elliptic.Curve, ?x:Pointer<stdgo.math.big.Big.Int_>, ?y:Pointer<stdgo.math.big.Big.Int_>) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(curve) + " " + Go.string(x) + " " + Go.string(y) + "}";
    }
    public function add(_x1:Pointer<stdgo.math.big.Big.Int_>, _y1:Pointer<stdgo.math.big.Big.Int_>, _x2:Pointer<stdgo.math.big.Big.Int_>, _y2:Pointer<stdgo.math.big.Big.Int_>):{ var _0 : Pointer<stdgo.math.big.Big.Int_>; var _1 : Pointer<stdgo.math.big.Big.Int_>; } return curve.add(_0, _1, _2, _3);
    public function double(_x1:Pointer<stdgo.math.big.Big.Int_>, _y1:Pointer<stdgo.math.big.Big.Int_>):{ var _0 : Pointer<stdgo.math.big.Big.Int_>; var _1 : Pointer<stdgo.math.big.Big.Int_>; } return curve.double(_0, _1);
    public function isOnCurve(_x:Pointer<stdgo.math.big.Big.Int_>, _y:Pointer<stdgo.math.big.Big.Int_>):Bool return curve.isOnCurve(_0, _1);
    public function params():Pointer<stdgo.crypto.elliptic.Elliptic.CurveParams> return curve.params();
    public function scalarBaseMult(_k:Slice<GoUInt8>):{ var _0 : Pointer<stdgo.math.big.Big.Int_>; var _1 : Pointer<stdgo.math.big.Big.Int_>; } return curve.scalarBaseMult(_0);
    public function scalarMult(_x1:Pointer<stdgo.math.big.Big.Int_>, _y1:Pointer<stdgo.math.big.Big.Int_>, _k:Slice<GoUInt8>):{ var _0 : Pointer<stdgo.math.big.Big.Int_>; var _1 : Pointer<stdgo.math.big.Big.Int_>; } return curve.scalarMult(_0, _1, _2);
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new PublicKey(curve, x, y);
    }
    public function __set__(__tmp__) {
        this.curve = __tmp__.curve;
        this.x = __tmp__.x;
        this.y = __tmp__.y;
        return this;
    }
}
@:structInit class PrivateKey {
    public function sign(_rand:stdgo.io.Io.Reader, _digest:Slice<GoByte>, _opts:stdgo.crypto.Crypto.SignerOpts):{ var _0 : Slice<GoByte>; var _1 : Error; } {
        var _priv = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var __tmp__ = Ecdsa.sign(_rand, _priv, _digest), _r:Pointer<stdgo.math.big.Big.Int_> = __tmp__._0, _s:Pointer<stdgo.math.big.Big.Int_> = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        if (_err != null) {
            return { _0 : new Slice<GoUInt8>().nil(), _1 : _err };
        };
        var _b:golang_org.x.crypto.cryptobyte.Cryptobyte.Builder = new vendor.golang_org.x.crypto.cryptobyte.Cryptobyte.Builder();
        _b.addASN1(golang_org.x.crypto.cryptobyte.asn1.Asn1.sequence, new vendor.golang_org.x.crypto.cryptobyte.Cryptobyte.BuilderContinuation(function(_b:Pointer<golang_org.x.crypto.cryptobyte.Cryptobyte.Builder>):Void {
            _b.value.addASN1BigInt(_r);
            _b.value.addASN1BigInt(_s);
        }));
        return _b.bytes();
    }
    public function equal(_x:stdgo.crypto.Crypto.PrivateKey):Bool {
        var _priv = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var __tmp__ = try {
            { value : ((_x.value : Pointer<PrivateKey>)), ok : true };
        } catch(_) {
            { value : new Pointer<PrivateKey>().nil(), ok : false };
        }, _xx = __tmp__.value, _ok = __tmp__.ok;
        if (!_ok) {
            return false;
        };
        return _priv.value.publicKey.equal(Go.toInterface(Go.pointer(_xx.value.publicKey))) && _priv.value.d.value.cmp(_xx.value.d) == ((0 : GoInt));
    }
    public function public_():stdgo.crypto.Crypto.PublicKey {
        var _priv = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return Go.toInterface(Go.pointer(_priv.value.publicKey));
    }
    @:embedded
    public var publicKey : PublicKey = new PublicKey();
    public var d : Pointer<stdgo.math.big.Big.Int_> = new Pointer<stdgo.math.big.Big.Int_>().nil();
    public function new(?publicKey:PublicKey, ?d:Pointer<stdgo.math.big.Big.Int_>) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(publicKey) + " " + Go.string(d) + "}";
    }
    public function add(_x1:Pointer<stdgo.math.big.Big.Int_>, _y1:Pointer<stdgo.math.big.Big.Int_>, _x2:Pointer<stdgo.math.big.Big.Int_>, _y2:Pointer<stdgo.math.big.Big.Int_>):{ var _0 : Pointer<stdgo.math.big.Big.Int_>; var _1 : Pointer<stdgo.math.big.Big.Int_>; } return publicKey.add(_0, _1, _2, _3);
    public function double(_x1:Pointer<stdgo.math.big.Big.Int_>, _y1:Pointer<stdgo.math.big.Big.Int_>):{ var _0 : Pointer<stdgo.math.big.Big.Int_>; var _1 : Pointer<stdgo.math.big.Big.Int_>; } return publicKey.double(_0, _1);
    public function isOnCurve(_x:Pointer<stdgo.math.big.Big.Int_>, _y:Pointer<stdgo.math.big.Big.Int_>):Bool return publicKey.isOnCurve(_0, _1);
    public function params():Pointer<stdgo.crypto.elliptic.Elliptic.CurveParams> return publicKey.params();
    public function scalarBaseMult(_k:Slice<GoUInt8>):{ var _0 : Pointer<stdgo.math.big.Big.Int_>; var _1 : Pointer<stdgo.math.big.Big.Int_>; } return publicKey.scalarBaseMult(_0);
    public function scalarMult(_x1:Pointer<stdgo.math.big.Big.Int_>, _y1:Pointer<stdgo.math.big.Big.Int_>, _k:Slice<GoUInt8>):{ var _0 : Pointer<stdgo.math.big.Big.Int_>; var _1 : Pointer<stdgo.math.big.Big.Int_>; } return publicKey.scalarMult(_0, _1, _2);
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new PrivateKey(publicKey, d);
    }
    public function __set__(__tmp__) {
        this.publicKey = __tmp__.publicKey;
        this.d = __tmp__.d;
        return this;
    }
}
@:structInit class T_zr {
    public function read(_dst:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var _z = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _n:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
        {
            var _i;
            for (_obj in _dst.keyValueIterator()) {
                _i = _obj.key;
                _dst[_i] = ((0 : GoUInt8));
            };
        };
        return { _0 : _dst.length, _1 : ((null : stdgo.Error)) };
    }
    @:embedded
    public var reader : stdgo.io.Io.Reader = ((null : stdgo.io.Io.Reader));
    public function new(?reader:stdgo.io.Io.Reader) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(reader) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_zr(reader);
    }
    public function __set__(__tmp__) {
        this.reader = __tmp__.reader;
        return this;
    }
}
var _zeroReader : Pointer<T_zr> = Go.pointer(new T_zr());
var _one : Pointer<stdgo.math.big.Big.Int_> = Go.pointer(new stdgo.math.big.Big.Int_()).value.setInt64(((1 : GoInt64)));
var _errZeroParam : stdgo.Error = stdgo.errors.Errors.new_("zero parameter");
final _aesIV : GoString = "IV for ECDSA CTR";
/**
    // randFieldElement returns a random element of the field underlying the given
    // curve using the procedure given in [NSA] A.2.1.
**/
function _randFieldElement(_c:stdgo.crypto.elliptic.Elliptic.Curve, _rand:stdgo.io.Io.Reader):{ var _0 : Pointer<stdgo.math.big.Big.Int_>; var _1 : Error; } {
        var _k:Pointer<stdgo.math.big.Big.Int_> = new Pointer<stdgo.math.big.Big.Int_>().nil(), _err:Error = ((null : stdgo.Error));
        var _params:Pointer<stdgo.crypto.elliptic.Elliptic.CurveParams> = _c.params();
        var _b:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((_params.value.bitSize / ((8 : GoInt)) + ((8 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]);
        {
            var __tmp__ = stdgo.io.Io.readFull(_rand, _b);
            _err = __tmp__._1;
        };
        if (_err != null) {
            return { _0 : _k, _1 : _err };
        };
        _k = Go.pointer(new stdgo.math.big.Big.Int_()).value.setBytes(_b);
        var _n:Pointer<stdgo.math.big.Big.Int_> = Go.pointer(new stdgo.math.big.Big.Int_()).value.sub(_params.value.n, _one);
        _k.value.mod(_k, _n);
        _k.value.add(_k, _one);
        return { _0 : _k, _1 : _err };
    }
/**
    // GenerateKey generates a public and private key pair.
**/
function generateKey(_c:stdgo.crypto.elliptic.Elliptic.Curve, _rand:stdgo.io.Io.Reader):{ var _0 : Pointer<PrivateKey>; var _1 : Error; } {
        var __tmp__ = _randFieldElement(_c, _rand), _k:Pointer<stdgo.math.big.Big.Int_> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : new Pointer<PrivateKey>().nil(), _1 : _err };
        };
        var _priv:Pointer<PrivateKey> = Go.pointer(new PrivateKey());
        _priv.value.publicKey.curve = _c;
        _priv.value.d = _k;
        {
            var __tmp__ = _c.scalarBaseMult(_k.value.bytes());
            _priv.value.publicKey.x = __tmp__._0;
            _priv.value.publicKey.y = __tmp__._1;
        };
        return { _0 : _priv, _1 : ((null : stdgo.Error)) };
    }
/**
    // hashToInt converts a hash value to an integer. There is some disagreement
    // about how this is done. [NSA] suggests that this is done in the obvious
    // manner, but [SECG] truncates the hash to the bit-length of the curve order
    // first. We follow [SECG] because that's what OpenSSL does. Additionally,
    // OpenSSL right shifts excess bits from the number if the hash is too large
    // and we mirror that too.
**/
function _hashToInt(_hash:Slice<GoByte>, _c:stdgo.crypto.elliptic.Elliptic.Curve):Pointer<stdgo.math.big.Big.Int_> {
        var _orderBits:GoInt = _c.params().value.n.value.bitLen();
        var _orderBytes:GoInt = (_orderBits + ((7 : GoInt))) / ((8 : GoInt));
        if (_hash.length > _orderBytes) {
            _hash = _hash.__slice__(0, _orderBytes);
        };
        var _ret:Pointer<stdgo.math.big.Big.Int_> = Go.pointer(new stdgo.math.big.Big.Int_()).value.setBytes(_hash);
        var _excess:GoInt = _hash.length * ((8 : GoInt)) - _orderBits;
        if (_excess > ((0 : GoInt))) {
            _ret.value.rsh(_ret, ((_excess : GoUInt)));
        };
        return _ret;
    }
/**
    // fermatInverse calculates the inverse of k in GF(P) using Fermat's method.
    // This has better constant-time properties than Euclid's method (implemented
    // in math/big.Int.ModInverse) although math/big itself isn't strictly
    // constant-time so it's not perfect.
**/
function _fermatInverse(_k:Pointer<stdgo.math.big.Big.Int_>, n:Pointer<stdgo.math.big.Big.Int_>):Pointer<stdgo.math.big.Big.Int_> {
        var _two:Pointer<stdgo.math.big.Big.Int_> = stdgo.math.big.Big.newInt(((2 : GoInt64)));
        var _nMinus2:Pointer<stdgo.math.big.Big.Int_> = Go.pointer(new stdgo.math.big.Big.Int_()).value.sub(n, _two);
        return Go.pointer(new stdgo.math.big.Big.Int_()).value.exp(_k, _nMinus2, n);
    }
/**
    // Sign signs a hash (which should be the result of hashing a larger message)
    // using the private key, priv. If the hash is longer than the bit-length of the
    // private key's curve order, the hash will be truncated to that length. It
    // returns the signature as a pair of integers. The security of the private key
    // depends on the entropy of rand.
**/
function sign(_rand:stdgo.io.Io.Reader, _priv:Pointer<PrivateKey>, _hash:Slice<GoByte>):{ var _0 : Pointer<stdgo.math.big.Big.Int_>; var _1 : Pointer<stdgo.math.big.Big.Int_>; var _2 : Error; } {
        var _r:Pointer<stdgo.math.big.Big.Int_> = new Pointer<stdgo.math.big.Big.Int_>().nil(), _s:Pointer<stdgo.math.big.Big.Int_> = new Pointer<stdgo.math.big.Big.Int_>().nil(), _err:Error = ((null : stdgo.Error));
        crypto.internal.randutil.Randutil.maybeReadByte(_rand);
        var _entropylen:GoInt = (_priv.value.publicKey.curve.params().value.bitSize + ((7 : GoInt))) / ((16 : GoInt));
        if (_entropylen > ((32 : GoInt))) {
            _entropylen = ((32 : GoInt));
        };
        var _entropy:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((_entropylen : GoInt)).toBasic()) ((0 : GoUInt8))]);
        {
            var __tmp__ = stdgo.io.Io.readFull(_rand, _entropy);
            _err = __tmp__._1;
        };
        if (_err != null) {
            return { _0 : _r, _1 : _s, _2 : _err };
        };
        var _md:stdgo.hash.Hash.Hash = stdgo.crypto.sha512.Sha512.new_();
        _md.write(_priv.value.d.value.bytes());
        _md.write(_entropy);
        _md.write(_hash);
        var _key:Slice<GoUInt8> = _md.sum(new Slice<GoUInt8>().nil()).__slice__(0, ((32 : GoInt)));
        var __tmp__ = stdgo.crypto.aes.Aes.newCipher(_key), _block:stdgo.crypto.cipher.Cipher.Block = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : new Pointer<stdgo.math.big.Big.Int_>().nil(), _1 : new Pointer<stdgo.math.big.Big.Int_>().nil(), _2 : _err };
        };
        var _csprng:stdgo.crypto.cipher.Cipher.StreamReader = (({ r : _zeroReader.value, s : stdgo.crypto.cipher.Cipher.newCTR(_block, ((_aesIV : Slice<GoByte>))) } : stdgo.crypto.cipher.Cipher.StreamReader)).__copy__();
        var _c:stdgo.crypto.elliptic.Elliptic.Curve = _priv.value.publicKey.curve;
        return _sign(_priv, Go.pointer(_csprng), _c, _hash);
    }
function _signGeneric(_priv:Pointer<PrivateKey>, _csprng:Pointer<stdgo.crypto.cipher.Cipher.StreamReader>, _c:stdgo.crypto.elliptic.Elliptic.Curve, _hash:Slice<GoByte>):{ var _0 : Pointer<stdgo.math.big.Big.Int_>; var _1 : Pointer<stdgo.math.big.Big.Int_>; var _2 : Error; } {
        var _r:Pointer<stdgo.math.big.Big.Int_> = new Pointer<stdgo.math.big.Big.Int_>().nil(), _s:Pointer<stdgo.math.big.Big.Int_> = new Pointer<stdgo.math.big.Big.Int_>().nil(), _err:Error = ((null : stdgo.Error));
        var n:Pointer<stdgo.math.big.Big.Int_> = _c.params().value.n;
        if (n.value.sign() == ((0 : GoInt))) {
            return { _0 : new Pointer<stdgo.math.big.Big.Int_>().nil(), _1 : new Pointer<stdgo.math.big.Big.Int_>().nil(), _2 : _errZeroParam };
        };
        var _k:Pointer<stdgo.math.big.Big.Int_> = new Pointer<stdgo.math.big.Big.Int_>().nil(), _kInv:Pointer<stdgo.math.big.Big.Int_> = new Pointer<stdgo.math.big.Big.Int_>().nil();
        while (true) {
            while (true) {
                {
                    var __tmp__ = _randFieldElement(_c, _csprng.value.__copy__());
                    _k = __tmp__._0;
                    _err = __tmp__._1;
                };
                if (_err != null) {
                    _r = new Pointer<stdgo.math.big.Big.Int_>().nil();
                    return { _0 : _r, _1 : _s, _2 : _err };
                };
                {
                    var __tmp__ = try {
                        { value : ((_priv.value.publicKey.curve.__underlying__().value : T_invertible)), ok : true };
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
                    var __tmp__ = _priv.value.publicKey.curve.scalarBaseMult(_k.value.bytes());
                    _r = __tmp__._0;
                };
                _r.value.mod(_r, n);
                if (_r.value.sign() != ((0 : GoInt))) {
                    break;
                };
            };
            var _e:Pointer<stdgo.math.big.Big.Int_> = _hashToInt(_hash, _c);
            _s = Go.pointer(new stdgo.math.big.Big.Int_()).value.mul(_priv.value.d, _r);
            _s.value.add(_s, _e);
            _s.value.mul(_s, _kInv);
            _s.value.mod(_s, n);
            if (_s.value.sign() != ((0 : GoInt))) {
                break;
            };
        };
        return { _0 : _r, _1 : _s, _2 : _err };
    }
/**
    // SignASN1 signs a hash (which should be the result of hashing a larger message)
    // using the private key, priv. If the hash is longer than the bit-length of the
    // private key's curve order, the hash will be truncated to that length. It
    // returns the ASN.1 encoded signature. The security of the private key
    // depends on the entropy of rand.
**/
function signASN1(_rand:stdgo.io.Io.Reader, _priv:Pointer<PrivateKey>, _hash:Slice<GoByte>):{ var _0 : Slice<GoByte>; var _1 : Error; } {
        return _priv.value.sign(_rand, _hash, ((null : stdgo.crypto.Crypto.SignerOpts)));
    }
/**
    // Verify verifies the signature in r, s of hash using the public key, pub. Its
    // return value records whether the signature is valid.
**/
function verify(_pub:Pointer<PublicKey>, _hash:Slice<GoByte>, _r:Pointer<stdgo.math.big.Big.Int_>, _s:Pointer<stdgo.math.big.Big.Int_>):Bool {
        var _c:stdgo.crypto.elliptic.Elliptic.Curve = _pub.value.curve;
        var n:Pointer<stdgo.math.big.Big.Int_> = _c.params().value.n;
        if (_r.value.sign() <= ((0 : GoInt)) || _s.value.sign() <= ((0 : GoInt))) {
            return false;
        };
        if (_r.value.cmp(n) >= ((0 : GoInt)) || _s.value.cmp(n) >= ((0 : GoInt))) {
            return false;
        };
        return _verify(_pub, _c, _hash, _r, _s);
    }
function _verifyGeneric(_pub:Pointer<PublicKey>, _c:stdgo.crypto.elliptic.Elliptic.Curve, _hash:Slice<GoByte>, _r:Pointer<stdgo.math.big.Big.Int_>, _s:Pointer<stdgo.math.big.Big.Int_>):Bool {
        var _e:Pointer<stdgo.math.big.Big.Int_> = _hashToInt(_hash, _c);
        var _w:Pointer<stdgo.math.big.Big.Int_> = new Pointer<stdgo.math.big.Big.Int_>().nil();
        var n:Pointer<stdgo.math.big.Big.Int_> = _c.params().value.n;
        {
            var __tmp__ = try {
                { value : ((_c.__underlying__().value : T_invertible)), ok : true };
            } catch(_) {
                { value : ((null : T_invertible)), ok : false };
            }, _in = __tmp__.value, _ok = __tmp__.ok;
            if (_ok) {
                _w = _in.inverse(_s);
            } else {
                _w = Go.pointer(new stdgo.math.big.Big.Int_()).value.modInverse(_s, n);
            };
        };
        var _u1:Pointer<stdgo.math.big.Big.Int_> = _e.value.mul(_e, _w);
        _u1.value.mod(_u1, n);
        var _u2:Pointer<stdgo.math.big.Big.Int_> = _w.value.mul(_r, _w);
        _u2.value.mod(_u2, n);
        var _x:Pointer<stdgo.math.big.Big.Int_> = new Pointer<stdgo.math.big.Big.Int_>().nil(), _y:Pointer<stdgo.math.big.Big.Int_> = new Pointer<stdgo.math.big.Big.Int_>().nil();
        {
            var __tmp__ = try {
                { value : ((_c.__underlying__().value : T_combinedMult)), ok : true };
            } catch(_) {
                { value : ((null : T_combinedMult)), ok : false };
            }, _opt = __tmp__.value, _ok = __tmp__.ok;
            if (_ok) {
                {
                    var __tmp__ = _opt.combinedMult(_pub.value.x, _pub.value.y, _u1.value.bytes(), _u2.value.bytes());
                    _x = __tmp__._0;
                    _y = __tmp__._1;
                };
            } else {
                var __tmp__ = _c.scalarBaseMult(_u1.value.bytes()), _x1:Pointer<stdgo.math.big.Big.Int_> = __tmp__._0, _y1:Pointer<stdgo.math.big.Big.Int_> = __tmp__._1;
                var __tmp__ = _c.scalarMult(_pub.value.x, _pub.value.y, _u2.value.bytes()), _x2:Pointer<stdgo.math.big.Big.Int_> = __tmp__._0, _y2:Pointer<stdgo.math.big.Big.Int_> = __tmp__._1;
                {
                    var __tmp__ = _c.add(_x1, _y1, _x2, _y2);
                    _x = __tmp__._0;
                    _y = __tmp__._1;
                };
            };
        };
        if (_x.value.sign() == ((0 : GoInt)) && _y.value.sign() == ((0 : GoInt))) {
            return false;
        };
        _x.value.mod(_x, n);
        return _x.value.cmp(_r) == ((0 : GoInt));
    }
/**
    // VerifyASN1 verifies the ASN.1 encoded signature, sig, of hash using the
    // public key, pub. Its return value records whether the signature is valid.
**/
function verifyASN1(_pub:Pointer<PublicKey>, _hash:Slice<GoByte>, _sig:Slice<GoByte>):Bool {
        var _r:Pointer<stdgo.math.big.Big.Int_> = Go.pointer(new stdgo.math.big.Big.Int_()), _s:Pointer<stdgo.math.big.Big.Int_> = Go.pointer(new stdgo.math.big.Big.Int_()), _inner:golang_org.x.crypto.cryptobyte.Cryptobyte.String_ = new vendor.golang_org.x.crypto.cryptobyte.Cryptobyte.String_();
        var _input:vendor.golang_org.x.crypto.cryptobyte.Cryptobyte.String_ = new golang_org.x.crypto.cryptobyte.Cryptobyte.String_(_sig).__copy__();
        if (!_input.readASN1(Go.pointer(_inner), golang_org.x.crypto.cryptobyte.asn1.Asn1.sequence) || !_input.empty() || !_inner.readASN1Integer(Go.toInterface(_r)) || !_inner.readASN1Integer(Go.toInterface(_s)) || !_inner.empty()) {
            return false;
        };
        return verify(_pub, _hash, _r, _s);
    }
function _sign(_priv:Pointer<PrivateKey>, _csprng:Pointer<stdgo.crypto.cipher.Cipher.StreamReader>, _c:stdgo.crypto.elliptic.Elliptic.Curve, _hash:Slice<GoByte>):{ var _0 : Pointer<stdgo.math.big.Big.Int_>; var _1 : Pointer<stdgo.math.big.Big.Int_>; var _2 : Error; } {
        var _r:Pointer<stdgo.math.big.Big.Int_> = new Pointer<stdgo.math.big.Big.Int_>().nil(), _s:Pointer<stdgo.math.big.Big.Int_> = new Pointer<stdgo.math.big.Big.Int_>().nil(), _err:Error = ((null : stdgo.Error));
        return _signGeneric(_priv, _csprng, _c, _hash);
    }
function _verify(_pub:Pointer<PublicKey>, _c:stdgo.crypto.elliptic.Elliptic.Curve, _hash:Slice<GoByte>, _r:Pointer<stdgo.math.big.Big.Int_>, _s:Pointer<stdgo.math.big.Big.Int_>):Bool {
        return _verifyGeneric(_pub, _c, _hash, _r, _s);
    }
class PublicKey_extension_fields {
    public function equal(__tmp__, _x:stdgo.crypto.Crypto.PublicKey):Bool return __tmp__.equal(_x);
}
class PrivateKey_extension_fields {
    public function public_(__tmp__):stdgo.crypto.Crypto.PublicKey return __tmp__.public_();
    public function equal(__tmp__, _x:stdgo.crypto.Crypto.PrivateKey):Bool return __tmp__.equal(_x);
    public function sign(__tmp__, _rand:stdgo.io.Io.Reader, _digest:Slice<GoByte>, _opts:stdgo.crypto.Crypto.SignerOpts):{ var _0 : Slice<GoByte>; var _1 : Error; } return __tmp__.sign(_rand, _digest, _opts);
}
class T_zr_extension_fields {
    public function read(__tmp__, _dst:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } return __tmp__.read(_dst);
}
