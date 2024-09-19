package stdgo._internal.encoding.xml;
function _getTypeInfo(_typ:stdgo._internal.reflect.Reflect_Type_.Type_):{ var _0 : stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_typeInfo.T_typeInfo>; var _1 : stdgo.Error; } {
        {
            var __tmp__ = stdgo._internal.encoding.xml.Xml__tinfoMap._tinfoMap.load(stdgo.Go.toInterface(_typ)), _ti:stdgo.AnyInterface = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_ok) {
                return { _0 : (stdgo.Go.typeAssert((_ti : stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_typeInfo.T_typeInfo>)) : stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_typeInfo.T_typeInfo>), _1 : (null : stdgo.Error) };
            };
        };
        var _tinfo = (stdgo.Go.setRef((new stdgo._internal.encoding.xml.Xml_T_typeInfo.T_typeInfo() : stdgo._internal.encoding.xml.Xml_T_typeInfo.T_typeInfo)) : stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_typeInfo.T_typeInfo>);
        if (((_typ.kind() == (25u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) && !((_typ.string() : String) == (stdgo._internal.encoding.xml.Xml__nameType._nameType.string() : String)) : Bool)) {
            var _n = (_typ.numField() : stdgo.GoInt);
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < _n : Bool), _i++, {
                    var _f = (_typ.field(_i)?.__copy__() : stdgo._internal.reflect.Reflect_StructField.StructField);
                    if ((((!_f.isExported() && !_f.anonymous : Bool)) || (_f.tag.get(("xml" : stdgo.GoString)) == ("-" : stdgo.GoString)) : Bool)) {
                        continue;
                    };
                    if (_f.anonymous) {
                        var _t = (_f.type : stdgo._internal.reflect.Reflect_Type_.Type_);
                        if (_t.kind() == ((22u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                            _t = _t.elem();
                        };
                        if (_t.kind() == ((25u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                            var __tmp__ = stdgo._internal.encoding.xml.Xml__getTypeInfo._getTypeInfo(_t), _inner:stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_typeInfo.T_typeInfo> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                            if (_err != null) {
                                return { _0 : null, _1 : _err };
                            };
                            if (_tinfo._xmlname == null || (_tinfo._xmlname : Dynamic).__nil__) {
                                _tinfo._xmlname = _inner._xmlname;
                            };
                            for (__4 => _finfo in _inner._fields) {
                                _finfo._idx = ((new stdgo.Slice<stdgo.GoInt>(1, 1, ...[_i]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>).__append__(...(_finfo._idx : Array<stdgo.GoInt>)));
                                {
                                    var _err = (stdgo._internal.encoding.xml.Xml__addFieldInfo._addFieldInfo(_typ, _tinfo, (stdgo.Go.setRef(_finfo) : stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_fieldInfo.T_fieldInfo>)) : stdgo.Error);
                                    if (_err != null) {
                                        return { _0 : null, _1 : _err };
                                    };
                                };
                            };
                            continue;
                        };
                    };
                    var __tmp__ = stdgo._internal.encoding.xml.Xml__structFieldInfo._structFieldInfo(_typ, (stdgo.Go.setRef(_f) : stdgo.Ref<stdgo._internal.reflect.Reflect_StructField.StructField>)), _finfo:stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_fieldInfo.T_fieldInfo> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err != null) {
                        return { _0 : null, _1 : _err };
                    };
                    if (_f.name == (("XMLName" : stdgo.GoString))) {
                        _tinfo._xmlname = _finfo;
                        continue;
                    };
                    {
                        var _err = (stdgo._internal.encoding.xml.Xml__addFieldInfo._addFieldInfo(_typ, _tinfo, _finfo) : stdgo.Error);
                        if (_err != null) {
                            return { _0 : null, _1 : _err };
                        };
                    };
                });
            };
        };
        var __tmp__ = stdgo._internal.encoding.xml.Xml__tinfoMap._tinfoMap.loadOrStore(stdgo.Go.toInterface(_typ), stdgo.Go.toInterface(_tinfo)), _ti:stdgo.AnyInterface = __tmp__._0, __8:Bool = __tmp__._1;
        return { _0 : (stdgo.Go.typeAssert((_ti : stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_typeInfo.T_typeInfo>)) : stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_typeInfo.T_typeInfo>), _1 : (null : stdgo.Error) };
    }
