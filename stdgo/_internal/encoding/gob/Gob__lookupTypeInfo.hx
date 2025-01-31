package stdgo._internal.encoding.gob;
import stdgo._internal.flag.Flag;
import stdgo._internal.errors.Errors;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.strings.Strings;
import stdgo._internal.time.Time;
import stdgo._internal.math.rand.Rand;
import stdgo._internal.testing.Testing;
import stdgo._internal.io.Io;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.math.Math;
import stdgo._internal.internal.saferio.Saferio;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.encoding.hex.Hex;
import stdgo._internal.sort.Sort;
import stdgo._internal.os.Os;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.encoding.binary.Binary;
function _lookupTypeInfo(_rt:stdgo._internal.reflect.Reflect_Type_.Type_):stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_typeInfo.T_typeInfo> {
        {
            var _m = stdgo._internal.encoding.gob.Gob__typeInfoMapInit._typeInfoMapInit;
            if (_m != null) {
                return (_m[_rt] ?? (null : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_typeInfo.T_typeInfo>));
            };
        };
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((@:check2 stdgo._internal.encoding.gob.Gob__typeInfoMap._typeInfoMap.load() : stdgo.GoMap<stdgo._internal.reflect.Reflect_Type_.Type_, stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_typeInfo.T_typeInfo>>)) : stdgo.GoMap<stdgo._internal.reflect.Reflect_Type_.Type_, stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_typeInfo.T_typeInfo>>), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo.GoMap<stdgo._internal.reflect.Reflect_Type_.Type_, stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_typeInfo.T_typeInfo>>), _1 : false };
        }, _m = __tmp__._0, __8 = __tmp__._1;
        return (_m[_rt] ?? (null : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_typeInfo.T_typeInfo>));
    }
