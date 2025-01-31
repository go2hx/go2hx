package stdgo._internal.debug.plan9obj;
import stdgo._internal.errors.Errors;
import stdgo._internal.os.Os;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.io.Io;
import stdgo._internal.internal.saferio.Saferio;
import stdgo._internal.fmt.Fmt;
function _parseMagic(_magic:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoUInt32; var _1 : stdgo.Error; } {
        var _m = (stdgo._internal.encoding.binary.Binary_bigEndian.bigEndian.uint32(_magic) : stdgo.GoUInt32);
        {
            final __value__ = _m;
            if (__value__ == ((491u32 : stdgo.GoUInt32)) || __value__ == ((35479u32 : stdgo.GoUInt32)) || __value__ == ((1607u32 : stdgo.GoUInt32))) {
                return { _0 : _m, _1 : (null : stdgo.Error) };
            };
        };
        return { _0 : (0u32 : stdgo.GoUInt32), _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.debug.plan9obj.Plan9obj_T_formatError.T_formatError((0 : stdgo.GoInt), ("bad magic number" : stdgo.GoString), stdgo.Go.toInterface(_magic)) : stdgo._internal.debug.plan9obj.Plan9obj_T_formatError.T_formatError)) : stdgo.Ref<stdgo._internal.debug.plan9obj.Plan9obj_T_formatError.T_formatError>)) };
    }
