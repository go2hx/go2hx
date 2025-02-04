package stdgo._internal.crypto.sha256;
@:keep @:allow(stdgo._internal.crypto.sha256.Sha256.T_digest_asInterface) class T_digest_static_extension {
    @:keep
    @:tdfield
    static public function _checkSum( _d:stdgo.Ref<stdgo._internal.crypto.sha256.Sha256_t_digest.T_digest>):stdgo.GoArray<stdgo.GoUInt8> {
        @:recv var _d:stdgo.Ref<stdgo._internal.crypto.sha256.Sha256_t_digest.T_digest> = _d;
        var _len = ((@:checkr _d ?? throw "null pointer dereference")._len : stdgo.GoUInt64);
        var _tmp:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(72, 72).__setNumber32__();
        _tmp[(0 : stdgo.GoInt)] = (128 : stdgo.GoUInt8);
        var _t:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        if (((_len % (64i64 : stdgo.GoUInt64) : stdgo.GoUInt64) < (56i64 : stdgo.GoUInt64) : Bool)) {
            _t = ((56i64 : stdgo.GoUInt64) - (_len % (64i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64);
        } else {
            _t = ((120i64 : stdgo.GoUInt64) - (_len % (64i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64);
        };
        _len = (_len << ((3i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
        var _padlen = (_tmp.__slice__(0, (_t + (8i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) : stdgo.Slice<stdgo.GoUInt8>);
        stdgo._internal.encoding.binary.Binary_bigendian.bigEndian.putUint64((_padlen.__slice__((_t + (0i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) : stdgo.Slice<stdgo.GoUInt8>), _len);
        @:check2r _d.write(_padlen);
        if ((@:checkr _d ?? throw "null pointer dereference")._nx != ((0 : stdgo.GoInt))) {
            throw stdgo.Go.toInterface(("d.nx != 0" : stdgo.GoString));
        };
        var _digest:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(32, 32).__setNumber32__();
        stdgo._internal.encoding.binary.Binary_bigendian.bigEndian.putUint32((_digest.__slice__((0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), (@:checkr _d ?? throw "null pointer dereference")._h[(0 : stdgo.GoInt)]);
        stdgo._internal.encoding.binary.Binary_bigendian.bigEndian.putUint32((_digest.__slice__((4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), (@:checkr _d ?? throw "null pointer dereference")._h[(1 : stdgo.GoInt)]);
        stdgo._internal.encoding.binary.Binary_bigendian.bigEndian.putUint32((_digest.__slice__((8 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), (@:checkr _d ?? throw "null pointer dereference")._h[(2 : stdgo.GoInt)]);
        stdgo._internal.encoding.binary.Binary_bigendian.bigEndian.putUint32((_digest.__slice__((12 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), (@:checkr _d ?? throw "null pointer dereference")._h[(3 : stdgo.GoInt)]);
        stdgo._internal.encoding.binary.Binary_bigendian.bigEndian.putUint32((_digest.__slice__((16 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), (@:checkr _d ?? throw "null pointer dereference")._h[(4 : stdgo.GoInt)]);
        stdgo._internal.encoding.binary.Binary_bigendian.bigEndian.putUint32((_digest.__slice__((20 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), (@:checkr _d ?? throw "null pointer dereference")._h[(5 : stdgo.GoInt)]);
        stdgo._internal.encoding.binary.Binary_bigendian.bigEndian.putUint32((_digest.__slice__((24 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), (@:checkr _d ?? throw "null pointer dereference")._h[(6 : stdgo.GoInt)]);
        if (!(@:checkr _d ?? throw "null pointer dereference")._is224) {
            stdgo._internal.encoding.binary.Binary_bigendian.bigEndian.putUint32((_digest.__slice__((28 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), (@:checkr _d ?? throw "null pointer dereference")._h[(7 : stdgo.GoInt)]);
        };
        return _digest?.__copy__();
    }
    @:keep
    @:tdfield
    static public function sum( _d:stdgo.Ref<stdgo._internal.crypto.sha256.Sha256_t_digest.T_digest>, _in:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _d:stdgo.Ref<stdgo._internal.crypto.sha256.Sha256_t_digest.T_digest> = _d;
        stdgo._internal.crypto.internal.boring.Boring_unreachable.unreachable();
        var _d0 = ((_d : stdgo._internal.crypto.sha256.Sha256_t_digest.T_digest)?.__copy__() : stdgo._internal.crypto.sha256.Sha256_t_digest.T_digest);
        var _hash = @:check2 _d0._checkSum()?.__copy__();
        if (_d0._is224) {
            return (_in.__append__(...((_hash.__slice__(0, (28 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>) : Array<stdgo.GoUInt8>)));
        };
        return (_in.__append__(...((_hash.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>) : Array<stdgo.GoUInt8>)));
    }
    @:keep
    @:tdfield
    static public function write( _d:stdgo.Ref<stdgo._internal.crypto.sha256.Sha256_t_digest.T_digest>, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _d:stdgo.Ref<stdgo._internal.crypto.sha256.Sha256_t_digest.T_digest> = _d;
        var _nn = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        stdgo._internal.crypto.internal.boring.Boring_unreachable.unreachable();
        _nn = (_p.length);
        (@:checkr _d ?? throw "null pointer dereference")._len = ((@:checkr _d ?? throw "null pointer dereference")._len + ((_nn : stdgo.GoUInt64)) : stdgo.GoUInt64);
        if (((@:checkr _d ?? throw "null pointer dereference")._nx > (0 : stdgo.GoInt) : Bool)) {
            var _n = (((@:checkr _d ?? throw "null pointer dereference")._x.__slice__((@:checkr _d ?? throw "null pointer dereference")._nx) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__(_p) : stdgo.GoInt);
            (@:checkr _d ?? throw "null pointer dereference")._nx = ((@:checkr _d ?? throw "null pointer dereference")._nx + (_n) : stdgo.GoInt);
            if ((@:checkr _d ?? throw "null pointer dereference")._nx == ((64 : stdgo.GoInt))) {
                stdgo._internal.crypto.sha256.Sha256__block._block(_d, ((@:checkr _d ?? throw "null pointer dereference")._x.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>));
                (@:checkr _d ?? throw "null pointer dereference")._nx = (0 : stdgo.GoInt);
            };
            _p = (_p.__slice__(_n) : stdgo.Slice<stdgo.GoUInt8>);
        };
        if (((_p.length) >= (64 : stdgo.GoInt) : Bool)) {
            var _n = ((_p.length) & (((63 : stdgo.GoInt) ^ (-1i32 : stdgo.GoInt32) : stdgo.GoInt)) : stdgo.GoInt);
            stdgo._internal.crypto.sha256.Sha256__block._block(_d, (_p.__slice__(0, _n) : stdgo.Slice<stdgo.GoUInt8>));
            _p = (_p.__slice__(_n) : stdgo.Slice<stdgo.GoUInt8>);
        };
        if (((_p.length) > (0 : stdgo.GoInt) : Bool)) {
            (@:checkr _d ?? throw "null pointer dereference")._nx = ((@:checkr _d ?? throw "null pointer dereference")._x.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__(_p);
        };
        return { _0 : _nn, _1 : _err };
    }
    @:keep
    @:tdfield
    static public function blockSize( _d:stdgo.Ref<stdgo._internal.crypto.sha256.Sha256_t_digest.T_digest>):stdgo.GoInt {
        @:recv var _d:stdgo.Ref<stdgo._internal.crypto.sha256.Sha256_t_digest.T_digest> = _d;
        return (64 : stdgo.GoInt);
    }
    @:keep
    @:tdfield
    static public function size( _d:stdgo.Ref<stdgo._internal.crypto.sha256.Sha256_t_digest.T_digest>):stdgo.GoInt {
        @:recv var _d:stdgo.Ref<stdgo._internal.crypto.sha256.Sha256_t_digest.T_digest> = _d;
        if (!(@:checkr _d ?? throw "null pointer dereference")._is224) {
            return (32 : stdgo.GoInt);
        };
        return (28 : stdgo.GoInt);
    }
    @:keep
    @:tdfield
    static public function reset( _d:stdgo.Ref<stdgo._internal.crypto.sha256.Sha256_t_digest.T_digest>):Void {
        @:recv var _d:stdgo.Ref<stdgo._internal.crypto.sha256.Sha256_t_digest.T_digest> = _d;
        if (!(@:checkr _d ?? throw "null pointer dereference")._is224) {
            (@:checkr _d ?? throw "null pointer dereference")._h[(0 : stdgo.GoInt)] = (1779033703u32 : stdgo.GoUInt32);
            (@:checkr _d ?? throw "null pointer dereference")._h[(1 : stdgo.GoInt)] = (-1150833019u32 : stdgo.GoUInt32);
            (@:checkr _d ?? throw "null pointer dereference")._h[(2 : stdgo.GoInt)] = (1013904242u32 : stdgo.GoUInt32);
            (@:checkr _d ?? throw "null pointer dereference")._h[(3 : stdgo.GoInt)] = (-1521486534u32 : stdgo.GoUInt32);
            (@:checkr _d ?? throw "null pointer dereference")._h[(4 : stdgo.GoInt)] = (1359893119u32 : stdgo.GoUInt32);
            (@:checkr _d ?? throw "null pointer dereference")._h[(5 : stdgo.GoInt)] = (-1694144372u32 : stdgo.GoUInt32);
            (@:checkr _d ?? throw "null pointer dereference")._h[(6 : stdgo.GoInt)] = (528734635u32 : stdgo.GoUInt32);
            (@:checkr _d ?? throw "null pointer dereference")._h[(7 : stdgo.GoInt)] = (1541459225u32 : stdgo.GoUInt32);
        } else {
            (@:checkr _d ?? throw "null pointer dereference")._h[(0 : stdgo.GoInt)] = (-1056596264u32 : stdgo.GoUInt32);
            (@:checkr _d ?? throw "null pointer dereference")._h[(1 : stdgo.GoInt)] = (914150663u32 : stdgo.GoUInt32);
            (@:checkr _d ?? throw "null pointer dereference")._h[(2 : stdgo.GoInt)] = (812702999u32 : stdgo.GoUInt32);
            (@:checkr _d ?? throw "null pointer dereference")._h[(3 : stdgo.GoInt)] = (-150054599u32 : stdgo.GoUInt32);
            (@:checkr _d ?? throw "null pointer dereference")._h[(4 : stdgo.GoInt)] = (-4191439u32 : stdgo.GoUInt32);
            (@:checkr _d ?? throw "null pointer dereference")._h[(5 : stdgo.GoInt)] = (1750603025u32 : stdgo.GoUInt32);
            (@:checkr _d ?? throw "null pointer dereference")._h[(6 : stdgo.GoInt)] = (1694076839u32 : stdgo.GoUInt32);
            (@:checkr _d ?? throw "null pointer dereference")._h[(7 : stdgo.GoInt)] = (-1090891868u32 : stdgo.GoUInt32);
        };
        (@:checkr _d ?? throw "null pointer dereference")._nx = (0 : stdgo.GoInt);
        (@:checkr _d ?? throw "null pointer dereference")._len = (0i64 : stdgo.GoUInt64);
    }
    @:keep
    @:tdfield
    static public function unmarshalBinary( _d:stdgo.Ref<stdgo._internal.crypto.sha256.Sha256_t_digest.T_digest>, _b:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        @:recv var _d:stdgo.Ref<stdgo._internal.crypto.sha256.Sha256_t_digest.T_digest> = _d;
        if (((((_b.length) < ((stdgo.Go.str("sha", 2) : stdgo.GoString).length) : Bool) || (((@:checkr _d ?? throw "null pointer dereference")._is224 && (((_b.__slice__(0, ((stdgo.Go.str("sha", 2) : stdgo.GoString).length)) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString) != (stdgo.Go.str("sha", 2) : stdgo.GoString)) : Bool)) : Bool) || ((!(@:checkr _d ?? throw "null pointer dereference")._is224 && (((_b.__slice__(0, ((stdgo.Go.str("sha", 3) : stdgo.GoString).length)) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString) != (stdgo.Go.str("sha", 3) : stdgo.GoString)) : Bool)) : Bool)) {
            return stdgo._internal.errors.Errors_new_.new_(("crypto/sha256: invalid hash state identifier" : stdgo.GoString));
        };
        if ((_b.length) != ((108 : stdgo.GoInt))) {
            return stdgo._internal.errors.Errors_new_.new_(("crypto/sha256: invalid hash state size" : stdgo.GoString));
        };
        _b = (_b.__slice__(((stdgo.Go.str("sha", 2) : stdgo.GoString).length)) : stdgo.Slice<stdgo.GoUInt8>);
        {
            var __tmp__ = stdgo._internal.crypto.sha256.Sha256__consumeuint32._consumeUint32(_b);
            _b = @:tmpset0 __tmp__._0;
            (@:checkr _d ?? throw "null pointer dereference")._h[(0 : stdgo.GoInt)] = @:tmpset0 __tmp__._1;
        };
        {
            var __tmp__ = stdgo._internal.crypto.sha256.Sha256__consumeuint32._consumeUint32(_b);
            _b = @:tmpset0 __tmp__._0;
            (@:checkr _d ?? throw "null pointer dereference")._h[(1 : stdgo.GoInt)] = @:tmpset0 __tmp__._1;
        };
        {
            var __tmp__ = stdgo._internal.crypto.sha256.Sha256__consumeuint32._consumeUint32(_b);
            _b = @:tmpset0 __tmp__._0;
            (@:checkr _d ?? throw "null pointer dereference")._h[(2 : stdgo.GoInt)] = @:tmpset0 __tmp__._1;
        };
        {
            var __tmp__ = stdgo._internal.crypto.sha256.Sha256__consumeuint32._consumeUint32(_b);
            _b = @:tmpset0 __tmp__._0;
            (@:checkr _d ?? throw "null pointer dereference")._h[(3 : stdgo.GoInt)] = @:tmpset0 __tmp__._1;
        };
        {
            var __tmp__ = stdgo._internal.crypto.sha256.Sha256__consumeuint32._consumeUint32(_b);
            _b = @:tmpset0 __tmp__._0;
            (@:checkr _d ?? throw "null pointer dereference")._h[(4 : stdgo.GoInt)] = @:tmpset0 __tmp__._1;
        };
        {
            var __tmp__ = stdgo._internal.crypto.sha256.Sha256__consumeuint32._consumeUint32(_b);
            _b = @:tmpset0 __tmp__._0;
            (@:checkr _d ?? throw "null pointer dereference")._h[(5 : stdgo.GoInt)] = @:tmpset0 __tmp__._1;
        };
        {
            var __tmp__ = stdgo._internal.crypto.sha256.Sha256__consumeuint32._consumeUint32(_b);
            _b = @:tmpset0 __tmp__._0;
            (@:checkr _d ?? throw "null pointer dereference")._h[(6 : stdgo.GoInt)] = @:tmpset0 __tmp__._1;
        };
        {
            var __tmp__ = stdgo._internal.crypto.sha256.Sha256__consumeuint32._consumeUint32(_b);
            _b = @:tmpset0 __tmp__._0;
            (@:checkr _d ?? throw "null pointer dereference")._h[(7 : stdgo.GoInt)] = @:tmpset0 __tmp__._1;
        };
        _b = (_b.__slice__(((@:checkr _d ?? throw "null pointer dereference")._x.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__(_b)) : stdgo.Slice<stdgo.GoUInt8>);
        {
            var __tmp__ = stdgo._internal.crypto.sha256.Sha256__consumeuint64._consumeUint64(_b);
            _b = @:tmpset0 __tmp__._0;
            (@:checkr _d ?? throw "null pointer dereference")._len = @:tmpset0 __tmp__._1;
        };
        (@:checkr _d ?? throw "null pointer dereference")._nx = (((@:checkr _d ?? throw "null pointer dereference")._len % (64i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoInt);
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function marshalBinary( _d:stdgo.Ref<stdgo._internal.crypto.sha256.Sha256_t_digest.T_digest>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _d:stdgo.Ref<stdgo._internal.crypto.sha256.Sha256_t_digest.T_digest> = _d;
        var _b = (new stdgo.Slice<stdgo.GoUInt8>((0 : stdgo.GoInt).toBasic(), (108 : stdgo.GoInt)).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        if ((@:checkr _d ?? throw "null pointer dereference")._is224) {
            _b = (_b.__append__(...((stdgo.Go.str("sha", 2) : stdgo.GoString) : Array<stdgo.GoUInt8>)));
        } else {
            _b = (_b.__append__(...((stdgo.Go.str("sha", 3) : stdgo.GoString) : Array<stdgo.GoUInt8>)));
        };
        _b = stdgo._internal.encoding.binary.Binary_bigendian.bigEndian.appendUint32(_b, (@:checkr _d ?? throw "null pointer dereference")._h[(0 : stdgo.GoInt)]);
        _b = stdgo._internal.encoding.binary.Binary_bigendian.bigEndian.appendUint32(_b, (@:checkr _d ?? throw "null pointer dereference")._h[(1 : stdgo.GoInt)]);
        _b = stdgo._internal.encoding.binary.Binary_bigendian.bigEndian.appendUint32(_b, (@:checkr _d ?? throw "null pointer dereference")._h[(2 : stdgo.GoInt)]);
        _b = stdgo._internal.encoding.binary.Binary_bigendian.bigEndian.appendUint32(_b, (@:checkr _d ?? throw "null pointer dereference")._h[(3 : stdgo.GoInt)]);
        _b = stdgo._internal.encoding.binary.Binary_bigendian.bigEndian.appendUint32(_b, (@:checkr _d ?? throw "null pointer dereference")._h[(4 : stdgo.GoInt)]);
        _b = stdgo._internal.encoding.binary.Binary_bigendian.bigEndian.appendUint32(_b, (@:checkr _d ?? throw "null pointer dereference")._h[(5 : stdgo.GoInt)]);
        _b = stdgo._internal.encoding.binary.Binary_bigendian.bigEndian.appendUint32(_b, (@:checkr _d ?? throw "null pointer dereference")._h[(6 : stdgo.GoInt)]);
        _b = stdgo._internal.encoding.binary.Binary_bigendian.bigEndian.appendUint32(_b, (@:checkr _d ?? throw "null pointer dereference")._h[(7 : stdgo.GoInt)]);
        _b = (_b.__append__(...(((@:checkr _d ?? throw "null pointer dereference")._x.__slice__(0, (@:checkr _d ?? throw "null pointer dereference")._nx) : stdgo.Slice<stdgo.GoUInt8>) : Array<stdgo.GoUInt8>)));
        _b = (_b.__slice__(0, (((_b.length) + ((@:checkr _d ?? throw "null pointer dereference")._x.length) : stdgo.GoInt) - (@:checkr _d ?? throw "null pointer dereference")._nx : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        _b = stdgo._internal.encoding.binary.Binary_bigendian.bigEndian.appendUint64(_b, (@:checkr _d ?? throw "null pointer dereference")._len);
        return { _0 : _b, _1 : (null : stdgo.Error) };
    }
}
