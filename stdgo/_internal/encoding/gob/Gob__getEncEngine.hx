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
function _getEncEngine(_ut:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_userTypeInfo.T_userTypeInfo>, _building:stdgo.GoMap<stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_typeInfo.T_typeInfo>, Bool>):stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_encEngine.T_encEngine> {
        var __tmp__ = stdgo._internal.encoding.gob.Gob__getTypeInfo._getTypeInfo(_ut), _info:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_typeInfo.T_typeInfo> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            stdgo._internal.encoding.gob.Gob__error_._error_(_err);
        };
        var _enc = @:check2 (@:checkr _info ?? throw "null pointer dereference")._encoder.load();
        if ((_enc == null || (_enc : Dynamic).__nil__)) {
            _enc = stdgo._internal.encoding.gob.Gob__buildEncEngine._buildEncEngine(_info, _ut, _building);
        };
        return _enc;
    }
