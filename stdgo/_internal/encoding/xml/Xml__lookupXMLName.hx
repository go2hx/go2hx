package stdgo._internal.encoding.xml;
function _lookupXMLName(_typ:stdgo._internal.reflect.Reflect_Type_.Type_):stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_fieldInfo.T_fieldInfo> {
        var _xmlname = (null : stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_fieldInfo.T_fieldInfo>);
        while (_typ.kind() == ((22u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
            _typ = _typ.elem();
        };
        if (_typ.kind() != ((25u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
            return null;
        };
        {
            var __0 = (0 : stdgo.GoInt), __1 = (_typ.numField() : stdgo.GoInt);
var _n = __1, _i = __0;
            stdgo.Go.cfor((_i < _n : Bool), _i++, {
                var _f = (_typ.field(_i)?.__copy__() : stdgo._internal.reflect.Reflect_StructField.StructField);
                if (_f.name != (("XMLName" : stdgo.GoString))) {
                    continue;
                };
                var __tmp__ = stdgo._internal.encoding.xml.Xml__structFieldInfo._structFieldInfo(_typ, (stdgo.Go.setRef(_f) : stdgo.Ref<stdgo._internal.reflect.Reflect_StructField.StructField>)), _finfo:stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_fieldInfo.T_fieldInfo> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (((_err == null) && (_finfo._name != stdgo.Go.str()) : Bool)) {
                    return _finfo;
                };
                break;
            });
        };
        return null;
    }
