package stdgo._internal.encoding.xml;
function _addFieldInfo(_typ:stdgo._internal.reflect.Reflect_Type_.Type_, _tinfo:stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_typeInfo.T_typeInfo>, _newf:stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_fieldInfo.T_fieldInfo>):stdgo.Error {
        var _f1_3707813:stdgo._internal.reflect.Reflect_StructField.StructField = ({} : stdgo._internal.reflect.Reflect_StructField.StructField);
        var _i_3707553_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _c_3708120:stdgo.GoInt = (0 : stdgo.GoInt);
        var _f2_3707849:stdgo._internal.reflect.Reflect_StructField.StructField = ({} : stdgo._internal.reflect.Reflect_StructField.StructField);
        var _oldf_3707747:stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_fieldInfo.T_fieldInfo> = (null : stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_fieldInfo.T_fieldInfo>);
        var _oldf_3706560:stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_fieldInfo.T_fieldInfo> = (null : stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_fieldInfo.T_fieldInfo>);
        var _i_3708161:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_3707727_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_3707548:stdgo.GoInt = (0 : stdgo.GoInt);
        var _minl_3706735:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_3706532:stdgo.GoInt = (0 : stdgo.GoInt);
        var _conflicts_3706438:stdgo.Slice<stdgo.GoInt> = (null : stdgo.Slice<stdgo.GoInt>);
        var _i_3707722:stdgo.GoInt = (0 : stdgo.GoInt);
        var _p_3706791:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 3706454i32;
                } else if (__value__ == (3706454i32)) {
                    if ((0i32 : stdgo.GoInt) < (_tinfo._fields.length)) {
                        _gotoNext = 3707288i32;
                    } else {
                        _gotoNext = 3707345i32;
                    };
                } else if (__value__ == (3706532i32)) {
                    _i_3706532++;
                    _gotoNext = 3707289i32;
                } else if (__value__ == (3706556i32)) {
                    _oldf_3706560 = (stdgo.Go.setRef(_tinfo._fields[(_i_3706532 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_fieldInfo.T_fieldInfo>);
                    if ((_oldf_3706560._flags & (127 : stdgo._internal.encoding.xml.Xml_T_fieldFlags.T_fieldFlags) : stdgo._internal.encoding.xml.Xml_T_fieldFlags.T_fieldFlags) != ((_newf._flags & (127 : stdgo._internal.encoding.xml.Xml_T_fieldFlags.T_fieldFlags) : stdgo._internal.encoding.xml.Xml_T_fieldFlags.T_fieldFlags))) {
                        _gotoNext = 3706627i32;
                    } else {
                        _gotoNext = 3706647i32;
                    };
                } else if (__value__ == (3706627i32)) {
                    _i_3706532++;
                    _gotoNext = 3707289i32;
                } else if (__value__ == (3706647i32)) {
                    if (((_oldf_3706560._xmlns != (stdgo.Go.str()) && _newf._xmlns != (stdgo.Go.str()) : Bool) && (_oldf_3706560._xmlns != _newf._xmlns) : Bool)) {
                        _gotoNext = 3706715i32;
                    } else {
                        _gotoNext = 3706735i32;
                    };
                } else if (__value__ == (3706715i32)) {
                    _i_3706532++;
                    _gotoNext = 3707289i32;
                } else if (__value__ == (3706735i32)) {
                    _minl_3706735 = stdgo._internal.encoding.xml.Xml__min._min((_newf._parents.length), (_oldf_3706560._parents.length));
                    _p_3706791 = (0 : stdgo.GoInt);
                    _gotoNext = 3706787i32;
                } else if (__value__ == (3706787i32)) {
                    if ((_p_3706791 < _minl_3706735 : Bool)) {
                        _gotoNext = 3706813i32;
                    } else {
                        _gotoNext = 3706887i32;
                    };
                } else if (__value__ == (3706809i32)) {
                    _p_3706791++;
                    _gotoNext = 3706787i32;
                } else if (__value__ == (3706813i32)) {
                    if (_oldf_3706560._parents[(_p_3706791 : stdgo.GoInt)] != (_newf._parents[(_p_3706791 : stdgo.GoInt)])) {
                        _gotoNext = 3706856i32;
                    } else {
                        _gotoNext = 3706809i32;
                    };
                } else if (__value__ == (3706856i32)) {
                    _i_3706532++;
                    _gotoNext = 3707289i32;
                } else if (__value__ == (3706887i32)) {
                    if (((_oldf_3706560._parents.length) > (_newf._parents.length) : Bool)) {
                        _gotoNext = 3706928i32;
                    } else if (((_oldf_3706560._parents.length) < (_newf._parents.length) : Bool)) {
                        _gotoNext = 3707075i32;
                    } else {
                        _gotoNext = 3707181i32;
                    };
                } else if (__value__ == (3706928i32)) {
                    if (_oldf_3706560._parents[(_newf._parents.length : stdgo.GoInt)] == (_newf._name)) {
                        _gotoNext = 3706981i32;
                    } else {
                        _gotoNext = 3706532i32;
                    };
                } else if (__value__ == (3706981i32)) {
                    _conflicts_3706438 = (_conflicts_3706438.__append__(_i_3706532));
                    _gotoNext = 3706532i32;
                } else if (__value__ == (3707075i32)) {
                    if (_newf._parents[(_oldf_3706560._parents.length : stdgo.GoInt)] == (_oldf_3706560._name)) {
                        _gotoNext = 3707128i32;
                    } else {
                        _gotoNext = 3706532i32;
                    };
                } else if (__value__ == (3707128i32)) {
                    _conflicts_3706438 = (_conflicts_3706438.__append__(_i_3706532));
                    _gotoNext = 3706532i32;
                } else if (__value__ == (3707181i32)) {
                    if (((_newf._name == _oldf_3706560._name) && (_newf._xmlns == _oldf_3706560._xmlns) : Bool)) {
                        _gotoNext = 3707240i32;
                    } else {
                        _gotoNext = 3706532i32;
                    };
                } else if (__value__ == (3707240i32)) {
                    _conflicts_3706438 = (_conflicts_3706438.__append__(_i_3706532));
                    _gotoNext = 3706532i32;
                } else if (__value__ == (3707288i32)) {
                    _i_3706532 = 0i32;
                    _gotoNext = 3707289i32;
                } else if (__value__ == (3707289i32)) {
                    if (_i_3706532 < (_tinfo._fields.length)) {
                        _gotoNext = 3706556i32;
                    } else {
                        _gotoNext = 3707345i32;
                    };
                } else if (__value__ == (3707345i32)) {
                    if (_conflicts_3706438 == null) {
                        _gotoNext = 3707365i32;
                    } else {
                        _gotoNext = 3707541i32;
                    };
                } else if (__value__ == (3707365i32)) {
                    _tinfo._fields = (_tinfo._fields.__append__((_newf : stdgo._internal.encoding.xml.Xml_T_fieldInfo.T_fieldInfo)?.__copy__()));
                    return (null : stdgo.Error);
                    _gotoNext = 3707541i32;
                } else if (__value__ == (3707541i32)) {
                    if ((0i32 : stdgo.GoInt) < (_conflicts_3706438.length)) {
                        _gotoNext = 3707637i32;
                    } else {
                        _gotoNext = 3707715i32;
                    };
                } else if (__value__ == (3707545i32)) {
                    _i_3707553_0++;
                    _gotoNext = 3707638i32;
                } else if (__value__ == (3707569i32)) {
                    _i_3707548 = _conflicts_3706438[(_i_3707553_0 : stdgo.GoInt)];
                    if (((_tinfo._fields[(_i_3707548 : stdgo.GoInt)]._idx.length) < (_newf._idx.length) : Bool)) {
                        _gotoNext = 3707617i32;
                    } else {
                        _gotoNext = 3707545i32;
                    };
                } else if (__value__ == (3707617i32)) {
                    return (null : stdgo.Error);
                    _gotoNext = 3707545i32;
                } else if (__value__ == (3707637i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _conflicts_3706438[(0i32 : stdgo.GoInt)];
                        _i_3707553_0 = __tmp__0;
                        _i_3707548 = __tmp__1;
                    };
                    _gotoNext = 3707638i32;
                } else if (__value__ == (3707638i32)) {
                    if (_i_3707553_0 < (_conflicts_3706438.length)) {
                        _gotoNext = 3707569i32;
                    } else {
                        _gotoNext = 3707715i32;
                    };
                } else if (__value__ == (3707715i32)) {
                    if ((0i32 : stdgo.GoInt) < (_conflicts_3706438.length)) {
                        _gotoNext = 3707971i32;
                    } else {
                        _gotoNext = 3708116i32;
                    };
                } else if (__value__ == (3707719i32)) {
                    _i_3707727_0++;
                    _gotoNext = 3707972i32;
                } else if (__value__ == (3707743i32)) {
                    _i_3707722 = _conflicts_3706438[(_i_3707727_0 : stdgo.GoInt)];
                    _oldf_3707747 = (stdgo.Go.setRef(_tinfo._fields[(_i_3707722 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_fieldInfo.T_fieldInfo>);
                    if ((_oldf_3707747._idx.length) == ((_newf._idx.length))) {
                        _gotoNext = 3707808i32;
                    } else {
                        _gotoNext = 3707719i32;
                    };
                } else if (__value__ == (3707808i32)) {
                    _f1_3707813 = _typ.fieldByIndex(_oldf_3707747._idx)?.__copy__();
                    _f2_3707849 = _typ.fieldByIndex(_newf._idx)?.__copy__();
                    return stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.encoding.xml.Xml_TagPathError.TagPathError(_typ, _f1_3707813.name?.__copy__(), _f1_3707813.tag.get(("xml" : stdgo.GoString))?.__copy__(), _f2_3707849.name?.__copy__(), _f2_3707849.tag.get(("xml" : stdgo.GoString))?.__copy__()) : stdgo._internal.encoding.xml.Xml_TagPathError.TagPathError)) : stdgo.Ref<stdgo._internal.encoding.xml.Xml_TagPathError.TagPathError>));
                    _gotoNext = 3707719i32;
                } else if (__value__ == (3707971i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _conflicts_3706438[(0i32 : stdgo.GoInt)];
                        _i_3707727_0 = __tmp__0;
                        _i_3707722 = __tmp__1;
                    };
                    _gotoNext = 3707972i32;
                } else if (__value__ == (3707972i32)) {
                    if (_i_3707727_0 < (_conflicts_3706438.length)) {
                        _gotoNext = 3707743i32;
                    } else {
                        _gotoNext = 3708116i32;
                    };
                } else if (__value__ == (3708116i32)) {
                    _c_3708120 = ((_conflicts_3706438.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
                    _gotoNext = 3708116i32;
                    if ((_c_3708120 >= (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3708157i32;
                    } else {
                        _gotoNext = 3708280i32;
                    };
                } else if (__value__ == (3708157i32)) {
                    _i_3708161 = _conflicts_3706438[(_c_3708120 : stdgo.GoInt)];
                    stdgo.Go.copySlice((_tinfo._fields.__slice__(_i_3708161) : stdgo.Slice<stdgo._internal.encoding.xml.Xml_T_fieldInfo.T_fieldInfo>), (_tinfo._fields.__slice__((_i_3708161 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.encoding.xml.Xml_T_fieldInfo.T_fieldInfo>));
                    _tinfo._fields = (_tinfo._fields.__slice__(0, ((_tinfo._fields.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.encoding.xml.Xml_T_fieldInfo.T_fieldInfo>);
                    _c_3708120--;
                    _gotoNext = 3708116i32;
                } else if (__value__ == (3708280i32)) {
                    _tinfo._fields = (_tinfo._fields.__append__((_newf : stdgo._internal.encoding.xml.Xml_T_fieldInfo.T_fieldInfo)?.__copy__()));
                    return (null : stdgo.Error);
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
