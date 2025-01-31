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
@:keep @:allow(stdgo._internal.encoding.gob.Gob.T_gobEncoderType_asInterface) class T_gobEncoderType_static_extension {
    @:keep
    @:tdfield
    static public function _string( _g:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_gobEncoderType.T_gobEncoderType>):stdgo.GoString {
        @:recv var _g:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_gobEncoderType.T_gobEncoderType> = _g;
        return (@:checkr _g ?? throw "null pointer dereference").commonType.name?.__copy__();
    }
    @:keep
    @:tdfield
    static public function _safeString( _g:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_gobEncoderType.T_gobEncoderType>, _seen:stdgo.GoMap<stdgo._internal.encoding.gob.Gob_T_typeId.T_typeId, Bool>):stdgo.GoString {
        @:recv var _g:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_gobEncoderType.T_gobEncoderType> = _g;
        return (@:checkr _g ?? throw "null pointer dereference").commonType.name?.__copy__();
    }
    @:embedded
    @:embeddededffieldsffun
    public static function _setId( __self__:stdgo._internal.encoding.gob.Gob_T_gobEncoderType.T_gobEncoderType, _0:stdgo._internal.encoding.gob.Gob_T_typeId.T_typeId):Void return @:_5 __self__._setId(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function _name( __self__:stdgo._internal.encoding.gob.Gob_T_gobEncoderType.T_gobEncoderType):stdgo.GoString return @:_5 __self__._name();
    @:embedded
    @:embeddededffieldsffun
    public static function _id( __self__:stdgo._internal.encoding.gob.Gob_T_gobEncoderType.T_gobEncoderType):stdgo._internal.encoding.gob.Gob_T_typeId.T_typeId return @:_5 __self__._id();
}
