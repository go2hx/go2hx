package stdgo._internal.encoding.xml;
function _addFieldInfo(_typ:stdgo._internal.reflect.Reflect_Type_.Type_, _tinfo:stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_typeInfo.T_typeInfo>, _newf:stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_fieldInfo.T_fieldInfo>):stdgo.Error {
        var _p_3722921:stdgo.GoInt = (0 : stdgo.GoInt);
        var _oldf_3722690:stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_fieldInfo.T_fieldInfo> = (null : stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_fieldInfo.T_fieldInfo>);
        var _conflicts_3722568:stdgo.Slice<stdgo.GoInt> = (null : stdgo.Slice<stdgo.GoInt>);
        var _i_3724291:stdgo.GoInt = (0 : stdgo.GoInt);
        var _f1_3723943:stdgo._internal.reflect.Reflect_StructField.StructField = ({} : stdgo._internal.reflect.Reflect_StructField.StructField);
        var _minl_3722865:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_3722662:stdgo.GoInt = (0 : stdgo.GoInt);
        var _f2_3723979:stdgo._internal.reflect.Reflect_StructField.StructField = ({} : stdgo._internal.reflect.Reflect_StructField.StructField);
        var _oldf_3723877:stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_fieldInfo.T_fieldInfo> = (null : stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_fieldInfo.T_fieldInfo>);
        var _i_3723678:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_3723683_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _c_3724250:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_3723852:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_3723857_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 3722584i32;
                } else if (__value__ == (3722584i32)) {
                    if ((0i32 : stdgo.GoInt) < ((@:checkr _tinfo ?? throw "null pointer dereference")._fields.length)) {
                        _gotoNext = 3723418i32;
                    } else {
                        _gotoNext = 3723475i32;
                    };
                } else if (__value__ == (3722662i32)) {
                    _i_3722662++;
                    _gotoNext = 3723419i32;
                } else if (__value__ == (3722686i32)) {
                    _oldf_3722690 = (stdgo.Go.setRef((@:checkr _tinfo ?? throw "null pointer dereference")._fields[(_i_3722662 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_fieldInfo.T_fieldInfo>);
                    if (((@:checkr _oldf_3722690 ?? throw "null pointer dereference")._flags & (127 : stdgo._internal.encoding.xml.Xml_T_fieldFlags.T_fieldFlags) : stdgo._internal.encoding.xml.Xml_T_fieldFlags.T_fieldFlags) != (((@:checkr _newf ?? throw "null pointer dereference")._flags & (127 : stdgo._internal.encoding.xml.Xml_T_fieldFlags.T_fieldFlags) : stdgo._internal.encoding.xml.Xml_T_fieldFlags.T_fieldFlags))) {
                        _gotoNext = 3722757i32;
                    } else {
                        _gotoNext = 3722777i32;
                    };
                } else if (__value__ == (3722757i32)) {
                    _i_3722662++;
                    _gotoNext = 3723419i32;
                } else if (__value__ == (3722777i32)) {
                    if ((((@:checkr _oldf_3722690 ?? throw "null pointer dereference")._xmlns != (stdgo.Go.str()) && (@:checkr _newf ?? throw "null pointer dereference")._xmlns != (stdgo.Go.str()) : Bool) && ((@:checkr _oldf_3722690 ?? throw "null pointer dereference")._xmlns != (@:checkr _newf ?? throw "null pointer dereference")._xmlns) : Bool)) {
                        _gotoNext = 3722845i32;
                    } else {
                        _gotoNext = 3722865i32;
                    };
                } else if (__value__ == (3722845i32)) {
                    _i_3722662++;
                    _gotoNext = 3723419i32;
                } else if (__value__ == (3722865i32)) {
                    _minl_3722865 = stdgo._internal.encoding.xml.Xml__min._min(((@:checkr _newf ?? throw "null pointer dereference")._parents.length), ((@:checkr _oldf_3722690 ?? throw "null pointer dereference")._parents.length));
                    _p_3722921 = (0 : stdgo.GoInt);
                    _gotoNext = 3722917i32;
                } else if (__value__ == (3722917i32)) {
                    if ((_p_3722921 < _minl_3722865 : Bool)) {
                        _gotoNext = 3722943i32;
                    } else {
                        _gotoNext = 3723017i32;
                    };
                } else if (__value__ == (3722939i32)) {
                    _p_3722921++;
                    _gotoNext = 3722917i32;
                } else if (__value__ == (3722943i32)) {
                    if ((@:checkr _oldf_3722690 ?? throw "null pointer dereference")._parents[(_p_3722921 : stdgo.GoInt)] != ((@:checkr _newf ?? throw "null pointer dereference")._parents[(_p_3722921 : stdgo.GoInt)])) {
                        _gotoNext = 3722986i32;
                    } else {
                        _gotoNext = 3722939i32;
                    };
                } else if (__value__ == (3722986i32)) {
                    _i_3722662++;
                    _gotoNext = 3723419i32;
                } else if (__value__ == (3723017i32)) {
                    if ((((@:checkr _oldf_3722690 ?? throw "null pointer dereference")._parents.length) > ((@:checkr _newf ?? throw "null pointer dereference")._parents.length) : Bool)) {
                        _gotoNext = 3723058i32;
                    } else if ((((@:checkr _oldf_3722690 ?? throw "null pointer dereference")._parents.length) < ((@:checkr _newf ?? throw "null pointer dereference")._parents.length) : Bool)) {
                        _gotoNext = 3723205i32;
                    } else {
                        _gotoNext = 3723311i32;
                    };
                } else if (__value__ == (3723058i32)) {
                    if ((@:checkr _oldf_3722690 ?? throw "null pointer dereference")._parents[((@:checkr _newf ?? throw "null pointer dereference")._parents.length : stdgo.GoInt)] == ((@:checkr _newf ?? throw "null pointer dereference")._name)) {
                        _gotoNext = 3723111i32;
                    } else {
                        _gotoNext = 3722662i32;
                    };
                } else if (__value__ == (3723111i32)) {
                    _conflicts_3722568 = (_conflicts_3722568.__append__(_i_3722662));
                    _gotoNext = 3722662i32;
                } else if (__value__ == (3723205i32)) {
                    if ((@:checkr _newf ?? throw "null pointer dereference")._parents[((@:checkr _oldf_3722690 ?? throw "null pointer dereference")._parents.length : stdgo.GoInt)] == ((@:checkr _oldf_3722690 ?? throw "null pointer dereference")._name)) {
                        _gotoNext = 3723258i32;
                    } else {
                        _gotoNext = 3722662i32;
                    };
                } else if (__value__ == (3723258i32)) {
                    _conflicts_3722568 = (_conflicts_3722568.__append__(_i_3722662));
                    _gotoNext = 3722662i32;
                } else if (__value__ == (3723311i32)) {
                    _gotoNext = 3723311i32;
                    if ((((@:checkr _newf ?? throw "null pointer dereference")._name == (@:checkr _oldf_3722690 ?? throw "null pointer dereference")._name) && ((@:checkr _newf ?? throw "null pointer dereference")._xmlns == (@:checkr _oldf_3722690 ?? throw "null pointer dereference")._xmlns) : Bool)) {
                        _gotoNext = 3723370i32;
                    } else {
                        _gotoNext = 3722662i32;
                    };
                } else if (__value__ == (3723370i32)) {
                    _conflicts_3722568 = (_conflicts_3722568.__append__(_i_3722662));
                    _gotoNext = 3722662i32;
                } else if (__value__ == (3723418i32)) {
                    _i_3722662 = 0i32;
                    _gotoNext = 3723419i32;
                } else if (__value__ == (3723419i32)) {
                    if (_i_3722662 < ((@:checkr _tinfo ?? throw "null pointer dereference")._fields.length)) {
                        _gotoNext = 3722686i32;
                    } else {
                        _gotoNext = 3723475i32;
                    };
                } else if (__value__ == (3723475i32)) {
                    if (_conflicts_3722568 == null) {
                        _gotoNext = 3723495i32;
                    } else {
                        _gotoNext = 3723671i32;
                    };
                } else if (__value__ == (3723495i32)) {
                    (@:checkr _tinfo ?? throw "null pointer dereference")._fields = ((@:checkr _tinfo ?? throw "null pointer dereference")._fields.__append__((_newf : stdgo._internal.encoding.xml.Xml_T_fieldInfo.T_fieldInfo)?.__copy__()));
                    return (null : stdgo.Error);
                    _gotoNext = 3723671i32;
                } else if (__value__ == (3723671i32)) {
                    if ((0i32 : stdgo.GoInt) < (_conflicts_3722568.length)) {
                        _gotoNext = 3723767i32;
                    } else {
                        _gotoNext = 3723845i32;
                    };
                } else if (__value__ == (3723675i32)) {
                    _i_3723683_0++;
                    _gotoNext = 3723768i32;
                } else if (__value__ == (3723699i32)) {
                    _i_3723678 = _conflicts_3722568[(_i_3723683_0 : stdgo.GoInt)];
                    if ((((@:checkr _tinfo ?? throw "null pointer dereference")._fields[(_i_3723678 : stdgo.GoInt)]._idx.length) < ((@:checkr _newf ?? throw "null pointer dereference")._idx.length) : Bool)) {
                        _gotoNext = 3723747i32;
                    } else {
                        _gotoNext = 3723675i32;
                    };
                } else if (__value__ == (3723747i32)) {
                    return (null : stdgo.Error);
                    _gotoNext = 3723675i32;
                } else if (__value__ == (3723767i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _conflicts_3722568[(0i32 : stdgo.GoInt)];
                        _i_3723683_0 = __tmp__0;
                        _i_3723678 = __tmp__1;
                    };
                    _gotoNext = 3723768i32;
                } else if (__value__ == (3723768i32)) {
                    if (_i_3723683_0 < (_conflicts_3722568.length)) {
                        _gotoNext = 3723699i32;
                    } else {
                        _gotoNext = 3723845i32;
                    };
                } else if (__value__ == (3723845i32)) {
                    if ((0i32 : stdgo.GoInt) < (_conflicts_3722568.length)) {
                        _gotoNext = 3724101i32;
                    } else {
                        _gotoNext = 3724246i32;
                    };
                } else if (__value__ == (3723849i32)) {
                    _i_3723857_0++;
                    _gotoNext = 3724102i32;
                } else if (__value__ == (3723873i32)) {
                    _i_3723852 = _conflicts_3722568[(_i_3723857_0 : stdgo.GoInt)];
                    _oldf_3723877 = (stdgo.Go.setRef((@:checkr _tinfo ?? throw "null pointer dereference")._fields[(_i_3723852 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_fieldInfo.T_fieldInfo>);
                    if (((@:checkr _oldf_3723877 ?? throw "null pointer dereference")._idx.length) == (((@:checkr _newf ?? throw "null pointer dereference")._idx.length))) {
                        _gotoNext = 3723938i32;
                    } else {
                        _gotoNext = 3723849i32;
                    };
                } else if (__value__ == (3723938i32)) {
                    _f1_3723943 = _typ.fieldByIndex((@:checkr _oldf_3723877 ?? throw "null pointer dereference")._idx)?.__copy__();
                    _f2_3723979 = _typ.fieldByIndex((@:checkr _newf ?? throw "null pointer dereference")._idx)?.__copy__();
                    return stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.encoding.xml.Xml_TagPathError.TagPathError(_typ, _f1_3723943.name?.__copy__(), _f1_3723943.tag.get(("xml" : stdgo.GoString))?.__copy__(), _f2_3723979.name?.__copy__(), _f2_3723979.tag.get(("xml" : stdgo.GoString))?.__copy__()) : stdgo._internal.encoding.xml.Xml_TagPathError.TagPathError)) : stdgo.Ref<stdgo._internal.encoding.xml.Xml_TagPathError.TagPathError>));
                    _gotoNext = 3723849i32;
                } else if (__value__ == (3724101i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _conflicts_3722568[(0i32 : stdgo.GoInt)];
                        _i_3723857_0 = __tmp__0;
                        _i_3723852 = __tmp__1;
                    };
                    _gotoNext = 3724102i32;
                } else if (__value__ == (3724102i32)) {
                    if (_i_3723857_0 < (_conflicts_3722568.length)) {
                        _gotoNext = 3723873i32;
                    } else {
                        _gotoNext = 3724246i32;
                    };
                } else if (__value__ == (3724246i32)) {
                    _c_3724250 = ((_conflicts_3722568.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
                    _gotoNext = 3724246i32;
                    if ((_c_3724250 >= (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3724287i32;
                    } else {
                        _gotoNext = 3724410i32;
                    };
                } else if (__value__ == (3724287i32)) {
                    _i_3724291 = _conflicts_3722568[(_c_3724250 : stdgo.GoInt)];
                    ((@:checkr _tinfo ?? throw "null pointer dereference")._fields.__slice__(_i_3724291) : stdgo.Slice<stdgo._internal.encoding.xml.Xml_T_fieldInfo.T_fieldInfo>).__copyTo__(((@:checkr _tinfo ?? throw "null pointer dereference")._fields.__slice__((_i_3724291 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.encoding.xml.Xml_T_fieldInfo.T_fieldInfo>));
                    (@:checkr _tinfo ?? throw "null pointer dereference")._fields = ((@:checkr _tinfo ?? throw "null pointer dereference")._fields.__slice__(0, (((@:checkr _tinfo ?? throw "null pointer dereference")._fields.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.encoding.xml.Xml_T_fieldInfo.T_fieldInfo>);
                    _c_3724250--;
                    _gotoNext = 3724246i32;
                } else if (__value__ == (3724410i32)) {
                    (@:checkr _tinfo ?? throw "null pointer dereference")._fields = ((@:checkr _tinfo ?? throw "null pointer dereference")._fields.__append__((_newf : stdgo._internal.encoding.xml.Xml_T_fieldInfo.T_fieldInfo)?.__copy__()));
                    return (null : stdgo.Error);
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
