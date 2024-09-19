package stdgo._internal.encoding.gob;
@:keep @:allow(stdgo._internal.encoding.gob.Gob.T_mapType_asInterface) class T_mapType_static_extension {
    @:keep
    static public function _string( _m:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_mapType.T_mapType>):stdgo.GoString {
        @:recv var _m:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_mapType.T_mapType> = _m;
        return _m._safeString(({
            final x = new stdgo.GoMap.GoIntMap<Bool>();
            x.__defaultValue__ = () -> false;
            {};
            x;
        } : stdgo.GoMap<stdgo._internal.encoding.gob.Gob_T_typeId.T_typeId, Bool>))?.__copy__();
    }
    @:keep
    static public function _safeString( _m:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_mapType.T_mapType>, _seen:stdgo.GoMap<stdgo._internal.encoding.gob.Gob_T_typeId.T_typeId, Bool>):stdgo.GoString {
        @:recv var _m:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_mapType.T_mapType> = _m;
        if ((_seen[_m.commonType.id] ?? false)) {
            return _m.commonType.name?.__copy__();
        };
        _seen[_m.commonType.id] = true;
        var _key = (_m.key._gobType()._safeString(_seen)?.__copy__() : stdgo.GoString);
        var _elem = (_m.elem._gobType()._safeString(_seen)?.__copy__() : stdgo.GoString);
        return stdgo._internal.fmt.Fmt_sprintf.sprintf(("map[%s]%s" : stdgo.GoString), stdgo.Go.toInterface(_key), stdgo.Go.toInterface(_elem))?.__copy__();
    }
    @:keep
    static public function _init( _m:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_mapType.T_mapType>, _key:stdgo._internal.encoding.gob.Gob_T_gobType.T_gobType, _elem:stdgo._internal.encoding.gob.Gob_T_gobType.T_gobType):Void {
        @:recv var _m:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_mapType.T_mapType> = _m;
        stdgo._internal.encoding.gob.Gob__setTypeId._setTypeId(stdgo.Go.asInterface(_m));
        _m.key = _key._id();
        _m.elem = _elem._id();
    }
    @:embedded
    public static function _setId( __self__:stdgo._internal.encoding.gob.Gob_T_mapType.T_mapType, __0:stdgo._internal.encoding.gob.Gob_T_typeId.T_typeId) __self__._setId(__0);
    @:embedded
    public static function _name( __self__:stdgo._internal.encoding.gob.Gob_T_mapType.T_mapType):stdgo.GoString return __self__._name();
    @:embedded
    public static function _id( __self__:stdgo._internal.encoding.gob.Gob_T_mapType.T_mapType):stdgo._internal.encoding.gob.Gob_T_typeId.T_typeId return __self__._id();
}
