package stdgo._internal.hash.fnv;
@:keep @:allow(stdgo._internal.hash.fnv.Fnv.T_sum32_asInterface) class T_sum32_static_extension {
    @:keep
    @:pointer
    static public function unmarshalBinary(____:stdgo._internal.hash.fnv.Fnv_T_sum32.T_sum32,  _s:stdgo.Pointer<stdgo._internal.hash.fnv.Fnv_T_sum32.T_sum32>, _b:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        if ((((_b.length) < (stdgo.Go.str("fnv", 1).length) : Bool) || (((_b.__slice__(0, (stdgo.Go.str("fnv", 1).length)) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString) != stdgo.Go.str("fnv", 1)) : Bool)) {
            return stdgo._internal.errors.Errors_new_.new_(("hash/fnv: invalid hash state identifier" : stdgo.GoString));
        };
        if ((_b.length) != ((8 : stdgo.GoInt))) {
            return stdgo._internal.errors.Errors_new_.new_(("hash/fnv: invalid hash state size" : stdgo.GoString));
        };
        _s.value = (stdgo._internal.hash.fnv.Fnv__readUint32._readUint32((_b.__slice__((4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo._internal.hash.fnv.Fnv_T_sum32.T_sum32);
        return (null : stdgo.Error);
    }
    @:keep
    @:pointer
    static public function marshalBinary(____:stdgo._internal.hash.fnv.Fnv_T_sum32.T_sum32,  _s:stdgo.Pointer<stdgo._internal.hash.fnv.Fnv_T_sum32.T_sum32>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        var _b = (new stdgo.Slice<stdgo.GoUInt8>((0 : stdgo.GoInt).toBasic(), (8 : stdgo.GoInt)).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        _b = (_b.__append__(...(stdgo.Go.str("fnv", 1) : Array<stdgo.GoUInt8>)));
        _b = stdgo._internal.hash.fnv.Fnv__appendUint32._appendUint32(_b, (_s.value : stdgo.GoUInt32));
        return { _0 : _b, _1 : (null : stdgo.Error) };
    }
    @:keep
    @:pointer
    static public function sum(____:stdgo._internal.hash.fnv.Fnv_T_sum32.T_sum32,  _s:stdgo.Pointer<stdgo._internal.hash.fnv.Fnv_T_sum32.T_sum32>, _in:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> {
        var _v = (_s.value : stdgo.GoUInt32);
        return (_in.__append__(((_v >> (24i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt8), ((_v >> (16i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt8), ((_v >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt8), (_v : stdgo.GoUInt8)));
    }
    @:keep
    @:pointer
    static public function blockSize(____:stdgo._internal.hash.fnv.Fnv_T_sum32.T_sum32,  _s:stdgo.Pointer<stdgo._internal.hash.fnv.Fnv_T_sum32.T_sum32>):stdgo.GoInt {
        return (1 : stdgo.GoInt);
    }
    @:keep
    @:pointer
    static public function size(____:stdgo._internal.hash.fnv.Fnv_T_sum32.T_sum32,  _s:stdgo.Pointer<stdgo._internal.hash.fnv.Fnv_T_sum32.T_sum32>):stdgo.GoInt {
        return (4 : stdgo.GoInt);
    }
    @:keep
    @:pointer
    static public function write(____:stdgo._internal.hash.fnv.Fnv_T_sum32.T_sum32,  _s:stdgo.Pointer<stdgo._internal.hash.fnv.Fnv_T_sum32.T_sum32>, _data:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        var _hash = (_s.value : stdgo._internal.hash.fnv.Fnv_T_sum32.T_sum32);
        for (__0 => _c in _data) {
            _hash = (_hash * ((16777619u32 : stdgo._internal.hash.fnv.Fnv_T_sum32.T_sum32)) : stdgo._internal.hash.fnv.Fnv_T_sum32.T_sum32);
            _hash = (_hash ^ ((_c : stdgo._internal.hash.fnv.Fnv_T_sum32.T_sum32)) : stdgo._internal.hash.fnv.Fnv_T_sum32.T_sum32);
        };
        _s.value = _hash;
        return { _0 : (_data.length), _1 : (null : stdgo.Error) };
    }
    @:keep
    @:pointer
    static public function sum32(____:stdgo._internal.hash.fnv.Fnv_T_sum32.T_sum32,  _s:stdgo.Pointer<stdgo._internal.hash.fnv.Fnv_T_sum32.T_sum32>):stdgo.GoUInt32 {
        return (_s.value : stdgo.GoUInt32);
    }
    @:keep
    @:pointer
    static public function reset(____:stdgo._internal.hash.fnv.Fnv_T_sum32.T_sum32,  _s:stdgo.Pointer<stdgo._internal.hash.fnv.Fnv_T_sum32.T_sum32>):Void {
        _s.value = (-2128831035u32 : stdgo._internal.hash.fnv.Fnv_T_sum32.T_sum32);
    }
}