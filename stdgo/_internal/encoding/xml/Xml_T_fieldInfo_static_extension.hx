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
@:keep @:allow(stdgo._internal.encoding.xml.Xml.T_fieldInfo_asInterface) class T_fieldInfo_static_extension {
    @:keep
    @:tdfield
    static public function _value( _finfo:stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_fieldInfo.T_fieldInfo>, _v:stdgo._internal.reflect.Reflect_Value.Value, _shouldInitNilPointers:Bool):stdgo._internal.reflect.Reflect_Value.Value {
        @:recv var _finfo:stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_fieldInfo.T_fieldInfo> = _finfo;
        for (_i => _x in (@:checkr _finfo ?? throw "null pointer dereference")._idx) {
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
