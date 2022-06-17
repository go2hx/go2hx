package stdgo.crypto.rand;
import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;
var _jsCrypto : stdgo.syscall.js.Js.Value = stdgo.syscall.js.Js.global().get(((("crypto" : GoString))));
var _uint8Array : stdgo.syscall.js.Js.Value = stdgo.syscall.js.Js.global().get(((("Uint8Array" : GoString))));
var _smallPrimes : Slice<GoUInt8> = ((new Slice<GoUInt8>(
((3 : GoUInt8)),
((5 : GoUInt8)),
((7 : GoUInt8)),
((11 : GoUInt8)),
((13 : GoUInt8)),
((17 : GoUInt8)),
((19 : GoUInt8)),
((23 : GoUInt8)),
((29 : GoUInt8)),
((31 : GoUInt8)),
((37 : GoUInt8)),
((41 : GoUInt8)),
((43 : GoUInt8)),
((47 : GoUInt8)),
((53 : GoUInt8))) : Slice<GoUInt8>));
var _smallPrimesProduct : Ref<stdgo.math.big.Big.Int_> = new stdgo.math.big.Big.Int_().setUint64((("16294579238595022365" : GoUInt64)));
var reader : stdgo.io.Io.Reader = ((null : stdgo.io.Io.Reader));
@:structInit @:using(stdgo.crypto.rand.Rand.T_reader_static_extension) class T_reader {
    public function new() {}
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_reader();
    }
}
/**
    // Read is a helper function that calls Reader.Read using io.ReadFull.
    // On return, n == len(b) if and only if err == nil.
**/
function read(_b:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var _n:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
        return stdgo.io.Io.readFull(reader, _b);
    }
/**
    // batched returns a function that calls f to populate a []byte by chunking it
    // into subslices of, at most, readMax bytes.
**/
function _batched(_f:Slice<GoByte> -> Error, _readMax:GoInt):Slice<GoByte> -> Error {
        return function(_out:Slice<GoByte>):Error {
            while ((_out != null ? _out.length : ((0 : GoInt))) > ((0 : GoInt))) {
                var _read:GoInt = (_out != null ? _out.length : ((0 : GoInt)));
                if (_read > _readMax) {
                    _read = _readMax;
                };
                {
                    var _err:stdgo.Error = _f(((_out.__slice__(0, _read) : Slice<GoUInt8>)));
                    if (_err != null) {
                        return _err;
                    };
                };
                _out = ((_out.__slice__(_read) : Slice<GoUInt8>));
            };
            return ((null : stdgo.Error));
        };
    }
