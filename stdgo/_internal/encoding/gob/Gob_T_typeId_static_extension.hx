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
@:keep @:allow(stdgo._internal.encoding.gob.Gob.T_typeId_asInterface) class T_typeId_static_extension {
    @:keep
    @:tdfield
    static public function _name( _t:stdgo._internal.encoding.gob.Gob_T_typeId.T_typeId):stdgo.GoString {
        @:recv var _t:stdgo._internal.encoding.gob.Gob_T_typeId.T_typeId = _t;
        if (_t._gobType() == null) {
            return ("<nil>" : stdgo.GoString);
        };
        return _t._gobType()._name()?.__copy__();
    }
    @:keep
    @:tdfield
    static public function _string( _t:stdgo._internal.encoding.gob.Gob_T_typeId.T_typeId):stdgo.GoString {
        @:recv var _t:stdgo._internal.encoding.gob.Gob_T_typeId.T_typeId = _t;
        if (_t._gobType() == null) {
            return ("<nil>" : stdgo.GoString);
        };
        return _t._gobType()._string()?.__copy__();
    }
    @:keep
    @:tdfield
    static public function _gobType( _t:stdgo._internal.encoding.gob.Gob_T_typeId.T_typeId):stdgo._internal.encoding.gob.Gob_T_gobType.T_gobType {
        @:recv var _t:stdgo._internal.encoding.gob.Gob_T_typeId.T_typeId = _t;
        if (_t == ((0 : stdgo._internal.encoding.gob.Gob_T_typeId.T_typeId))) {
            return (null : stdgo._internal.encoding.gob.Gob_T_gobType.T_gobType);
        };
        return stdgo._internal.encoding.gob.Gob__idToType._idToType(_t);
    }
}
