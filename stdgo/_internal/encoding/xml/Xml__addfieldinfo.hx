package stdgo._internal.encoding.xml;
function _addFieldInfo(_typ:stdgo._internal.reflect.Reflect_type_.Type_, _tinfo:stdgo.Ref<stdgo._internal.encoding.xml.Xml_t_typeinfo.T_typeInfo>, _newf:stdgo.Ref<stdgo._internal.encoding.xml.Xml_t_fieldinfo.T_fieldInfo>):stdgo.Error {
        var _f2_3733072:stdgo._internal.reflect.Reflect_structfield.StructField = ({} : stdgo._internal.reflect.Reflect_structfield.StructField);
        var _p_3732014:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_3731755:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_3733384:stdgo.GoInt = (0 : stdgo.GoInt);
        var _oldf_3732970:stdgo.Ref<stdgo._internal.encoding.xml.Xml_t_fieldinfo.T_fieldInfo> = (null : stdgo.Ref<stdgo._internal.encoding.xml.Xml_t_fieldinfo.T_fieldInfo>);
        var _i_3732776_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _oldf_3731783:stdgo.Ref<stdgo._internal.encoding.xml.Xml_t_fieldinfo.T_fieldInfo> = (null : stdgo.Ref<stdgo._internal.encoding.xml.Xml_t_fieldinfo.T_fieldInfo>);
        var _c_3733343:stdgo.GoInt = (0 : stdgo.GoInt);
        var _f1_3733036:stdgo._internal.reflect.Reflect_structfield.StructField = ({} : stdgo._internal.reflect.Reflect_structfield.StructField);
        var _i_3732945:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_3732950_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_3732771:stdgo.GoInt = (0 : stdgo.GoInt);
        var _minl_3731958:stdgo.GoInt = (0 : stdgo.GoInt);
        var _conflicts_3731661:stdgo.Slice<stdgo.GoInt> = (null : stdgo.Slice<stdgo.GoInt>);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 3731677i32;
                } else if (__value__ == (3731677i32)) {
                    if ((0i32 : stdgo.GoInt) < ((@:checkr _tinfo ?? throw "null pointer dereference")._fields.length)) {
                        _gotoNext = 3732511i32;
                    } else {
                        _gotoNext = 3732568i32;
                    };
                } else if (__value__ == (3731755i32)) {
                    _i_3731755++;
                    _gotoNext = 3732512i32;
                } else if (__value__ == (3731779i32)) {
                    _oldf_3731783 = (stdgo.Go.setRef((@:checkr _tinfo ?? throw "null pointer dereference")._fields[(_i_3731755 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.encoding.xml.Xml_t_fieldinfo.T_fieldInfo>);
                    if (((@:checkr _oldf_3731783 ?? throw "null pointer dereference")._flags & (127 : stdgo._internal.encoding.xml.Xml_t_fieldflags.T_fieldFlags) : stdgo._internal.encoding.xml.Xml_t_fieldflags.T_fieldFlags) != (((@:checkr _newf ?? throw "null pointer dereference")._flags & (127 : stdgo._internal.encoding.xml.Xml_t_fieldflags.T_fieldFlags) : stdgo._internal.encoding.xml.Xml_t_fieldflags.T_fieldFlags))) {
                        _gotoNext = 3731850i32;
                    } else {
                        _gotoNext = 3731870i32;
                    };
                } else if (__value__ == (3731850i32)) {
                    _i_3731755++;
                    _gotoNext = 3732512i32;
                } else if (__value__ == (3731870i32)) {
                    if ((((@:checkr _oldf_3731783 ?? throw "null pointer dereference")._xmlns != ((stdgo.Go.str() : stdgo.GoString)) && (@:checkr _newf ?? throw "null pointer dereference")._xmlns != ((stdgo.Go.str() : stdgo.GoString)) : Bool) && ((@:checkr _oldf_3731783 ?? throw "null pointer dereference")._xmlns != (@:checkr _newf ?? throw "null pointer dereference")._xmlns) : Bool)) {
                        _gotoNext = 3731938i32;
                    } else {
                        _gotoNext = 3731958i32;
                    };
                } else if (__value__ == (3731938i32)) {
                    _i_3731755++;
                    _gotoNext = 3732512i32;
                } else if (__value__ == (3731958i32)) {
                    _minl_3731958 = stdgo._internal.encoding.xml.Xml__min._min(((@:checkr _newf ?? throw "null pointer dereference")._parents.length), ((@:checkr _oldf_3731783 ?? throw "null pointer dereference")._parents.length));
                    _p_3732014 = (0 : stdgo.GoInt);
                    _gotoNext = 3732010i32;
                } else if (__value__ == (3732010i32)) {
                    if ((_p_3732014 < _minl_3731958 : Bool)) {
                        _gotoNext = 3732036i32;
                    } else {
                        _gotoNext = 3732110i32;
                    };
                } else if (__value__ == (3732032i32)) {
                    _p_3732014++;
                    _gotoNext = 3732010i32;
                } else if (__value__ == (3732036i32)) {
                    if ((@:checkr _oldf_3731783 ?? throw "null pointer dereference")._parents[(_p_3732014 : stdgo.GoInt)] != ((@:checkr _newf ?? throw "null pointer dereference")._parents[(_p_3732014 : stdgo.GoInt)])) {
                        _gotoNext = 3732079i32;
                    } else {
                        _gotoNext = 3732032i32;
                    };
                } else if (__value__ == (3732079i32)) {
                    _i_3731755++;
                    _gotoNext = 3732512i32;
                } else if (__value__ == (3732110i32)) {
                    if ((((@:checkr _oldf_3731783 ?? throw "null pointer dereference")._parents.length) > ((@:checkr _newf ?? throw "null pointer dereference")._parents.length) : Bool)) {
                        _gotoNext = 3732151i32;
                    } else if ((((@:checkr _oldf_3731783 ?? throw "null pointer dereference")._parents.length) < ((@:checkr _newf ?? throw "null pointer dereference")._parents.length) : Bool)) {
                        _gotoNext = 3732298i32;
                    } else {
                        _gotoNext = 3732404i32;
                    };
                } else if (__value__ == (3732151i32)) {
                    if ((@:checkr _oldf_3731783 ?? throw "null pointer dereference")._parents[((@:checkr _newf ?? throw "null pointer dereference")._parents.length : stdgo.GoInt)] == ((@:checkr _newf ?? throw "null pointer dereference")._name)) {
                        _gotoNext = 3732204i32;
                    } else {
                        _gotoNext = 3731755i32;
                    };
                } else if (__value__ == (3732204i32)) {
                    _conflicts_3731661 = (_conflicts_3731661.__append__(_i_3731755));
                    _gotoNext = 3731755i32;
                } else if (__value__ == (3732298i32)) {
                    if ((@:checkr _newf ?? throw "null pointer dereference")._parents[((@:checkr _oldf_3731783 ?? throw "null pointer dereference")._parents.length : stdgo.GoInt)] == ((@:checkr _oldf_3731783 ?? throw "null pointer dereference")._name)) {
                        _gotoNext = 3732351i32;
                    } else {
                        _gotoNext = 3731755i32;
                    };
                } else if (__value__ == (3732351i32)) {
                    _conflicts_3731661 = (_conflicts_3731661.__append__(_i_3731755));
                    _gotoNext = 3731755i32;
                } else if (__value__ == (3732404i32)) {
                    _gotoNext = 3732404i32;
                    if ((((@:checkr _newf ?? throw "null pointer dereference")._name == (@:checkr _oldf_3731783 ?? throw "null pointer dereference")._name) && ((@:checkr _newf ?? throw "null pointer dereference")._xmlns == (@:checkr _oldf_3731783 ?? throw "null pointer dereference")._xmlns) : Bool)) {
                        _gotoNext = 3732463i32;
                    } else {
                        _gotoNext = 3731755i32;
                    };
                } else if (__value__ == (3732463i32)) {
                    _conflicts_3731661 = (_conflicts_3731661.__append__(_i_3731755));
                    _gotoNext = 3731755i32;
                } else if (__value__ == (3732511i32)) {
                    _i_3731755 = 0i32;
                    _gotoNext = 3732512i32;
                } else if (__value__ == (3732512i32)) {
                    if (_i_3731755 < ((@:checkr _tinfo ?? throw "null pointer dereference")._fields.length)) {
                        _gotoNext = 3731779i32;
                    } else {
                        _gotoNext = 3732568i32;
                    };
                } else if (__value__ == (3732568i32)) {
                    if (_conflicts_3731661 == null) {
                        _gotoNext = 3732588i32;
                    } else {
                        _gotoNext = 3732764i32;
                    };
                } else if (__value__ == (3732588i32)) {
                    (@:checkr _tinfo ?? throw "null pointer dereference")._fields = ((@:checkr _tinfo ?? throw "null pointer dereference")._fields.__append__((_newf : stdgo._internal.encoding.xml.Xml_t_fieldinfo.T_fieldInfo)?.__copy__()));
                    return (null : stdgo.Error);
                    _gotoNext = 3732764i32;
                } else if (__value__ == (3732764i32)) {
                    if ((0i32 : stdgo.GoInt) < (_conflicts_3731661.length)) {
                        _gotoNext = 3732860i32;
                    } else {
                        _gotoNext = 3732938i32;
                    };
                } else if (__value__ == (3732768i32)) {
                    _i_3732776_0++;
                    _gotoNext = 3732861i32;
                } else if (__value__ == (3732792i32)) {
                    _i_3732771 = _conflicts_3731661[(_i_3732776_0 : stdgo.GoInt)];
                    if ((((@:checkr _tinfo ?? throw "null pointer dereference")._fields[(_i_3732771 : stdgo.GoInt)]._idx.length) < ((@:checkr _newf ?? throw "null pointer dereference")._idx.length) : Bool)) {
                        _gotoNext = 3732840i32;
                    } else {
                        _gotoNext = 3732768i32;
                    };
                } else if (__value__ == (3732840i32)) {
                    return (null : stdgo.Error);
                    _gotoNext = 3732768i32;
                } else if (__value__ == (3732860i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _conflicts_3731661[(0i32 : stdgo.GoInt)];
                        _i_3732776_0 = __tmp__0;
                        _i_3732771 = __tmp__1;
                    };
                    _gotoNext = 3732861i32;
                } else if (__value__ == (3732861i32)) {
                    if (_i_3732776_0 < (_conflicts_3731661.length)) {
                        _gotoNext = 3732792i32;
                    } else {
                        _gotoNext = 3732938i32;
                    };
                } else if (__value__ == (3732938i32)) {
                    if ((0i32 : stdgo.GoInt) < (_conflicts_3731661.length)) {
                        _gotoNext = 3733194i32;
                    } else {
                        _gotoNext = 3733339i32;
                    };
                } else if (__value__ == (3732942i32)) {
                    _i_3732950_0++;
                    _gotoNext = 3733195i32;
                } else if (__value__ == (3732966i32)) {
                    _i_3732945 = _conflicts_3731661[(_i_3732950_0 : stdgo.GoInt)];
                    _oldf_3732970 = (stdgo.Go.setRef((@:checkr _tinfo ?? throw "null pointer dereference")._fields[(_i_3732945 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.encoding.xml.Xml_t_fieldinfo.T_fieldInfo>);
                    if (((@:checkr _oldf_3732970 ?? throw "null pointer dereference")._idx.length) == (((@:checkr _newf ?? throw "null pointer dereference")._idx.length))) {
                        _gotoNext = 3733031i32;
                    } else {
                        _gotoNext = 3732942i32;
                    };
                } else if (__value__ == (3733031i32)) {
                    _f1_3733036 = _typ.fieldByIndex((@:checkr _oldf_3732970 ?? throw "null pointer dereference")._idx)?.__copy__();
                    _f2_3733072 = _typ.fieldByIndex((@:checkr _newf ?? throw "null pointer dereference")._idx)?.__copy__();
                    return stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.encoding.xml.Xml_tagpatherror.TagPathError(_typ, _f1_3733036.name?.__copy__(), _f1_3733036.tag.get(("xml" : stdgo.GoString))?.__copy__(), _f2_3733072.name?.__copy__(), _f2_3733072.tag.get(("xml" : stdgo.GoString))?.__copy__()) : stdgo._internal.encoding.xml.Xml_tagpatherror.TagPathError)) : stdgo.Ref<stdgo._internal.encoding.xml.Xml_tagpatherror.TagPathError>));
                    _gotoNext = 3732942i32;
                } else if (__value__ == (3733194i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _conflicts_3731661[(0i32 : stdgo.GoInt)];
                        _i_3732950_0 = __tmp__0;
                        _i_3732945 = __tmp__1;
                    };
                    _gotoNext = 3733195i32;
                } else if (__value__ == (3733195i32)) {
                    if (_i_3732950_0 < (_conflicts_3731661.length)) {
                        _gotoNext = 3732966i32;
                    } else {
                        _gotoNext = 3733339i32;
                    };
                } else if (__value__ == (3733339i32)) {
                    _c_3733343 = ((_conflicts_3731661.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
                    _gotoNext = 3733339i32;
                    if ((_c_3733343 >= (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3733380i32;
                    } else {
                        _gotoNext = 3733503i32;
                    };
                } else if (__value__ == (3733380i32)) {
                    _i_3733384 = _conflicts_3731661[(_c_3733343 : stdgo.GoInt)];
                    ((@:checkr _tinfo ?? throw "null pointer dereference")._fields.__slice__(_i_3733384) : stdgo.Slice<stdgo._internal.encoding.xml.Xml_t_fieldinfo.T_fieldInfo>).__copyTo__(((@:checkr _tinfo ?? throw "null pointer dereference")._fields.__slice__((_i_3733384 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.encoding.xml.Xml_t_fieldinfo.T_fieldInfo>));
                    (@:checkr _tinfo ?? throw "null pointer dereference")._fields = ((@:checkr _tinfo ?? throw "null pointer dereference")._fields.__slice__(0, (((@:checkr _tinfo ?? throw "null pointer dereference")._fields.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.encoding.xml.Xml_t_fieldinfo.T_fieldInfo>);
                    _c_3733343--;
                    _gotoNext = 3733339i32;
                } else if (__value__ == (3733503i32)) {
                    (@:checkr _tinfo ?? throw "null pointer dereference")._fields = ((@:checkr _tinfo ?? throw "null pointer dereference")._fields.__append__((_newf : stdgo._internal.encoding.xml.Xml_t_fieldinfo.T_fieldInfo)?.__copy__()));
                    return (null : stdgo.Error);
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