/**
    // Prime returns a number, p, of the given size, such that p is prime
    // with high probability.
    // Prime will return error for any error returned by rand.Read or if bits < 2.
**/
function prime(_rand:stdgo.io.Io.Reader, _bits:GoInt):{ var _0 : stdgo.math.big.Big.Int_; var _1 : Error; } {
        return stdgo.internal.Macro.controlFlow({
            var _p:stdgo.math.big.Big.Int_ = null, _err:Error = ((null : stdgo.Error));
            if (_bits < ((2 : GoInt))) {
                _err = stdgo.errors.Errors.new_(((("crypto/rand: prime size must be at least 2-bit" : GoString))));
                return { _0 : _p, _1 : _err };
            };
            var _b:GoUInt = (((_bits % ((8 : GoInt))) : GoUInt));
            if (_b == ((0 : GoUInt))) {
                _b = ((8 : GoUInt));
            };
            var _bytes = new Slice<GoUInt8>(...[for (i in 0 ... (((_bits + ((7 : GoInt))) / ((8 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]);
            _p = new stdgo.math.big.Big.Int_();
            var _bigMod = new stdgo.math.big.Big.Int_();
            while (true) {
                {
                    var __tmp__ = stdgo.io.Io.readFull(_rand, _bytes);
                    _err = __tmp__._1;
                };
                if (_err != null) {
                    return { _0 : null, _1 : _err };
                };
                if (_bytes != null) (_bytes != null ? _bytes[((0 : GoInt))] : ((0 : GoUInt8))) & (((((((((1 : GoInt)) << _b) : GoInt)) - ((1 : GoInt))) : GoUInt8)));
                if (_b >= ((2 : GoUInt))) {
                    if (_bytes != null) (_bytes != null ? _bytes[((0 : GoInt))] : ((0 : GoUInt8))) | (((3 : GoUInt8)) << (_b - ((2 : GoUInt))));
                } else {
                    if (_bytes != null) (_bytes != null ? _bytes[((0 : GoInt))] : ((0 : GoUInt8))) | (((1 : GoUInt8)));
                    if ((_bytes != null ? _bytes.length : ((0 : GoInt))) > ((1 : GoInt))) {
                        if (_bytes != null) (_bytes != null ? _bytes[((1 : GoInt))] : ((0 : GoUInt8))) | (((128 : GoUInt8)));
                    };
                };
                if (_bytes != null) (_bytes != null ? _bytes[(_bytes != null ? _bytes.length : ((0 : GoInt))) - ((1 : GoInt))] : ((0 : GoUInt8))) | (((1 : GoUInt8)));
                _p.setBytes(_bytes);
                _bigMod.mod(_p, _smallPrimesProduct);
                var _mod:GoUInt64 = _bigMod.uint64();
                @:label("NextDelta") {
                    var _delta:GoUInt64 = ((((0 : GoUInt64)) : GoUInt64));
                    Go.cfor(_delta < ((1048576 : GoUInt64)), _delta = _delta + (((2 : GoUInt64))), {
                        var _m:GoUInt64 = _mod + _delta;
                        for (_0 => _prime in _smallPrimes) {
                            if (((_m % ((_prime : GoUInt64))) == ((0 : GoUInt64))) && ((_bits > ((6 : GoInt))) || (_m != ((_prime : GoUInt64))))) {
                                continue;
                            };
                        };
                        if (_delta > ((0 : GoUInt64))) {
                            _bigMod.setUint64(_delta);
                            _p.add(_p, _bigMod);
                        };
                        break;
                    });
                };
                if (_p.probablyPrime(((20 : GoInt))) && (_p.bitLen() == _bits)) {
                    return { _0 : _p, _1 : _err };
                };
            };
        });
    }
/**
    // Int returns a uniform random value in [0, max). It panics if max <= 0.
**/
function int(_rand:stdgo.io.Io.Reader, _max:stdgo.math.big.Big.Int_):{ var _0 : stdgo.math.big.Big.Int_; var _1 : Error; } {
        var _n:stdgo.math.big.Big.Int_ = null, _err:Error = ((null : stdgo.Error));
        if (_max.sign() <= ((0 : GoInt))) {
            throw Go.toInterface(((("crypto/rand: argument to Int is <= 0" : GoString))));
        };
        _n = new stdgo.math.big.Big.Int_();
        _n.sub(_max, _n.setUint64(((1 : GoUInt64))));
        var _bitLen:GoInt = _n.bitLen();
        if (_bitLen == ((0 : GoInt))) {
            return { _0 : _n, _1 : _err };
        };
        var _k:GoInt = (_bitLen + ((7 : GoInt))) / ((8 : GoInt));
        var _b:GoUInt = (((_bitLen % ((8 : GoInt))) : GoUInt));
        if (_b == ((0 : GoUInt))) {
            _b = ((8 : GoUInt));
        };
        var _bytes = new Slice<GoUInt8>(...[for (i in 0 ... ((_k : GoInt)).toBasic()) ((0 : GoUInt8))]);
        while (true) {
            {
                var __tmp__ = stdgo.io.Io.readFull(_rand, _bytes);
                _err = __tmp__._1;
            };
            if (_err != null) {
                return { _0 : null, _1 : _err };
            };
            if (_bytes != null) (_bytes != null ? _bytes[((0 : GoInt))] : ((0 : GoUInt8))) & (((((((((1 : GoInt)) << _b) : GoInt)) - ((1 : GoInt))) : GoUInt8)));
            _n.setBytes(_bytes);
            if (_n.cmp(_max) < ((0 : GoInt))) {
                return { _0 : _n, _1 : _err };
            };
        };
    }
@:keep var _ = {
        try {
            reader = ((new T_reader() : T_reader));
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };
@:keep class T_reader_static_extension {
    @:keep
    public static function read( _r:T_reader, _b:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var _a:stdgo.syscall.js.Js.Value = _uint8Array.new_(Go.toInterface((_b != null ? _b.length : ((0 : GoInt)))));
        _jsCrypto.call(((("getRandomValues" : GoString))), Go.toInterface(_a));
        stdgo.syscall.js.Js.copyBytesToGo(_b, _a);
        return { _0 : (_b != null ? _b.length : ((0 : GoInt))), _1 : ((null : stdgo.Error)) };
    }
}
class T_reader_wrapper {
    @:keep
    public var read : Slice<GoByte> -> { var _0 : GoInt; var _1 : Error; } = null;
    public function new(__self__) this.__self__ = __self__;
    public function __underlying__() return Go.toInterface(__self__);
    var __self__ : T_reader;
}
