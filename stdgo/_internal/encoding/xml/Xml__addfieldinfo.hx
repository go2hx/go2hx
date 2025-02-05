package stdgo._internal.encoding.xml;
function _addFieldInfo(_typ:stdgo._internal.reflect.Reflect_type_.Type_, _tinfo:stdgo.Ref<stdgo._internal.encoding.xml.Xml_t_typeinfo.T_typeInfo>, _newf:stdgo.Ref<stdgo._internal.encoding.xml.Xml_t_fieldinfo.T_fieldInfo>):stdgo.Error {
        var _f2_3756030:stdgo._internal.reflect.Reflect_structfield.StructField = ({} : stdgo._internal.reflect.Reflect_structfield.StructField);
        var _i_3755908_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_3755729:stdgo.GoInt = (0 : stdgo.GoInt);
        var _minl_3754916:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_3754713:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_3756342:stdgo.GoInt = (0 : stdgo.GoInt);
        var _c_3756301:stdgo.GoInt = (0 : stdgo.GoInt);
        var _f1_3755994:stdgo._internal.reflect.Reflect_structfield.StructField = ({} : stdgo._internal.reflect.Reflect_structfield.StructField);
        var _oldf_3755928:stdgo.Ref<stdgo._internal.encoding.xml.Xml_t_fieldinfo.T_fieldInfo> = (null : stdgo.Ref<stdgo._internal.encoding.xml.Xml_t_fieldinfo.T_fieldInfo>);
        var _i_3755903:stdgo.GoInt = (0 : stdgo.GoInt);
        var _conflicts_3754619:stdgo.Slice<stdgo.GoInt> = (null : stdgo.Slice<stdgo.GoInt>);
        var _i_3755734_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _p_3754972:stdgo.GoInt = (0 : stdgo.GoInt);
        var _oldf_3754741:stdgo.Ref<stdgo._internal.encoding.xml.Xml_t_fieldinfo.T_fieldInfo> = (null : stdgo.Ref<stdgo._internal.encoding.xml.Xml_t_fieldinfo.T_fieldInfo>);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 3754635i32;
                } else if (__value__ == (3754635i32)) {
                    if ((0i32 : stdgo.GoInt) < ((@:checkr _tinfo ?? throw "null pointer dereference")._fields.length)) {
                        _gotoNext = 3755469i32;
                    } else {
                        _gotoNext = 3755526i32;
                    };
                } else if (__value__ == (3754713i32)) {
                    _i_3754713++;
                    _gotoNext = 3755470i32;
                } else if (__value__ == (3754737i32)) {
                    _oldf_3754741 = (stdgo.Go.setRef((@:checkr _tinfo ?? throw "null pointer dereference")._fields[(_i_3754713 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.encoding.xml.Xml_t_fieldinfo.T_fieldInfo>);
                    if (((@:checkr _oldf_3754741 ?? throw "null pointer dereference")._flags & (127 : stdgo._internal.encoding.xml.Xml_t_fieldflags.T_fieldFlags) : stdgo._internal.encoding.xml.Xml_t_fieldflags.T_fieldFlags) != (((@:checkr _newf ?? throw "null pointer dereference")._flags & (127 : stdgo._internal.encoding.xml.Xml_t_fieldflags.T_fieldFlags) : stdgo._internal.encoding.xml.Xml_t_fieldflags.T_fieldFlags))) {
                        _gotoNext = 3754808i32;
                    } else {
                        _gotoNext = 3754828i32;
                    };
                } else if (__value__ == (3754808i32)) {
                    _i_3754713++;
                    _gotoNext = 3755470i32;
                } else if (__value__ == (3754828i32)) {
                    if ((((@:checkr _oldf_3754741 ?? throw "null pointer dereference")._xmlns != ((stdgo.Go.str() : stdgo.GoString)) && (@:checkr _newf ?? throw "null pointer dereference")._xmlns != ((stdgo.Go.str() : stdgo.GoString)) : Bool) && ((@:checkr _oldf_3754741 ?? throw "null pointer dereference")._xmlns != (@:checkr _newf ?? throw "null pointer dereference")._xmlns) : Bool)) {
                        _gotoNext = 3754896i32;
                    } else {
                        _gotoNext = 3754916i32;
                    };
                } else if (__value__ == (3754896i32)) {
                    _i_3754713++;
                    _gotoNext = 3755470i32;
                } else if (__value__ == (3754916i32)) {
                    _minl_3754916 = stdgo._internal.encoding.xml.Xml__min._min(((@:checkr _newf ?? throw "null pointer dereference")._parents.length), ((@:checkr _oldf_3754741 ?? throw "null pointer dereference")._parents.length));
                    _p_3754972 = (0 : stdgo.GoInt);
                    _gotoNext = 3754968i32;
                } else if (__value__ == (3754968i32)) {
                    if ((_p_3754972 < _minl_3754916 : Bool)) {
                        _gotoNext = 3754994i32;
                    } else {
                        _gotoNext = 3755068i32;
                    };
                } else if (__value__ == (3754990i32)) {
                    _p_3754972++;
                    _gotoNext = 3754968i32;
                } else if (__value__ == (3754994i32)) {
                    if ((@:checkr _oldf_3754741 ?? throw "null pointer dereference")._parents[(_p_3754972 : stdgo.GoInt)] != ((@:checkr _newf ?? throw "null pointer dereference")._parents[(_p_3754972 : stdgo.GoInt)])) {
                        _gotoNext = 3755037i32;
                    } else {
                        _gotoNext = 3754990i32;
                    };
                } else if (__value__ == (3755037i32)) {
                    _i_3754713++;
                    _gotoNext = 3755470i32;
                } else if (__value__ == (3755068i32)) {
                    if ((((@:checkr _oldf_3754741 ?? throw "null pointer dereference")._parents.length) > ((@:checkr _newf ?? throw "null pointer dereference")._parents.length) : Bool)) {
                        _gotoNext = 3755109i32;
                    } else if ((((@:checkr _oldf_3754741 ?? throw "null pointer dereference")._parents.length) < ((@:checkr _newf ?? throw "null pointer dereference")._parents.length) : Bool)) {
                        _gotoNext = 3755256i32;
                    } else {
                        _gotoNext = 3755362i32;
                    };
                } else if (__value__ == (3755109i32)) {
                    if ((@:checkr _oldf_3754741 ?? throw "null pointer dereference")._parents[((@:checkr _newf ?? throw "null pointer dereference")._parents.length : stdgo.GoInt)] == ((@:checkr _newf ?? throw "null pointer dereference")._name)) {
                        _gotoNext = 3755162i32;
                    } else {
                        _gotoNext = 3754713i32;
                    };
                } else if (__value__ == (3755162i32)) {
                    _conflicts_3754619 = (_conflicts_3754619.__append__(_i_3754713));
                    _gotoNext = 3754713i32;
                } else if (__value__ == (3755256i32)) {
                    if ((@:checkr _newf ?? throw "null pointer dereference")._parents[((@:checkr _oldf_3754741 ?? throw "null pointer dereference")._parents.length : stdgo.GoInt)] == ((@:checkr _oldf_3754741 ?? throw "null pointer dereference")._name)) {
                        _gotoNext = 3755309i32;
                    } else {
                        _gotoNext = 3754713i32;
                    };
                } else if (__value__ == (3755309i32)) {
                    _conflicts_3754619 = (_conflicts_3754619.__append__(_i_3754713));
                    _gotoNext = 3754713i32;
                } else if (__value__ == (3755362i32)) {
                    _gotoNext = 3755362i32;
                    if ((((@:checkr _newf ?? throw "null pointer dereference")._name == (@:checkr _oldf_3754741 ?? throw "null pointer dereference")._name) && ((@:checkr _newf ?? throw "null pointer dereference")._xmlns == (@:checkr _oldf_3754741 ?? throw "null pointer dereference")._xmlns) : Bool)) {
                        _gotoNext = 3755421i32;
                    } else {
                        _gotoNext = 3754713i32;
                    };
                } else if (__value__ == (3755421i32)) {
                    _conflicts_3754619 = (_conflicts_3754619.__append__(_i_3754713));
                    _gotoNext = 3754713i32;
                } else if (__value__ == (3755469i32)) {
                    _i_3754713 = 0i32;
                    _gotoNext = 3755470i32;
                } else if (__value__ == (3755470i32)) {
                    if (_i_3754713 < ((@:checkr _tinfo ?? throw "null pointer dereference")._fields.length)) {
                        _gotoNext = 3754737i32;
                    } else {
                        _gotoNext = 3755526i32;
                    };
                } else if (__value__ == (3755526i32)) {
                    if (_conflicts_3754619 == null) {
                        _gotoNext = 3755546i32;
                    } else {
                        _gotoNext = 3755722i32;
                    };
                } else if (__value__ == (3755546i32)) {
                    (@:checkr _tinfo ?? throw "null pointer dereference")._fields = ((@:checkr _tinfo ?? throw "null pointer dereference")._fields.__append__((_newf : stdgo._internal.encoding.xml.Xml_t_fieldinfo.T_fieldInfo)?.__copy__()));
                    return (null : stdgo.Error);
                    _gotoNext = 3755722i32;
                } else if (__value__ == (3755722i32)) {
                    if ((0i32 : stdgo.GoInt) < (_conflicts_3754619.length)) {
                        _gotoNext = 3755818i32;
                    } else {
                        _gotoNext = 3755896i32;
                    };
                } else if (__value__ == (3755726i32)) {
                    _i_3755734_0++;
                    _gotoNext = 3755819i32;
                } else if (__value__ == (3755750i32)) {
                    _i_3755729 = _conflicts_3754619[(_i_3755734_0 : stdgo.GoInt)];
                    if ((((@:checkr _tinfo ?? throw "null pointer dereference")._fields[(_i_3755729 : stdgo.GoInt)]._idx.length) < ((@:checkr _newf ?? throw "null pointer dereference")._idx.length) : Bool)) {
                        _gotoNext = 3755798i32;
                    } else {
                        _gotoNext = 3755726i32;
                    };
                } else if (__value__ == (3755798i32)) {
                    return (null : stdgo.Error);
                    _gotoNext = 3755726i32;
                } else if (__value__ == (3755818i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _conflicts_3754619[(0i32 : stdgo.GoInt)];
                        _i_3755734_0 = __tmp__0;
                        _i_3755729 = __tmp__1;
                    };
                    _gotoNext = 3755819i32;
                } else if (__value__ == (3755819i32)) {
                    if (_i_3755734_0 < (_conflicts_3754619.length)) {
                        _gotoNext = 3755750i32;
                    } else {
                        _gotoNext = 3755896i32;
                    };
                } else if (__value__ == (3755896i32)) {
                    if ((0i32 : stdgo.GoInt) < (_conflicts_3754619.length)) {
                        _gotoNext = 3756152i32;
                    } else {
                        _gotoNext = 3756297i32;
                    };
                } else if (__value__ == (3755900i32)) {
                    _i_3755908_0++;
                    _gotoNext = 3756153i32;
                } else if (__value__ == (3755924i32)) {
                    _i_3755903 = _conflicts_3754619[(_i_3755908_0 : stdgo.GoInt)];
                    _oldf_3755928 = (stdgo.Go.setRef((@:checkr _tinfo ?? throw "null pointer dereference")._fields[(_i_3755903 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.encoding.xml.Xml_t_fieldinfo.T_fieldInfo>);
                    if (((@:checkr _oldf_3755928 ?? throw "null pointer dereference")._idx.length) == (((@:checkr _newf ?? throw "null pointer dereference")._idx.length))) {
                        _gotoNext = 3755989i32;
                    } else {
                        _gotoNext = 3755900i32;
                    };
                } else if (__value__ == (3755989i32)) {
                    _f1_3755994 = _typ.fieldByIndex((@:checkr _oldf_3755928 ?? throw "null pointer dereference")._idx)?.__copy__();
                    _f2_3756030 = _typ.fieldByIndex((@:checkr _newf ?? throw "null pointer dereference")._idx)?.__copy__();
                    return stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.encoding.xml.Xml_tagpatherror.TagPathError(_typ, _f1_3755994.name?.__copy__(), _f1_3755994.tag.get(("xml" : stdgo.GoString))?.__copy__(), _f2_3756030.name?.__copy__(), _f2_3756030.tag.get(("xml" : stdgo.GoString))?.__copy__()) : stdgo._internal.encoding.xml.Xml_tagpatherror.TagPathError)) : stdgo.Ref<stdgo._internal.encoding.xml.Xml_tagpatherror.TagPathError>));
                    _gotoNext = 3755900i32;
                } else if (__value__ == (3756152i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _conflicts_3754619[(0i32 : stdgo.GoInt)];
                        _i_3755908_0 = __tmp__0;
                        _i_3755903 = __tmp__1;
                    };
                    _gotoNext = 3756153i32;
                } else if (__value__ == (3756153i32)) {
                    if (_i_3755908_0 < (_conflicts_3754619.length)) {
                        _gotoNext = 3755924i32;
                    } else {
                        _gotoNext = 3756297i32;
                    };
                } else if (__value__ == (3756297i32)) {
                    _c_3756301 = ((_conflicts_3754619.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
                    _gotoNext = 3756297i32;
                    if ((_c_3756301 >= (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3756338i32;
                    } else {
                        _gotoNext = 3756461i32;
                    };
                } else if (__value__ == (3756338i32)) {
                    _i_3756342 = _conflicts_3754619[(_c_3756301 : stdgo.GoInt)];
                    ((@:checkr _tinfo ?? throw "null pointer dereference")._fields.__slice__(_i_3756342) : stdgo.Slice<stdgo._internal.encoding.xml.Xml_t_fieldinfo.T_fieldInfo>).__copyTo__(((@:checkr _tinfo ?? throw "null pointer dereference")._fields.__slice__((_i_3756342 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.encoding.xml.Xml_t_fieldinfo.T_fieldInfo>));
                    (@:checkr _tinfo ?? throw "null pointer dereference")._fields = ((@:checkr _tinfo ?? throw "null pointer dereference")._fields.__slice__(0, (((@:checkr _tinfo ?? throw "null pointer dereference")._fields.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.encoding.xml.Xml_t_fieldinfo.T_fieldInfo>);
                    _c_3756301--;
                    _gotoNext = 3756297i32;
                } else if (__value__ == (3756461i32)) {
                    (@:checkr _tinfo ?? throw "null pointer dereference")._fields = ((@:checkr _tinfo ?? throw "null pointer dereference")._fields.__append__((_newf : stdgo._internal.encoding.xml.Xml_t_fieldinfo.T_fieldInfo)?.__copy__()));
                    return (null : stdgo.Error);
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
