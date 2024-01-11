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
var reader : stdgo.io.Io.Reader = (null : stdgo.io.Io.Reader);
/**
    // The maximum buffer size for crypto.getRandomValues is 65536 bytes.
    // https://developer.mozilla.org/en-US/docs/Web/API/Crypto/getRandomValues#exceptions
    
    
**/
final _maxGetRandomRead : stdgo.GoUInt64 = (65536i64 : stdgo.GoUInt64);
/**
    
    
    
**/
var _batchedGetRandom : stdgo.Slice<stdgo.GoByte> -> stdgo.Error = null;
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
function read(_b:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        var _n:stdgo.GoInt = (0 : stdgo.GoInt), _err:stdgo.Error = (null : stdgo.Error);
        return stdgo.io.Io.readFull(reader, _b);
    }
/**
    // batched returns a function that calls f to populate a []byte by chunking it
    // into subslices of, at most, readMax bytes.
**/
function _batched(_f:stdgo.Slice<stdgo.GoByte> -> stdgo.Error, _readMax:stdgo.GoInt):stdgo.Slice<stdgo.GoByte> -> stdgo.Error {
        return function(_out:stdgo.Slice<stdgo.GoByte>):stdgo.Error {
            while ((_out.length) > (0 : stdgo.GoInt)) {
                var _read:stdgo.GoInt = (_out.length);
                if (_read > _readMax) {
                    _read = _readMax;
                };
                {
                    var _err:stdgo.Error = _f((_out.__slice__(0, _read) : stdgo.Slice<stdgo.GoUInt8>));
                    if (_err != null) {
                        return _err;
                    };
                };
                _out = (_out.__slice__(_read) : stdgo.Slice<stdgo.GoUInt8>);
            };
            return (null : stdgo.Error);
        };
    }
function _getRandom(_b:stdgo.Slice<stdgo.GoByte>):stdgo.Error {
        var _a:stdgo.syscall.js.Js.Value = _uint8Array.new_(stdgo.Go.toInterface((_b.length)))?.__copy__();
        _jsCrypto.call(("getRandomValues" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_a)));
        stdgo.syscall.js.Js.copyBytesToGo(_b, _a?.__copy__());
        return (null : stdgo.Error);
    }
function testRead(_t:stdgo.Ref<stdgo.testing.Testing.T_>):Void {
        var _n:stdgo.GoInt = (4000000 : stdgo.GoInt);
        if (stdgo.testing.Testing.short()) {
            _n = (100000 : stdgo.GoInt);
        };
        var _b = new stdgo.Slice<stdgo.GoUInt8>((_n : stdgo.GoInt).toBasic(), 0).__setNumber32__();
        var __tmp__ = stdgo.io.Io.readFull(reader, _b), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if ((_n != (_b.length)) || (_err != null)) {
            _t.fatalf(("ReadFull(buf) = %d, %s" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_err));
        };
        var _z:stdgo.bytes.Bytes.Buffer = ({} : stdgo.bytes.Bytes.Buffer);
        var __tmp__ = stdgo.compress.flate.Flate.newWriter(stdgo.Go.asInterface((stdgo.Go.setRef(_z) : stdgo.Ref<stdgo.bytes.Bytes.Buffer>)), (5 : stdgo.GoInt)), _f:stdgo.Ref<stdgo.compress.flate.Flate.Writer> = __tmp__._0, __18:stdgo.Error = __tmp__._1;
        _f.write(_b);
        _f.close();
        if (_z.len() < ((_b.length * (99 : stdgo.GoInt)) / (100 : stdgo.GoInt))) {
            _t.fatalf(("Compressed %d -> %d" : stdgo.GoString), stdgo.Go.toInterface((_b.length)), stdgo.Go.toInterface(_z.len()));
        };
    }
function testReadEmpty(_t:stdgo.Ref<stdgo.testing.Testing.T_>):Void {
        var __tmp__ = reader.read(new stdgo.Slice<stdgo.GoUInt8>((0 : stdgo.GoInt).toBasic(), 0).__setNumber32__()), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if ((_n != (0 : stdgo.GoInt)) || (_err != null)) {
            _t.fatalf(("Read(make([]byte, 0)) = %d, %v" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_err));
        };
        {
            var __tmp__ = reader.read((null : stdgo.Slice<stdgo.GoUInt8>));
            _n = __tmp__._0;
            _err = __tmp__._1;
        };
        if ((_n != (0 : stdgo.GoInt)) || (_err != null)) {
            _t.fatalf(("Read(nil) = %d, %v" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_err));
        };
    }
