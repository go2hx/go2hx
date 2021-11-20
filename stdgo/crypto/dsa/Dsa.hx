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
@:structInit class Parameters {
    public var p : Pointer<stdgo.math.big.Big.Int_> = new Pointer<stdgo.math.big.Big.Int_>().nil();
    public var q : Pointer<stdgo.math.big.Big.Int_> = new Pointer<stdgo.math.big.Big.Int_>().nil();
    public var g : Pointer<stdgo.math.big.Big.Int_> = new Pointer<stdgo.math.big.Big.Int_>().nil();
    public function new(?p:Pointer<stdgo.math.big.Big.Int_>, ?q:Pointer<stdgo.math.big.Big.Int_>, ?g:Pointer<stdgo.math.big.Big.Int_>) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(p) + " " + Go.string(q) + " " + Go.string(g) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new Parameters(p, q, g);
    }
    public function __set__(__tmp__) {
        this.p = __tmp__.p;
        this.q = __tmp__.q;
        this.g = __tmp__.g;
        return this;
    }
}
@:structInit class PublicKey {
    @:embedded
    public var parameters : Parameters = new Parameters();
    public var y : Pointer<stdgo.math.big.Big.Int_> = new Pointer<stdgo.math.big.Big.Int_>().nil();
    public function new(?parameters:Parameters, ?y:Pointer<stdgo.math.big.Big.Int_>) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(parameters) + " " + Go.string(y) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new PublicKey(parameters, y);
    }
    public function __set__(__tmp__) {
        this.parameters = __tmp__.parameters;
        this.y = __tmp__.y;
        return this;
    }
}
@:structInit class PrivateKey {
    @:embedded
    public var publicKey : PublicKey = new PublicKey();
    public var x : Pointer<stdgo.math.big.Big.Int_> = new Pointer<stdgo.math.big.Big.Int_>().nil();
    public function new(?publicKey:PublicKey, ?x:Pointer<stdgo.math.big.Big.Int_>) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(publicKey) + " " + Go.string(x) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new PrivateKey(publicKey, x);
    }
    public function __set__(__tmp__) {
        this.publicKey = __tmp__.publicKey;
        this.x = __tmp__.x;
        return this;
    }
}
@:named class ParameterSizes {
    public var __t__ : GoInt;
    public function new(?t:GoInt) {
        __t__ = t == null ? 0 : t;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    @:implicit
    public function toString():GoString return Go.string(__t__);
    public function __copy__() return new ParameterSizes(__t__);
}
final l3072n256 : ParameterSizes = new ParameterSizes((3 : GoUnTypedInt));
final l2048n256 : ParameterSizes = new ParameterSizes((2 : GoUnTypedInt));
final l2048n224 : ParameterSizes = new ParameterSizes((1 : GoUnTypedInt));
var errInvalidPublicKey : stdgo.Error = stdgo.errors.Errors.new_("crypto/dsa: invalid public key");
final _numMRTests : GoInt64 = ((64 : GoUnTypedInt));
final l1024n160 : ParameterSizes = new ParameterSizes((0 : GoUnTypedInt));
/**
    // GenerateParameters puts a random, valid set of DSA parameters into params.
    // This function can take many seconds, even on fast machines.
**/
function generateParameters(_params:Pointer<Parameters>, _rand:stdgo.io.Io.Reader, _sizes:ParameterSizes):Error {
        return stdgo.internal.Macro.controlFlow({
            var l:GoInt = ((0 : GoInt)), n:GoInt = ((0 : GoInt));
            if (_sizes.__t__ == l1024n160.__t__) {
                l = ((1024 : GoInt));
                n = ((160 : GoInt));
            } else if (_sizes.__t__ == l2048n224.__t__) {
                l = ((2048 : GoInt));
                n = ((224 : GoInt));
            } else if (_sizes.__t__ == l2048n256.__t__) {
                l = ((2048 : GoInt));
                n = ((256 : GoInt));
            } else if (_sizes.__t__ == l3072n256.__t__) {
                l = ((3072 : GoInt));
                n = ((256 : GoInt));
            } else {
                return stdgo.errors.Errors.new_("crypto/dsa: invalid ParameterSizes");
            };
            var _qBytes:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((n / ((8 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]);
            var _pBytes:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((l / ((8 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]);
            var _q:Pointer<stdgo.math.big.Big.Int_> = Go.pointer(new stdgo.math.big.Big.Int_());
            var _p:Pointer<stdgo.math.big.Big.Int_> = Go.pointer(new stdgo.math.big.Big.Int_());
            var _rem:Pointer<stdgo.math.big.Big.Int_> = Go.pointer(new stdgo.math.big.Big.Int_());
            var _one:Pointer<stdgo.math.big.Big.Int_> = Go.pointer(new stdgo.math.big.Big.Int_());
            _one.value.setInt64(((1 : GoInt64)));
            @:label("GeneratePrimes") while (true) {
                {
                    var __tmp__ = stdgo.io.Io.readFull(_rand, _qBytes), _:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err != null) {
                        return _err;
                    };
                };
                _qBytes[_qBytes.length - ((1 : GoInt))] = _qBytes[_qBytes.length - ((1 : GoInt))] | (((1 : GoUInt8)));
                _qBytes[((0 : GoInt))] = _qBytes[((0 : GoInt))] | (((128 : GoUInt8)));
                _q.value.setBytes(_qBytes);
                if (!_q.value.probablyPrime(_numMRTests)) {
                    continue;
                };
                {
                    var _i:GoInt = ((0 : GoInt));
                    Go.cfor(_i < ((4 : GoInt)) * l, _i++, {
                        {
                            var __tmp__ = stdgo.io.Io.readFull(_rand, _pBytes), _:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                            if (_err != null) {
                                return _err;
                            };
                        };
                        _pBytes[_pBytes.length - ((1 : GoInt))] = _pBytes[_pBytes.length - ((1 : GoInt))] | (((1 : GoUInt8)));
                        _pBytes[((0 : GoInt))] = _pBytes[((0 : GoInt))] | (((128 : GoUInt8)));
                        _p.value.setBytes(_pBytes);
                        _rem.value.mod(_p, _q);
                        _rem.value.sub(_rem, _one);
                        _p.value.sub(_p, _rem);
                        if (_p.value.bitLen() < l) {
                            continue;
                        };
                        if (!_p.value.probablyPrime(_numMRTests)) {
                            continue;
                        };
                        _params.value.p = _p;
                        _params.value.q = _q;
                        @:break {
                            ____exit____ = true;
                            ____break____ = true;
                            break;
                        };
                    });
                };
            };
            var _h:Pointer<stdgo.math.big.Big.Int_> = Go.pointer(new stdgo.math.big.Big.Int_());
            _h.value.setInt64(((2 : GoInt64)));
            var _g:Pointer<stdgo.math.big.Big.Int_> = Go.pointer(new stdgo.math.big.Big.Int_());
            var _pm1:Pointer<stdgo.math.big.Big.Int_> = Go.pointer(new stdgo.math.big.Big.Int_()).value.sub(_p, _one);
            var _e:Pointer<stdgo.math.big.Big.Int_> = Go.pointer(new stdgo.math.big.Big.Int_()).value.div(_pm1, _q);
            while (true) {
                _g.value.exp(_h, _e, _p);
                if (_g.value.cmp(_one) == ((0 : GoInt))) {
                    _h.value.add(_h, _one);
                    continue;
                };
                _params.value.g = _g;
                return ((null : stdgo.Error));
            };
        });
    }
/**
    // GenerateKey generates a public&private key pair. The Parameters of the
    // PrivateKey must already be valid (see GenerateParameters).
**/
function generateKey(_priv:Pointer<PrivateKey>, _rand:stdgo.io.Io.Reader):Error {
        if (_priv.value.publicKey.parameters.p == null || _priv.value.publicKey.parameters.p.isNil() || _priv.value.publicKey.parameters.q == null || _priv.value.publicKey.parameters.q.isNil() || _priv.value.publicKey.parameters.g == null || _priv.value.publicKey.parameters.g.isNil()) {
            return stdgo.errors.Errors.new_("crypto/dsa: parameters not set up before generating key");
        };
        var _x:Pointer<stdgo.math.big.Big.Int_> = Go.pointer(new stdgo.math.big.Big.Int_());
        var _xBytes:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((_priv.value.publicKey.parameters.q.value.bitLen() / ((8 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]);
        while (true) {
            var __tmp__ = stdgo.io.Io.readFull(_rand, _xBytes), _:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return _err;
            };
            _x.value.setBytes(_xBytes);
            if (_x.value.sign() != ((0 : GoInt)) && _x.value.cmp(_priv.value.publicKey.parameters.q) < ((0 : GoInt))) {
                break;
            };
        };
        _priv.value.x = _x;
        _priv.value.publicKey.y = Go.pointer(new stdgo.math.big.Big.Int_());
        _priv.value.publicKey.y.value.exp(_priv.value.publicKey.parameters.g, _x, _priv.value.publicKey.parameters.p);
        return ((null : stdgo.Error));
    }
/**
    // fermatInverse calculates the inverse of k in GF(P) using Fermat's method.
    // This has better constant-time properties than Euclid's method (implemented
    // in math/big.Int.ModInverse) although math/big itself isn't strictly
    // constant-time so it's not perfect.
**/
function _fermatInverse(_k:Pointer<stdgo.math.big.Big.Int_>, p:Pointer<stdgo.math.big.Big.Int_>):Pointer<stdgo.math.big.Big.Int_> {
        var _two:Pointer<stdgo.math.big.Big.Int_> = stdgo.math.big.Big.newInt(((2 : GoInt64)));
        var _pMinus2:Pointer<stdgo.math.big.Big.Int_> = Go.pointer(new stdgo.math.big.Big.Int_()).value.sub(p, _two);
        return Go.pointer(new stdgo.math.big.Big.Int_()).value.exp(_k, _pMinus2, p);
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
function sign(_rand:stdgo.io.Io.Reader, _priv:Pointer<PrivateKey>, _hash:Slice<GoByte>):{ var _0 : Pointer<stdgo.math.big.Big.Int_>; var _1 : Pointer<stdgo.math.big.Big.Int_>; var _2 : Error; } {
        var _r:Pointer<stdgo.math.big.Big.Int_> = new Pointer<stdgo.math.big.Big.Int_>().nil(), _s:Pointer<stdgo.math.big.Big.Int_> = new Pointer<stdgo.math.big.Big.Int_>().nil(), _err:Error = ((null : stdgo.Error));
        crypto.internal.randutil.Randutil.maybeReadByte(_rand);
        var _n:GoInt = _priv.value.publicKey.parameters.q.value.bitLen();
        if (_priv.value.publicKey.parameters.q.value.sign() <= ((0 : GoInt)) || _priv.value.publicKey.parameters.p.value.sign() <= ((0 : GoInt)) || _priv.value.publicKey.parameters.g.value.sign() <= ((0 : GoInt)) || _priv.value.x.value.sign() <= ((0 : GoInt)) || _n % ((8 : GoInt)) != ((0 : GoInt))) {
            _err = errInvalidPublicKey;
            return { _0 : _r, _1 : _s, _2 : _err };
        };
        _n = (_n >> (((3 : GoUnTypedInt))));
        var _attempts:GoInt = ((0 : GoInt));
        {
            _attempts = ((10 : GoInt));
            Go.cfor(_attempts > ((0 : GoInt)), _attempts--, {
                var _k:Pointer<stdgo.math.big.Big.Int_> = Go.pointer(new stdgo.math.big.Big.Int_());
                var _buf:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((_n : GoInt)).toBasic()) ((0 : GoUInt8))]);
                while (true) {
                    {
                        var __tmp__ = stdgo.io.Io.readFull(_rand, _buf);
                        _err = __tmp__._1;
                    };
                    if (_err != null) {
                        return { _0 : _r, _1 : _s, _2 : _err };
                    };
                    _k.value.setBytes(_buf);
                    if (_k.value.sign() > ((0 : GoInt)) && _k.value.cmp(_priv.value.publicKey.parameters.q) < ((0 : GoInt))) {
                        break;
                    };
                };
                var _kInv:Pointer<stdgo.math.big.Big.Int_> = _fermatInverse(_k, _priv.value.publicKey.parameters.q);
                _r = Go.pointer(new stdgo.math.big.Big.Int_()).value.exp(_priv.value.publicKey.parameters.g, _k, _priv.value.publicKey.parameters.p);
                _r.value.mod(_r, _priv.value.publicKey.parameters.q);
                if (_r.value.sign() == ((0 : GoInt))) {
                    continue;
                };
                var _z:Pointer<stdgo.math.big.Big.Int_> = _k.value.setBytes(_hash);
                _s = Go.pointer(new stdgo.math.big.Big.Int_()).value.mul(_priv.value.x, _r);
                _s.value.add(_s, _z);
                _s.value.mod(_s, _priv.value.publicKey.parameters.q);
                _s.value.mul(_s, _kInv);
                _s.value.mod(_s, _priv.value.publicKey.parameters.q);
                if (_s.value.sign() != ((0 : GoInt))) {
                    break;
                };
            });
        };
        if (_attempts == ((0 : GoInt))) {
            return { _0 : new Pointer<stdgo.math.big.Big.Int_>().nil(), _1 : new Pointer<stdgo.math.big.Big.Int_>().nil(), _2 : errInvalidPublicKey };
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
function verify(_pub:Pointer<PublicKey>, _hash:Slice<GoByte>, _r:Pointer<stdgo.math.big.Big.Int_>, _s:Pointer<stdgo.math.big.Big.Int_>):Bool {
        if (_pub.value.parameters.p.value.sign() == ((0 : GoInt))) {
            return false;
        };
        if (_r.value.sign() < ((1 : GoInt)) || _r.value.cmp(_pub.value.parameters.q) >= ((0 : GoInt))) {
            return false;
        };
        if (_s.value.sign() < ((1 : GoInt)) || _s.value.cmp(_pub.value.parameters.q) >= ((0 : GoInt))) {
            return false;
        };
        var _w:Pointer<stdgo.math.big.Big.Int_> = Go.pointer(new stdgo.math.big.Big.Int_()).value.modInverse(_s, _pub.value.parameters.q);
        if (_w == null || _w.isNil()) {
            return false;
        };
        var _n:GoInt = _pub.value.parameters.q.value.bitLen();
        if (_n % ((8 : GoInt)) != ((0 : GoInt))) {
            return false;
        };
        var _z:Pointer<stdgo.math.big.Big.Int_> = Go.pointer(new stdgo.math.big.Big.Int_()).value.setBytes(_hash);
        var _u1:Pointer<stdgo.math.big.Big.Int_> = Go.pointer(new stdgo.math.big.Big.Int_()).value.mul(_z, _w);
        _u1.value.mod(_u1, _pub.value.parameters.q);
        var _u2:Pointer<stdgo.math.big.Big.Int_> = _w.value.mul(_r, _w);
        _u2.value.mod(_u2, _pub.value.parameters.q);
        var _v:Pointer<stdgo.math.big.Big.Int_> = _u1.value.exp(_pub.value.parameters.g, _u1, _pub.value.parameters.p);
        _u2.value.exp(_pub.value.y, _u2, _pub.value.parameters.p);
        _v.value.mul(_v, _u2);
        _v.value.mod(_v, _pub.value.parameters.p);
        _v.value.mod(_v, _pub.value.parameters.q);
        return _v.value.cmp(_r) == ((0 : GoInt));
    }
