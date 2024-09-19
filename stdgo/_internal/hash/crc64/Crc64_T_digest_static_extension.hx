package stdgo._internal.hash.crc64;
@:keep @:allow(stdgo._internal.hash.crc64.Crc64.T_digest_asInterface) class T_digest_static_extension {
    @:keep
    static public function sum( _d:stdgo.Ref<stdgo._internal.hash.crc64.Crc64_T_digest.T_digest>, _in:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _d:stdgo.Ref<stdgo._internal.hash.crc64.Crc64_T_digest.T_digest> = _d;
        var _s = (_d.sum64() : stdgo.GoUInt64);
        return (_in.__append__(((_s >> (56i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt8), ((_s >> (48i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt8), ((_s >> (40i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt8), ((_s >> (32i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt8), ((_s >> (24i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt8), ((_s >> (16i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt8), ((_s >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt8), (_s : stdgo.GoUInt8)));
    }
    @:keep
    static public function sum64( _d:stdgo.Ref<stdgo._internal.hash.crc64.Crc64_T_digest.T_digest>):stdgo.GoUInt64 {
        @:recv var _d:stdgo.Ref<stdgo._internal.hash.crc64.Crc64_T_digest.T_digest> = _d;
        return _d._crc;
    }
    @:keep
    static public function write( _d:stdgo.Ref<stdgo._internal.hash.crc64.Crc64_T_digest.T_digest>, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _d:stdgo.Ref<stdgo._internal.hash.crc64.Crc64_T_digest.T_digest> = _d;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        _d._crc = stdgo._internal.hash.crc64.Crc64__update._update(_d._crc, _d._tab, _p);
        return { _0 : (_p.length), _1 : (null : stdgo.Error) };
    }
    @:keep
    static public function unmarshalBinary( _d:stdgo.Ref<stdgo._internal.hash.crc64.Crc64_T_digest.T_digest>, _b:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        @:recv var _d:stdgo.Ref<stdgo._internal.hash.crc64.Crc64_T_digest.T_digest> = _d;
        if ((((_b.length) < (stdgo.Go.str("crc", 2).length) : Bool) || (((_b.__slice__(0, (stdgo.Go.str("crc", 2).length)) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString) != stdgo.Go.str("crc", 2)) : Bool)) {
            return stdgo._internal.errors.Errors_new_.new_(("hash/crc64: invalid hash state identifier" : stdgo.GoString));
        };
        if ((_b.length) != ((20 : stdgo.GoInt))) {
            return stdgo._internal.errors.Errors_new_.new_(("hash/crc64: invalid hash state size" : stdgo.GoString));
        };
        if (stdgo._internal.hash.crc64.Crc64__tableSum._tableSum(_d._tab) != (stdgo._internal.hash.crc64.Crc64__readUint64._readUint64((_b.__slice__((4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)))) {
            return stdgo._internal.errors.Errors_new_.new_(("hash/crc64: tables do not match" : stdgo.GoString));
        };
        _d._crc = stdgo._internal.hash.crc64.Crc64__readUint64._readUint64((_b.__slice__((12 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
        return (null : stdgo.Error);
    }
    @:keep
    static public function marshalBinary( _d:stdgo.Ref<stdgo._internal.hash.crc64.Crc64_T_digest.T_digest>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _d:stdgo.Ref<stdgo._internal.hash.crc64.Crc64_T_digest.T_digest> = _d;
        var _b = (new stdgo.Slice<stdgo.GoUInt8>((0 : stdgo.GoInt).toBasic(), (20 : stdgo.GoInt)).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        _b = (_b.__append__(...(stdgo.Go.str("crc", 2) : Array<stdgo.GoUInt8>)));
        _b = stdgo._internal.hash.crc64.Crc64__appendUint64._appendUint64(_b, stdgo._internal.hash.crc64.Crc64__tableSum._tableSum(_d._tab));
        _b = stdgo._internal.hash.crc64.Crc64__appendUint64._appendUint64(_b, _d._crc);
        return { _0 : _b, _1 : (null : stdgo.Error) };
    }
    @:keep
    static public function reset( _d:stdgo.Ref<stdgo._internal.hash.crc64.Crc64_T_digest.T_digest>):Void {
        @:recv var _d:stdgo.Ref<stdgo._internal.hash.crc64.Crc64_T_digest.T_digest> = _d;
        _d._crc = (0i64 : stdgo.GoUInt64);
    }
    @:keep
    static public function blockSize( _d:stdgo.Ref<stdgo._internal.hash.crc64.Crc64_T_digest.T_digest>):stdgo.GoInt {
        @:recv var _d:stdgo.Ref<stdgo._internal.hash.crc64.Crc64_T_digest.T_digest> = _d;
        return (1 : stdgo.GoInt);
    }
    @:keep
    static public function size( _d:stdgo.Ref<stdgo._internal.hash.crc64.Crc64_T_digest.T_digest>):stdgo.GoInt {
        @:recv var _d:stdgo.Ref<stdgo._internal.hash.crc64.Crc64_T_digest.T_digest> = _d;
        return (8 : stdgo.GoInt);
    }
}