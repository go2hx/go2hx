package stdgo._internal.hash.adler32;
@:keep @:allow(stdgo._internal.hash.adler32.Adler32.T_digest_asInterface) class T_digest_static_extension {
    @:keep
    @:pointer
    static public function sum(____:stdgo._internal.hash.adler32.Adler32_T_digest.T_digest,  _d:stdgo.Pointer<stdgo._internal.hash.adler32.Adler32_T_digest.T_digest>, _in:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> {
        var _s = (_d.value : stdgo.GoUInt32);
        return (_in.__append__(((_s >> (24i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt8), ((_s >> (16i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt8), ((_s >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt8), (_s : stdgo.GoUInt8)));
    }
    @:keep
    @:pointer
    static public function sum32(____:stdgo._internal.hash.adler32.Adler32_T_digest.T_digest,  _d:stdgo.Pointer<stdgo._internal.hash.adler32.Adler32_T_digest.T_digest>):stdgo.GoUInt32 {
        return (_d.value : stdgo.GoUInt32);
    }
    @:keep
    @:pointer
    static public function write(____:stdgo._internal.hash.adler32.Adler32_T_digest.T_digest,  _d:stdgo.Pointer<stdgo._internal.hash.adler32.Adler32_T_digest.T_digest>, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        var _nn = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        _d.value = stdgo._internal.hash.adler32.Adler32__update._update(_d.value, _p);
        return { _0 : _nn = (_p.length), _1 : _err = (null : stdgo.Error) };
    }
    @:keep
    @:pointer
    static public function unmarshalBinary(____:stdgo._internal.hash.adler32.Adler32_T_digest.T_digest,  _d:stdgo.Pointer<stdgo._internal.hash.adler32.Adler32_T_digest.T_digest>, _b:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        if ((((_b.length) < (stdgo.Go.str("adl", 1).length) : Bool) || (((_b.__slice__(0, (stdgo.Go.str("adl", 1).length)) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString) != stdgo.Go.str("adl", 1)) : Bool)) {
            return stdgo._internal.errors.Errors_new_.new_(("hash/adler32: invalid hash state identifier" : stdgo.GoString));
        };
        if ((_b.length) != ((8 : stdgo.GoInt))) {
            return stdgo._internal.errors.Errors_new_.new_(("hash/adler32: invalid hash state size" : stdgo.GoString));
        };
        _d.value = (stdgo._internal.hash.adler32.Adler32__readUint32._readUint32((_b.__slice__((stdgo.Go.str("adl", 1).length)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo._internal.hash.adler32.Adler32_T_digest.T_digest);
        return (null : stdgo.Error);
    }
    @:keep
    @:pointer
    static public function marshalBinary(____:stdgo._internal.hash.adler32.Adler32_T_digest.T_digest,  _d:stdgo.Pointer<stdgo._internal.hash.adler32.Adler32_T_digest.T_digest>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        var _b = (new stdgo.Slice<stdgo.GoUInt8>((0 : stdgo.GoInt).toBasic(), (8 : stdgo.GoInt)).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        _b = (_b.__append__(...(stdgo.Go.str("adl", 1) : Array<stdgo.GoUInt8>)));
        _b = stdgo._internal.hash.adler32.Adler32__appendUint32._appendUint32(_b, (_d.value : stdgo.GoUInt32));
        return { _0 : _b, _1 : (null : stdgo.Error) };
    }
    @:keep
    @:pointer
    static public function blockSize(____:stdgo._internal.hash.adler32.Adler32_T_digest.T_digest,  _d:stdgo.Pointer<stdgo._internal.hash.adler32.Adler32_T_digest.T_digest>):stdgo.GoInt {
        return (4 : stdgo.GoInt);
    }
    @:keep
    @:pointer
    static public function size(____:stdgo._internal.hash.adler32.Adler32_T_digest.T_digest,  _d:stdgo.Pointer<stdgo._internal.hash.adler32.Adler32_T_digest.T_digest>):stdgo.GoInt {
        return (4 : stdgo.GoInt);
    }
    @:keep
    @:pointer
    static public function reset(____:stdgo._internal.hash.adler32.Adler32_T_digest.T_digest,  _d:stdgo.Pointer<stdgo._internal.hash.adler32.Adler32_T_digest.T_digest>):Void {
        _d.value = (1u32 : stdgo._internal.hash.adler32.Adler32_T_digest.T_digest);
    }
}
