package stdgo._internal.encoding.xml;
@:keep @:allow(stdgo._internal.encoding.xml.Xml.T_fieldInfo_asInterface) class T_fieldInfo_static_extension {
    @:keep
    @:tdfield
    static public function _value( _finfo:stdgo.Ref<stdgo._internal.encoding.xml.Xml_t_fieldinfo.T_fieldInfo>, _v:stdgo._internal.reflect.Reflect_value.Value, _shouldInitNilPointers:Bool):stdgo._internal.reflect.Reflect_value.Value {
        @:recv var _finfo:stdgo.Ref<stdgo._internal.encoding.xml.Xml_t_fieldinfo.T_fieldInfo> = _finfo;
        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/typeinfo.go#L358"
        for (_i => _x in (@:checkr _finfo ?? throw "null pointer dereference")._idx) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/xml/typeinfo.go#L359"
            if ((_i > (0 : stdgo.GoInt) : Bool)) {
                var _t = (_v.type() : stdgo._internal.reflect.Reflect_type_.Type_);
                //"file:///home/runner/.go/go1.21.3/src/encoding/xml/typeinfo.go#L361"
                if (((_t.kind() == (22u32 : stdgo._internal.reflect.Reflect_kind.Kind)) && (_t.elem().kind() == (25u32 : stdgo._internal.reflect.Reflect_kind.Kind)) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/typeinfo.go#L362"
                    if (_v.isNil()) {
                        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/typeinfo.go#L363"
                        if (!_shouldInitNilPointers) {
                            //"file:///home/runner/.go/go1.21.3/src/encoding/xml/typeinfo.go#L364"
                            return (new stdgo._internal.reflect.Reflect_value.Value() : stdgo._internal.reflect.Reflect_value.Value);
                        };
                        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/typeinfo.go#L366"
                        _v.set(stdgo._internal.reflect.Reflect_new_.new_(_v.type().elem())?.__copy__());
                    };
                    _v = _v.elem()?.__copy__();
                };
            };
            _v = _v.field(_x)?.__copy__();
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/typeinfo.go#L373"
        return _v?.__copy__();
    }
}
