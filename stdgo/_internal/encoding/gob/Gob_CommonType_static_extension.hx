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
@:keep @:allow(stdgo._internal.encoding.gob.Gob.CommonType_asInterface) class CommonType_static_extension {
    @:keep
    @:tdfield
    static public function _name( _t:stdgo.Ref<stdgo._internal.encoding.gob.Gob_CommonType.CommonType>):stdgo.GoString {
        @:recv var _t:stdgo.Ref<stdgo._internal.encoding.gob.Gob_CommonType.CommonType> = _t;
        return (@:checkr _t ?? throw "null pointer dereference").name?.__copy__();
    }
    @:keep
    @:tdfield
    static public function _safeString( _t:stdgo.Ref<stdgo._internal.encoding.gob.Gob_CommonType.CommonType>, _seen:stdgo.GoMap<stdgo._internal.encoding.gob.Gob_T_typeId.T_typeId, Bool>):stdgo.GoString {
        @:recv var _t:stdgo.Ref<stdgo._internal.encoding.gob.Gob_CommonType.CommonType> = _t;
        return (@:checkr _t ?? throw "null pointer dereference").name?.__copy__();
    }
    @:keep
    @:tdfield
    static public function _string( _t:stdgo.Ref<stdgo._internal.encoding.gob.Gob_CommonType.CommonType>):stdgo.GoString {
        @:recv var _t:stdgo.Ref<stdgo._internal.encoding.gob.Gob_CommonType.CommonType> = _t;
        return (@:checkr _t ?? throw "null pointer dereference").name?.__copy__();
    }
    @:keep
    @:tdfield
    static public function _setId( _t:stdgo.Ref<stdgo._internal.encoding.gob.Gob_CommonType.CommonType>, _id:stdgo._internal.encoding.gob.Gob_T_typeId.T_typeId):Void {
        @:recv var _t:stdgo.Ref<stdgo._internal.encoding.gob.Gob_CommonType.CommonType> = _t;
        (@:checkr _t ?? throw "null pointer dereference").id = _id;
    }
    @:keep
    @:tdfield
    static public function _id( _t:stdgo.Ref<stdgo._internal.encoding.gob.Gob_CommonType.CommonType>):stdgo._internal.encoding.gob.Gob_T_typeId.T_typeId {
        @:recv var _t:stdgo.Ref<stdgo._internal.encoding.gob.Gob_CommonType.CommonType> = _t;
        return (@:checkr _t ?? throw "null pointer dereference").id;
    }
}
