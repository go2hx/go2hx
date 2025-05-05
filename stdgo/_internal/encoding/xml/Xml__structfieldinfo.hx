package stdgo._internal.encoding.xml;
function _structFieldInfo(_typ:stdgo._internal.reflect.Reflect_type_.Type_, _f:stdgo.Ref<stdgo._internal.reflect.Reflect_structfield.StructField>):{ var _0 : stdgo.Ref<stdgo._internal.encoding.xml.Xml_t_fieldinfo.T_fieldInfo>; var _1 : stdgo.Error; } {
        var _finfo = (stdgo.Go.setRef(({ _idx : (@:checkr _f ?? throw "null pointer dereference").index } : stdgo._internal.encoding.xml.Xml_t_fieldinfo.T_fieldInfo)) : stdgo.Ref<stdgo._internal.encoding.xml.Xml_t_fieldinfo.T_fieldInfo>);
        var _tag = ((@:checkr _f ?? throw "null pointer dereference").tag.get(("xml" : stdgo.GoString))?.__copy__() : stdgo.GoString);
        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/typeinfo.go#L118"
        {
            var __tmp__ = stdgo._internal.strings.Strings_cut.cut(_tag?.__copy__(), (" " : stdgo.GoString)), _ns:stdgo.GoString = __tmp__._0, _t:stdgo.GoString = __tmp__._1, _ok:Bool = __tmp__._2;
            if (_ok) {
                {
                    final __tmp__0 = _ns?.__copy__();
                    final __tmp__1 = _t?.__copy__();
                    (@:checkr _finfo ?? throw "null pointer dereference")._xmlns = @:binopAssign __tmp__0;
                    _tag = @:binopAssign __tmp__1;
                };
            };
        };
        var _tokens = stdgo._internal.strings.Strings_split.split(_tag?.__copy__(), ("," : stdgo.GoString));
        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/typeinfo.go#L124"
        if ((_tokens.length) == ((1 : stdgo.GoInt))) {
            (@:checkr _finfo ?? throw "null pointer dereference")._flags = (1 : stdgo._internal.encoding.xml.Xml_t_fieldflags.T_fieldFlags);
        } else {
            _tag = _tokens[(0 : stdgo.GoInt)]?.__copy__();
            //"file:///home/runner/.go/go1.21.3/src/encoding/xml/typeinfo.go#L128"
            for (__0 => _flag in (_tokens.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoString>)) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/xml/typeinfo.go#L129"
                {
                    final __value__ = _flag;
                    if (__value__ == (("attr" : stdgo.GoString))) {
                        (@:checkr _finfo ?? throw "null pointer dereference")._flags = ((@:checkr _finfo ?? throw "null pointer dereference")._flags | ((2 : stdgo._internal.encoding.xml.Xml_t_fieldflags.T_fieldFlags)) : stdgo._internal.encoding.xml.Xml_t_fieldflags.T_fieldFlags);
                    } else if (__value__ == (("cdata" : stdgo.GoString))) {
                        (@:checkr _finfo ?? throw "null pointer dereference")._flags = ((@:checkr _finfo ?? throw "null pointer dereference")._flags | ((4 : stdgo._internal.encoding.xml.Xml_t_fieldflags.T_fieldFlags)) : stdgo._internal.encoding.xml.Xml_t_fieldflags.T_fieldFlags);
                    } else if (__value__ == (("chardata" : stdgo.GoString))) {
                        (@:checkr _finfo ?? throw "null pointer dereference")._flags = ((@:checkr _finfo ?? throw "null pointer dereference")._flags | ((8 : stdgo._internal.encoding.xml.Xml_t_fieldflags.T_fieldFlags)) : stdgo._internal.encoding.xml.Xml_t_fieldflags.T_fieldFlags);
                    } else if (__value__ == (("innerxml" : stdgo.GoString))) {
                        (@:checkr _finfo ?? throw "null pointer dereference")._flags = ((@:checkr _finfo ?? throw "null pointer dereference")._flags | ((16 : stdgo._internal.encoding.xml.Xml_t_fieldflags.T_fieldFlags)) : stdgo._internal.encoding.xml.Xml_t_fieldflags.T_fieldFlags);
                    } else if (__value__ == (("comment" : stdgo.GoString))) {
                        (@:checkr _finfo ?? throw "null pointer dereference")._flags = ((@:checkr _finfo ?? throw "null pointer dereference")._flags | ((32 : stdgo._internal.encoding.xml.Xml_t_fieldflags.T_fieldFlags)) : stdgo._internal.encoding.xml.Xml_t_fieldflags.T_fieldFlags);
                    } else if (__value__ == (("any" : stdgo.GoString))) {
                        (@:checkr _finfo ?? throw "null pointer dereference")._flags = ((@:checkr _finfo ?? throw "null pointer dereference")._flags | ((64 : stdgo._internal.encoding.xml.Xml_t_fieldflags.T_fieldFlags)) : stdgo._internal.encoding.xml.Xml_t_fieldflags.T_fieldFlags);
                    } else if (__value__ == (("omitempty" : stdgo.GoString))) {
                        (@:checkr _finfo ?? throw "null pointer dereference")._flags = ((@:checkr _finfo ?? throw "null pointer dereference")._flags | ((128 : stdgo._internal.encoding.xml.Xml_t_fieldflags.T_fieldFlags)) : stdgo._internal.encoding.xml.Xml_t_fieldflags.T_fieldFlags);
                    };
                };
            };
            var _valid = (true : Bool);
            //"file:///home/runner/.go/go1.21.3/src/encoding/xml/typeinfo.go#L149"
            {
                var _mode = ((@:checkr _finfo ?? throw "null pointer dereference")._flags & (127 : stdgo._internal.encoding.xml.Xml_t_fieldflags.T_fieldFlags) : stdgo._internal.encoding.xml.Xml_t_fieldflags.T_fieldFlags);
                {
                    final __value__ = _mode;
                    if (__value__ == ((0 : stdgo._internal.encoding.xml.Xml_t_fieldflags.T_fieldFlags))) {
                        (@:checkr _finfo ?? throw "null pointer dereference")._flags = ((@:checkr _finfo ?? throw "null pointer dereference")._flags | ((1 : stdgo._internal.encoding.xml.Xml_t_fieldflags.T_fieldFlags)) : stdgo._internal.encoding.xml.Xml_t_fieldflags.T_fieldFlags);
                    } else if (__value__ == ((2 : stdgo._internal.encoding.xml.Xml_t_fieldflags.T_fieldFlags)) || __value__ == ((4 : stdgo._internal.encoding.xml.Xml_t_fieldflags.T_fieldFlags)) || __value__ == ((8 : stdgo._internal.encoding.xml.Xml_t_fieldflags.T_fieldFlags)) || __value__ == ((16 : stdgo._internal.encoding.xml.Xml_t_fieldflags.T_fieldFlags)) || __value__ == ((32 : stdgo._internal.encoding.xml.Xml_t_fieldflags.T_fieldFlags)) || __value__ == ((64 : stdgo._internal.encoding.xml.Xml_t_fieldflags.T_fieldFlags)) || __value__ == ((66 : stdgo._internal.encoding.xml.Xml_t_fieldflags.T_fieldFlags))) {
                        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/typeinfo.go#L153"
                        if ((((@:checkr _f ?? throw "null pointer dereference").name == ("XMLName" : stdgo.GoString)) || (_tag != ((stdgo.Go.str() : stdgo.GoString)) && _mode != ((2 : stdgo._internal.encoding.xml.Xml_t_fieldflags.T_fieldFlags)) : Bool) : Bool)) {
                            _valid = false;
                        };
                    } else {
                        _valid = false;
                    };
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/encoding/xml/typeinfo.go#L160"
            if (((@:checkr _finfo ?? throw "null pointer dereference")._flags & (127 : stdgo._internal.encoding.xml.Xml_t_fieldflags.T_fieldFlags) : stdgo._internal.encoding.xml.Xml_t_fieldflags.T_fieldFlags) == ((64 : stdgo._internal.encoding.xml.Xml_t_fieldflags.T_fieldFlags))) {
                (@:checkr _finfo ?? throw "null pointer dereference")._flags = ((@:checkr _finfo ?? throw "null pointer dereference")._flags | ((1 : stdgo._internal.encoding.xml.Xml_t_fieldflags.T_fieldFlags)) : stdgo._internal.encoding.xml.Xml_t_fieldflags.T_fieldFlags);
            };
            //"file:///home/runner/.go/go1.21.3/src/encoding/xml/typeinfo.go#L163"
            if (((((@:checkr _finfo ?? throw "null pointer dereference")._flags & (128 : stdgo._internal.encoding.xml.Xml_t_fieldflags.T_fieldFlags) : stdgo._internal.encoding.xml.Xml_t_fieldflags.T_fieldFlags) != (0 : stdgo._internal.encoding.xml.Xml_t_fieldflags.T_fieldFlags)) && (((@:checkr _finfo ?? throw "null pointer dereference")._flags & (3 : stdgo._internal.encoding.xml.Xml_t_fieldflags.T_fieldFlags) : stdgo._internal.encoding.xml.Xml_t_fieldflags.T_fieldFlags) == (0 : stdgo._internal.encoding.xml.Xml_t_fieldflags.T_fieldFlags)) : Bool)) {
                _valid = false;
            };
            //"file:///home/runner/.go/go1.21.3/src/encoding/xml/typeinfo.go#L166"
            if (!_valid) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/xml/typeinfo.go#L167"
                return { _0 : null, _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("xml: invalid tag in field %s of type %s: %q" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _f ?? throw "null pointer dereference").name), stdgo.Go.toInterface(_typ), stdgo.Go.toInterface((@:checkr _f ?? throw "null pointer dereference").tag.get(("xml" : stdgo.GoString)))) };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/typeinfo.go#L173"
        if ((((@:checkr _finfo ?? throw "null pointer dereference")._xmlns != (stdgo.Go.str() : stdgo.GoString)) && (_tag == (stdgo.Go.str() : stdgo.GoString)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/xml/typeinfo.go#L174"
            return { _0 : null, _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("xml: namespace without name in field %s of type %s: %q" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _f ?? throw "null pointer dereference").name), stdgo.Go.toInterface(_typ), stdgo.Go.toInterface((@:checkr _f ?? throw "null pointer dereference").tag.get(("xml" : stdgo.GoString)))) };
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/typeinfo.go#L178"
        if ((@:checkr _f ?? throw "null pointer dereference").name == (("XMLName" : stdgo.GoString))) {
            (@:checkr _finfo ?? throw "null pointer dereference")._name = _tag?.__copy__();
            //"file:///home/runner/.go/go1.21.3/src/encoding/xml/typeinfo.go#L183"
            return { _0 : _finfo, _1 : (null : stdgo.Error) };
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/typeinfo.go#L186"
        if (_tag == ((stdgo.Go.str() : stdgo.GoString))) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/xml/typeinfo.go#L190"
            {
                var _xmlname = stdgo._internal.encoding.xml.Xml__lookupxmlname._lookupXMLName((@:checkr _f ?? throw "null pointer dereference").type);
                if (({
                    final value = _xmlname;
                    (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                })) {
                    {
                        final __tmp__0 = (@:checkr _xmlname ?? throw "null pointer dereference")._xmlns?.__copy__();
                        final __tmp__1 = (@:checkr _xmlname ?? throw "null pointer dereference")._name?.__copy__();
                        (@:checkr _finfo ?? throw "null pointer dereference")._xmlns = @:binopAssign __tmp__0;
                        (@:checkr _finfo ?? throw "null pointer dereference")._name = @:binopAssign __tmp__1;
                    };
                } else {
                    (@:checkr _finfo ?? throw "null pointer dereference")._name = (@:checkr _f ?? throw "null pointer dereference").name?.__copy__();
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/encoding/xml/typeinfo.go#L195"
            return { _0 : _finfo, _1 : (null : stdgo.Error) };
        };
        var _parents = stdgo._internal.strings.Strings_split.split(_tag?.__copy__(), (">" : stdgo.GoString));
        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/typeinfo.go#L200"
        if (_parents[(0 : stdgo.GoInt)] == ((stdgo.Go.str() : stdgo.GoString))) {
            _parents[(0 : stdgo.GoInt)] = (@:checkr _f ?? throw "null pointer dereference").name?.__copy__();
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/typeinfo.go#L203"
        if (_parents[((_parents.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] == ((stdgo.Go.str() : stdgo.GoString))) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/xml/typeinfo.go#L204"
            return { _0 : null, _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("xml: trailing \'>\' in field %s of type %s" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _f ?? throw "null pointer dereference").name), stdgo.Go.toInterface(_typ)) };
        };
        (@:checkr _finfo ?? throw "null pointer dereference")._name = _parents[((_parents.length) - (1 : stdgo.GoInt) : stdgo.GoInt)]?.__copy__();
        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/typeinfo.go#L207"
        if (((_parents.length) > (1 : stdgo.GoInt) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/xml/typeinfo.go#L208"
            if ((((@:checkr _finfo ?? throw "null pointer dereference")._flags & (1 : stdgo._internal.encoding.xml.Xml_t_fieldflags.T_fieldFlags) : stdgo._internal.encoding.xml.Xml_t_fieldflags.T_fieldFlags)) == ((0 : stdgo._internal.encoding.xml.Xml_t_fieldflags.T_fieldFlags))) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/xml/typeinfo.go#L209"
                return { _0 : null, _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("xml: %s chain not valid with %s flag" : stdgo.GoString), stdgo.Go.toInterface(_tag), stdgo.Go.toInterface(stdgo._internal.strings.Strings_join.join((_tokens.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoString>), ("," : stdgo.GoString)))) };
            };
            (@:checkr _finfo ?? throw "null pointer dereference")._parents = (_parents.__slice__(0, ((_parents.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoString>);
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/typeinfo.go#L217"
        if (((@:checkr _finfo ?? throw "null pointer dereference")._flags & (1 : stdgo._internal.encoding.xml.Xml_t_fieldflags.T_fieldFlags) : stdgo._internal.encoding.xml.Xml_t_fieldflags.T_fieldFlags) != ((0 : stdgo._internal.encoding.xml.Xml_t_fieldflags.T_fieldFlags))) {
            var _ftyp = ((@:checkr _f ?? throw "null pointer dereference").type : stdgo._internal.reflect.Reflect_type_.Type_);
            var _xmlname = stdgo._internal.encoding.xml.Xml__lookupxmlname._lookupXMLName(_ftyp);
            //"file:///home/runner/.go/go1.21.3/src/encoding/xml/typeinfo.go#L220"
            if ((({
                final value = _xmlname;
                (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
            }) && ((@:checkr _xmlname ?? throw "null pointer dereference")._name != (@:checkr _finfo ?? throw "null pointer dereference")._name) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/xml/typeinfo.go#L221"
                return { _0 : null, _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("xml: name %q in tag of %s.%s conflicts with name %q in %s.XMLName" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _finfo ?? throw "null pointer dereference")._name), stdgo.Go.toInterface(_typ), stdgo.Go.toInterface((@:checkr _f ?? throw "null pointer dereference").name), stdgo.Go.toInterface((@:checkr _xmlname ?? throw "null pointer dereference")._name), stdgo.Go.toInterface(_ftyp)) };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/typeinfo.go#L225"
        return { _0 : _finfo, _1 : (null : stdgo.Error) };
    }
