package stdgo._internal.encoding.xml;
function _addFieldInfo(_typ:stdgo._internal.reflect.Reflect_type_.Type_, _tinfo:stdgo.Ref<stdgo._internal.encoding.xml.Xml_t_typeinfo.T_typeInfo>, _newf:stdgo.Ref<stdgo._internal.encoding.xml.Xml_t_fieldinfo.T_fieldInfo>):stdgo.Error {
        var _f1_76:stdgo._internal.reflect.Reflect_structfield.StructField = ({} : stdgo._internal.reflect.Reflect_structfield.StructField);
        var _oldf_75:stdgo.Ref<stdgo._internal.encoding.xml.Xml_t_fieldinfo.T_fieldInfo> = (null : stdgo.Ref<stdgo._internal.encoding.xml.Xml_t_fieldinfo.T_fieldInfo>);
        var _f2_77:stdgo._internal.reflect.Reflect_structfield.StructField = ({} : stdgo._internal.reflect.Reflect_structfield.StructField);
        var _i_3700899_73:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_72:stdgo.GoInt = (0 : stdgo.GoInt);
        var _minl_69:stdgo.GoInt = (0 : stdgo.GoInt);
        var _oldf_68:stdgo.Ref<stdgo._internal.encoding.xml.Xml_t_fieldinfo.T_fieldInfo> = (null : stdgo.Ref<stdgo._internal.encoding.xml.Xml_t_fieldinfo.T_fieldInfo>);
        var _c_78:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_74:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_3700725_71:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_67:stdgo.GoInt = (0 : stdgo.GoInt);
        var _conflicts_66:stdgo.Slice<stdgo.GoInt> = (null : stdgo.Slice<stdgo.GoInt>);
        var _i_79:stdgo.GoInt = (0 : stdgo.GoInt);
        var _p_70:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 3699626i32;
                } else if (__value__ == (3699626i32)) {
                    if ((0i32 : stdgo.GoInt) < ((@:checkr _tinfo ?? throw "null pointer dereference")._fields.length)) {
                        _gotoNext = 3700460i32;
                    } else {
                        _gotoNext = 3700517i32;
                    };
                } else if (__value__ == (3699704i32)) {
                    _i_67++;
                    _gotoNext = 3700461i32;
                } else if (__value__ == (3699728i32)) {
                    _oldf_68 = (stdgo.Go.setRef((@:checkr _tinfo ?? throw "null pointer dereference")._fields[(_i_67 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.encoding.xml.Xml_t_fieldinfo.T_fieldInfo>);
                    if (((@:checkr _oldf_68 ?? throw "null pointer dereference")._flags & (127 : stdgo._internal.encoding.xml.Xml_t_fieldflags.T_fieldFlags) : stdgo._internal.encoding.xml.Xml_t_fieldflags.T_fieldFlags) != (((@:checkr _newf ?? throw "null pointer dereference")._flags & (127 : stdgo._internal.encoding.xml.Xml_t_fieldflags.T_fieldFlags) : stdgo._internal.encoding.xml.Xml_t_fieldflags.T_fieldFlags))) {
                        _gotoNext = 3699799i32;
                    } else {
                        _gotoNext = 3699819i32;
                    };
                } else if (__value__ == (3699799i32)) {
                    _i_67++;
                    _gotoNext = 3700461i32;
                } else if (__value__ == (3699819i32)) {
                    if ((((@:checkr _oldf_68 ?? throw "null pointer dereference")._xmlns != ((stdgo.Go.str() : stdgo.GoString)) && (@:checkr _newf ?? throw "null pointer dereference")._xmlns != ((stdgo.Go.str() : stdgo.GoString)) : Bool) && ((@:checkr _oldf_68 ?? throw "null pointer dereference")._xmlns != (@:checkr _newf ?? throw "null pointer dereference")._xmlns) : Bool)) {
                        _gotoNext = 3699887i32;
                    } else {
                        _gotoNext = 3699907i32;
                    };
                } else if (__value__ == (3699887i32)) {
                    _i_67++;
                    _gotoNext = 3700461i32;
                } else if (__value__ == (3699907i32)) {
                    _minl_69 = stdgo._internal.encoding.xml.Xml__min._min(((@:checkr _newf ?? throw "null pointer dereference")._parents.length), ((@:checkr _oldf_68 ?? throw "null pointer dereference")._parents.length));
                    _p_70 = (0 : stdgo.GoInt);
                    _gotoNext = 3699959i32;
                } else if (__value__ == (3699959i32)) {
                    if ((_p_70 < _minl_69 : Bool)) {
                        _gotoNext = 3699985i32;
                    } else {
                        _gotoNext = 3700059i32;
                    };
                } else if (__value__ == (3699981i32)) {
                    _p_70++;
                    _gotoNext = 3699959i32;
                } else if (__value__ == (3699985i32)) {
                    if ((@:checkr _oldf_68 ?? throw "null pointer dereference")._parents[(_p_70 : stdgo.GoInt)] != ((@:checkr _newf ?? throw "null pointer dereference")._parents[(_p_70 : stdgo.GoInt)])) {
                        _gotoNext = 3700028i32;
                    } else {
                        _gotoNext = 3699981i32;
                    };
                } else if (__value__ == (3700028i32)) {
                    _i_67++;
                    _gotoNext = 3700461i32;
                } else if (__value__ == (3700059i32)) {
                    if ((((@:checkr _oldf_68 ?? throw "null pointer dereference")._parents.length) > ((@:checkr _newf ?? throw "null pointer dereference")._parents.length) : Bool)) {
                        _gotoNext = 3700100i32;
                    } else if ((((@:checkr _oldf_68 ?? throw "null pointer dereference")._parents.length) < ((@:checkr _newf ?? throw "null pointer dereference")._parents.length) : Bool)) {
                        _gotoNext = 3700247i32;
                    } else {
                        _gotoNext = 3700353i32;
                    };
                } else if (__value__ == (3700100i32)) {
                    if ((@:checkr _oldf_68 ?? throw "null pointer dereference")._parents[((@:checkr _newf ?? throw "null pointer dereference")._parents.length : stdgo.GoInt)] == ((@:checkr _newf ?? throw "null pointer dereference")._name)) {
                        _gotoNext = 3700153i32;
                    } else {
                        _gotoNext = 3699704i32;
                    };
                } else if (__value__ == (3700153i32)) {
                    _conflicts_66 = (_conflicts_66.__append__(_i_67));
                    _gotoNext = 3699704i32;
                } else if (__value__ == (3700247i32)) {
                    if ((@:checkr _newf ?? throw "null pointer dereference")._parents[((@:checkr _oldf_68 ?? throw "null pointer dereference")._parents.length : stdgo.GoInt)] == ((@:checkr _oldf_68 ?? throw "null pointer dereference")._name)) {
                        _gotoNext = 3700300i32;
                    } else {
                        _gotoNext = 3699704i32;
                    };
                } else if (__value__ == (3700300i32)) {
                    _conflicts_66 = (_conflicts_66.__append__(_i_67));
                    _gotoNext = 3699704i32;
                } else if (__value__ == (3700353i32)) {
                    _gotoNext = 3700353i32;
                    if ((((@:checkr _newf ?? throw "null pointer dereference")._name == (@:checkr _oldf_68 ?? throw "null pointer dereference")._name) && ((@:checkr _newf ?? throw "null pointer dereference")._xmlns == (@:checkr _oldf_68 ?? throw "null pointer dereference")._xmlns) : Bool)) {
                        _gotoNext = 3700412i32;
                    } else {
                        _gotoNext = 3699704i32;
                    };
                } else if (__value__ == (3700412i32)) {
                    _conflicts_66 = (_conflicts_66.__append__(_i_67));
                    _gotoNext = 3699704i32;
                } else if (__value__ == (3700460i32)) {
                    _i_67 = 0i32;
                    _gotoNext = 3700461i32;
                } else if (__value__ == (3700461i32)) {
                    if (_i_67 < ((@:checkr _tinfo ?? throw "null pointer dereference")._fields.length)) {
                        _gotoNext = 3699728i32;
                    } else {
                        _gotoNext = 3700517i32;
                    };
                } else if (__value__ == (3700517i32)) {
                    if (_conflicts_66 == null) {
                        _gotoNext = 3700537i32;
                    } else {
                        _gotoNext = 3700713i32;
                    };
                } else if (__value__ == (3700537i32)) {
                    (@:checkr _tinfo ?? throw "null pointer dereference")._fields = ((@:checkr _tinfo ?? throw "null pointer dereference")._fields.__append__((_newf : stdgo._internal.encoding.xml.Xml_t_fieldinfo.T_fieldInfo)?.__copy__()));
                    return (null : stdgo.Error);
                    _gotoNext = 3700713i32;
                } else if (__value__ == (3700713i32)) {
                    if ((0i32 : stdgo.GoInt) < (_conflicts_66.length)) {
                        _gotoNext = 3700809i32;
                    } else {
                        _gotoNext = 3700887i32;
                    };
                } else if (__value__ == (3700717i32)) {
                    _i_3700725_71++;
                    _gotoNext = 3700810i32;
                } else if (__value__ == (3700741i32)) {
                    _i_72 = _conflicts_66[(_i_3700725_71 : stdgo.GoInt)];
                    if ((((@:checkr _tinfo ?? throw "null pointer dereference")._fields[(_i_72 : stdgo.GoInt)]._idx.length) < ((@:checkr _newf ?? throw "null pointer dereference")._idx.length) : Bool)) {
                        _gotoNext = 3700789i32;
                    } else {
                        _gotoNext = 3700717i32;
                    };
                } else if (__value__ == (3700789i32)) {
                    return (null : stdgo.Error);
                    _gotoNext = 3700717i32;
                } else if (__value__ == (3700809i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _conflicts_66[(0i32 : stdgo.GoInt)];
                        _i_3700725_71 = @:binopAssign __tmp__0;
                        _i_72 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 3700810i32;
                } else if (__value__ == (3700810i32)) {
                    if (_i_3700725_71 < (_conflicts_66.length)) {
                        _gotoNext = 3700741i32;
                    } else {
                        _gotoNext = 3700887i32;
                    };
                } else if (__value__ == (3700887i32)) {
                    if ((0i32 : stdgo.GoInt) < (_conflicts_66.length)) {
                        _gotoNext = 3701143i32;
                    } else {
                        _gotoNext = 3701288i32;
                    };
                } else if (__value__ == (3700891i32)) {
                    _i_3700899_73++;
                    _gotoNext = 3701144i32;
                } else if (__value__ == (3700915i32)) {
                    _i_74 = _conflicts_66[(_i_3700899_73 : stdgo.GoInt)];
                    _oldf_75 = (stdgo.Go.setRef((@:checkr _tinfo ?? throw "null pointer dereference")._fields[(_i_74 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.encoding.xml.Xml_t_fieldinfo.T_fieldInfo>);
                    if (((@:checkr _oldf_75 ?? throw "null pointer dereference")._idx.length) == (((@:checkr _newf ?? throw "null pointer dereference")._idx.length))) {
                        _gotoNext = 3700980i32;
                    } else {
                        _gotoNext = 3700891i32;
                    };
                } else if (__value__ == (3700980i32)) {
                    _f1_76 = _typ.fieldByIndex((@:checkr _oldf_75 ?? throw "null pointer dereference")._idx)?.__copy__();
                    _f2_77 = _typ.fieldByIndex((@:checkr _newf ?? throw "null pointer dereference")._idx)?.__copy__();
                    return stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.encoding.xml.Xml_tagpatherror.TagPathError(_typ, _f1_76.name?.__copy__(), _f1_76.tag.get(("xml" : stdgo.GoString))?.__copy__(), _f2_77.name?.__copy__(), _f2_77.tag.get(("xml" : stdgo.GoString))?.__copy__()) : stdgo._internal.encoding.xml.Xml_tagpatherror.TagPathError)) : stdgo.Ref<stdgo._internal.encoding.xml.Xml_tagpatherror.TagPathError>));
                    _gotoNext = 3700891i32;
                } else if (__value__ == (3701143i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _conflicts_66[(0i32 : stdgo.GoInt)];
                        _i_3700899_73 = @:binopAssign __tmp__0;
                        _i_74 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 3701144i32;
                } else if (__value__ == (3701144i32)) {
                    if (_i_3700899_73 < (_conflicts_66.length)) {
                        _gotoNext = 3700915i32;
                    } else {
                        _gotoNext = 3701288i32;
                    };
                } else if (__value__ == (3701288i32)) {
                    _c_78 = ((_conflicts_66.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
                    _gotoNext = 3701288i32;
                    if ((_c_78 >= (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3701329i32;
                    } else {
                        _gotoNext = 3701452i32;
                    };
                } else if (__value__ == (3701329i32)) {
                    _i_79 = _conflicts_66[(_c_78 : stdgo.GoInt)];
                    ((@:checkr _tinfo ?? throw "null pointer dereference")._fields.__slice__(_i_79) : stdgo.Slice<stdgo._internal.encoding.xml.Xml_t_fieldinfo.T_fieldInfo>).__copyTo__(((@:checkr _tinfo ?? throw "null pointer dereference")._fields.__slice__((_i_79 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.encoding.xml.Xml_t_fieldinfo.T_fieldInfo>));
                    (@:checkr _tinfo ?? throw "null pointer dereference")._fields = ((@:checkr _tinfo ?? throw "null pointer dereference")._fields.__slice__(0, (((@:checkr _tinfo ?? throw "null pointer dereference")._fields.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.encoding.xml.Xml_t_fieldinfo.T_fieldInfo>);
                    _c_78--;
                    _gotoNext = 3701288i32;
                } else if (__value__ == (3701452i32)) {
                    (@:checkr _tinfo ?? throw "null pointer dereference")._fields = ((@:checkr _tinfo ?? throw "null pointer dereference")._fields.__append__((_newf : stdgo._internal.encoding.xml.Xml_t_fieldinfo.T_fieldInfo)?.__copy__()));
                    return (null : stdgo.Error);
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
