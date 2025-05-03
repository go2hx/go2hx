package stdgo._internal.encoding.xml;
function _lookupXMLName(_typ:stdgo._internal.reflect.Reflect_type_.Type_):stdgo.Ref<stdgo._internal.encoding.xml.Xml_t_fieldinfo.T_fieldInfo> {
        var _xmlname = (null : stdgo.Ref<stdgo._internal.encoding.xml.Xml_t_fieldinfo.T_fieldInfo>);
        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/typeinfo.go#L232"
        while (_typ.kind() == ((22u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
            _typ = _typ.elem();
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/typeinfo.go#L235"
        if (_typ.kind() != ((25u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/xml/typeinfo.go#L236"
            return _xmlname = null;
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/typeinfo.go#L238"
        {
            var __0 = (0 : stdgo.GoInt), __1 = (_typ.numField() : stdgo.GoInt);
var _n = __1, _i = __0;
            while ((_i < _n : Bool)) {
                var _f = (_typ.field(_i).__copy__() : stdgo._internal.reflect.Reflect_structfield.StructField);
//"file:///home/runner/.go/go1.21.3/src/encoding/xml/typeinfo.go#L240"
                if (_f.name != (("XMLName" : stdgo.GoString))) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/typeinfo.go#L241"
                    {
                        _i++;
                        continue;
                    };
                };
var __tmp__ = stdgo._internal.encoding.xml.Xml__structfieldinfo._structFieldInfo(_typ, (stdgo.Go.setRef(_f) : stdgo.Ref<stdgo._internal.reflect.Reflect_structfield.StructField>)), _finfo:stdgo.Ref<stdgo._internal.encoding.xml.Xml_t_fieldinfo.T_fieldInfo> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
//"file:///home/runner/.go/go1.21.3/src/encoding/xml/typeinfo.go#L244"
                if (((_err == null) && ((@:checkr _finfo ?? throw "null pointer dereference")._name != (stdgo.Go.str() : stdgo.GoString)) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/typeinfo.go#L245"
                    return _xmlname = _finfo;
                };
//"file:///home/runner/.go/go1.21.3/src/encoding/xml/typeinfo.go#L249"
                break;
                _i++;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/typeinfo.go#L251"
        return _xmlname = null;
    }
