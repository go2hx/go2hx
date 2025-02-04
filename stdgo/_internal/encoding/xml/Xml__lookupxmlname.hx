package stdgo._internal.encoding.xml;
function _lookupXMLName(_typ:stdgo._internal.reflect.Reflect_type_.Type_):stdgo.Ref<stdgo._internal.encoding.xml.Xml_t_fieldinfo.T_fieldInfo> {
        var _xmlname = (null : stdgo.Ref<stdgo._internal.encoding.xml.Xml_t_fieldinfo.T_fieldInfo>);
        while (_typ.kind() == ((22u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
            _typ = _typ.elem();
        };
        if (_typ.kind() != ((25u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
            return _xmlname = null;
        };
        {
            var __0 = (0 : stdgo.GoInt), __1 = (_typ.numField() : stdgo.GoInt);
var _n = __1, _i = __0;
            while ((_i < _n : Bool)) {
                var _f = (_typ.field(_i).__copy__() : stdgo._internal.reflect.Reflect_structfield.StructField);
if (_f.name != (("XMLName" : stdgo.GoString))) {
                    {
                        _i++;
                        continue;
                    };
                };
var __tmp__ = stdgo._internal.encoding.xml.Xml__structfieldinfo._structFieldInfo(_typ, (stdgo.Go.setRef(_f) : stdgo.Ref<stdgo._internal.reflect.Reflect_structfield.StructField>)), _finfo:stdgo.Ref<stdgo._internal.encoding.xml.Xml_t_fieldinfo.T_fieldInfo> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
if (((_err == null) && ((@:checkr _finfo ?? throw "null pointer dereference")._name != (stdgo.Go.str() : stdgo.GoString)) : Bool)) {
                    return _xmlname = _finfo;
                };
break;
                _i++;
            };
        };
        return _xmlname = null;
    }
