package stdgo._internal.encoding.gob;
@:keep @:allow(stdgo._internal.encoding.gob.Gob.T_arrayType_asInterface) class T_arrayType_static_extension {
    @:keep
    @:tdfield
    static public function _string( _a:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_arraytype.T_arrayType>):stdgo.GoString {
        @:recv var _a:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_arraytype.T_arrayType> = _a;
        return @:check2r _a._safeString((({
            final x = new stdgo.GoMap.GoIntMap<Bool>();
            x.__defaultValue__ = () -> false;
            {};
            x;
        } : stdgo.GoMap<stdgo._internal.encoding.gob.Gob_t_typeid.T_typeId, Bool>) : stdgo.GoMap<stdgo._internal.encoding.gob.Gob_t_typeid.T_typeId, Bool>))?.__copy__();
    }
    @:keep
    @:tdfield
    static public function _safeString( _a:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_arraytype.T_arrayType>, _seen:stdgo.GoMap<stdgo._internal.encoding.gob.Gob_t_typeid.T_typeId, Bool>):stdgo.GoString {
        @:recv var _a:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_arraytype.T_arrayType> = _a;
        if ((_seen[(@:checkr _a ?? throw "null pointer dereference").commonType.id] ?? false)) {
            return (@:checkr _a ?? throw "null pointer dereference").commonType.name?.__copy__();
        };
        _seen[(@:checkr _a ?? throw "null pointer dereference").commonType.id] = true;
        return stdgo._internal.fmt.Fmt_sprintf.sprintf(("[%d]%s" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _a ?? throw "null pointer dereference").len), stdgo.Go.toInterface((@:checkr _a ?? throw "null pointer dereference").elem._gobType()._safeString(_seen)))?.__copy__();
    }
    @:keep
    @:tdfield
    static public function _init( _a:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_arraytype.T_arrayType>, _elem:stdgo._internal.encoding.gob.Gob_t_gobtype.T_gobType, _len:stdgo.GoInt):Void {
        @:recv var _a:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_arraytype.T_arrayType> = _a;
        stdgo._internal.encoding.gob.Gob__settypeid._setTypeId(stdgo.Go.asInterface(_a));
        (@:checkr _a ?? throw "null pointer dereference").elem = _elem._id();
        (@:checkr _a ?? throw "null pointer dereference").len = _len;
    }
    @:embedded
    @:embeddededffieldsffun
    public static function _setId( __self__:stdgo._internal.encoding.gob.Gob_t_arraytype.T_arrayType, _0:stdgo._internal.encoding.gob.Gob_t_typeid.T_typeId):Void return @:_5 __self__._setId(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function _name( __self__:stdgo._internal.encoding.gob.Gob_t_arraytype.T_arrayType):stdgo.GoString return @:_5 __self__._name();
    @:embedded
    @:embeddededffieldsffun
    public static function _id( __self__:stdgo._internal.encoding.gob.Gob_t_arraytype.T_arrayType):stdgo._internal.encoding.gob.Gob_t_typeid.T_typeId return @:_5 __self__._id();
}
