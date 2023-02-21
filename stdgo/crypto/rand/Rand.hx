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
/**
    // Package rand implements a cryptographically secure
    // random number generator.
**/
private var __go2hxdoc__package : Bool;
/**
    
    
    
**/
private var _jsCrypto = stdgo.syscall.js.Js.global().get(("crypto" : GoString));
/**
    
    
    
**/
private var _uint8Array = stdgo.syscall.js.Js.global().get(("Uint8Array" : GoString));
/**
    // Reader is a global, shared instance of a cryptographically
    // secure random number generator.
    //
    // On Linux, FreeBSD, Dragonfly and Solaris, Reader uses getrandom(2) if
    // available, /dev/urandom otherwise.
    // On OpenBSD and macOS, Reader uses getentropy(2).
    // On other Unix-like systems, Reader reads from /dev/urandom.
    // On Windows systems, Reader uses the RtlGenRandom API.
    // On Wasm, Reader uses the Web Crypto API.
    
    
**/
var reader : stdgo.io.Io.Reader = (null : stdgo.io.Io.Reader);
/**
    // reader implements a pseudorandom generator
    // using JavaScript crypto.getRandomValues method.
    // See https://developer.mozilla.org/en-US/docs/Web/API/Crypto/getRandomValues.
    
    
**/
@:structInit @:private @:using(stdgo.crypto.rand.Rand.T_reader_static_extension) class T_reader {
    public function new() {}
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new T_reader();
    }
}
/**
    // Read is a helper function that calls Reader.Read using io.ReadFull.
    // On return, n == len(b) if and only if err == nil.
**/
function read(_b:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var _n:GoInt = (0 : GoInt), _err:Error = (null : Error);
        return stdgo.io.Io.readFull(reader, _b);
    }
/**
    // batched returns a function that calls f to populate a []byte by chunking it
    // into subslices of, at most, readMax bytes.
**/
private function _batched(_f:Slice<GoByte> -> Error, _readMax:GoInt):Slice<GoByte> -> Error {
        return function(_out:Slice<GoByte>):Error {
            while ((_out.length) > (0 : GoInt)) {
                var _read:GoInt = (_out.length);
                if (_read > _readMax) {
                    _read = _readMax;
                };
                {
                    var _err:Error = _f((_out.__slice__(0, _read) : Slice<GoUInt8>));
                    if (_err != null) {
                        return _err;
                    };
                };
                _out = (_out.__slice__(_read) : Slice<GoUInt8>);
            };
            return (null : Error);
        };
    }
function testRead(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _n:GoInt = (4000000 : GoInt);
        if (stdgo.testing.Testing.short()) {
            _n = (100000 : GoInt);
        };
        var _b = new Slice<GoUInt8>((_n : GoInt).toBasic(), 0, ...[for (i in 0 ... (_n : GoInt).toBasic()) (0 : GoUInt8)]);
        var __tmp__ = stdgo.io.Io.readFull(reader, _b), _n:GoInt = __tmp__._0, _err:Error = __tmp__._1;
        if ((_n != (_b.length)) || (_err != null)) {
            _t.fatalf(("ReadFull(buf) = %d, %s" : GoString), Go.toInterface(_n), Go.toInterface(_err));
        };
        var _z:stdgo.bytes.Bytes.Buffer = ({} : stdgo.bytes.Bytes.Buffer);
        var __tmp__ = stdgo.compress.flate.Flate.newWriter(Go.asInterface((_z : Ref<stdgo.bytes.Bytes.Buffer>)), (5 : GoInt)), _f:Ref<stdgo.compress.flate.Flate.Writer> = __tmp__._0, _0:Error = __tmp__._1;
        _f.write(_b);
        _f.close();
        if (_z.len() < ((_b.length * (99 : GoInt)) / (100 : GoInt))) {
            _t.fatalf(("Compressed %d -> %d" : GoString), Go.toInterface((_b.length)), Go.toInterface(_z.len()));
        };
    }
function testReadEmpty(_t:Ref<stdgo.testing.Testing.T>):Void {
        var __tmp__ = reader.read(new Slice<GoUInt8>((0 : GoInt).toBasic(), 0, ...[for (i in 0 ... (0 : GoInt).toBasic()) (0 : GoUInt8)])), _n:GoInt = __tmp__._0, _err:Error = __tmp__._1;
        if ((_n != (0 : GoInt)) || (_err != null)) {
            _t.fatalf(("Read(make([]byte, 0)) = %d, %v" : GoString), Go.toInterface(_n), Go.toInterface(_err));
        };
        {
            var __tmp__ = reader.read((null : Slice<GoUInt8>));
            _n = __tmp__._0;
            _err = __tmp__._1;
        };
        if ((_n != (0 : GoInt)) || (_err != null)) {
            _t.fatalf(("Read(nil) = %d, %v" : GoString), Go.toInterface(_n), Go.toInterface(_err));
        };
    }
