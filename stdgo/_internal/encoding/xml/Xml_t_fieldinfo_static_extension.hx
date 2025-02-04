package stdgo._internal.encoding.xml;
@:keep @:allow(stdgo._internal.encoding.xml.Xml.T_fieldInfo_asInterface) class T_fieldInfo_static_extension {
    @:keep
    @:tdfield
    static public function _value( _finfo:stdgo.Ref<stdgo._internal.encoding.xml.Xml_t_fieldinfo.T_fieldInfo>, _v:stdgo._internal.reflect.Reflect_value.Value, _shouldInitNilPointers:Bool):stdgo._internal.reflect.Reflect_value.Value {
        @:recv var _finfo:stdgo.Ref<stdgo._internal.encoding.xml.Xml_t_fieldinfo.T_fieldInfo> = _finfo;
        for (_i => _x in (@:checkr _finfo ?? throw "null pointer dereference")._idx) {
            if ((_i > (0 : stdgo.GoInt) : Bool)) {
                var _t = (_v.type() : stdgo._internal.reflect.Reflect_type_.Type_);
                if (((_t.kind() == (22u32 : stdgo._internal.reflect.Reflect_kind.Kind)) && (_t.elem().kind() == (25u32 : stdgo._internal.reflect.Reflect_kind.Kind)) : Bool)) {
                    if (_v.isNil()) {
                        if (!_shouldInitNilPointers) {
                            return (new stdgo._internal.reflect.Reflect_value.Value() : stdgo._internal.reflect.Reflect_value.Value);
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
