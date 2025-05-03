package stdgo._internal.encoding.xml;
function _getTypeInfo(_typ:stdgo._internal.reflect.Reflect_type_.Type_):{ var _0 : stdgo.Ref<stdgo._internal.encoding.xml.Xml_t_typeinfo.T_typeInfo>; var _1 : stdgo.Error; } {
        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/typeinfo.go#L54"
        {
            var __tmp__ = stdgo._internal.encoding.xml.Xml__tinfomap._tinfoMap.load(stdgo.Go.toInterface(_typ)), _ti:stdgo.AnyInterface = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_ok) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/xml/typeinfo.go#L55"
                return { _0 : (stdgo.Go.typeAssert((_ti : stdgo.Ref<stdgo._internal.encoding.xml.Xml_t_typeinfo.T_typeInfo>)) : stdgo.Ref<stdgo._internal.encoding.xml.Xml_t_typeinfo.T_typeInfo>), _1 : (null : stdgo.Error) };
            };
        };
        var _tinfo = (stdgo.Go.setRef((new stdgo._internal.encoding.xml.Xml_t_typeinfo.T_typeInfo() : stdgo._internal.encoding.xml.Xml_t_typeinfo.T_typeInfo)) : stdgo.Ref<stdgo._internal.encoding.xml.Xml_t_typeinfo.T_typeInfo>);
        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/typeinfo.go#L59"
        if (((_typ.kind() == (25u32 : stdgo._internal.reflect.Reflect_kind.Kind)) && !((_typ.string() : String) == (stdgo._internal.encoding.xml.Xml__nametype._nameType.string() : String)) : Bool)) {
            var _n = (_typ.numField() : stdgo.GoInt);
            //"file:///home/runner/.go/go1.21.3/src/encoding/xml/typeinfo.go#L61"
            {
                var _i = (0 : stdgo.GoInt);
                while ((_i < _n : Bool)) {
                    var _f = (_typ.field(_i).__copy__() : stdgo._internal.reflect.Reflect_structfield.StructField);
//"file:///home/runner/.go/go1.21.3/src/encoding/xml/typeinfo.go#L63"
                    if ((((!_f.isExported() && !_f.anonymous : Bool)) || (_f.tag.get(("xml" : stdgo.GoString)) == ("-" : stdgo.GoString)) : Bool)) {
                        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/typeinfo.go#L64"
                        {
                            _i++;
                            continue;
                        };
                    };
//"file:///home/runner/.go/go1.21.3/src/encoding/xml/typeinfo.go#L68"
                    if (_f.anonymous) {
                        var _t = (_f.type : stdgo._internal.reflect.Reflect_type_.Type_);
                        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/typeinfo.go#L70"
                        if (_t.kind() == ((22u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                            _t = _t.elem();
                        };
                        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/typeinfo.go#L73"
                        if (_t.kind() == ((25u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                            var __tmp__ = stdgo._internal.encoding.xml.Xml__gettypeinfo._getTypeInfo(_t), _inner:stdgo.Ref<stdgo._internal.encoding.xml.Xml_t_typeinfo.T_typeInfo> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                            //"file:///home/runner/.go/go1.21.3/src/encoding/xml/typeinfo.go#L75"
                            if (_err != null) {
                                //"file:///home/runner/.go/go1.21.3/src/encoding/xml/typeinfo.go#L76"
                                return { _0 : null, _1 : _err };
                            };
                            //"file:///home/runner/.go/go1.21.3/src/encoding/xml/typeinfo.go#L78"
                            if (({
                                final value = (@:checkr _tinfo ?? throw "null pointer dereference")._xmlname;
                                (value == null || (value : Dynamic).__nil__);
                            })) {
                                (@:checkr _tinfo ?? throw "null pointer dereference")._xmlname = (@:checkr _inner ?? throw "null pointer dereference")._xmlname;
                            };
                            //"file:///home/runner/.go/go1.21.3/src/encoding/xml/typeinfo.go#L81"
                            for (__4 => _finfo in (@:checkr _inner ?? throw "null pointer dereference")._fields) {
                                _finfo._idx = ((new stdgo.Slice<stdgo.GoInt>(1, 1, ...[_i]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>).__append__(...(_finfo._idx : Array<stdgo.GoInt>)) : stdgo.Slice<stdgo.GoInt>);
                                //"file:///home/runner/.go/go1.21.3/src/encoding/xml/typeinfo.go#L83"
                                {
                                    var _err = (stdgo._internal.encoding.xml.Xml__addfieldinfo._addFieldInfo(_typ, _tinfo, (stdgo.Go.setRef(_finfo) : stdgo.Ref<stdgo._internal.encoding.xml.Xml_t_fieldinfo.T_fieldInfo>)) : stdgo.Error);
                                    if (_err != null) {
                                        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/typeinfo.go#L84"
                                        return { _0 : null, _1 : _err };
                                    };
                                };
                            };
                            //"file:///home/runner/.go/go1.21.3/src/encoding/xml/typeinfo.go#L87"
                            {
                                _i++;
                                continue;
                            };
                        };
                    };
var __tmp__ = stdgo._internal.encoding.xml.Xml__structfieldinfo._structFieldInfo(_typ, (stdgo.Go.setRef(_f) : stdgo.Ref<stdgo._internal.reflect.Reflect_structfield.StructField>)), _finfo:stdgo.Ref<stdgo._internal.encoding.xml.Xml_t_fieldinfo.T_fieldInfo> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
//"file:///home/runner/.go/go1.21.3/src/encoding/xml/typeinfo.go#L92"
                    if (_err != null) {
                        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/typeinfo.go#L93"
                        return { _0 : null, _1 : _err };
                    };
//"file:///home/runner/.go/go1.21.3/src/encoding/xml/typeinfo.go#L96"
                    if (_f.name == (("XMLName" : stdgo.GoString))) {
                        (@:checkr _tinfo ?? throw "null pointer dereference")._xmlname = _finfo;
                        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/typeinfo.go#L98"
                        {
                            _i++;
                            continue;
                        };
                    };
//"file:///home/runner/.go/go1.21.3/src/encoding/xml/typeinfo.go#L102"
                    {
                        var _err = (stdgo._internal.encoding.xml.Xml__addfieldinfo._addFieldInfo(_typ, _tinfo, _finfo) : stdgo.Error);
                        if (_err != null) {
                            //"file:///home/runner/.go/go1.21.3/src/encoding/xml/typeinfo.go#L103"
                            return { _0 : null, _1 : _err };
                        };
                    };
                    _i++;
                };
            };
        };
        var __tmp__ = stdgo._internal.encoding.xml.Xml__tinfomap._tinfoMap.loadOrStore(stdgo.Go.toInterface(_typ), stdgo.Go.toInterface(stdgo.Go.asInterface(_tinfo))), _ti:stdgo.AnyInterface = __tmp__._0, __8:Bool = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/typeinfo.go#L109"
        return { _0 : (stdgo.Go.typeAssert((_ti : stdgo.Ref<stdgo._internal.encoding.xml.Xml_t_typeinfo.T_typeInfo>)) : stdgo.Ref<stdgo._internal.encoding.xml.Xml_t_typeinfo.T_typeInfo>), _1 : (null : stdgo.Error) };
    }
