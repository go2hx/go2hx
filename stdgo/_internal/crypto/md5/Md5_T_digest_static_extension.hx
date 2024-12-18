package stdgo._internal.crypto.md5;
@:keep @:allow(stdgo._internal.crypto.md5.Md5.T_digest_asInterface) class T_digest_static_extension {
    @:keep
    static public function _checkSum( _d:stdgo.Ref<stdgo._internal.crypto.md5.Md5_T_digest.T_digest>):stdgo.GoArray<stdgo.GoUInt8> {
        @:recv var _d:stdgo.Ref<stdgo._internal.crypto.md5.Md5_T_digest.T_digest> = _d;
        var _tmp = (new stdgo.GoArray<stdgo.GoUInt8>(72, 72, ...[(128 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.GoArray<stdgo.GoUInt8>)?.__copy__();
        var _pad = ((((55i64 : stdgo.GoUInt64) - _d._len : stdgo.GoUInt64)) % (64i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
        stdgo._internal.encoding.binary.Binary_littleEndian.littleEndian.putUint64((_tmp.__slice__(((1i64 : stdgo.GoUInt64) + _pad : stdgo.GoUInt64)) : stdgo.Slice<stdgo.GoUInt8>), (_d._len << (3i64 : stdgo.GoUInt64) : stdgo.GoUInt64));
        _d.write((_tmp.__slice__(0, (((1i64 : stdgo.GoUInt64) + _pad : stdgo.GoUInt64) + (8i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) : stdgo.Slice<stdgo.GoUInt8>));
        if (_d._nx != ((0 : stdgo.GoInt))) {
            throw stdgo.Go.toInterface(("d.nx != 0" : stdgo.GoString));
        };
        var _digest:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(16, 16, ...[for (i in 0 ... 16) (0 : stdgo.GoUInt8)]);
        stdgo._internal.encoding.binary.Binary_littleEndian.littleEndian.putUint32((_digest.__slice__((0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), _d._s[(0 : stdgo.GoInt)]);
        stdgo._internal.encoding.binary.Binary_littleEndian.littleEndian.putUint32((_digest.__slice__((4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), _d._s[(1 : stdgo.GoInt)]);
        stdgo._internal.encoding.binary.Binary_littleEndian.littleEndian.putUint32((_digest.__slice__((8 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), _d._s[(2 : stdgo.GoInt)]);
        stdgo._internal.encoding.binary.Binary_littleEndian.littleEndian.putUint32((_digest.__slice__((12 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), _d._s[(3 : stdgo.GoInt)]);
        return _digest?.__copy__();
    }
    @:keep
    static public function sum( _d:stdgo.Ref<stdgo._internal.crypto.md5.Md5_T_digest.T_digest>, _in:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _d:stdgo.Ref<stdgo._internal.crypto.md5.Md5_T_digest.T_digest> = _d;
        var _d0 = ((_d : stdgo._internal.crypto.md5.Md5_T_digest.T_digest)?.__copy__() : stdgo._internal.crypto.md5.Md5_T_digest.T_digest);
        var _hash = _d0._checkSum()?.__copy__();
        return (_in.__append__(...((_hash.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>) : Array<stdgo.GoUInt8>)));
    }
    @:keep
    static public function write( _d:stdgo.Ref<stdgo._internal.crypto.md5.Md5_T_digest.T_digest>, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _d:stdgo.Ref<stdgo._internal.crypto.md5.Md5_T_digest.T_digest> = _d;
        var _nn = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        _nn = (_p.length);
        _d._len = (_d._len + ((_nn : stdgo.GoUInt64)) : stdgo.GoUInt64);
        if ((_d._nx > (0 : stdgo.GoInt) : Bool)) {
            var _n = ((_d._x.__slice__(_d._nx) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__(_p) : stdgo.GoInt);
            _d._nx = (_d._nx + (_n) : stdgo.GoInt);
            if (_d._nx == ((64 : stdgo.GoInt))) {
                if (false) {
                    stdgo._internal.crypto.md5.Md5__block._block(_d, (_d._x.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>));
                } else {
                    stdgo._internal.crypto.md5.Md5__blockGeneric._blockGeneric(_d, (_d._x.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>));
                };
                _d._nx = (0 : stdgo.GoInt);
            };
            _p = (_p.__slice__(_n) : stdgo.Slice<stdgo.GoUInt8>);
        };
        if (((_p.length) >= (64 : stdgo.GoInt) : Bool)) {
            var _n = ((_p.length) & (((63 : stdgo.GoInt) ^ (-1i32 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt);
            if (false) {
                stdgo._internal.crypto.md5.Md5__block._block(_d, (_p.__slice__(0, _n) : stdgo.Slice<stdgo.GoUInt8>));
            } else {
                stdgo._internal.crypto.md5.Md5__blockGeneric._blockGeneric(_d, (_p.__slice__(0, _n) : stdgo.Slice<stdgo.GoUInt8>));
            };
            _p = (_p.__slice__(_n) : stdgo.Slice<stdgo.GoUInt8>);
        };
        if (((_p.length) > (0 : stdgo.GoInt) : Bool)) {
            _d._nx = (_d._x.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__(_p);
        };
        return { _0 : _nn, _1 : _err };
    }
    @:keep
    static public function blockSize( _d:stdgo.Ref<stdgo._internal.crypto.md5.Md5_T_digest.T_digest>):stdgo.GoInt {
        @:recv var _d:stdgo.Ref<stdgo._internal.crypto.md5.Md5_T_digest.T_digest> = _d;
        return (64 : stdgo.GoInt);
    }
    @:keep
    static public function size( _d:stdgo.Ref<stdgo._internal.crypto.md5.Md5_T_digest.T_digest>):stdgo.GoInt {
        @:recv var _d:stdgo.Ref<stdgo._internal.crypto.md5.Md5_T_digest.T_digest> = _d;
        return (16 : stdgo.GoInt);
    }
    @:keep
    static public function unmarshalBinary( _d:stdgo.Ref<stdgo._internal.crypto.md5.Md5_T_digest.T_digest>, _b:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        @:recv var _d:stdgo.Ref<stdgo._internal.crypto.md5.Md5_T_digest.T_digest> = _d;
        if ((((_b.length) < (stdgo.Go.str("md5", 1).length) : Bool) || (((_b.__slice__(0, (stdgo.Go.str("md5", 1).length)) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString) != stdgo.Go.str("md5", 1)) : Bool)) {
            return stdgo._internal.errors.Errors_new_.new_(("crypto/md5: invalid hash state identifier" : stdgo.GoString));
        };
        if ((_b.length) != ((92 : stdgo.GoInt))) {
            return stdgo._internal.errors.Errors_new_.new_(("crypto/md5: invalid hash state size" : stdgo.GoString));
        };
        _b = (_b.__slice__((stdgo.Go.str("md5", 1).length)) : stdgo.Slice<stdgo.GoUInt8>);
        {
            var __tmp__ = stdgo._internal.crypto.md5.Md5__consumeUint32._consumeUint32(_b);
            _b = __tmp__._0;
            _d._s[(0 : stdgo.GoInt)] = __tmp__._1;
        };
        {
            var __tmp__ = stdgo._internal.crypto.md5.Md5__consumeUint32._consumeUint32(_b);
            _b = __tmp__._0;
            _d._s[(1 : stdgo.GoInt)] = __tmp__._1;
        };
        {
            var __tmp__ = stdgo._internal.crypto.md5.Md5__consumeUint32._consumeUint32(_b);
            _b = __tmp__._0;
            _d._s[(2 : stdgo.GoInt)] = __tmp__._1;
        };
        {
            var __tmp__ = stdgo._internal.crypto.md5.Md5__consumeUint32._consumeUint32(_b);
            _b = __tmp__._0;
            _d._s[(3 : stdgo.GoInt)] = __tmp__._1;
        };
        _b = (_b.__slice__((_d._x.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__(_b)) : stdgo.Slice<stdgo.GoUInt8>);
        {
            var __tmp__ = stdgo._internal.crypto.md5.Md5__consumeUint64._consumeUint64(_b);
            _b = __tmp__._0;
            _d._len = __tmp__._1;
        };
        _d._nx = ((_d._len % (64i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoInt);
        return (null : stdgo.Error);
    }
    @:keep
    static public function marshalBinary( _d:stdgo.Ref<stdgo._internal.crypto.md5.Md5_T_digest.T_digest>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _d:stdgo.Ref<stdgo._internal.crypto.md5.Md5_T_digest.T_digest> = _d;
        var _b = (new stdgo.Slice<stdgo.GoUInt8>((0 : stdgo.GoInt).toBasic(), (92 : stdgo.GoInt)).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        _b = (_b.__append__(...(stdgo.Go.str("md5", 1) : Array<stdgo.GoUInt8>)));
        _b = stdgo._internal.encoding.binary.Binary_bigEndian.bigEndian.appendUint32(_b, _d._s[(0 : stdgo.GoInt)]);
        _b = stdgo._internal.encoding.binary.Binary_bigEndian.bigEndian.appendUint32(_b, _d._s[(1 : stdgo.GoInt)]);
        _b = stdgo._internal.encoding.binary.Binary_bigEndian.bigEndian.appendUint32(_b, _d._s[(2 : stdgo.GoInt)]);
        _b = stdgo._internal.encoding.binary.Binary_bigEndian.bigEndian.appendUint32(_b, _d._s[(3 : stdgo.GoInt)]);
        _b = (_b.__append__(...((_d._x.__slice__(0, _d._nx) : stdgo.Slice<stdgo.GoUInt8>) : Array<stdgo.GoUInt8>)));
        _b = (_b.__slice__(0, (((_b.length) + (_d._x.length) : stdgo.GoInt) - _d._nx : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        _b = stdgo._internal.encoding.binary.Binary_bigEndian.bigEndian.appendUint64(_b, _d._len);
        return { _0 : _b, _1 : (null : stdgo.Error) };
    }
    @:keep
    static public function reset( _d:stdgo.Ref<stdgo._internal.crypto.md5.Md5_T_digest.T_digest>):Void {
        @:recv var _d:stdgo.Ref<stdgo._internal.crypto.md5.Md5_T_digest.T_digest> = _d;
        _d._s[(0 : stdgo.GoInt)] = (1732584193u32 : stdgo.GoUInt32);
        _d._s[(1 : stdgo.GoInt)] = (-271733879u32 : stdgo.GoUInt32);
        _d._s[(2 : stdgo.GoInt)] = (-1732584194u32 : stdgo.GoUInt32);
        _d._s[(3 : stdgo.GoInt)] = (271733878u32 : stdgo.GoUInt32);
        _d._nx = (0 : stdgo.GoInt);
        _d._len = (0i64 : stdgo.GoUInt64);
    }
}
