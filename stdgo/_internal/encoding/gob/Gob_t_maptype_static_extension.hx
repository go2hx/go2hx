package stdgo._internal.encoding.gob;
@:keep @:allow(stdgo._internal.encoding.gob.Gob.T_mapType_asInterface) class T_mapType_static_extension {
    @:keep
    @:tdfield
    static public function _string( _m:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_maptype.T_mapType>):stdgo.GoString {
        @:recv var _m:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_maptype.T_mapType> = _m;
        return @:check2r _m._safeString((({
            final x = new stdgo.GoMap.GoIntMap<Bool>();
            x.__defaultValue__ = () -> false;
            {};
            x;
        } : stdgo.GoMap<stdgo._internal.encoding.gob.Gob_t_typeid.T_typeId, Bool>) : stdgo.GoMap<stdgo._internal.encoding.gob.Gob_t_typeid.T_typeId, Bool>))?.__copy__();
    }
    @:keep
    @:tdfield
    static public function _safeString( _m:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_maptype.T_mapType>, _seen:stdgo.GoMap<stdgo._internal.encoding.gob.Gob_t_typeid.T_typeId, Bool>):stdgo.GoString {
        @:recv var _m:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_maptype.T_mapType> = _m;
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
    static public function _init( _m:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_maptype.T_mapType>, _key:stdgo._internal.encoding.gob.Gob_t_gobtype.T_gobType, _elem:stdgo._internal.encoding.gob.Gob_t_gobtype.T_gobType):Void {
        @:recv var _m:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_maptype.T_mapType> = _m;
        stdgo._internal.encoding.gob.Gob__settypeid._setTypeId(stdgo.Go.asInterface(_m));
        (@:checkr _m ?? throw "null pointer dereference").key = _key._id();
        (@:checkr _m ?? throw "null pointer dereference").elem = _elem._id();
    }
    @:embedded
    @:embeddededffieldsffun
    public static function _setId( __self__:stdgo._internal.encoding.gob.Gob_t_maptype.T_mapType, _0:stdgo._internal.encoding.gob.Gob_t_typeid.T_typeId):Void return @:_5 __self__._setId(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function _name( __self__:stdgo._internal.encoding.gob.Gob_t_maptype.T_mapType):stdgo.GoString return @:_5 __self__._name();
    @:embedded
    @:embeddededffieldsffun
    public static function _id( __self__:stdgo._internal.encoding.gob.Gob_t_maptype.T_mapType):stdgo._internal.encoding.gob.Gob_t_typeid.T_typeId return @:_5 __self__._id();
}
