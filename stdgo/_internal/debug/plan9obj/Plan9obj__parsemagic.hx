package stdgo._internal.debug.plan9obj;
function _parseMagic(_magic:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoUInt32; var _1 : stdgo.Error; } {
        var _m = (stdgo._internal.encoding.binary.Binary_bigendian.bigEndian.uint32(_magic) : stdgo.GoUInt32);
        {
            final __value__ = _m;
            if (__value__ == ((491u32 : stdgo.GoUInt32)) || __value__ == ((35479u32 : stdgo.GoUInt32)) || __value__ == ((1607u32 : stdgo.GoUInt32))) {
                return { _0 : _m, _1 : (null : stdgo.Error) };
            };
        };
        return { _0 : (0u32 : stdgo.GoUInt32), _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.debug.plan9obj.Plan9obj_t_formaterror.T_formatError((0 : stdgo.GoInt), ("bad magic number" : stdgo.GoString), stdgo.Go.toInterface(_magic)) : stdgo._internal.debug.plan9obj.Plan9obj_t_formaterror.T_formatError)) : stdgo.Ref<stdgo._internal.debug.plan9obj.Plan9obj_t_formaterror.T_formatError>)) };
    }
