package stdgo._internal.hash.fnv;
@:keep @:allow(stdgo._internal.hash.fnv.Fnv.T_sum64a_asInterface) class T_sum64a_static_extension {
    @:keep
    @:pointer
    static public function unmarshalBinary(____:stdgo._internal.hash.fnv.Fnv_T_sum64a.T_sum64a,  _s:stdgo.Pointer<stdgo._internal.hash.fnv.Fnv_T_sum64a.T_sum64a>, _b:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        if ((((_b.length) < (stdgo.Go.str("fnv", 4).length) : Bool) || (((_b.__slice__(0, (stdgo.Go.str("fnv", 4).length)) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString) != stdgo.Go.str("fnv", 4)) : Bool)) {
            return stdgo._internal.errors.Errors_new_.new_(("hash/fnv: invalid hash state identifier" : stdgo.GoString));
        };
        if ((_b.length) != ((12 : stdgo.GoInt))) {
            return stdgo._internal.errors.Errors_new_.new_(("hash/fnv: invalid hash state size" : stdgo.GoString));
        };
        _s.value = (stdgo._internal.hash.fnv.Fnv__readUint64._readUint64((_b.__slice__((4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo._internal.hash.fnv.Fnv_T_sum64a.T_sum64a);
        return (null : stdgo.Error);
    }
    @:keep
    @:pointer
    static public function marshalBinary(____:stdgo._internal.hash.fnv.Fnv_T_sum64a.T_sum64a,  _s:stdgo.Pointer<stdgo._internal.hash.fnv.Fnv_T_sum64a.T_sum64a>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        var _b = (new stdgo.Slice<stdgo.GoUInt8>((0 : stdgo.GoInt).toBasic(), (12 : stdgo.GoInt)).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        _b = (_b.__append__(...(stdgo.Go.str("fnv", 4) : Array<stdgo.GoUInt8>)));
        _b = stdgo._internal.hash.fnv.Fnv__appendUint64._appendUint64(_b, (_s.value : stdgo.GoUInt64));
        return { _0 : _b, _1 : (null : stdgo.Error) };
    }
    @:keep
    @:pointer
    static public function sum(____:stdgo._internal.hash.fnv.Fnv_T_sum64a.T_sum64a,  _s:stdgo.Pointer<stdgo._internal.hash.fnv.Fnv_T_sum64a.T_sum64a>, _in:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> {
        var _v = (_s.value : stdgo.GoUInt64);
        return (_in.__append__(((_v >> (56i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt8), ((_v >> (48i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt8), ((_v >> (40i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt8), ((_v >> (32i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt8), ((_v >> (24i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt8), ((_v >> (16i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt8), ((_v >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt8), (_v : stdgo.GoUInt8)));
    }
    @:keep
    @:pointer
    static public function blockSize(____:stdgo._internal.hash.fnv.Fnv_T_sum64a.T_sum64a,  _s:stdgo.Pointer<stdgo._internal.hash.fnv.Fnv_T_sum64a.T_sum64a>):stdgo.GoInt {
        return (1 : stdgo.GoInt);
    }
    @:keep
    @:pointer
    static public function size(____:stdgo._internal.hash.fnv.Fnv_T_sum64a.T_sum64a,  _s:stdgo.Pointer<stdgo._internal.hash.fnv.Fnv_T_sum64a.T_sum64a>):stdgo.GoInt {
        return (8 : stdgo.GoInt);
    }
    @:keep
    @:pointer
    static public function write(____:stdgo._internal.hash.fnv.Fnv_T_sum64a.T_sum64a,  _s:stdgo.Pointer<stdgo._internal.hash.fnv.Fnv_T_sum64a.T_sum64a>, _data:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        var _hash = (_s.value : stdgo._internal.hash.fnv.Fnv_T_sum64a.T_sum64a);
        for (__0 => _c in _data) {
            _hash = (_hash ^ ((_c : stdgo._internal.hash.fnv.Fnv_T_sum64a.T_sum64a)) : stdgo._internal.hash.fnv.Fnv_T_sum64a.T_sum64a);
            _hash = (_hash * ((1099511628211i64 : stdgo._internal.hash.fnv.Fnv_T_sum64a.T_sum64a)) : stdgo._internal.hash.fnv.Fnv_T_sum64a.T_sum64a);
        };
        _s.value = _hash;
        return { _0 : (_data.length), _1 : (null : stdgo.Error) };
    }
    @:keep
    @:pointer
    static public function sum64(____:stdgo._internal.hash.fnv.Fnv_T_sum64a.T_sum64a,  _s:stdgo.Pointer<stdgo._internal.hash.fnv.Fnv_T_sum64a.T_sum64a>):stdgo.GoUInt64 {
        return (_s.value : stdgo.GoUInt64);
    }
    @:keep
    @:pointer
    static public function reset(____:stdgo._internal.hash.fnv.Fnv_T_sum64a.T_sum64a,  _s:stdgo.Pointer<stdgo._internal.hash.fnv.Fnv_T_sum64a.T_sum64a>):Void {
        _s.value = (-3750763034362895579i64 : stdgo._internal.hash.fnv.Fnv_T_sum64a.T_sum64a);
    }
}