/**
    // Prime returns a number of the given bit length that is prime with high probability.
    // Prime will return error for any error returned by rand.Read or if bits < 2.
**/
function prime(_rand:stdgo.io.Io.Reader, _bits:stdgo.GoInt):{ var _0 : stdgo.Ref<stdgo.math.big.Big.Int_>; var _1 : stdgo.Error; } {
        if (_bits < (2 : stdgo.GoInt)) {
            return { _0 : null, _1 : stdgo.errors.Errors.new_(("crypto/rand: prime size must be at least 2-bit" : stdgo.GoString)) };
        };
        stdgo.crypto.internal.randutil.Randutil.maybeReadByte(_rand);
        var _b:stdgo.GoUInt = (_bits % (8 : stdgo.GoInt) : stdgo.GoUInt);
        if (_b == ((0u32 : stdgo.GoUInt))) {
            _b = (8u32 : stdgo.GoUInt);
        };
        var _bytes = new stdgo.Slice<stdgo.GoUInt8>(((_bits + (7 : stdgo.GoInt)) / (8 : stdgo.GoInt) : stdgo.GoInt).toBasic(), 0).__setNumber32__();
        var _p = (stdgo.Go.setRef(({} : stdgo.math.big.Big.Int_)) : stdgo.Ref<stdgo.math.big.Big.Int_>);
        while (true) {
            {
                var __tmp__ = stdgo.io.Io.readFull(_rand, _bytes), __10:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return { _0 : null, _1 : _err };
                };
            };
            _bytes[(0 : stdgo.GoInt)] = _bytes[(0 : stdgo.GoInt)] & ((((1 : stdgo.GoInt) << _b : stdgo.GoInt) - (1 : stdgo.GoInt) : stdgo.GoUInt8));
            if (_b >= (2u32 : stdgo.GoUInt)) {
                _bytes[(0 : stdgo.GoInt)] = _bytes[(0 : stdgo.GoInt)] | ((3 : stdgo.GoUInt8) << (_b - (2u32 : stdgo.GoUInt)));
            } else {
                _bytes[(0 : stdgo.GoInt)] = _bytes[(0 : stdgo.GoInt)] | ((1 : stdgo.GoUInt8));
                if ((_bytes.length) > (1 : stdgo.GoInt)) {
                    _bytes[(1 : stdgo.GoInt)] = _bytes[(1 : stdgo.GoInt)] | ((128 : stdgo.GoUInt8));
                };
            };
            _bytes[((_bytes.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] = _bytes[((_bytes.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] | ((1 : stdgo.GoUInt8));
            _p.setBytes(_bytes);
            if (_p.probablyPrime((20 : stdgo.GoInt))) {
                return { _0 : _p, _1 : (null : stdgo.Error) };
            };
        };
    }
/**
    // Int returns a uniform random value in [0, max). It panics if max <= 0.
**/
function int_(_rand:stdgo.io.Io.Reader, _max:stdgo.Ref<stdgo.math.big.Big.Int_>):{ var _0 : stdgo.Ref<stdgo.math.big.Big.Int_>; var _1 : stdgo.Error; } {
        var _n:stdgo.Ref<stdgo.math.big.Big.Int_> = (null : stdgo.Ref<stdgo.math.big.Big.Int_>), _err:stdgo.Error = (null : stdgo.Error);
        if (_max.sign() <= (0 : stdgo.GoInt)) {
            throw stdgo.Go.toInterface(("crypto/rand: argument to Int is <= 0" : stdgo.GoString));
        };
        _n = (stdgo.Go.setRef(({} : stdgo.math.big.Big.Int_)) : stdgo.Ref<stdgo.math.big.Big.Int_>);
        _n.sub(_max, _n.setUint64((1i64 : stdgo.GoUInt64)));
        var _bitLen:stdgo.GoInt = _n.bitLen();
        if (_bitLen == ((0 : stdgo.GoInt))) {
            return { _0 : _n, _1 : _err };
        };
        var _k:stdgo.GoInt = (_bitLen + (7 : stdgo.GoInt)) / (8 : stdgo.GoInt);
        var _b:stdgo.GoUInt = (_bitLen % (8 : stdgo.GoInt) : stdgo.GoUInt);
        if (_b == ((0u32 : stdgo.GoUInt))) {
            _b = (8u32 : stdgo.GoUInt);
        };
        var _bytes = new stdgo.Slice<stdgo.GoUInt8>((_k : stdgo.GoInt).toBasic(), 0).__setNumber32__();
        while (true) {
            {
                var __tmp__ = stdgo.io.Io.readFull(_rand, _bytes);
                _err = __tmp__._1;
            };
            if (_err != null) {
                return { _0 : null, _1 : _err };
            };
            _bytes[(0 : stdgo.GoInt)] = _bytes[(0 : stdgo.GoInt)] & ((((1 : stdgo.GoInt) << _b : stdgo.GoInt) - (1 : stdgo.GoInt) : stdgo.GoUInt8));
            _n.setBytes(_bytes);
            if (_n.cmp(_max) < (0 : stdgo.GoInt)) {
                return { _0 : _n, _1 : _err };
            };
        };
    }
@:keep var _ = {
        try {
            reader = stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo.crypto.rand.Rand.T_reader() : stdgo.crypto.rand.Rand.T_reader)) : stdgo.Ref<stdgo.crypto.rand.Rand.T_reader>));
            _batchedGetRandom = _batched(_getRandom, (65536 : stdgo.GoInt));
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };
class T_reader_asInterface {
    @:keep
    public dynamic function read(_b:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.read(_b);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_reader>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.crypto.rand.Rand.T_reader_asInterface) class T_reader_static_extension {
    @:keep
    static public function read( _r:stdgo.Ref<T_reader>, _b:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<T_reader> = _r;
        {
            var _err:stdgo.Error = _batchedGetRandom(_b);
            if (_err != null) {
                return { _0 : (0 : stdgo.GoInt), _1 : _err };
            };
        };
        return { _0 : (_b.length), _1 : (null : stdgo.Error) };
    }
}
