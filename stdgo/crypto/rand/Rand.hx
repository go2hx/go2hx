package stdgo.crypto.rand;
/**
    // Package rand implements a cryptographically secure
    // random number generator.
**/
private var __go2hxdoc__package : Bool;
/**
    
    
    
**/
var _jsCrypto : stdgo.syscall.js.Js.Value = stdgo.syscall.js.Js.global().get(("crypto" : stdgo.GoString));
/**
    
    
    
**/
var _uint8Array : stdgo.syscall.js.Js.Value = stdgo.syscall.js.Js.global().get(("Uint8Array" : stdgo.GoString));
/**
    // Reader is a global, shared instance of a cryptographically
    // secure random number generator.
    //
    // On Linux, FreeBSD, Dragonfly, NetBSD and Solaris, Reader uses getrandom(2) if
    // available, /dev/urandom otherwise.
    // On OpenBSD and macOS, Reader uses getentropy(2).
    // On other Unix-like systems, Reader reads from /dev/urandom.
    // On Windows systems, Reader uses the RtlGenRandom API.
    // On JS/Wasm, Reader uses the Web Crypto API.
    // On WASIP1/Wasm, Reader uses random_get from wasi_snapshot_preview1.
    
    
**/
var reader = (null : stdgo.io.Io.Reader);
/**
    // The maximum buffer size for crypto.getRandomValues is 65536 bytes.
    // https://developer.mozilla.org/en-US/docs/Web/API/Crypto/getRandomValues#exceptions
    
    
**/
final _maxGetRandomRead : stdgo.StdGoTypes.GoUInt64 = (65536i64 : stdgo.StdGoTypes.GoUInt64);
/**
    
    
    
**/
var _batchedGetRandom = null;
/**
    // reader implements a pseudorandom generator
    // using JavaScript crypto.getRandomValues method.
    // See https://developer.mozilla.org/en-US/docs/Web/API/Crypto/getRandomValues.
    
    
**/
@:structInit @:private @:using(stdgo.crypto.rand.Rand.T_reader_static_extension) class T_reader {
    public function new() {}
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_reader();
    }
}
/**
    // Read is a helper function that calls Reader.Read using io.ReadFull.
    // On return, n == len(b) if and only if err == nil.
**/
function read(_b:stdgo.Slice<stdgo.StdGoTypes.GoByte>):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.Error; } {
        var _n:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt), _err:stdgo.Error = (null : stdgo.Error);
        return stdgo.io.Io.readFull(reader, _b);
    }
/**
    // batched returns a function that calls f to populate a []byte by chunking it
    // into subslices of, at most, readMax bytes.
**/
function _batched(_f:stdgo.Slice<stdgo.StdGoTypes.GoByte> -> stdgo.Error, _readMax:stdgo.StdGoTypes.GoInt):stdgo.Slice<stdgo.StdGoTypes.GoByte> -> stdgo.Error {
        return function(_out:stdgo.Slice<stdgo.StdGoTypes.GoByte>):stdgo.Error {
            while ((_out.length) > (0 : stdgo.StdGoTypes.GoInt)) {
                var _read:stdgo.StdGoTypes.GoInt = (_out.length);
                if (_read > _readMax) {
                    _read = _readMax;
                };
                {
                    var _err:stdgo.Error = _f((_out.__slice__(0, _read) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>));
                    if (_err != null) {
                        return _err;
                    };
                };
                _out = (_out.__slice__(_read) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>);
            };
            return (null : stdgo.Error);
        };
    }
function _getRandom(_b:stdgo.Slice<stdgo.StdGoTypes.GoByte>):stdgo.Error {
        var _a:stdgo.syscall.js.Js.Value = _uint8Array.new_(stdgo.Go.toInterface((_b.length)))?.__copy__();
        _jsCrypto.call(("getRandomValues" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_a)));
        stdgo.syscall.js.Js.copyBytesToGo(_b, _a?.__copy__());
        return (null : stdgo.Error);
    }
