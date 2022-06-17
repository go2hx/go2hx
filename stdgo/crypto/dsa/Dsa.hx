package stdgo.crypto.dsa;
import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;
var errInvalidPublicKey : stdgo.Error = stdgo.errors.Errors.new_(((("crypto/dsa: invalid public key" : GoString))));
@:structInit class Parameters {
    public var p : Ref<stdgo.math.big.Big.Int_> = null;
    public var q : Ref<stdgo.math.big.Big.Int_> = null;
    public var g : Ref<stdgo.math.big.Big.Int_> = null;
    public function new(?p:Ref<stdgo.math.big.Big.Int_>, ?q:Ref<stdgo.math.big.Big.Int_>, ?g:Ref<stdgo.math.big.Big.Int_>) {
        if (p != null) this.p = p;
        if (q != null) this.q = q;
        if (g != null) this.g = g;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new Parameters(p, q, g);
    }
}
@:structInit class PublicKey {
    @:embedded
    public var parameters : Parameters = new Parameters();
    public var y : Ref<stdgo.math.big.Big.Int_> = null;
    public function new(?parameters:Parameters, ?y:Ref<stdgo.math.big.Big.Int_>) {
        if (parameters != null) this.parameters = parameters;
        if (y != null) this.y = y;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new PublicKey(parameters, y);
    }
}
@:structInit class PrivateKey {
    @:embedded
    public var publicKey : PublicKey = new PublicKey();
    public var x : Ref<stdgo.math.big.Big.Int_> = null;
    public function new(?publicKey:PublicKey, ?x:Ref<stdgo.math.big.Big.Int_>) {
        if (publicKey != null) this.publicKey = publicKey;
        if (x != null) this.x = x;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new PrivateKey(publicKey, x);
    }
}
@:named typedef ParameterSizes = GoInt;
/**
    // GenerateParameters puts a random, valid set of DSA parameters into params.
    // This function can take many seconds, even on fast machines.
**/
function generateParameters(_params:Parameters, _rand:stdgo.io.Io.Reader, _sizes:ParameterSizes):Error {
        return stdgo.internal.Macro.controlFlow({
            var l:GoInt = ((0 : GoInt)), n:GoInt = ((0 : GoInt));
            if (_sizes == ((0 : GoInt))) {
                l = ((1024 : GoInt));
                n = ((160 : GoInt));
            } else if (_sizes == ((1 : GoInt))) {
                l = ((2048 : GoInt));
                n = ((224 : GoInt));
            } else if (_sizes == ((2 : GoInt))) {
                l = ((2048 : GoInt));
                n = ((256 : GoInt));
            } else if (_sizes == ((3 : GoInt))) {
                l = ((3072 : GoInt));
                n = ((256 : GoInt));
            } else {
                return stdgo.errors.Errors.new_(((("crypto/dsa: invalid ParameterSizes" : GoString))));
            };
            var _qBytes = new Slice<GoUInt8>(...[for (i in 0 ... ((n / ((8 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]);
            var _pBytes = new Slice<GoUInt8>(...[for (i in 0 ... ((l / ((8 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]);
            var _q = new stdgo.math.big.Big.Int_();
            var _p = new stdgo.math.big.Big.Int_();
            var _rem = new stdgo.math.big.Big.Int_();
            var _one = new stdgo.math.big.Big.Int_();
            _one.setInt64(((1 : GoInt64)));
            @:label("GeneratePrimes") while (true) {
                {
                    var __tmp__ = stdgo.io.Io.readFull(_rand, _qBytes), _0:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err != null) {
                        return _err;
                    };
                };
                if (_qBytes != null) (_qBytes != null ? _qBytes[(_qBytes != null ? _qBytes.length : ((0 : GoInt))) - ((1 : GoInt))] : ((0 : GoUInt8))) | (((1 : GoUInt8)));
                if (_qBytes != null) (_qBytes != null ? _qBytes[((0 : GoInt))] : ((0 : GoUInt8))) | (((128 : GoUInt8)));
                _q.setBytes(_qBytes);
                if (!_q.probablyPrime(((64 : GoInt)))) {
                    continue;
                };
                {
                    var _i:GoInt = ((0 : GoInt));
                    Go.cfor(_i < (((4 : GoInt)) * l), _i++, {
                        {
                            var __tmp__ = stdgo.io.Io.readFull(_rand, _pBytes), _1:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                            if (_err != null) {
                                return _err;
                            };
                        };
                        if (_pBytes != null) (_pBytes != null ? _pBytes[(_pBytes != null ? _pBytes.length : ((0 : GoInt))) - ((1 : GoInt))] : ((0 : GoUInt8))) | (((1 : GoUInt8)));
                        if (_pBytes != null) (_pBytes != null ? _pBytes[((0 : GoInt))] : ((0 : GoUInt8))) | (((128 : GoUInt8)));
                        _p.setBytes(_pBytes);
                        _rem.mod(_p, _q);
                        _rem.sub(_rem, _one);
                        _p.sub(_p, _rem);
                        if (_p.bitLen() < l) {
                            continue;
                        };
                        if (!_p.probablyPrime(((64 : GoInt)))) {
                            continue;
                        };
                        _params.p = _p;
                        _params.q = _q;
                        @:break {
                            ____exit____ = true;
                            ____break____ = true;
                            break;
                        };
                    });
                };
            };
            var _h = new stdgo.math.big.Big.Int_();
            _h.setInt64(((2 : GoInt64)));
            var _g = new stdgo.math.big.Big.Int_();
            var _pm1 = new stdgo.math.big.Big.Int_().sub(_p, _one);
            var _e = new stdgo.math.big.Big.Int_().div(_pm1, _q);
            while (true) {
                _g.exp(_h, _e, _p);
                if (_g.cmp(_one) == ((0 : GoInt))) {
                    _h.add(_h, _one);
                    continue;
                };
                _params.g = _g;
                return ((null : stdgo.Error));
            };
        });
    }
/**
    // GenerateKey generates a public&private key pair. The Parameters of the
    // PrivateKey must already be valid (see GenerateParameters).
**/
function generateKey(_priv:PrivateKey, _rand:stdgo.io.Io.Reader):Error {
        if (((_priv.p == null) || (_priv.q == null)) || (_priv.g == null)) {
            return stdgo.errors.Errors.new_(((("crypto/dsa: parameters not set up before generating key" : GoString))));
        };
        var _x = new stdgo.math.big.Big.Int_();
        var _xBytes = new Slice<GoUInt8>(...[for (i in 0 ... ((_priv.q.bitLen() / ((8 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]);
        while (true) {
            var __tmp__ = stdgo.io.Io.readFull(_rand, _xBytes), _0:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return _err;
            };
            _x.setBytes(_xBytes);
            if ((_x.sign() != ((0 : GoInt))) && (_x.cmp(_priv.q) < ((0 : GoInt)))) {
                break;
            };
        };
        _priv.x = _x;
        _priv.y = new stdgo.math.big.Big.Int_();
        _priv.y.exp(_priv.g, _x, _priv.p);
        return ((null : stdgo.Error));
    }
/**
    // fermatInverse calculates the inverse of k in GF(P) using Fermat's method.
    // This has better constant-time properties than Euclid's method (implemented
    // in math/big.Int.ModInverse) although math/big itself isn't strictly
    // constant-time so it's not perfect.
**/
function _fermatInverse(_k:stdgo.math.big.Big.Int_, p:stdgo.math.big.Big.Int_):stdgo.math.big.Big.Int_ {
        var _two = stdgo.math.big.Big.newInt(((2 : GoInt64)));
        var _pMinus2 = new stdgo.math.big.Big.Int_().sub(p, _two);
        return new stdgo.math.big.Big.Int_().exp(_k, _pMinus2, p);
    }
/**
    // Sign signs an arbitrary length hash (which should be the result of hashing a
    // larger message) using the private key, priv. It returns the signature as a
    // pair of integers. The security of the private key depends on the entropy of
    // rand.
    //
    // Note that FIPS 186-3 section 4.6 specifies that the hash should be truncated
    // to the byte-length of the subgroup. This function does not perform that
    // truncation itself.
    //
    // Be aware that calling Sign with an attacker-controlled PrivateKey may
    // require an arbitrary amount of CPU.
**/
function sign(_rand:stdgo.io.Io.Reader, _priv:PrivateKey, _hash:Slice<GoByte>):{ var _0 : stdgo.math.big.Big.Int_; var _1 : stdgo.math.big.Big.Int_; var _2 : Error; } {
        var _r:stdgo.math.big.Big.Int_ = null, _s:stdgo.math.big.Big.Int_ = null, _err:Error = ((null : stdgo.Error));
        crypto.internal.randutil.Randutil.maybeReadByte(_rand);
        var _n:GoInt = _priv.q.bitLen();
        if (((((_priv.q.sign() <= ((0 : GoInt))) || (_priv.p.sign() <= ((0 : GoInt)))) || (_priv.g.sign() <= ((0 : GoInt)))) || (_priv.x.sign() <= ((0 : GoInt)))) || ((_n % ((8 : GoInt))) != ((0 : GoInt)))) {
            _err = errInvalidPublicKey;
            return { _0 : _r, _1 : _s, _2 : _err };
        };
        _n = _n >> (((3 : GoUnTypedInt)));
        var _attempts:GoInt = ((0 : GoInt));
        {
            _attempts = ((10 : GoInt));
            Go.cfor(_attempts > ((0 : GoInt)), _attempts--, {
                var _k = new stdgo.math.big.Big.Int_();
                var _buf = new Slice<GoUInt8>(...[for (i in 0 ... ((_n : GoInt)).toBasic()) ((0 : GoUInt8))]);
                while (true) {
                    {
                        var __tmp__ = stdgo.io.Io.readFull(_rand, _buf);
                        _err = __tmp__._1;
                    };
                    if (_err != null) {
                        return { _0 : _r, _1 : _s, _2 : _err };
                    };
                    _k.setBytes(_buf);
                    if ((_k.sign() > ((0 : GoInt))) && (_k.cmp(_priv.q) < ((0 : GoInt)))) {
                        break;
                    };
                };
                var _kInv = _fermatInverse(_k, _priv.q);
                _r = new stdgo.math.big.Big.Int_().exp(_priv.g, _k, _priv.p);
                _r.mod(_r, _priv.q);
                if (_r.sign() == ((0 : GoInt))) {
                    continue;
                };
                var _z = _k.setBytes(_hash);
                _s = new stdgo.math.big.Big.Int_().mul(_priv.x, _r);
                _s.add(_s, _z);
                _s.mod(_s, _priv.q);
                _s.mul(_s, _kInv);
                _s.mod(_s, _priv.q);
                if (_s.sign() != ((0 : GoInt))) {
                    break;
                };
            });
        };
        if (_attempts == ((0 : GoInt))) {
            return { _0 : null, _1 : null, _2 : errInvalidPublicKey };
        };
        return { _0 : _r, _1 : _s, _2 : _err };
    }
/**
    // Verify verifies the signature in r, s of hash using the public key, pub. It
    // reports whether the signature is valid.
    //
    // Note that FIPS 186-3 section 4.6 specifies that the hash should be truncated
    // to the byte-length of the subgroup. This function does not perform that
    // truncation itself.
**/
function verify(_pub:PublicKey, _hash:Slice<GoByte>, _r:stdgo.math.big.Big.Int_, _s:stdgo.math.big.Big.Int_):Bool {
        if (_pub.p.sign() == ((0 : GoInt))) {
            return false;
        };
        if ((_r.sign() < ((1 : GoInt))) || (_r.cmp(_pub.q) >= ((0 : GoInt)))) {
            return false;
        };
        if ((_s.sign() < ((1 : GoInt))) || (_s.cmp(_pub.q) >= ((0 : GoInt)))) {
            return false;
        };
        var _w = new stdgo.math.big.Big.Int_().modInverse(_s, _pub.q);
        if (_w == null) {
            return false;
        };
        var _n:GoInt = _pub.q.bitLen();
        if ((_n % ((8 : GoInt))) != ((0 : GoInt))) {
            return false;
        };
        var _z = new stdgo.math.big.Big.Int_().setBytes(_hash);
        var _u1 = new stdgo.math.big.Big.Int_().mul(_z, _w);
        _u1.mod(_u1, _pub.q);
        var _u2 = _w.mul(_r, _w);
        _u2.mod(_u2, _pub.q);
        var _v = _u1.exp(_pub.g, _u1, _pub.p);
        _u2.exp(_pub.y, _u2, _pub.p);
        _v.mul(_v, _u2);
        _v.mod(_v, _pub.p);
        _v.mod(_v, _pub.q);
        return _v.cmp(_r) == ((0 : GoInt));
    }
