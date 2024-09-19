package stdgo._internal.encoding.xml;
function _structFieldInfo(_typ:stdgo._internal.reflect.Reflect_Type_.Type_, _f:stdgo.Ref<stdgo._internal.reflect.Reflect_StructField.StructField>):{ var _0 : stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_fieldInfo.T_fieldInfo>; var _1 : stdgo.Error; } {
        var _finfo = (stdgo.Go.setRef(({ _idx : _f.index } : stdgo._internal.encoding.xml.Xml_T_fieldInfo.T_fieldInfo)) : stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_fieldInfo.T_fieldInfo>);
        var _tag = (_f.tag.get(("xml" : stdgo.GoString))?.__copy__() : stdgo.GoString);
        {
            var __tmp__ = stdgo._internal.strings.Strings_cut.cut(_tag?.__copy__(), (" " : stdgo.GoString)), _ns:stdgo.GoString = __tmp__._0, _t:stdgo.GoString = __tmp__._1, _ok:Bool = __tmp__._2;
            if (_ok) {
                {
                    final __tmp__0 = _ns?.__copy__();
                    final __tmp__1 = _t?.__copy__();
                    _finfo._xmlns = __tmp__0;
                    _tag = __tmp__1;
                };
            };
        };
        var _tokens = stdgo._internal.strings.Strings_split.split(_tag?.__copy__(), ("," : stdgo.GoString));
        if ((_tokens.length) == ((1 : stdgo.GoInt))) {
            _finfo._flags = (1 : stdgo._internal.encoding.xml.Xml_T_fieldFlags.T_fieldFlags);
        } else {
            _tag = _tokens[(0 : stdgo.GoInt)]?.__copy__();
            for (__0 => _flag in (_tokens.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoString>)) {
                {
                    final __value__ = _flag;
                    if (__value__ == (("attr" : stdgo.GoString))) {
                        _finfo._flags = (_finfo._flags | ((2 : stdgo._internal.encoding.xml.Xml_T_fieldFlags.T_fieldFlags)) : stdgo._internal.encoding.xml.Xml_T_fieldFlags.T_fieldFlags);
                    } else if (__value__ == (("cdata" : stdgo.GoString))) {
                        _finfo._flags = (_finfo._flags | ((4 : stdgo._internal.encoding.xml.Xml_T_fieldFlags.T_fieldFlags)) : stdgo._internal.encoding.xml.Xml_T_fieldFlags.T_fieldFlags);
                    } else if (__value__ == (("chardata" : stdgo.GoString))) {
                        _finfo._flags = (_finfo._flags | ((8 : stdgo._internal.encoding.xml.Xml_T_fieldFlags.T_fieldFlags)) : stdgo._internal.encoding.xml.Xml_T_fieldFlags.T_fieldFlags);
                    } else if (__value__ == (("innerxml" : stdgo.GoString))) {
                        _finfo._flags = (_finfo._flags | ((16 : stdgo._internal.encoding.xml.Xml_T_fieldFlags.T_fieldFlags)) : stdgo._internal.encoding.xml.Xml_T_fieldFlags.T_fieldFlags);
                    } else if (__value__ == (("comment" : stdgo.GoString))) {
                        _finfo._flags = (_finfo._flags | ((32 : stdgo._internal.encoding.xml.Xml_T_fieldFlags.T_fieldFlags)) : stdgo._internal.encoding.xml.Xml_T_fieldFlags.T_fieldFlags);
                    } else if (__value__ == (("any" : stdgo.GoString))) {
                        _finfo._flags = (_finfo._flags | ((64 : stdgo._internal.encoding.xml.Xml_T_fieldFlags.T_fieldFlags)) : stdgo._internal.encoding.xml.Xml_T_fieldFlags.T_fieldFlags);
                    } else if (__value__ == (("omitempty" : stdgo.GoString))) {
                        _finfo._flags = (_finfo._flags | ((128 : stdgo._internal.encoding.xml.Xml_T_fieldFlags.T_fieldFlags)) : stdgo._internal.encoding.xml.Xml_T_fieldFlags.T_fieldFlags);
                    };
                };
            };
            var _valid = (true : Bool);
            {
                var _mode = (_finfo._flags & (127 : stdgo._internal.encoding.xml.Xml_T_fieldFlags.T_fieldFlags) : stdgo._internal.encoding.xml.Xml_T_fieldFlags.T_fieldFlags);
                {
                    final __value__ = _mode;
                    if (__value__ == ((0 : stdgo._internal.encoding.xml.Xml_T_fieldFlags.T_fieldFlags))) {
                        _finfo._flags = (_finfo._flags | ((1 : stdgo._internal.encoding.xml.Xml_T_fieldFlags.T_fieldFlags)) : stdgo._internal.encoding.xml.Xml_T_fieldFlags.T_fieldFlags);
                    } else if (__value__ == ((2 : stdgo._internal.encoding.xml.Xml_T_fieldFlags.T_fieldFlags)) || __value__ == ((4 : stdgo._internal.encoding.xml.Xml_T_fieldFlags.T_fieldFlags)) || __value__ == ((8 : stdgo._internal.encoding.xml.Xml_T_fieldFlags.T_fieldFlags)) || __value__ == ((16 : stdgo._internal.encoding.xml.Xml_T_fieldFlags.T_fieldFlags)) || __value__ == ((32 : stdgo._internal.encoding.xml.Xml_T_fieldFlags.T_fieldFlags)) || __value__ == ((64 : stdgo._internal.encoding.xml.Xml_T_fieldFlags.T_fieldFlags)) || __value__ == ((66 : stdgo._internal.encoding.xml.Xml_T_fieldFlags.T_fieldFlags))) {
                        if (((_f.name == ("XMLName" : stdgo.GoString)) || (_tag != (stdgo.Go.str()) && _mode != ((2 : stdgo._internal.encoding.xml.Xml_T_fieldFlags.T_fieldFlags)) : Bool) : Bool)) {
                            _valid = false;
                        };
                    } else {
                        _valid = false;
                    };
                };
            };
            if ((_finfo._flags & (127 : stdgo._internal.encoding.xml.Xml_T_fieldFlags.T_fieldFlags) : stdgo._internal.encoding.xml.Xml_T_fieldFlags.T_fieldFlags) == ((64 : stdgo._internal.encoding.xml.Xml_T_fieldFlags.T_fieldFlags))) {
                _finfo._flags = (_finfo._flags | ((1 : stdgo._internal.encoding.xml.Xml_T_fieldFlags.T_fieldFlags)) : stdgo._internal.encoding.xml.Xml_T_fieldFlags.T_fieldFlags);
            };
            if ((((_finfo._flags & (128 : stdgo._internal.encoding.xml.Xml_T_fieldFlags.T_fieldFlags) : stdgo._internal.encoding.xml.Xml_T_fieldFlags.T_fieldFlags) != (0 : stdgo._internal.encoding.xml.Xml_T_fieldFlags.T_fieldFlags)) && ((_finfo._flags & (3 : stdgo._internal.encoding.xml.Xml_T_fieldFlags.T_fieldFlags) : stdgo._internal.encoding.xml.Xml_T_fieldFlags.T_fieldFlags) == (0 : stdgo._internal.encoding.xml.Xml_T_fieldFlags.T_fieldFlags)) : Bool)) {
                _valid = false;
            };
            if (!_valid) {
                return { _0 : null, _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("xml: invalid tag in field %s of type %s: %q" : stdgo.GoString), stdgo.Go.toInterface(_f.name), stdgo.Go.toInterface(_typ), stdgo.Go.toInterface(_f.tag.get(("xml" : stdgo.GoString)))) };
            };
        };
        if (((_finfo._xmlns != stdgo.Go.str()) && (_tag == stdgo.Go.str()) : Bool)) {
            return { _0 : null, _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("xml: namespace without name in field %s of type %s: %q" : stdgo.GoString), stdgo.Go.toInterface(_f.name), stdgo.Go.toInterface(_typ), stdgo.Go.toInterface(_f.tag.get(("xml" : stdgo.GoString)))) };
        };
        if (_f.name == (("XMLName" : stdgo.GoString))) {
            _finfo._name = _tag?.__copy__();
            return { _0 : _finfo, _1 : (null : stdgo.Error) };
        };
        if (_tag == (stdgo.Go.str())) {
            {
                var _xmlname = stdgo._internal.encoding.xml.Xml__lookupXMLName._lookupXMLName(_f.type);
                if (_xmlname != null && ((_xmlname : Dynamic).__nil__ == null || !(_xmlname : Dynamic).__nil__)) {
                    {
                        final __tmp__0 = _xmlname._xmlns?.__copy__();
                        final __tmp__1 = _xmlname._name?.__copy__();
                        _finfo._xmlns = __tmp__0;
                        _finfo._name = __tmp__1;
                    };
                } else {
                    _finfo._name = _f.name?.__copy__();
                };
            };
            return { _0 : _finfo, _1 : (null : stdgo.Error) };
        };
        var _parents = stdgo._internal.strings.Strings_split.split(_tag?.__copy__(), (">" : stdgo.GoString));
        if (_parents[(0 : stdgo.GoInt)] == (stdgo.Go.str())) {
            _parents[(0 : stdgo.GoInt)] = _f.name?.__copy__();
        };
        if (_parents[((_parents.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] == (stdgo.Go.str())) {
            return { _0 : null, _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("xml: trailing \'>\' in field %s of type %s" : stdgo.GoString), stdgo.Go.toInterface(_f.name), stdgo.Go.toInterface(_typ)) };
        };
        _finfo._name = _parents[((_parents.length) - (1 : stdgo.GoInt) : stdgo.GoInt)]?.__copy__();
        if (((_parents.length) > (1 : stdgo.GoInt) : Bool)) {
            if (((_finfo._flags & (1 : stdgo._internal.encoding.xml.Xml_T_fieldFlags.T_fieldFlags) : stdgo._internal.encoding.xml.Xml_T_fieldFlags.T_fieldFlags)) == ((0 : stdgo._internal.encoding.xml.Xml_T_fieldFlags.T_fieldFlags))) {
                return { _0 : null, _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("xml: %s chain not valid with %s flag" : stdgo.GoString), stdgo.Go.toInterface(_tag), stdgo.Go.toInterface(stdgo._internal.strings.Strings_join.join((_tokens.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoString>), ("," : stdgo.GoString)))) };
            };
            _finfo._parents = (_parents.__slice__(0, ((_parents.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoString>);
        };
        if ((_finfo._flags & (1 : stdgo._internal.encoding.xml.Xml_T_fieldFlags.T_fieldFlags) : stdgo._internal.encoding.xml.Xml_T_fieldFlags.T_fieldFlags) != ((0 : stdgo._internal.encoding.xml.Xml_T_fieldFlags.T_fieldFlags))) {
            var _ftyp = (_f.type : stdgo._internal.reflect.Reflect_Type_.Type_);
            var _xmlname = stdgo._internal.encoding.xml.Xml__lookupXMLName._lookupXMLName(_ftyp);
            if ((((_xmlname != null) && ((_xmlname : Dynamic).__nil__ == null || !(_xmlname : Dynamic).__nil__)) && (_xmlname._name != _finfo._name) : Bool)) {
                return { _0 : null, _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("xml: name %q in tag of %s.%s conflicts with name %q in %s.XMLName" : stdgo.GoString), stdgo.Go.toInterface(_finfo._name), stdgo.Go.toInterface(_typ), stdgo.Go.toInterface(_f.name), stdgo.Go.toInterface(_xmlname._name), stdgo.Go.toInterface(_ftyp)) };
            };
        };
        return { _0 : _finfo, _1 : (null : stdgo.Error) };
    }
