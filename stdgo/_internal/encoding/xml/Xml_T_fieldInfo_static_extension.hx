package stdgo._internal.encoding.xml;
@:keep @:allow(stdgo._internal.encoding.xml.Xml.T_fieldInfo_asInterface) class T_fieldInfo_static_extension {
    @:keep
    static public function _value( _finfo:stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_fieldInfo.T_fieldInfo>, _v:stdgo._internal.reflect.Reflect_Value.Value, _shouldInitNilPointers:Bool):stdgo._internal.reflect.Reflect_Value.Value {
        @:recv var _finfo:stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_fieldInfo.T_fieldInfo> = _finfo;
        for (_i => _x in _finfo._idx) {
            if ((_i > (0 : stdgo.GoInt) : Bool)) {
                var _t = (_v.type() : stdgo._internal.reflect.Reflect_Type_.Type_);
                if (((_t.kind() == (22u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) && (_t.elem().kind() == (25u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) : Bool)) {
                    if (_v.isNil()) {
                        if (!_shouldInitNilPointers) {
                            return (new stdgo._internal.reflect.Reflect_Value.Value() : stdgo._internal.reflect.Reflect_Value.Value);
                        };
                        _v.set(stdgo._internal.reflect.Reflect_new_.new_(_v.type().elem())?.__copy__());
                    };
                    _v = _v.elem()?.__copy__();
                };
            };
            _v = _v.field(_x)?.__copy__();
        };
        return _v?.__copy__();
    }
}