function testRead(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var _n:stdgo.StdGoTypes.GoInt = (4000000 : stdgo.StdGoTypes.GoInt);
        if (stdgo.testing.Testing.short()) {
            _n = (100000 : stdgo.StdGoTypes.GoInt);
        };
        var _b = new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>((_n : stdgo.StdGoTypes.GoInt).toBasic(), 0).__setNumber32__();
        var __tmp__ = stdgo.io.Io.readFull(reader, _b), _n:stdgo.StdGoTypes.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if ((_n != (_b.length)) || (_err != null)) {
            _t.fatalf(("ReadFull(buf) = %d, %s" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_err));
        };
        var _z:stdgo.bytes.Bytes.Buffer = ({} : stdgo.bytes.Bytes.Buffer);
        var __tmp__ = stdgo.compress.flate.Flate.newWriter(stdgo.Go.asInterface((stdgo.Go.setRef(_z) : stdgo.StdGoTypes.Ref<stdgo.bytes.Bytes.Buffer>)), (5 : stdgo.StdGoTypes.GoInt)), _f:stdgo.StdGoTypes.Ref<stdgo.compress.flate.Flate.Writer> = __tmp__._0, __18:stdgo.Error = __tmp__._1;
        _f.write(_b);
        _f.close();
        if (_z.len() < ((_b.length * (99 : stdgo.StdGoTypes.GoInt)) / (100 : stdgo.StdGoTypes.GoInt))) {
            _t.fatalf(("Compressed %d -> %d" : stdgo.GoString), stdgo.Go.toInterface((_b.length)), stdgo.Go.toInterface(_z.len()));
        };
    }
function testReadEmpty(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var __tmp__ = reader.read(new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>((0 : stdgo.StdGoTypes.GoInt).toBasic(), 0).__setNumber32__()), _n:stdgo.StdGoTypes.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if ((_n != (0 : stdgo.StdGoTypes.GoInt)) || (_err != null)) {
            _t.fatalf(("Read(make([]byte, 0)) = %d, %v" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_err));
        };
        {
            var __tmp__ = reader.read((null : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>));
            _n = __tmp__._0;
            _err = __tmp__._1;
        };
        if ((_n != (0 : stdgo.StdGoTypes.GoInt)) || (_err != null)) {
            _t.fatalf(("Read(nil) = %d, %v" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_err));
        };
    }
/**
    // Prime returns a number of the given bit length that is prime with high probability.
    // Prime will return error for any error returned by rand.Read or if bits < 2.
**/
function prime(_rand:stdgo.io.Io.Reader, _bits:stdgo.StdGoTypes.GoInt):{ var _0 : stdgo.StdGoTypes.Ref<stdgo.math.big.Big.Int_>; var _1 : stdgo.Error; } {
        if (_bits < (2 : stdgo.StdGoTypes.GoInt)) {
            return { _0 : null, _1 : stdgo.errors.Errors.new_(("crypto/rand: prime size must be at least 2-bit" : stdgo.GoString)) };
        };
        stdgo.crypto.internal.randutil.Randutil.maybeReadByte(_rand);
        var _b:stdgo.StdGoTypes.GoUInt = (_bits % (8 : stdgo.StdGoTypes.GoInt) : stdgo.StdGoTypes.GoUInt);
        if (_b == ((0u32 : stdgo.StdGoTypes.GoUInt))) {
            _b = (8u32 : stdgo.StdGoTypes.GoUInt);
        };
        var _bytes = new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>(((_bits + (7 : stdgo.StdGoTypes.GoInt)) / (8 : stdgo.StdGoTypes.GoInt) : stdgo.StdGoTypes.GoInt).toBasic(), 0).__setNumber32__();
        var _p = (stdgo.Go.setRef(({} : stdgo.math.big.Big.Int_)) : stdgo.StdGoTypes.Ref<stdgo.math.big.Big.Int_>);
        while (true) {
            {
                var __tmp__ = stdgo.io.Io.readFull(_rand, _bytes), __10:stdgo.StdGoTypes.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return { _0 : null, _1 : _err };
                };
            };
            _bytes[(0 : stdgo.StdGoTypes.GoInt)] = _bytes[(0 : stdgo.StdGoTypes.GoInt)] & ((((1 : stdgo.StdGoTypes.GoInt) << _b : stdgo.StdGoTypes.GoInt) - (1 : stdgo.StdGoTypes.GoInt) : stdgo.StdGoTypes.GoUInt8));
            if (_b >= (2u32 : stdgo.StdGoTypes.GoUInt)) {
                _bytes[(0 : stdgo.StdGoTypes.GoInt)] = _bytes[(0 : stdgo.StdGoTypes.GoInt)] | ((3 : stdgo.StdGoTypes.GoUInt8) << (_b - (2u32 : stdgo.StdGoTypes.GoUInt)));
            } else {
                _bytes[(0 : stdgo.StdGoTypes.GoInt)] = _bytes[(0 : stdgo.StdGoTypes.GoInt)] | ((1 : stdgo.StdGoTypes.GoUInt8));
                if ((_bytes.length) > (1 : stdgo.StdGoTypes.GoInt)) {
                    _bytes[(1 : stdgo.StdGoTypes.GoInt)] = _bytes[(1 : stdgo.StdGoTypes.GoInt)] | ((128 : stdgo.StdGoTypes.GoUInt8));
                };
            };
            _bytes[((_bytes.length) - (1 : stdgo.StdGoTypes.GoInt) : stdgo.StdGoTypes.GoInt)] = _bytes[((_bytes.length) - (1 : stdgo.StdGoTypes.GoInt) : stdgo.StdGoTypes.GoInt)] | ((1 : stdgo.StdGoTypes.GoUInt8));
            _p.setBytes(_bytes);
            if (_p.probablyPrime((20 : stdgo.StdGoTypes.GoInt))) {
                return { _0 : _p, _1 : (null : stdgo.Error) };
            };
        };
    }
