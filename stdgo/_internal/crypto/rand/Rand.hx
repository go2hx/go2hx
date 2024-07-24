package stdgo._internal.crypto.rand;
private var __go2hxdoc__package : Bool;
var reader : stdgo._internal.io.Io.Reader = (null : stdgo._internal.io.Io.Reader);
final _maxGetRandomRead : stdgo.GoUInt64 = (65536i64 : stdgo.GoUInt64);
var _batchedGetRandom : stdgo.Slice<stdgo.GoByte> -> stdgo.Error = null;
var _jsCrypto : stdgo._internal.syscall.js.Js.Value = stdgo._internal.syscall.js.Js.global().get(("crypto" : stdgo.GoString));
var _uint8Array : stdgo._internal.syscall.js.Js.Value = stdgo._internal.syscall.js.Js.global().get(("Uint8Array" : stdgo.GoString));
@:structInit @:private @:using(stdgo._internal.crypto.rand.Rand.T_reader_static_extension) class T_reader {
    public function new() {}
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_reader();
    }
}
function read(_b:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        return stdgo._internal.io.Io.readFull(reader, _b);
    }
function _batched(_f:stdgo.Slice<stdgo.GoByte> -> stdgo.Error, _readMax:stdgo.GoInt):stdgo.Slice<stdgo.GoByte> -> stdgo.Error {
        return function(_out:stdgo.Slice<stdgo.GoByte>):stdgo.Error {
            while (((_out.length) > (0 : stdgo.GoInt) : Bool)) {
                var _read = (_out.length);
                if ((_read > _readMax : Bool)) {
                    _read = _readMax;
                };
                {
                    var _err = _f((_out.__slice__(0, _read) : stdgo.Slice<stdgo.GoUInt8>));
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
        var _a = _uint8Array.new_(stdgo.Go.toInterface((_b.length)))?.__copy__();
        _jsCrypto.call(("getRandomValues" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_a)));
        stdgo._internal.syscall.js.Js.copyBytesToGo(_b, _a?.__copy__());
        return (null : stdgo.Error);
    }
function testRead(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _n:stdgo.GoInt = (4000000 : stdgo.GoInt);
        if (stdgo._internal.testing.Testing.short()) {
            _n = (100000 : stdgo.GoInt);
        };
        var _b = (new stdgo.Slice<stdgo.GoUInt8>((_n : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        var __tmp__ = stdgo._internal.io.Io.readFull(reader, _b), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (((_n != (_b.length)) || (_err != null) : Bool)) {
            _t.fatalf(("ReadFull(buf) = %d, %s" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_err));
        };
        var _z:stdgo._internal.bytes.Bytes.Buffer = ({} : stdgo._internal.bytes.Bytes.Buffer);
        var __tmp__ = stdgo._internal.compress.flate.Flate.newWriter(stdgo.Go.asInterface((stdgo.Go.setRef(_z) : stdgo.Ref<stdgo._internal.bytes.Bytes.Buffer>)), (5 : stdgo.GoInt)), _f:stdgo.Ref<stdgo._internal.compress.flate.Flate.Writer> = __tmp__._0, __20:stdgo.Error = __tmp__._1;
        _f.write(_b);
        _f.close();
        if ((_z.len() < (((_b.length) * (99 : stdgo.GoInt) : stdgo.GoInt) / (100 : stdgo.GoInt) : stdgo.GoInt) : Bool)) {
            _t.fatalf(("Compressed %d -> %d" : stdgo.GoString), stdgo.Go.toInterface((_b.length)), stdgo.Go.toInterface(_z.len()));
        };
    }
function testReadEmpty(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var __tmp__ = reader.read((new stdgo.Slice<stdgo.GoUInt8>((0 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>)), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (((_n != (0 : stdgo.GoInt)) || (_err != null) : Bool)) {
            _t.fatalf(("Read(make([]byte, 0)) = %d, %v" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_err));
        };
        {
            var __tmp__ = reader.read((null : stdgo.Slice<stdgo.GoUInt8>));
            _n = __tmp__._0;
            _err = __tmp__._1;
        };
        if (((_n != (0 : stdgo.GoInt)) || (_err != null) : Bool)) {
            _t.fatalf(("Read(nil) = %d, %v" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_err));
        };
    }
function prime(_rand:stdgo._internal.io.Io.Reader, _bits:stdgo.GoInt):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big.Int_>; var _1 : stdgo.Error; } {
        if ((_bits < (2 : stdgo.GoInt) : Bool)) {
            return { _0 : null, _1 : stdgo._internal.errors.Errors.new_(("crypto/rand: prime size must be at least 2-bit" : stdgo.GoString)) };
        };
        stdgo._internal.crypto.internal.randutil.Randutil.maybeReadByte(_rand);
        var _b = ((_bits % (8 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt);
        if (_b == ((0u32 : stdgo.GoUInt))) {
            _b = (8u32 : stdgo.GoUInt);
        };
        var _bytes = (new stdgo.Slice<stdgo.GoUInt8>((((_bits + (7 : stdgo.GoInt) : stdgo.GoInt)) / (8 : stdgo.GoInt) : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        var _p = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big.Int_>);
        while (true) {
            {
                var __tmp__ = stdgo._internal.io.Io.readFull(_rand, _bytes), __12:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return { _0 : null, _1 : _err };
                };
            };
            _bytes[(0 : stdgo.GoInt)] = (_bytes[(0 : stdgo.GoInt)] & (((((1 : stdgo.GoInt) << _b : stdgo.GoInt) - (1 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt8)) : stdgo.GoUInt8);
            if ((_b >= (2u32 : stdgo.GoUInt) : Bool)) {
                _bytes[(0 : stdgo.GoInt)] = (_bytes[(0 : stdgo.GoInt)] | (((3 : stdgo.GoUInt8) << ((_b - (2u32 : stdgo.GoUInt) : stdgo.GoUInt)) : stdgo.GoUInt8)) : stdgo.GoUInt8);
            } else {
                _bytes[(0 : stdgo.GoInt)] = (_bytes[(0 : stdgo.GoInt)] | ((1 : stdgo.GoUInt8)) : stdgo.GoUInt8);
                if (((_bytes.length) > (1 : stdgo.GoInt) : Bool)) {
                    _bytes[(1 : stdgo.GoInt)] = (_bytes[(1 : stdgo.GoInt)] | ((128 : stdgo.GoUInt8)) : stdgo.GoUInt8);
                };
            };
            _bytes[((_bytes.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] = (_bytes[((_bytes.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] | ((1 : stdgo.GoUInt8)) : stdgo.GoUInt8);
            _p.setBytes(_bytes);
            if (_p.probablyPrime((20 : stdgo.GoInt))) {
                return { _0 : _p, _1 : (null : stdgo.Error) };
            };
        };
    }
function int_(_rand:stdgo._internal.io.Io.Reader, _max:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big.Int_>; var _1 : stdgo.Error; } {
        var _n = (null : stdgo.Ref<stdgo._internal.math.big.Big.Int_>), _err = (null : stdgo.Error);
        if ((_max.sign() <= (0 : stdgo.GoInt) : Bool)) {
            throw stdgo.Go.toInterface(("crypto/rand: argument to Int is <= 0" : stdgo.GoString));
        };
        _n = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big.Int_>);
        _n.sub(_max, _n.setUint64((1i64 : stdgo.GoUInt64)));
        var _bitLen = _n.bitLen();
        if (_bitLen == ((0 : stdgo.GoInt))) {
            return { _0 : _n, _1 : _err };
        };
        var _k = (((_bitLen + (7 : stdgo.GoInt) : stdgo.GoInt)) / (8 : stdgo.GoInt) : stdgo.GoInt);
        var _b = ((_bitLen % (8 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt);
        if (_b == ((0u32 : stdgo.GoUInt))) {
            _b = (8u32 : stdgo.GoUInt);
        };
        var _bytes = (new stdgo.Slice<stdgo.GoUInt8>((_k : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        while (true) {
            {
                var __tmp__ = stdgo._internal.io.Io.readFull(_rand, _bytes);
                _err = __tmp__._1;
            };
            if (_err != null) {
                return { _0 : null, _1 : _err };
            };
            _bytes[(0 : stdgo.GoInt)] = (_bytes[(0 : stdgo.GoInt)] & (((((1 : stdgo.GoInt) << _b : stdgo.GoInt) - (1 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt8)) : stdgo.GoUInt8);
            _n.setBytes(_bytes);
            if ((_n.cmp(_max) < (0 : stdgo.GoInt) : Bool)) {
                return { _0 : _n, _1 : _err };
            };
        };
    }
@:keep var _ = {
        try {
            reader = stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.crypto.rand.Rand.T_reader() : stdgo._internal.crypto.rand.Rand.T_reader)) : stdgo.Ref<stdgo._internal.crypto.rand.Rand.T_reader>));
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
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_reader>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.crypto.rand.Rand.T_reader_asInterface) class T_reader_static_extension {
    @:keep
    static public function read( _r:stdgo.Ref<T_reader>, _b:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<T_reader> = _r;
        {
            var _err = _batchedGetRandom(_b);
            if (_err != null) {
                return { _0 : (0 : stdgo.GoInt), _1 : _err };
            };
        };
        return { _0 : (_b.length), _1 : (null : stdgo.Error) };
    }
}
