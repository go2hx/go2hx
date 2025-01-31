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
@:keep @:allow(stdgo._internal.encoding.gob.Gob.T_mapType_asInterface) class T_mapType_static_extension {
    @:keep
    @:tdfield
    static public function _string( _m:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_mapType.T_mapType>):stdgo.GoString {
        @:recv var _m:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_mapType.T_mapType> = _m;
        return @:check2r _m._safeString((({
            final x = new stdgo.GoMap.GoIntMap<Bool>();
            x.__defaultValue__ = () -> false;
            {};
            x;
        } : stdgo.GoMap<stdgo._internal.encoding.gob.Gob_T_typeId.T_typeId, Bool>) : stdgo.GoMap<stdgo._internal.encoding.gob.Gob_T_typeId.T_typeId, Bool>))?.__copy__();
    }
    @:keep
    @:tdfield
    static public function _safeString( _m:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_mapType.T_mapType>, _seen:stdgo.GoMap<stdgo._internal.encoding.gob.Gob_T_typeId.T_typeId, Bool>):stdgo.GoString {
        @:recv var _m:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_mapType.T_mapType> = _m;
        if ((_seen[(@:checkr _m ?? throw "null pointer dereference").commonType.id] ?? false)) {
            return (@:checkr _m ?? throw "null pointer dereference").commonType.name?.__copy__();
        };
        _seen[(@:checkr _m ?? throw "null pointer dereference").commonType.id] = true;
        var _key = ((@:checkr _m ?? throw "null pointer dereference").key._gobType()._safeString(_seen)?.__copy__() : stdgo.GoString);
        var _elem = ((@:checkr _m ?? throw "null pointer dereference").elem._gobType()._safeString(_seen)?.__copy__() : stdgo.GoString);
        return stdgo._internal.fmt.Fmt_sprintf.sprintf(("map[%s]%s" : stdgo.GoString), stdgo.Go.toInterface(_key), stdgo.Go.toInterface(_elem))?.__copy__();
    }
    @:keep
    @:tdfield
    static public function _init( _m:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_mapType.T_mapType>, _key:stdgo._internal.encoding.gob.Gob_T_gobType.T_gobType, _elem:stdgo._internal.encoding.gob.Gob_T_gobType.T_gobType):Void {
        @:recv var _m:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_mapType.T_mapType> = _m;
        stdgo._internal.encoding.gob.Gob__setTypeId._setTypeId(stdgo.Go.asInterface(_m));
        (@:checkr _m ?? throw "null pointer dereference").key = _key._id();
        (@:checkr _m ?? throw "null pointer dereference").elem = _elem._id();
    }
    @:embedded
    @:embeddededffieldsffun
    public static function _setId( __self__:stdgo._internal.encoding.gob.Gob_T_mapType.T_mapType, _0:stdgo._internal.encoding.gob.Gob_T_typeId.T_typeId):Void return @:_5 __self__._setId(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function _name( __self__:stdgo._internal.encoding.gob.Gob_T_mapType.T_mapType):stdgo.GoString return @:_5 __self__._name();
    @:embedded
    @:embeddededffieldsffun
    public static function _id( __self__:stdgo._internal.encoding.gob.Gob_T_mapType.T_mapType):stdgo._internal.encoding.gob.Gob_T_typeId.T_typeId return @:_5 __self__._id();
}
