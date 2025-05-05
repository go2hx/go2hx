package stdgo._internal.hash.fnv;
@:keep @:allow(stdgo._internal.hash.fnv.Fnv.T_sum64_asInterface) class T_sum64_static_extension {
    @:keep
    @:pointer
    @:tdfield
    static public function unmarshalBinary( _s:stdgo.Pointer<stdgo._internal.hash.fnv.Fnv_t_sum64.T_sum64>, _b:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        //"file:///home/runner/.go/go1.21.3/src/hash/fnv/fnv.go#L293"
        if ((((_b.length) < ((stdgo.Go.str("fnv", 3) : stdgo.GoString).length) : Bool) || (((_b.__slice__(0, ((stdgo.Go.str("fnv", 3) : stdgo.GoString).length)) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString) != (stdgo.Go.str("fnv", 3) : stdgo.GoString)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/hash/fnv/fnv.go#L294"
            return stdgo._internal.errors.Errors_new_.new_(("hash/fnv: invalid hash state identifier" : stdgo.GoString));
        };
        //"file:///home/runner/.go/go1.21.3/src/hash/fnv/fnv.go#L296"
        if ((_b.length) != ((12 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/hash/fnv/fnv.go#L297"
            return stdgo._internal.errors.Errors_new_.new_(("hash/fnv: invalid hash state size" : stdgo.GoString));
        };
        _s.value = (stdgo._internal.hash.fnv.Fnv__readuint64._readUint64((_b.__slice__((4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo._internal.hash.fnv.Fnv_t_sum64.T_sum64);
        //"file:///home/runner/.go/go1.21.3/src/hash/fnv/fnv.go#L300"
        return (null : stdgo.Error);
    }
    @:keep
    @:pointer
    @:tdfield
    static public function marshalBinary( _s:stdgo.Pointer<stdgo._internal.hash.fnv.Fnv_t_sum64.T_sum64>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        var _b = (new stdgo.Slice<stdgo.GoUInt8>((0 : stdgo.GoInt).toBasic(), (12 : stdgo.GoInt)).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        _b = (_b.__append__(...((stdgo.Go.str("fnv", 3) : stdgo.GoString) : Array<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>);
        _b = stdgo._internal.hash.fnv.Fnv__appenduint64._appendUint64(_b, (_s.value : stdgo.GoUInt64));
        //"file:///home/runner/.go/go1.21.3/src/hash/fnv/fnv.go#L243"
        return { _0 : _b, _1 : (null : stdgo.Error) };
    }
    @:keep
    @:pointer
    @:tdfield
    static public function sum( _s:stdgo.Pointer<stdgo._internal.hash.fnv.Fnv_t_sum64.T_sum64>, _in:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> {
        var _v = (_s.value : stdgo.GoUInt64);
        //"file:///home/runner/.go/go1.21.3/src/hash/fnv/fnv.go#L191"
        return (_in.__append__(((_v >> (56i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt8), ((_v >> (48i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt8), ((_v >> (40i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt8), ((_v >> (32i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt8), ((_v >> (24i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt8), ((_v >> (16i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt8), ((_v >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt8), (_v : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>);
    }
    @:keep
    @:pointer
    @:tdfield
    static public function blockSize( _s:stdgo.Pointer<stdgo._internal.hash.fnv.Fnv_t_sum64.T_sum64>):stdgo.GoInt {
        //"file:///home/runner/.go/go1.21.3/src/hash/fnv/fnv.go#L174"
        return (1 : stdgo.GoInt);
    }
    @:keep
    @:pointer
    @:tdfield
    static public function size( _s:stdgo.Pointer<stdgo._internal.hash.fnv.Fnv_t_sum64.T_sum64>):stdgo.GoInt {
        //"file:///home/runner/.go/go1.21.3/src/hash/fnv/fnv.go#L167"
        return (8 : stdgo.GoInt);
    }
    @:keep
    @:pointer
    @:tdfield
    static public function write( _s:stdgo.Pointer<stdgo._internal.hash.fnv.Fnv_t_sum64.T_sum64>, _data:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        var _hash = (_s.value : stdgo._internal.hash.fnv.Fnv_t_sum64.T_sum64);
        //"file:///home/runner/.go/go1.21.3/src/hash/fnv/fnv.go#L121"
        for (__0 => _c in _data) {
            _hash = (_hash * ((1099511628211i64 : stdgo._internal.hash.fnv.Fnv_t_sum64.T_sum64)) : stdgo._internal.hash.fnv.Fnv_t_sum64.T_sum64);
            _hash = (_hash ^ ((_c : stdgo._internal.hash.fnv.Fnv_t_sum64.T_sum64)) : stdgo._internal.hash.fnv.Fnv_t_sum64.T_sum64);
        };
        _s.value = _hash;
        //"file:///home/runner/.go/go1.21.3/src/hash/fnv/fnv.go#L126"
        return { _0 : (_data.length), _1 : (null : stdgo.Error) };
    }
    @:keep
    @:pointer
    @:tdfield
    static public function sum64( _s:stdgo.Pointer<stdgo._internal.hash.fnv.Fnv_t_sum64.T_sum64>):stdgo.GoUInt64 {
        //"file:///home/runner/.go/go1.21.3/src/hash/fnv/fnv.go#L96"
        return (_s.value : stdgo.GoUInt64);
    }
    @:keep
    @:pointer
    @:tdfield
    static public function reset( _s:stdgo.Pointer<stdgo._internal.hash.fnv.Fnv_t_sum64.T_sum64>):Void {
        _s.value = (-3750763034362895579i64 : stdgo._internal.hash.fnv.Fnv_t_sum64.T_sum64);
    }
}