/**
    // Prime returns a number of the given bit length that is prime with high probability.
    // Prime will return error for any error returned by rand.Read or if bits < 2.
**/
function prime(_rand:stdgo.io.Io.Reader, _bits:GoInt):{ var _0 : Ref<stdgo.math.big.Big.Int_>; var _1 : Error; } {
        if (_bits < (2 : GoInt)) {
            return { _0 : null, _1 : stdgo.errors.Errors.new_(("crypto/rand: prime size must be at least 2-bit" : GoString)) };
        };
        stdgo.crypto.internal.randutil.Randutil.maybeReadByte(_rand);
        var _b:GoUInt = (_bits % (8 : GoInt) : GoUInt);
        if (_b == (("0" : GoUInt))) {
            _b = ("8" : GoUInt);
        };
        var _bytes = new Slice<GoUInt8>(((_bits + (7 : GoInt)) / (8 : GoInt) : GoInt).toBasic(), 0, ...[for (i in 0 ... ((_bits + (7 : GoInt)) / (8 : GoInt) : GoInt).toBasic()) (0 : GoUInt8)]);
        var _p = (({} : stdgo.math.big.Big.Int_) : Ref<stdgo.math.big.Big.Int_>);
        while (true) {
            {
                var __tmp__ = stdgo.io.Io.readFull(_rand, _bytes), _0:GoInt = __tmp__._0, _err:Error = __tmp__._1;
                if (_err != null) {
                    return { _0 : null, _1 : _err };
                };
            };
            _bytes[(0 : GoInt)] = _bytes[(0 : GoInt)] & ((((1 : GoInt) << _b : GoInt) - (1 : GoInt) : GoUInt8));
            if (_b >= ("2" : GoUInt)) {
                _bytes[(0 : GoInt)] = _bytes[(0 : GoInt)] | ((3 : GoUInt8) << (_b - (("2" : GoUInt) : GoUInt)));
            } else {
                _bytes[(0 : GoInt)] = _bytes[(0 : GoInt)] | ((1 : GoUInt8));
                if ((_bytes.length) > (1 : GoInt)) {
                    _bytes[(1 : GoInt)] = _bytes[(1 : GoInt)] | ((128 : GoUInt8));
                };
            };
            _bytes[((_bytes.length) - (1 : GoInt) : GoInt)] = _bytes[((_bytes.length) - (1 : GoInt) : GoInt)] | ((1 : GoUInt8));
            _p.setBytes(_bytes);
            if (_p.probablyPrime((20 : GoInt))) {
                return { _0 : _p, _1 : (null : Error) };
            };
        };
    }
/**
    // Int returns a uniform random value in [0, max). It panics if max <= 0.
**/
function int_(_rand:stdgo.io.Io.Reader, _max:Ref<stdgo.math.big.Big.Int_>):{ var _0 : Ref<stdgo.math.big.Big.Int_>; var _1 : Error; } {
        var _n:Ref<stdgo.math.big.Big.Int_> = (null : Ref<stdgo.math.big.Big.Int_>), _err:Error = (null : Error);
        if (_max.sign() <= (0 : GoInt)) {
            throw Go.toInterface(("crypto/rand: argument to Int is <= 0" : GoString));
        };
        _n = (({} : stdgo.math.big.Big.Int_) : Ref<stdgo.math.big.Big.Int_>);
        _n.sub(_max, _n.setUint64(("1" : GoUInt64)));
        var _bitLen:GoInt = _n.bitLen();
        if (_bitLen == ((0 : GoInt))) {
            return { _0 : _n, _1 : _err };
        };
        var _k:GoInt = (_bitLen + (7 : GoInt)) / (8 : GoInt);
        var _b:GoUInt = (_bitLen % (8 : GoInt) : GoUInt);
        if (_b == (("0" : GoUInt))) {
            _b = ("8" : GoUInt);
        };
        var _bytes = new Slice<GoUInt8>((_k : GoInt).toBasic(), 0, ...[for (i in 0 ... (_k : GoInt).toBasic()) (0 : GoUInt8)]);
        while (true) {
            {
                var __tmp__ = stdgo.io.Io.readFull(_rand, _bytes);
                _err = __tmp__._1;
            };
            if (_err != null) {
                return { _0 : null, _1 : _err };
            };
            _bytes[(0 : GoInt)] = _bytes[(0 : GoInt)] & ((((1 : GoInt) << _b : GoInt) - (1 : GoInt) : GoUInt8));
            _n.setBytes(_bytes);
            if (_n.cmp(_max) < (0 : GoInt)) {
                return { _0 : _n, _1 : _err };
            };
        };
    }
@:keep var _ = {
        try {
            reader = Go.asInterface(((new T_reader() : T_reader) : Ref<T_reader>));
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };
class T_reader_asInterface {
    @:keep
    public function read(_b:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } return __self__.value.read(_b);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<T_reader>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.crypto.rand.Rand.T_reader_asInterface) class T_reader_static_extension {
    @:keep
    static public function read( _r:Ref<T_reader>, _b:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var _a:stdgo.syscall.js.Js.Value = (_uint8Array.new_(Go.toInterface((_b.length))) == null ? null : _uint8Array.new_(Go.toInterface((_b.length))).__copy__());
        _jsCrypto.call(("getRandomValues" : GoString), Go.toInterface(Go.asInterface(_a)));
        stdgo.syscall.js.Js.copyBytesToGo(_b, (_a == null ? null : _a.__copy__()));
        return { _0 : (_b.length), _1 : (null : Error) };
    }
}
