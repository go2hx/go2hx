package stdgo._internal.encoding.xml;
function _addFieldInfo(_typ:stdgo._internal.reflect.Reflect_Type_.Type_, _tinfo:stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_typeInfo.T_typeInfo>, _newf:stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_fieldInfo.T_fieldInfo>):stdgo.Error {
        var _c_3756301:stdgo.GoInt = (0 : stdgo.GoInt);
        var _minl_3754916:stdgo.GoInt = (0 : stdgo.GoInt);
        var _f2_3756030:stdgo._internal.reflect.Reflect_StructField.StructField = ({} : stdgo._internal.reflect.Reflect_StructField.StructField);
        var _i_3755734_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_3756342:stdgo.GoInt = (0 : stdgo.GoInt);
        var _oldf_3755928:stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_fieldInfo.T_fieldInfo> = (null : stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_fieldInfo.T_fieldInfo>);
        var _i_3755729:stdgo.GoInt = (0 : stdgo.GoInt);
        var _oldf_3754741:stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_fieldInfo.T_fieldInfo> = (null : stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_fieldInfo.T_fieldInfo>);
        var _i_3754713:stdgo.GoInt = (0 : stdgo.GoInt);
        var _f1_3755994:stdgo._internal.reflect.Reflect_StructField.StructField = ({} : stdgo._internal.reflect.Reflect_StructField.StructField);
        var _i_3755903:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_3755908_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _p_3754972:stdgo.GoInt = (0 : stdgo.GoInt);
        var _conflicts_3754619:stdgo.Slice<stdgo.GoInt> = (null : stdgo.Slice<stdgo.GoInt>);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 3754635i32;
                } else if (__value__ == (3754635i32)) {
                    if ((0i32 : stdgo.GoInt) < (_tinfo._fields.length)) {
                        _gotoNext = 3755469i32;
                    } else {
                        _gotoNext = 3755526i32;
                    };
                } else if (__value__ == (3754713i32)) {
                    _i_3754713++;
                    _gotoNext = 3755470i32;
                } else if (__value__ == (3754737i32)) {
                    _oldf_3754741 = (stdgo.Go.setRef(_tinfo._fields[(_i_3754713 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_fieldInfo.T_fieldInfo>);
                    if ((_oldf_3754741._flags & (127 : stdgo._internal.encoding.xml.Xml_T_fieldFlags.T_fieldFlags) : stdgo._internal.encoding.xml.Xml_T_fieldFlags.T_fieldFlags) != ((_newf._flags & (127 : stdgo._internal.encoding.xml.Xml_T_fieldFlags.T_fieldFlags) : stdgo._internal.encoding.xml.Xml_T_fieldFlags.T_fieldFlags))) {
                        _gotoNext = 3754808i32;
                    } else {
                        _gotoNext = 3754828i32;
                    };
                } else if (__value__ == (3754808i32)) {
                    _i_3754713++;
                    _gotoNext = 3755470i32;
                } else if (__value__ == (3754828i32)) {
                    if (((_oldf_3754741._xmlns != (stdgo.Go.str()) && _newf._xmlns != (stdgo.Go.str()) : Bool) && (_oldf_3754741._xmlns != _newf._xmlns) : Bool)) {
                        _gotoNext = 3754896i32;
                    } else {
                        _gotoNext = 3754916i32;
                    };
                } else if (__value__ == (3754896i32)) {
                    _i_3754713++;
                    _gotoNext = 3755470i32;
                } else if (__value__ == (3754916i32)) {
                    _minl_3754916 = stdgo._internal.encoding.xml.Xml__min._min((_newf._parents.length), (_oldf_3754741._parents.length));
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
                    if (_oldf_3754741._parents[(_p_3754972 : stdgo.GoInt)] != (_newf._parents[(_p_3754972 : stdgo.GoInt)])) {
                        _gotoNext = 3755037i32;
                    } else {
                        _gotoNext = 3754990i32;
                    };
                } else if (__value__ == (3755037i32)) {
                    _i_3754713++;
                    _gotoNext = 3755470i32;
                } else if (__value__ == (3755068i32)) {
                    if (((_oldf_3754741._parents.length) > (_newf._parents.length) : Bool)) {
                        _gotoNext = 3755109i32;
                    } else if (((_oldf_3754741._parents.length) < (_newf._parents.length) : Bool)) {
                        _gotoNext = 3755256i32;
                    } else {
                        _gotoNext = 3755362i32;
                    };
                } else if (__value__ == (3755109i32)) {
                    if (_oldf_3754741._parents[(_newf._parents.length : stdgo.GoInt)] == (_newf._name)) {
                        _gotoNext = 3755162i32;
                    } else {
                        _gotoNext = 3754713i32;
                    };
                } else if (__value__ == (3755162i32)) {
                    _conflicts_3754619 = (_conflicts_3754619.__append__(_i_3754713));
                    _gotoNext = 3754713i32;
                } else if (__value__ == (3755256i32)) {
                    if (_newf._parents[(_oldf_3754741._parents.length : stdgo.GoInt)] == (_oldf_3754741._name)) {
                        _gotoNext = 3755309i32;
                    } else {
                        _gotoNext = 3754713i32;
                    };
                } else if (__value__ == (3755309i32)) {
                    _conflicts_3754619 = (_conflicts_3754619.__append__(_i_3754713));
                    _gotoNext = 3754713i32;
                } else if (__value__ == (3755362i32)) {
                    _gotoNext = 3755362i32;
                    if (((_newf._name == _oldf_3754741._name) && (_newf._xmlns == _oldf_3754741._xmlns) : Bool)) {
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
                    if (_i_3754713 < (_tinfo._fields.length)) {
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
                    _tinfo._fields = (_tinfo._fields.__append__((_newf : stdgo._internal.encoding.xml.Xml_T_fieldInfo.T_fieldInfo)?.__copy__()));
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
                    if (((_tinfo._fields[(_i_3755729 : stdgo.GoInt)]._idx.length) < (_newf._idx.length) : Bool)) {
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
                    _oldf_3755928 = (stdgo.Go.setRef(_tinfo._fields[(_i_3755903 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_fieldInfo.T_fieldInfo>);
                    if ((_oldf_3755928._idx.length) == ((_newf._idx.length))) {
                        _gotoNext = 3755989i32;
                    } else {
                        _gotoNext = 3755900i32;
                    };
                } else if (__value__ == (3755989i32)) {
                    _f1_3755994 = _typ.fieldByIndex(_oldf_3755928._idx)?.__copy__();
                    _f2_3756030 = _typ.fieldByIndex(_newf._idx)?.__copy__();
                    return stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.encoding.xml.Xml_TagPathError.TagPathError(_typ, _f1_3755994.name?.__copy__(), _f1_3755994.tag.get(("xml" : stdgo.GoString))?.__copy__(), _f2_3756030.name?.__copy__(), _f2_3756030.tag.get(("xml" : stdgo.GoString))?.__copy__()) : stdgo._internal.encoding.xml.Xml_TagPathError.TagPathError)) : stdgo.Ref<stdgo._internal.encoding.xml.Xml_TagPathError.TagPathError>));
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
                    stdgo.Go.copySlice((_tinfo._fields.__slice__(_i_3756342) : stdgo.Slice<stdgo._internal.encoding.xml.Xml_T_fieldInfo.T_fieldInfo>), (_tinfo._fields.__slice__((_i_3756342 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.encoding.xml.Xml_T_fieldInfo.T_fieldInfo>));
                    _tinfo._fields = (_tinfo._fields.__slice__(0, ((_tinfo._fields.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.encoding.xml.Xml_T_fieldInfo.T_fieldInfo>);
                    _c_3756301--;
                    _gotoNext = 3756297i32;
                } else if (__value__ == (3756461i32)) {
                    _tinfo._fields = (_tinfo._fields.__append__((_newf : stdgo._internal.encoding.xml.Xml_T_fieldInfo.T_fieldInfo)?.__copy__()));
                    return (null : stdgo.Error);
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
