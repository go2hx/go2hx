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
@:keep @:allow(stdgo._internal.encoding.gob.Gob.T_sliceType_asInterface) class T_sliceType_static_extension {
    @:keep
    @:tdfield
    static public function _string( _s:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_sliceType.T_sliceType>):stdgo.GoString {
        @:recv var _s:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_sliceType.T_sliceType> = _s;
        return @:check2r _s._safeString((({
            final x = new stdgo.GoMap.GoIntMap<Bool>();
            x.__defaultValue__ = () -> false;
            {};
            x;
        } : stdgo.GoMap<stdgo._internal.encoding.gob.Gob_T_typeId.T_typeId, Bool>) : stdgo.GoMap<stdgo._internal.encoding.gob.Gob_T_typeId.T_typeId, Bool>))?.__copy__();
    }
    @:keep
    @:tdfield
    static public function _safeString( _s:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_sliceType.T_sliceType>, _seen:stdgo.GoMap<stdgo._internal.encoding.gob.Gob_T_typeId.T_typeId, Bool>):stdgo.GoString {
        @:recv var _s:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_sliceType.T_sliceType> = _s;
        if ((_seen[(@:checkr _s ?? throw "null pointer dereference").commonType.id] ?? false)) {
            return (@:checkr _s ?? throw "null pointer dereference").commonType.name?.__copy__();
        };
        _seen[(@:checkr _s ?? throw "null pointer dereference").commonType.id] = true;
        return stdgo._internal.fmt.Fmt_sprintf.sprintf(("[]%s" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _s ?? throw "null pointer dereference").elem._gobType()._safeString(_seen)))?.__copy__();
    }
    @:keep
    @:tdfield
    static public function _init( _s:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_sliceType.T_sliceType>, _elem:stdgo._internal.encoding.gob.Gob_T_gobType.T_gobType):Void {
        @:recv var _s:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_sliceType.T_sliceType> = _s;
        stdgo._internal.encoding.gob.Gob__setTypeId._setTypeId(stdgo.Go.asInterface(_s));
        if (_elem._id() == ((0 : stdgo._internal.encoding.gob.Gob_T_typeId.T_typeId))) {
            stdgo._internal.encoding.gob.Gob__setTypeId._setTypeId(_elem);
        };
        (@:checkr _s ?? throw "null pointer dereference").elem = _elem._id();
    }
    @:embedded
    @:embeddededffieldsffun
    public static function _setId( __self__:stdgo._internal.encoding.gob.Gob_T_sliceType.T_sliceType, _0:stdgo._internal.encoding.gob.Gob_T_typeId.T_typeId):Void return @:_5 __self__._setId(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function _name( __self__:stdgo._internal.encoding.gob.Gob_T_sliceType.T_sliceType):stdgo.GoString return @:_5 __self__._name();
    @:embedded
    @:embeddededffieldsffun
    public static function _id( __self__:stdgo._internal.encoding.gob.Gob_T_sliceType.T_sliceType):stdgo._internal.encoding.gob.Gob_T_typeId.T_typeId return @:_5 __self__._id();
}
