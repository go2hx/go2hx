package stdgo._internal.encoding.gob;
@:keep @:allow(stdgo._internal.encoding.gob.Gob.T_structType_asInterface) class T_structType_static_extension {
    @:keep
    static public function _string( _s:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_structType.T_structType>):stdgo.GoString {
        @:recv var _s:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_structType.T_structType> = _s;
        return _s._safeString(({
            final x = new stdgo.GoMap.GoIntMap<Bool>();
            x.__defaultValue__ = () -> false;
            {};
            x;
        } : stdgo.GoMap<stdgo._internal.encoding.gob.Gob_T_typeId.T_typeId, Bool>))?.__copy__();
    }
    @:keep
    static public function _safeString( _s:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_structType.T_structType>, _seen:stdgo.GoMap<stdgo._internal.encoding.gob.Gob_T_typeId.T_typeId, Bool>):stdgo.GoString {
        @:recv var _s:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_structType.T_structType> = _s;
        if (_s == null || (_s : Dynamic).__nil__) {
            return ("<nil>" : stdgo.GoString);
        };
        {
            var __tmp__ = (_seen != null && _seen.exists(_s.commonType.id) ? { _0 : _seen[_s.commonType.id], _1 : true } : { _0 : false, _1 : false }), __8:Bool = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_ok) {
                return _s.commonType.name?.__copy__();
            };
        };
        _seen[_s.commonType.id] = true;
        var _str = ((_s.commonType.name + (" = struct { " : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__() : stdgo.GoString);
        for (__9 => _f in _s.field) {
            _str = (_str + (stdgo._internal.fmt.Fmt_sprintf.sprintf(("%s %s; " : stdgo.GoString), stdgo.Go.toInterface(_f.name), stdgo.Go.toInterface(_f.id._gobType()._safeString(_seen))))?.__copy__() : stdgo.GoString);
        };
        _str = (_str + (("}" : stdgo.GoString))?.__copy__() : stdgo.GoString);
        return _str?.__copy__();
    }
    @:embedded
    public static function _setId( __self__:stdgo._internal.encoding.gob.Gob_T_structType.T_structType, __0:stdgo._internal.encoding.gob.Gob_T_typeId.T_typeId) __self__._setId(__0);
    @:embedded
    public static function _name( __self__:stdgo._internal.encoding.gob.Gob_T_structType.T_structType):stdgo.GoString return __self__._name();
    @:embedded
    public static function _id( __self__:stdgo._internal.encoding.gob.Gob_T_structType.T_structType):stdgo._internal.encoding.gob.Gob_T_typeId.T_typeId return __self__._id();
}
