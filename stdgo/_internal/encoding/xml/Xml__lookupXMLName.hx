package stdgo._internal.encoding.xml;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.errors.Errors;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strings.Strings;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.io.Io;
function _lookupXMLName(_typ:stdgo._internal.reflect.Reflect_Type_.Type_):stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_fieldInfo.T_fieldInfo> {
        var _xmlname = (null : stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_fieldInfo.T_fieldInfo>);
        while (_typ.kind() == ((22u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
            _typ = _typ.elem();
        };
        if (_typ.kind() != ((25u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
            return _xmlname = null;
        };
        {
            var __0 = (0 : stdgo.GoInt), __1 = (_typ.numField() : stdgo.GoInt);
var _n = __1, _i = __0;
            while ((_i < _n : Bool)) {
                var _f = (_typ.field(_i).__copy__() : stdgo._internal.reflect.Reflect_StructField.StructField);
if (_f.name != (("XMLName" : stdgo.GoString))) {
                    {
                        _i++;
                        continue;
                    };
                };
var __tmp__ = stdgo._internal.encoding.xml.Xml__structFieldInfo._structFieldInfo(_typ, (stdgo.Go.setRef(_f) : stdgo.Ref<stdgo._internal.reflect.Reflect_StructField.StructField>)), _finfo:stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_fieldInfo.T_fieldInfo> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
if (((_err == null) && ((@:checkr _finfo ?? throw "null pointer dereference")._name != stdgo.Go.str()) : Bool)) {
                    return _xmlname = _finfo;
                };
break;
                _i++;
            };
        };
        return _xmlname = null;
    }
