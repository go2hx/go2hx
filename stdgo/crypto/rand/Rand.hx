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
@:structInit class T_reader {
    public function read(_b:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var _r = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _a:stdgo.syscall.js.Js.Value = _uint8Array.new_(Go.toInterface(_b.length));
        _jsCrypto.call("getRandomValues", Go.toInterface(_a));
        stdgo.syscall.js.Js.copyBytesToGo(_b, _a);
        return { _0 : _b.length, _1 : ((null : stdgo.Error)) };
    }
    public function new() stdgo.internal.Macro.initLocals();
    public function toString() {
        return "{}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_reader();
    }
    public function __set__(__tmp__) {
        return this;
    }
}
var _smallPrimesProduct : Pointer<stdgo.math.big.Big.Int_> = Go.pointer(new stdgo.math.big.Big.Int_()).value.setUint64((("16294579238595022365" : GoUInt64)));
var _uint8Array : stdgo.syscall.js.Js.Value = stdgo.syscall.js.Js.global().get("Uint8Array");
var _jsCrypto : stdgo.syscall.js.Js.Value = stdgo.syscall.js.Js.global().get("crypto");
var _smallPrimes : Slice<GoUInt8> = new Slice<GoUInt8>(
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
((53 : GoUInt8)));
var reader : stdgo.io.Io.Reader = ((null : stdgo.io.Io.Reader));
/**
    // Read is a helper function that calls Reader.Read using io.ReadFull.
    // On return, n == len(b) if and only if err == nil.
**/
function read(_b:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var _n:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
        return stdgo.io.Io.readFull(reader, _b);
    }
/**
    // Prime returns a number, p, of the given size, such that p is prime
    // with high probability.
    // Prime will return error for any error returned by rand.Read or if bits < 2.
**/
function prime(_rand:stdgo.io.Io.Reader, _bits:GoInt):{ var _0 : Pointer<stdgo.math.big.Big.Int_>; var _1 : Error; } {
        return stdgo.internal.Macro.controlFlow({
            var _p:Pointer<stdgo.math.big.Big.Int_> = new Pointer<stdgo.math.big.Big.Int_>().nil(), _err:Error = ((null : stdgo.Error));
            if (_bits < ((2 : GoInt))) {
                _err = stdgo.errors.Errors.new_("crypto/rand: prime size must be at least 2-bit");
                return { _0 : _p, _1 : _err };
            };
            var _b:GoUInt = (((_bits % ((8 : GoInt))) : GoUInt));
            if (_b == ((0 : GoUInt))) {
                _b = ((8 : GoUInt));
            };
            var _bytes:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... (((_bits + ((7 : GoInt))) / ((8 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]);
            _p = Go.pointer(new stdgo.math.big.Big.Int_());
            var _bigMod:Pointer<stdgo.math.big.Big.Int_> = Go.pointer(new stdgo.math.big.Big.Int_());
            while (true) {
                {
                    var __tmp__ = stdgo.io.Io.readFull(_rand, _bytes);
                    _err = __tmp__._1;
                };
                if (_err != null) {
                    return { _0 : new Pointer<stdgo.math.big.Big.Int_>().nil(), _1 : _err };
                };
                _bytes[((0 : GoInt))] = _bytes[((0 : GoInt))] & (((((((((1 : GoInt)) << _b) : GoInt)) - ((1 : GoInt))) : GoUInt8)));
                if (_b >= ((2 : GoUInt))) {
                    _bytes[((0 : GoInt))] = _bytes[((0 : GoInt))] | ((((3 : GoUInt8)) << (_b - ((2 : GoUInt)))));
                } else {
                    _bytes[((0 : GoInt))] = _bytes[((0 : GoInt))] | (((1 : GoUInt8)));
                    if (_bytes.length > ((1 : GoInt))) {
                        _bytes[((1 : GoInt))] = _bytes[((1 : GoInt))] | (((128 : GoUInt8)));
                    };
                };
                _bytes[_bytes.length - ((1 : GoInt))] = _bytes[_bytes.length - ((1 : GoInt))] | (((1 : GoUInt8)));
                _p.value.setBytes(_bytes);
                _bigMod.value.mod(_p, _smallPrimesProduct);
                var _mod:GoUInt64 = _bigMod.value.uint64();
                @:label("NextDelta") {
                    var _delta:GoUInt64 = ((((0 : GoUInt64)) : GoUInt64));
                    Go.cfor(_delta < (((1 : GoUnTypedInt)) << ((20 : GoUnTypedInt))), _delta = _delta + (((2 : GoUInt64))), {
                        var _m:GoUInt64 = _mod + _delta;
                        for (_ => _prime in _smallPrimes) {
                            if (_m % ((_prime : GoUInt64)) == ((0 : GoUInt64)) && (_bits > ((6 : GoInt)) || _m != ((_prime : GoUInt64)))) {
                                continue;
                            };
                        };
                        if (_delta > ((0 : GoUInt64))) {
                            _bigMod.value.setUint64(_delta);
                            _p.value.add(_p, _bigMod);
                        };
                        break;
                    });
                };
                if (_p.value.probablyPrime(((20 : GoInt))) && _p.value.bitLen() == _bits) {
                    return { _0 : _p, _1 : _err };
                };
            };
        });
    }
/**
    // Int returns a uniform random value in [0, max). It panics if max <= 0.
**/
function int(_rand:stdgo.io.Io.Reader, _max:Pointer<stdgo.math.big.Big.Int_>):{ var _0 : Pointer<stdgo.math.big.Big.Int_>; var _1 : Error; } {
        var _n:Pointer<stdgo.math.big.Big.Int_> = new Pointer<stdgo.math.big.Big.Int_>().nil(), _err:Error = ((null : stdgo.Error));
        if (_max.value.sign() <= ((0 : GoInt))) {
            throw "crypto/rand: argument to Int is <= 0";
        };
        _n = Go.pointer(new stdgo.math.big.Big.Int_());
        _n.value.sub(_max, _n.value.setUint64(((1 : GoUInt64))));
        var _bitLen:GoInt = _n.value.bitLen();
        if (_bitLen == ((0 : GoInt))) {
            return { _0 : _n, _1 : _err };
        };
        var _k:GoInt = (_bitLen + ((7 : GoInt))) / ((8 : GoInt));
        var _b:GoUInt = (((_bitLen % ((8 : GoInt))) : GoUInt));
        if (_b == ((0 : GoUInt))) {
            _b = ((8 : GoUInt));
        };
        var _bytes:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((_k : GoInt)).toBasic()) ((0 : GoUInt8))]);
        while (true) {
            {
                var __tmp__ = stdgo.io.Io.readFull(_rand, _bytes);
                _err = __tmp__._1;
            };
            if (_err != null) {
                return { _0 : new Pointer<stdgo.math.big.Big.Int_>().nil(), _1 : _err };
            };
            _bytes[((0 : GoInt))] = _bytes[((0 : GoInt))] & (((((((((1 : GoInt)) << _b) : GoInt)) - ((1 : GoInt))) : GoUInt8)));
            _n.value.setBytes(_bytes);
            if (_n.value.cmp(_max) < ((0 : GoInt))) {
                return { _0 : _n, _1 : _err };
            };
        };
    }
@:keep var _ = {
        try {
            reader = Go.pointer({}).value;
        } catch(e) if (e.message != "__return__") throw e;
        true;
    };
class T_reader_extension_fields {
    public function read(__tmp__, _b:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } return __tmp__.read(_b);
}
