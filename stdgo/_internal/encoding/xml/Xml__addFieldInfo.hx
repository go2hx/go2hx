package stdgo._internal.encoding.xml;
function _addFieldInfo(_typ:stdgo._internal.reflect.Reflect_Type_.Type_, _tinfo:stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_typeInfo.T_typeInfo>, _newf:stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_fieldInfo.T_fieldInfo>):stdgo.Error {
        var _oldf_3684789:stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_fieldInfo.T_fieldInfo> = (null : stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_fieldInfo.T_fieldInfo>);
        var _i_3684590:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_3684595_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _oldf_3683602:stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_fieldInfo.T_fieldInfo> = (null : stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_fieldInfo.T_fieldInfo>);
        var _i_3683574:stdgo.GoInt = (0 : stdgo.GoInt);
        var _f1_3684855:stdgo._internal.reflect.Reflect_StructField.StructField = ({} : stdgo._internal.reflect.Reflect_StructField.StructField);
        var _p_3683833:stdgo.GoInt = (0 : stdgo.GoInt);
        var _minl_3683777:stdgo.GoInt = (0 : stdgo.GoInt);
        var _c_3685162:stdgo.GoInt = (0 : stdgo.GoInt);
        var _conflicts_3683480:stdgo.Slice<stdgo.GoInt> = (null : stdgo.Slice<stdgo.GoInt>);
        var _i_3685203:stdgo.GoInt = (0 : stdgo.GoInt);
        var _f2_3684891:stdgo._internal.reflect.Reflect_StructField.StructField = ({} : stdgo._internal.reflect.Reflect_StructField.StructField);
        var _i_3684764:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_3684769_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 3683496i32;
                } else if (__value__ == (3683496i32)) {
                    if ((0i32 : stdgo.GoInt) < (_tinfo._fields.length)) {
                        _gotoNext = 3684330i32;
                    } else {
                        _gotoNext = 3684387i32;
                    };
                } else if (__value__ == (3683574i32)) {
                    _i_3683574++;
                    _gotoNext = 3684331i32;
                } else if (__value__ == (3683598i32)) {
                    _oldf_3683602 = (stdgo.Go.setRef(_tinfo._fields[(_i_3683574 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_fieldInfo.T_fieldInfo>);
                    if ((_oldf_3683602._flags & (127 : stdgo._internal.encoding.xml.Xml_T_fieldFlags.T_fieldFlags) : stdgo._internal.encoding.xml.Xml_T_fieldFlags.T_fieldFlags) != ((_newf._flags & (127 : stdgo._internal.encoding.xml.Xml_T_fieldFlags.T_fieldFlags) : stdgo._internal.encoding.xml.Xml_T_fieldFlags.T_fieldFlags))) {
                        _gotoNext = 3683669i32;
                    } else {
                        _gotoNext = 3683689i32;
                    };
                } else if (__value__ == (3683669i32)) {
                    _i_3683574++;
                    _gotoNext = 3684331i32;
                } else if (__value__ == (3683689i32)) {
                    if (((_oldf_3683602._xmlns != (stdgo.Go.str()) && _newf._xmlns != (stdgo.Go.str()) : Bool) && (_oldf_3683602._xmlns != _newf._xmlns) : Bool)) {
                        _gotoNext = 3683757i32;
                    } else {
                        _gotoNext = 3683777i32;
                    };
                } else if (__value__ == (3683757i32)) {
                    _i_3683574++;
                    _gotoNext = 3684331i32;
                } else if (__value__ == (3683777i32)) {
                    _minl_3683777 = stdgo._internal.encoding.xml.Xml__min._min((_newf._parents.length), (_oldf_3683602._parents.length));
                    _p_3683833 = (0 : stdgo.GoInt);
                    _gotoNext = 3683829i32;
                } else if (__value__ == (3683829i32)) {
                    if ((_p_3683833 < _minl_3683777 : Bool)) {
                        _gotoNext = 3683855i32;
                    } else {
                        _gotoNext = 3683929i32;
                    };
                } else if (__value__ == (3683851i32)) {
                    _p_3683833++;
                    _gotoNext = 3683829i32;
                } else if (__value__ == (3683855i32)) {
                    if (_oldf_3683602._parents[(_p_3683833 : stdgo.GoInt)] != (_newf._parents[(_p_3683833 : stdgo.GoInt)])) {
                        _gotoNext = 3683898i32;
                    } else {
                        _gotoNext = 3683851i32;
                    };
                } else if (__value__ == (3683898i32)) {
                    _i_3683574++;
                    _gotoNext = 3684331i32;
                } else if (__value__ == (3683929i32)) {
                    if (((_oldf_3683602._parents.length) > (_newf._parents.length) : Bool)) {
                        _gotoNext = 3683970i32;
                    } else if (((_oldf_3683602._parents.length) < (_newf._parents.length) : Bool)) {
                        _gotoNext = 3684117i32;
                    } else {
                        _gotoNext = 3684223i32;
                    };
                } else if (__value__ == (3683970i32)) {
                    if (_oldf_3683602._parents[(_newf._parents.length : stdgo.GoInt)] == (_newf._name)) {
                        _gotoNext = 3684023i32;
                    } else {
                        _gotoNext = 3683574i32;
                    };
                } else if (__value__ == (3684023i32)) {
                    _conflicts_3683480 = (_conflicts_3683480.__append__(_i_3683574));
                    _gotoNext = 3683574i32;
                } else if (__value__ == (3684117i32)) {
                    if (_newf._parents[(_oldf_3683602._parents.length : stdgo.GoInt)] == (_oldf_3683602._name)) {
                        _gotoNext = 3684170i32;
                    } else {
                        _gotoNext = 3683574i32;
                    };
                } else if (__value__ == (3684170i32)) {
                    _conflicts_3683480 = (_conflicts_3683480.__append__(_i_3683574));
                    _gotoNext = 3683574i32;
                } else if (__value__ == (3684223i32)) {
                    _gotoNext = 3684223i32;
                    if (((_newf._name == _oldf_3683602._name) && (_newf._xmlns == _oldf_3683602._xmlns) : Bool)) {
                        _gotoNext = 3684282i32;
                    } else {
                        _gotoNext = 3683574i32;
                    };
                } else if (__value__ == (3684282i32)) {
                    _conflicts_3683480 = (_conflicts_3683480.__append__(_i_3683574));
                    _gotoNext = 3683574i32;
                } else if (__value__ == (3684330i32)) {
                    _i_3683574 = 0i32;
                    _gotoNext = 3684331i32;
                } else if (__value__ == (3684331i32)) {
                    if (_i_3683574 < (_tinfo._fields.length)) {
                        _gotoNext = 3683598i32;
                    } else {
                        _gotoNext = 3684387i32;
                    };
                } else if (__value__ == (3684387i32)) {
                    if (_conflicts_3683480 == null) {
                        _gotoNext = 3684407i32;
                    } else {
                        _gotoNext = 3684583i32;
                    };
                } else if (__value__ == (3684407i32)) {
                    _tinfo._fields = (_tinfo._fields.__append__((_newf : stdgo._internal.encoding.xml.Xml_T_fieldInfo.T_fieldInfo)?.__copy__()));
                    return (null : stdgo.Error);
                    _gotoNext = 3684583i32;
                } else if (__value__ == (3684583i32)) {
                    if ((0i32 : stdgo.GoInt) < (_conflicts_3683480.length)) {
                        _gotoNext = 3684679i32;
                    } else {
                        _gotoNext = 3684757i32;
                    };
                } else if (__value__ == (3684587i32)) {
                    _i_3684595_0++;
                    _gotoNext = 3684680i32;
                } else if (__value__ == (3684611i32)) {
                    _i_3684590 = _conflicts_3683480[(_i_3684595_0 : stdgo.GoInt)];
                    if (((_tinfo._fields[(_i_3684590 : stdgo.GoInt)]._idx.length) < (_newf._idx.length) : Bool)) {
                        _gotoNext = 3684659i32;
                    } else {
                        _gotoNext = 3684587i32;
                    };
                } else if (__value__ == (3684659i32)) {
                    return (null : stdgo.Error);
                    _gotoNext = 3684587i32;
                } else if (__value__ == (3684679i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _conflicts_3683480[(0i32 : stdgo.GoInt)];
                        _i_3684595_0 = __tmp__0;
                        _i_3684590 = __tmp__1;
                    };
                    _gotoNext = 3684680i32;
                } else if (__value__ == (3684680i32)) {
                    if (_i_3684595_0 < (_conflicts_3683480.length)) {
                        _gotoNext = 3684611i32;
                    } else {
                        _gotoNext = 3684757i32;
                    };
                } else if (__value__ == (3684757i32)) {
                    if ((0i32 : stdgo.GoInt) < (_conflicts_3683480.length)) {
                        _gotoNext = 3685013i32;
                    } else {
                        _gotoNext = 3685158i32;
                    };
                } else if (__value__ == (3684761i32)) {
                    _i_3684769_0++;
                    _gotoNext = 3685014i32;
                } else if (__value__ == (3684785i32)) {
                    _i_3684764 = _conflicts_3683480[(_i_3684769_0 : stdgo.GoInt)];
                    _oldf_3684789 = (stdgo.Go.setRef(_tinfo._fields[(_i_3684764 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_fieldInfo.T_fieldInfo>);
                    if ((_oldf_3684789._idx.length) == ((_newf._idx.length))) {
                        _gotoNext = 3684850i32;
                    } else {
                        _gotoNext = 3684761i32;
                    };
                } else if (__value__ == (3684850i32)) {
                    _f1_3684855 = _typ.fieldByIndex(_oldf_3684789._idx)?.__copy__();
                    _f2_3684891 = _typ.fieldByIndex(_newf._idx)?.__copy__();
                    return stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.encoding.xml.Xml_TagPathError.TagPathError(_typ, _f1_3684855.name?.__copy__(), _f1_3684855.tag.get(("xml" : stdgo.GoString))?.__copy__(), _f2_3684891.name?.__copy__(), _f2_3684891.tag.get(("xml" : stdgo.GoString))?.__copy__()) : stdgo._internal.encoding.xml.Xml_TagPathError.TagPathError)) : stdgo.Ref<stdgo._internal.encoding.xml.Xml_TagPathError.TagPathError>));
                    _gotoNext = 3684761i32;
                } else if (__value__ == (3685013i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _conflicts_3683480[(0i32 : stdgo.GoInt)];
                        _i_3684769_0 = __tmp__0;
                        _i_3684764 = __tmp__1;
                    };
                    _gotoNext = 3685014i32;
                } else if (__value__ == (3685014i32)) {
                    if (_i_3684769_0 < (_conflicts_3683480.length)) {
                        _gotoNext = 3684785i32;
                    } else {
                        _gotoNext = 3685158i32;
                    };
                } else if (__value__ == (3685158i32)) {
                    _c_3685162 = ((_conflicts_3683480.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
                    _gotoNext = 3685158i32;
                    if ((_c_3685162 >= (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3685199i32;
                    } else {
                        _gotoNext = 3685322i32;
                    };
                } else if (__value__ == (3685199i32)) {
                    _i_3685203 = _conflicts_3683480[(_c_3685162 : stdgo.GoInt)];
                    (_tinfo._fields.__slice__(_i_3685203) : stdgo.Slice<stdgo._internal.encoding.xml.Xml_T_fieldInfo.T_fieldInfo>).__copyTo__((_tinfo._fields.__slice__((_i_3685203 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.encoding.xml.Xml_T_fieldInfo.T_fieldInfo>));
                    _tinfo._fields = (_tinfo._fields.__slice__(0, ((_tinfo._fields.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.encoding.xml.Xml_T_fieldInfo.T_fieldInfo>);
                    _c_3685162--;
                    _gotoNext = 3685158i32;
                } else if (__value__ == (3685322i32)) {
                    _tinfo._fields = (_tinfo._fields.__append__((_newf : stdgo._internal.encoding.xml.Xml_T_fieldInfo.T_fieldInfo)?.__copy__()));
                    return (null : stdgo.Error);
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
