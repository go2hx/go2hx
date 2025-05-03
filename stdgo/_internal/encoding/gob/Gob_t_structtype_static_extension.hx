package stdgo._internal.encoding.gob;
@:keep @:allow(stdgo._internal.encoding.gob.Gob.T_structType_asInterface) class T_structType_static_extension {
    @:keep
    @:tdfield
    static public function _string( _s:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_structtype.T_structType>):stdgo.GoString {
        @:recv var _s:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_structtype.T_structType> = _s;
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/type.go#L437"
        return _s._safeString((({
            final x = new stdgo.GoMap.GoIntMap<Bool>();
            x.__defaultValue__ = () -> false;
            {};
            x;
        } : stdgo.GoMap<stdgo._internal.encoding.gob.Gob_t_typeid.T_typeId, Bool>) : stdgo.GoMap<stdgo._internal.encoding.gob.Gob_t_typeid.T_typeId, Bool>))?.__copy__();
    }
    @:keep
    @:tdfield
    static public function _safeString( _s:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_structtype.T_structType>, _seen:stdgo.GoMap<stdgo._internal.encoding.gob.Gob_t_typeid.T_typeId, Bool>):stdgo.GoString {
        @:recv var _s:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_structtype.T_structType> = _s;
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/type.go#L422"
        if (({
            final value = _s;
            (value == null || (value : Dynamic).__nil__);
        })) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/type.go#L423"
            return ("<nil>" : stdgo.GoString);
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/type.go#L425"
        {
            var __tmp__ = (_seen != null && _seen.__exists__((@:checkr _s ?? throw "null pointer dereference").commonType.id) ? { _0 : _seen[(@:checkr _s ?? throw "null pointer dereference").commonType.id], _1 : true } : { _0 : false, _1 : false }), __8:Bool = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_ok) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/gob/type.go#L426"
                return (@:checkr _s ?? throw "null pointer dereference").commonType.name?.__copy__();
            };
        };
        _seen[(@:checkr _s ?? throw "null pointer dereference").commonType.id] = true;
        var _str = (((@:checkr _s ?? throw "null pointer dereference").commonType.name + (" = struct { " : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__() : stdgo.GoString);
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/type.go#L430"
        for (__9 => _f in (@:checkr _s ?? throw "null pointer dereference").field) {
            _str = (_str + (stdgo._internal.fmt.Fmt_sprintf.sprintf((("%s %s; " : stdgo.GoString) : stdgo.GoString), stdgo.Go.toInterface(_f.name), stdgo.Go.toInterface(_f.id._gobType()._safeString(_seen))))?.__copy__() : stdgo.GoString);
        };
        _str = (_str + (("}" : stdgo.GoString))?.__copy__() : stdgo.GoString);
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/type.go#L434"
        return _str?.__copy__();
    }
    @:embedded
    @:embeddededffieldsffun
    public static function _setId( __self__:stdgo._internal.encoding.gob.Gob_t_structtype.T_structType, _0:stdgo._internal.encoding.gob.Gob_t_typeid.T_typeId):Void return @:_5 __self__._setId(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function _name( __self__:stdgo._internal.encoding.gob.Gob_t_structtype.T_structType):stdgo.GoString return @:_5 __self__._name();
    @:embedded
    @:embeddededffieldsffun
    public static function _id( __self__:stdgo._internal.encoding.gob.Gob_t_structtype.T_structType):stdgo._internal.encoding.gob.Gob_t_typeid.T_typeId return @:_5 __self__._id();
}
