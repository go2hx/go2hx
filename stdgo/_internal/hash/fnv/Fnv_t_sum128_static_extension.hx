package stdgo._internal.hash.fnv;
@:keep @:allow(stdgo._internal.hash.fnv.Fnv.T_sum128_asInterface) class T_sum128_static_extension {
    @:keep
    @:tdfield
    static public function unmarshalBinary( _s:stdgo.Ref<stdgo._internal.hash.fnv.Fnv_t_sum128.T_sum128>, _b:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        @:recv var _s:stdgo.Ref<stdgo._internal.hash.fnv.Fnv_t_sum128.T_sum128> = _s;
        if ((((_b.length) < ((stdgo.Go.str("fnv", 5) : stdgo.GoString).length) : Bool) || (((_b.__slice__(0, ((stdgo.Go.str("fnv", 5) : stdgo.GoString).length)) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString) != (stdgo.Go.str("fnv", 5) : stdgo.GoString)) : Bool)) {
            return stdgo._internal.errors.Errors_new_.new_(("hash/fnv: invalid hash state identifier" : stdgo.GoString));
        };
        if ((_b.length) != ((20 : stdgo.GoInt))) {
            return stdgo._internal.errors.Errors_new_.new_(("hash/fnv: invalid hash state size" : stdgo.GoString));
        };
        _s[(0 : stdgo.GoInt)] = stdgo._internal.hash.fnv.Fnv__readuint64._readUint64((_b.__slice__((4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
        _s[(1 : stdgo.GoInt)] = stdgo._internal.hash.fnv.Fnv__readuint64._readUint64((_b.__slice__((12 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function marshalBinary( _s:stdgo.Ref<stdgo._internal.hash.fnv.Fnv_t_sum128.T_sum128>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _s:stdgo.Ref<stdgo._internal.hash.fnv.Fnv_t_sum128.T_sum128> = _s;
        var _b = (new stdgo.Slice<stdgo.GoUInt8>((0 : stdgo.GoInt).toBasic(), (20 : stdgo.GoInt)).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        _b = (_b.__append__(...((stdgo.Go.str("fnv", 5) : stdgo.GoString) : Array<stdgo.GoUInt8>)));
        _b = stdgo._internal.hash.fnv.Fnv__appenduint64._appendUint64(_b, _s[(0 : stdgo.GoInt)]);
        _b = stdgo._internal.hash.fnv.Fnv__appenduint64._appendUint64(_b, _s[(1 : stdgo.GoInt)]);
        return { _0 : _b, _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function sum( _s:stdgo.Ref<stdgo._internal.hash.fnv.Fnv_t_sum128.T_sum128>, _in:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _s:stdgo.Ref<stdgo._internal.hash.fnv.Fnv_t_sum128.T_sum128> = _s;
        return (_in.__append__(((_s[(0 : stdgo.GoInt)] >> (56i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt8),
((_s[(0 : stdgo.GoInt)] >> (48i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt8),
((_s[(0 : stdgo.GoInt)] >> (40i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt8),
((_s[(0 : stdgo.GoInt)] >> (32i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt8),
((_s[(0 : stdgo.GoInt)] >> (24i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt8),
((_s[(0 : stdgo.GoInt)] >> (16i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt8),
((_s[(0 : stdgo.GoInt)] >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt8),
(_s[(0 : stdgo.GoInt)] : stdgo.GoUInt8),
((_s[(1 : stdgo.GoInt)] >> (56i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt8),
((_s[(1 : stdgo.GoInt)] >> (48i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt8),
((_s[(1 : stdgo.GoInt)] >> (40i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt8),
((_s[(1 : stdgo.GoInt)] >> (32i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt8),
((_s[(1 : stdgo.GoInt)] >> (24i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt8),
((_s[(1 : stdgo.GoInt)] >> (16i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt8),
((_s[(1 : stdgo.GoInt)] >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt8),
(_s[(1 : stdgo.GoInt)] : stdgo.GoUInt8)));
    }
    @:keep
    @:tdfield
    static public function blockSize( _s:stdgo.Ref<stdgo._internal.hash.fnv.Fnv_t_sum128.T_sum128>):stdgo.GoInt {
        @:recv var _s:stdgo.Ref<stdgo._internal.hash.fnv.Fnv_t_sum128.T_sum128> = _s;
        return (1 : stdgo.GoInt);
    }
    @:keep
    @:tdfield
    static public function size( _s:stdgo.Ref<stdgo._internal.hash.fnv.Fnv_t_sum128.T_sum128>):stdgo.GoInt {
        @:recv var _s:stdgo.Ref<stdgo._internal.hash.fnv.Fnv_t_sum128.T_sum128> = _s;
        return (16 : stdgo.GoInt);
    }
    @:keep
    @:tdfield
    static public function write( _s:stdgo.Ref<stdgo._internal.hash.fnv.Fnv_t_sum128.T_sum128>, _data:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _s:stdgo.Ref<stdgo._internal.hash.fnv.Fnv_t_sum128.T_sum128> = _s;
        for (__0 => _c in _data) {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64((315i64 : stdgo.GoUInt64), _s[(1 : stdgo.GoInt)]), _s0:stdgo.GoUInt64 = __tmp__._0, _s1:stdgo.GoUInt64 = __tmp__._1;
            _s0 = (_s0 + (((_s[(1 : stdgo.GoInt)] << (24i64 : stdgo.GoUInt64) : stdgo.GoUInt64) + ((315i64 : stdgo.GoUInt64) * _s[(0 : stdgo.GoInt)] : stdgo.GoUInt64) : stdgo.GoUInt64)) : stdgo.GoUInt64);
            _s[(1 : stdgo.GoInt)] = _s1;
            _s[(0 : stdgo.GoInt)] = _s0;
            _s[(1 : stdgo.GoInt)] = (_s[(1 : stdgo.GoInt)] ^ ((_c : stdgo.GoUInt64)) : stdgo.GoUInt64);
        };
        return { _0 : (_data.length), _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function reset( _s:stdgo.Ref<stdgo._internal.hash.fnv.Fnv_t_sum128.T_sum128>):Void {
        @:recv var _s:stdgo.Ref<stdgo._internal.hash.fnv.Fnv_t_sum128.T_sum128> = _s;
        _s[(0 : stdgo.GoInt)] = (7809847782465536322i64 : stdgo.GoUInt64);
        _s[(1 : stdgo.GoInt)] = (7113472399480571277i64 : stdgo.GoUInt64);
    }
}