/**
    // Int returns a uniform random value in [0, max). It panics if max <= 0.
**/
function int_(_rand:stdgo.io.Io.Reader, _max:stdgo.StdGoTypes.Ref<stdgo.math.big.Big.Int_>):{ var _0 : stdgo.StdGoTypes.Ref<stdgo.math.big.Big.Int_>; var _1 : stdgo.Error; } {
        var _n:stdgo.StdGoTypes.Ref<stdgo.math.big.Big.Int_> = (null : stdgo.StdGoTypes.Ref<stdgo.math.big.Big.Int_>), _err:stdgo.Error = (null : stdgo.Error);
        if (_max.sign() <= (0 : stdgo.StdGoTypes.GoInt)) {
            throw stdgo.Go.toInterface(("crypto/rand: argument to Int is <= 0" : stdgo.GoString));
        };
        _n = (stdgo.Go.setRef(({} : stdgo.math.big.Big.Int_)) : stdgo.StdGoTypes.Ref<stdgo.math.big.Big.Int_>);
        _n.sub(_max, _n.setUint64((1i64 : stdgo.StdGoTypes.GoUInt64)));
        var _bitLen:stdgo.StdGoTypes.GoInt = _n.bitLen();
        if (_bitLen == ((0 : stdgo.StdGoTypes.GoInt))) {
            return { _0 : _n, _1 : _err };
        };
        var _k:stdgo.StdGoTypes.GoInt = (_bitLen + (7 : stdgo.StdGoTypes.GoInt)) / (8 : stdgo.StdGoTypes.GoInt);
        var _b:stdgo.StdGoTypes.GoUInt = (_bitLen % (8 : stdgo.StdGoTypes.GoInt) : stdgo.StdGoTypes.GoUInt);
        if (_b == ((0u32 : stdgo.StdGoTypes.GoUInt))) {
            _b = (8u32 : stdgo.StdGoTypes.GoUInt);
        };
        var _bytes = new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>((_k : stdgo.StdGoTypes.GoInt).toBasic(), 0).__setNumber32__();
        while (true) {
            {
                var __tmp__ = stdgo.io.Io.readFull(_rand, _bytes);
                _err = __tmp__._1;
            };
            if (_err != null) {
                return { _0 : null, _1 : _err };
            };
            _bytes[(0 : stdgo.StdGoTypes.GoInt)] = _bytes[(0 : stdgo.StdGoTypes.GoInt)] & ((((1 : stdgo.StdGoTypes.GoInt) << _b : stdgo.StdGoTypes.GoInt) - (1 : stdgo.StdGoTypes.GoInt) : stdgo.StdGoTypes.GoUInt8));
            _n.setBytes(_bytes);
            if (_n.cmp(_max) < (0 : stdgo.StdGoTypes.GoInt)) {
                return { _0 : _n, _1 : _err };
            };
        };
    }
@:keep var _ = {
        try {
            reader = stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo.crypto.rand.Rand.T_reader() : stdgo.crypto.rand.Rand.T_reader)) : stdgo.StdGoTypes.Ref<stdgo.crypto.rand.Rand.T_reader>));
            _batchedGetRandom = _batched(_getRandom, (65536 : stdgo.StdGoTypes.GoInt));
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };
class T_reader_asInterface {
    @:keep
    public dynamic function read(_b:stdgo.Slice<stdgo.StdGoTypes.GoByte>):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.Error; } return __self__.value.read(_b);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_reader>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.crypto.rand.Rand.T_reader_asInterface) class T_reader_static_extension {
    @:keep
    static public function read( _r:stdgo.StdGoTypes.Ref<T_reader>, _b:stdgo.Slice<stdgo.StdGoTypes.GoByte>):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.StdGoTypes.Ref<T_reader> = _r;
        {
            var _err:stdgo.Error = _batchedGetRandom(_b);
            if (_err != null) {
                return { _0 : (0 : stdgo.StdGoTypes.GoInt), _1 : _err };
            };
        };
        return { _0 : (_b.length), _1 : (null : stdgo.Error) };
    }
}
