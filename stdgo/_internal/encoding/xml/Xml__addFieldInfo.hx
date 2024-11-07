package stdgo._internal.encoding.xml;
function _addFieldInfo(_typ:stdgo._internal.reflect.Reflect_Type_.Type_, _tinfo:stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_typeInfo.T_typeInfo>, _newf:stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_fieldInfo.T_fieldInfo>):stdgo.Error {
        var _minl_3674684:stdgo.GoInt = (0 : stdgo.GoInt);
        var _c_3676069:stdgo.GoInt = (0 : stdgo.GoInt);
        var _conflicts_3674387:stdgo.Slice<stdgo.GoInt> = (null : stdgo.Slice<stdgo.GoInt>);
        var _i_3676110:stdgo.GoInt = (0 : stdgo.GoInt);
        var _f2_3675798:stdgo._internal.reflect.Reflect_StructField.StructField = ({} : stdgo._internal.reflect.Reflect_StructField.StructField);
        var _i_3675671:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_3675676_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _p_3674740:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_3674481:stdgo.GoInt = (0 : stdgo.GoInt);
        var _f1_3675762:stdgo._internal.reflect.Reflect_StructField.StructField = ({} : stdgo._internal.reflect.Reflect_StructField.StructField);
        var _oldf_3675696:stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_fieldInfo.T_fieldInfo> = (null : stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_fieldInfo.T_fieldInfo>);
        var _i_3675497:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_3675502_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _oldf_3674509:stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_fieldInfo.T_fieldInfo> = (null : stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_fieldInfo.T_fieldInfo>);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 3674403i32;
                } else if (__value__ == (3674403i32)) {
                    if ((0i32 : stdgo.GoInt) < (_tinfo._fields.length)) {
                        _gotoNext = 3675237i32;
                    } else {
                        _gotoNext = 3675294i32;
                    };
                } else if (__value__ == (3674481i32)) {
                    _i_3674481++;
                    _gotoNext = 3675238i32;
                } else if (__value__ == (3674505i32)) {
                    _oldf_3674509 = (stdgo.Go.setRef(_tinfo._fields[(_i_3674481 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_fieldInfo.T_fieldInfo>);
                    if ((_oldf_3674509._flags & (127 : stdgo._internal.encoding.xml.Xml_T_fieldFlags.T_fieldFlags) : stdgo._internal.encoding.xml.Xml_T_fieldFlags.T_fieldFlags) != ((_newf._flags & (127 : stdgo._internal.encoding.xml.Xml_T_fieldFlags.T_fieldFlags) : stdgo._internal.encoding.xml.Xml_T_fieldFlags.T_fieldFlags))) {
                        _gotoNext = 3674576i32;
                    } else {
                        _gotoNext = 3674596i32;
                    };
                } else if (__value__ == (3674576i32)) {
                    _i_3674481++;
                    _gotoNext = 3675238i32;
                } else if (__value__ == (3674596i32)) {
                    if (((_oldf_3674509._xmlns != (stdgo.Go.str()) && _newf._xmlns != (stdgo.Go.str()) : Bool) && (_oldf_3674509._xmlns != _newf._xmlns) : Bool)) {
                        _gotoNext = 3674664i32;
                    } else {
                        _gotoNext = 3674684i32;
                    };
                } else if (__value__ == (3674664i32)) {
                    _i_3674481++;
                    _gotoNext = 3675238i32;
                } else if (__value__ == (3674684i32)) {
                    _minl_3674684 = stdgo._internal.encoding.xml.Xml__min._min((_newf._parents.length), (_oldf_3674509._parents.length));
                    _p_3674740 = (0 : stdgo.GoInt);
                    _gotoNext = 3674736i32;
                } else if (__value__ == (3674736i32)) {
                    if ((_p_3674740 < _minl_3674684 : Bool)) {
                        _gotoNext = 3674762i32;
                    } else {
                        _gotoNext = 3674836i32;
                    };
                } else if (__value__ == (3674758i32)) {
                    _p_3674740++;
                    _gotoNext = 3674736i32;
                } else if (__value__ == (3674762i32)) {
                    if (_oldf_3674509._parents[(_p_3674740 : stdgo.GoInt)] != (_newf._parents[(_p_3674740 : stdgo.GoInt)])) {
                        _gotoNext = 3674805i32;
                    } else {
                        _gotoNext = 3674758i32;
                    };
                } else if (__value__ == (3674805i32)) {
                    _i_3674481++;
                    _gotoNext = 3675238i32;
                } else if (__value__ == (3674836i32)) {
                    if (((_oldf_3674509._parents.length) > (_newf._parents.length) : Bool)) {
                        _gotoNext = 3674877i32;
                    } else if (((_oldf_3674509._parents.length) < (_newf._parents.length) : Bool)) {
                        _gotoNext = 3675024i32;
                    } else {
                        _gotoNext = 3675130i32;
                    };
                } else if (__value__ == (3674877i32)) {
                    if (_oldf_3674509._parents[(_newf._parents.length : stdgo.GoInt)] == (_newf._name)) {
                        _gotoNext = 3674930i32;
                    } else {
                        _gotoNext = 3674481i32;
                    };
                } else if (__value__ == (3674930i32)) {
                    _conflicts_3674387 = (_conflicts_3674387.__append__(_i_3674481));
                    _gotoNext = 3674481i32;
                } else if (__value__ == (3675024i32)) {
                    if (_newf._parents[(_oldf_3674509._parents.length : stdgo.GoInt)] == (_oldf_3674509._name)) {
                        _gotoNext = 3675077i32;
                    } else {
                        _gotoNext = 3674481i32;
                    };
                } else if (__value__ == (3675077i32)) {
                    _conflicts_3674387 = (_conflicts_3674387.__append__(_i_3674481));
                    _gotoNext = 3674481i32;
                } else if (__value__ == (3675130i32)) {
                    if (((_newf._name == _oldf_3674509._name) && (_newf._xmlns == _oldf_3674509._xmlns) : Bool)) {
                        _gotoNext = 3675189i32;
                    } else {
                        _gotoNext = 3674481i32;
                    };
                } else if (__value__ == (3675189i32)) {
                    _conflicts_3674387 = (_conflicts_3674387.__append__(_i_3674481));
                    _gotoNext = 3674481i32;
                } else if (__value__ == (3675237i32)) {
                    _i_3674481 = 0i32;
                    _gotoNext = 3675238i32;
                } else if (__value__ == (3675238i32)) {
                    if (_i_3674481 < (_tinfo._fields.length)) {
                        _gotoNext = 3674505i32;
                    } else {
                        _gotoNext = 3675294i32;
                    };
                } else if (__value__ == (3675294i32)) {
                    if (_conflicts_3674387 == null) {
                        _gotoNext = 3675314i32;
                    } else {
                        _gotoNext = 3675490i32;
                    };
                } else if (__value__ == (3675314i32)) {
                    _tinfo._fields = (_tinfo._fields.__append__((_newf : stdgo._internal.encoding.xml.Xml_T_fieldInfo.T_fieldInfo)?.__copy__()));
                    return (null : stdgo.Error);
                    _gotoNext = 3675490i32;
                } else if (__value__ == (3675490i32)) {
                    if ((0i32 : stdgo.GoInt) < (_conflicts_3674387.length)) {
                        _gotoNext = 3675586i32;
                    } else {
                        _gotoNext = 3675664i32;
                    };
                } else if (__value__ == (3675494i32)) {
                    _i_3675502_0++;
                    _gotoNext = 3675587i32;
                } else if (__value__ == (3675518i32)) {
                    _i_3675497 = _conflicts_3674387[(_i_3675502_0 : stdgo.GoInt)];
                    if (((_tinfo._fields[(_i_3675497 : stdgo.GoInt)]._idx.length) < (_newf._idx.length) : Bool)) {
                        _gotoNext = 3675566i32;
                    } else {
                        _gotoNext = 3675494i32;
                    };
                } else if (__value__ == (3675566i32)) {
                    return (null : stdgo.Error);
                    _gotoNext = 3675494i32;
                } else if (__value__ == (3675586i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _conflicts_3674387[(0i32 : stdgo.GoInt)];
                        _i_3675502_0 = __tmp__0;
                        _i_3675497 = __tmp__1;
                    };
                    _gotoNext = 3675587i32;
                } else if (__value__ == (3675587i32)) {
                    if (_i_3675502_0 < (_conflicts_3674387.length)) {
                        _gotoNext = 3675518i32;
                    } else {
                        _gotoNext = 3675664i32;
                    };
                } else if (__value__ == (3675664i32)) {
                    if ((0i32 : stdgo.GoInt) < (_conflicts_3674387.length)) {
                        _gotoNext = 3675920i32;
                    } else {
                        _gotoNext = 3676065i32;
                    };
                } else if (__value__ == (3675668i32)) {
                    _i_3675676_0++;
                    _gotoNext = 3675921i32;
                } else if (__value__ == (3675692i32)) {
                    _i_3675671 = _conflicts_3674387[(_i_3675676_0 : stdgo.GoInt)];
                    _oldf_3675696 = (stdgo.Go.setRef(_tinfo._fields[(_i_3675671 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_fieldInfo.T_fieldInfo>);
                    if ((_oldf_3675696._idx.length) == ((_newf._idx.length))) {
                        _gotoNext = 3675757i32;
                    } else {
                        _gotoNext = 3675668i32;
                    };
                } else if (__value__ == (3675757i32)) {
                    _f1_3675762 = _typ.fieldByIndex(_oldf_3675696._idx)?.__copy__();
                    _f2_3675798 = _typ.fieldByIndex(_newf._idx)?.__copy__();
                    return stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.encoding.xml.Xml_TagPathError.TagPathError(_typ, _f1_3675762.name?.__copy__(), _f1_3675762.tag.get(("xml" : stdgo.GoString))?.__copy__(), _f2_3675798.name?.__copy__(), _f2_3675798.tag.get(("xml" : stdgo.GoString))?.__copy__()) : stdgo._internal.encoding.xml.Xml_TagPathError.TagPathError)) : stdgo.Ref<stdgo._internal.encoding.xml.Xml_TagPathError.TagPathError>));
                    _gotoNext = 3675668i32;
                } else if (__value__ == (3675920i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _conflicts_3674387[(0i32 : stdgo.GoInt)];
                        _i_3675676_0 = __tmp__0;
                        _i_3675671 = __tmp__1;
                    };
                    _gotoNext = 3675921i32;
                } else if (__value__ == (3675921i32)) {
                    if (_i_3675676_0 < (_conflicts_3674387.length)) {
                        _gotoNext = 3675692i32;
                    } else {
                        _gotoNext = 3676065i32;
                    };
                } else if (__value__ == (3676065i32)) {
                    _c_3676069 = ((_conflicts_3674387.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
                    _gotoNext = 3676065i32;
                    if ((_c_3676069 >= (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3676106i32;
                    } else {
                        _gotoNext = 3676229i32;
                    };
                } else if (__value__ == (3676106i32)) {
                    _i_3676110 = _conflicts_3674387[(_c_3676069 : stdgo.GoInt)];
                    stdgo.Go.copySlice((_tinfo._fields.__slice__(_i_3676110) : stdgo.Slice<stdgo._internal.encoding.xml.Xml_T_fieldInfo.T_fieldInfo>), (_tinfo._fields.__slice__((_i_3676110 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.encoding.xml.Xml_T_fieldInfo.T_fieldInfo>));
                    _tinfo._fields = (_tinfo._fields.__slice__(0, ((_tinfo._fields.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.encoding.xml.Xml_T_fieldInfo.T_fieldInfo>);
                    _c_3676069--;
                    _gotoNext = 3676065i32;
                } else if (__value__ == (3676229i32)) {
                    _tinfo._fields = (_tinfo._fields.__append__((_newf : stdgo._internal.encoding.xml.Xml_T_fieldInfo.T_fieldInfo)?.__copy__()));
                    return (null : stdgo.Error);
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
