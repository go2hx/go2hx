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
@:keep class T_gobType_static_extension {
    @:interfacetypeffun
    static public function _safeString(t:stdgo._internal.encoding.gob.Gob_T_gobType.T_gobType, _seen:stdgo.GoMap<stdgo._internal.encoding.gob.Gob_T_typeId.T_typeId, Bool>):stdgo.GoString return t._safeString(_seen);
    @:interfacetypeffun
    static public function _string(t:stdgo._internal.encoding.gob.Gob_T_gobType.T_gobType):stdgo.GoString return t._string();
    @:interfacetypeffun
    static public function _name(t:stdgo._internal.encoding.gob.Gob_T_gobType.T_gobType):stdgo.GoString return t._name();
    @:interfacetypeffun
    static public function _setId(t:stdgo._internal.encoding.gob.Gob_T_gobType.T_gobType, _id:stdgo._internal.encoding.gob.Gob_T_typeId.T_typeId):Void t._setId(_id);
    @:interfacetypeffun
    static public function _id(t:stdgo._internal.encoding.gob.Gob_T_gobType.T_gobType):stdgo._internal.encoding.gob.Gob_T_typeId.T_typeId return t._id();
}
