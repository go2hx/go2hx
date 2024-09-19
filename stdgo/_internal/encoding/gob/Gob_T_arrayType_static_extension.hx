package stdgo._internal.encoding.gob;
@:keep @:allow(stdgo._internal.encoding.gob.Gob.T_arrayType_asInterface) class T_arrayType_static_extension {
    @:keep
    static public function _string( _a:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_arrayType.T_arrayType>):stdgo.GoString {
        @:recv var _a:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_arrayType.T_arrayType> = _a;
        return _a._safeString(({
            final x = new stdgo.GoMap.GoIntMap<Bool>();
            x.__defaultValue__ = () -> false;
            {};
            x;
        } : stdgo.GoMap<stdgo._internal.encoding.gob.Gob_T_typeId.T_typeId, Bool>))?.__copy__();
    }
    @:keep
    static public function _safeString( _a:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_arrayType.T_arrayType>, _seen:stdgo.GoMap<stdgo._internal.encoding.gob.Gob_T_typeId.T_typeId, Bool>):stdgo.GoString {
        @:recv var _a:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_arrayType.T_arrayType> = _a;
        if ((_seen[_a.commonType.id] ?? false)) {
            return _a.commonType.name?.__copy__();
        };
        _seen[_a.commonType.id] = true;
        return stdgo._internal.fmt.Fmt_sprintf.sprintf(("[%d]%s" : stdgo.GoString), stdgo.Go.toInterface(_a.len), stdgo.Go.toInterface(_a.elem._gobType()._safeString(_seen)))?.__copy__();
    }
    @:keep
    static public function _init( _a:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_arrayType.T_arrayType>, _elem:stdgo._internal.encoding.gob.Gob_T_gobType.T_gobType, _len:stdgo.GoInt):Void {
        @:recv var _a:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_arrayType.T_arrayType> = _a;
        stdgo._internal.encoding.gob.Gob__setTypeId._setTypeId(stdgo.Go.asInterface(_a));
        _a.elem = _elem._id();
        _a.len = _len;
    }
    @:embedded
    public static function _setId( __self__:stdgo._internal.encoding.gob.Gob_T_arrayType.T_arrayType, __0:stdgo._internal.encoding.gob.Gob_T_typeId.T_typeId) __self__._setId(__0);
    @:embedded
    public static function _name( __self__:stdgo._internal.encoding.gob.Gob_T_arrayType.T_arrayType):stdgo.GoString return __self__._name();
    @:embedded
    public static function _id( __self__:stdgo._internal.encoding.gob.Gob_T_arrayType.T_arrayType):stdgo._internal.encoding.gob.Gob_T_typeId.T_typeId return __self__._id();
}
