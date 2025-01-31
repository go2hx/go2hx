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
function _getTypeInfo(_ut:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_userTypeInfo.T_userTypeInfo>):{ var _0 : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_typeInfo.T_typeInfo>; var _1 : stdgo.Error; } {
        var _rt = ((@:checkr _ut ?? throw "null pointer dereference")._base : stdgo._internal.reflect.Reflect_Type_.Type_);
        if ((@:checkr _ut ?? throw "null pointer dereference")._externalEnc != ((0 : stdgo.GoInt))) {
            _rt = (@:checkr _ut ?? throw "null pointer dereference")._user;
        };
        {
            var _info = stdgo._internal.encoding.gob.Gob__lookupTypeInfo._lookupTypeInfo(_rt);
            if ((_info != null && ((_info : Dynamic).__nil__ == null || !(_info : Dynamic).__nil__))) {
                return { _0 : _info, _1 : (null : stdgo.Error) };
            };
        };
        return stdgo._internal.encoding.gob.Gob__buildTypeInfo._buildTypeInfo(_ut, _rt);
    }
