package stdgo._internal.encoding.gob;
@:keep @:allow(stdgo._internal.encoding.gob.Gob.T_sliceType_asInterface) class T_sliceType_static_extension {
    @:keep
    static public function _string( _s:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_sliceType.T_sliceType>):stdgo.GoString {
        @:recv var _s:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_sliceType.T_sliceType> = _s;
        return _s._safeString(({
            final x = new stdgo.GoMap.GoIntMap<Bool>();
            x.__defaultValue__ = () -> false;
            {};
            x;
        } : stdgo.GoMap<stdgo._internal.encoding.gob.Gob_T_typeId.T_typeId, Bool>))?.__copy__();
    }
    @:keep
    static public function _safeString( _s:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_sliceType.T_sliceType>, _seen:stdgo.GoMap<stdgo._internal.encoding.gob.Gob_T_typeId.T_typeId, Bool>):stdgo.GoString {
        @:recv var _s:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_sliceType.T_sliceType> = _s;
        if ((_seen[_s.commonType.id] ?? false)) {
            return _s.commonType.name?.__copy__();
        };
        _seen[_s.commonType.id] = true;
        return stdgo._internal.fmt.Fmt_sprintf.sprintf(("[]%s" : stdgo.GoString), stdgo.Go.toInterface(_s.elem._gobType()._safeString(_seen)))?.__copy__();
    }
    @:keep
    static public function _init( _s:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_sliceType.T_sliceType>, _elem:stdgo._internal.encoding.gob.Gob_T_gobType.T_gobType):Void {
        @:recv var _s:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_sliceType.T_sliceType> = _s;
        stdgo._internal.encoding.gob.Gob__setTypeId._setTypeId(stdgo.Go.asInterface(_s));
        if (_elem._id() == ((0 : stdgo._internal.encoding.gob.Gob_T_typeId.T_typeId))) {
            stdgo._internal.encoding.gob.Gob__setTypeId._setTypeId(_elem);
        };
        _s.elem = _elem._id();
    }
    @:embedded
    public static function _setId( __self__:stdgo._internal.encoding.gob.Gob_T_sliceType.T_sliceType, __0:stdgo._internal.encoding.gob.Gob_T_typeId.T_typeId) __self__._setId(__0);
    @:embedded
    public static function _name( __self__:stdgo._internal.encoding.gob.Gob_T_sliceType.T_sliceType):stdgo.GoString return __self__._name();
    @:embedded
    public static function _id( __self__:stdgo._internal.encoding.gob.Gob_T_sliceType.T_sliceType):stdgo._internal.encoding.gob.Gob_T_typeId.T_typeId return __self__._id();
}
