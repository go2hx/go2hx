package stdgo._internal.encoding.xml;
function _addFieldInfo(_typ:stdgo._internal.reflect.Reflect_Type_.Type_, _tinfo:stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_typeInfo.T_typeInfo>, _newf:stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_fieldInfo.T_fieldInfo>):stdgo.Error {
        var _c_3653111:stdgo.GoInt = (0 : stdgo.GoInt);
        var _conflicts_3651429:stdgo.Slice<stdgo.GoInt> = (null : stdgo.Slice<stdgo.GoInt>);
        var _oldf_3652738:stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_fieldInfo.T_fieldInfo> = (null : stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_fieldInfo.T_fieldInfo>);
        var _i_3652713:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_3652718_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_3653152:stdgo.GoInt = (0 : stdgo.GoInt);
        var _f1_3652804:stdgo._internal.reflect.Reflect_StructField.StructField = ({} : stdgo._internal.reflect.Reflect_StructField.StructField);
        var _i_3652539:stdgo.GoInt = (0 : stdgo.GoInt);
        var _oldf_3651551:stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_fieldInfo.T_fieldInfo> = (null : stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_fieldInfo.T_fieldInfo>);
        var _i_3651523:stdgo.GoInt = (0 : stdgo.GoInt);
        var _f2_3652840:stdgo._internal.reflect.Reflect_StructField.StructField = ({} : stdgo._internal.reflect.Reflect_StructField.StructField);
        var _i_3652544_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _p_3651782:stdgo.GoInt = (0 : stdgo.GoInt);
        var _minl_3651726:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 3651445i32;
                } else if (__value__ == (3651445i32)) {
                    if ((0i32 : stdgo.GoInt) < ((@:checkr _tinfo ?? throw "null pointer dereference")._fields.length)) {
                        _gotoNext = 3652279i32;
                    } else {
                        _gotoNext = 3652336i32;
                    };
                } else if (__value__ == (3651523i32)) {
                    _i_3651523++;
                    _gotoNext = 3652280i32;
                } else if (__value__ == (3651547i32)) {
                    _oldf_3651551 = (stdgo.Go.setRef((@:checkr _tinfo ?? throw "null pointer dereference")._fields[(_i_3651523 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_fieldInfo.T_fieldInfo>);
                    if (((@:checkr _oldf_3651551 ?? throw "null pointer dereference")._flags & (127 : stdgo._internal.encoding.xml.Xml_T_fieldFlags.T_fieldFlags) : stdgo._internal.encoding.xml.Xml_T_fieldFlags.T_fieldFlags) != (((@:checkr _newf ?? throw "null pointer dereference")._flags & (127 : stdgo._internal.encoding.xml.Xml_T_fieldFlags.T_fieldFlags) : stdgo._internal.encoding.xml.Xml_T_fieldFlags.T_fieldFlags))) {
                        _gotoNext = 3651618i32;
                    } else {
                        _gotoNext = 3651638i32;
                    };
                } else if (__value__ == (3651618i32)) {
                    _i_3651523++;
                    _gotoNext = 3652280i32;
                } else if (__value__ == (3651638i32)) {
                    if ((((@:checkr _oldf_3651551 ?? throw "null pointer dereference")._xmlns != ((stdgo.Go.str() : stdgo.GoString)) && (@:checkr _newf ?? throw "null pointer dereference")._xmlns != ((stdgo.Go.str() : stdgo.GoString)) : Bool) && ((@:checkr _oldf_3651551 ?? throw "null pointer dereference")._xmlns != (@:checkr _newf ?? throw "null pointer dereference")._xmlns) : Bool)) {
                        _gotoNext = 3651706i32;
                    } else {
                        _gotoNext = 3651726i32;
                    };
                } else if (__value__ == (3651706i32)) {
                    _i_3651523++;
                    _gotoNext = 3652280i32;
                } else if (__value__ == (3651726i32)) {
                    _minl_3651726 = stdgo._internal.encoding.xml.Xml__min._min(((@:checkr _newf ?? throw "null pointer dereference")._parents.length), ((@:checkr _oldf_3651551 ?? throw "null pointer dereference")._parents.length));
                    _p_3651782 = (0 : stdgo.GoInt);
                    _gotoNext = 3651778i32;
                } else if (__value__ == (3651778i32)) {
                    if ((_p_3651782 < _minl_3651726 : Bool)) {
                        _gotoNext = 3651804i32;
                    } else {
                        _gotoNext = 3651878i32;
                    };
                } else if (__value__ == (3651800i32)) {
                    _p_3651782++;
                    _gotoNext = 3651778i32;
                } else if (__value__ == (3651804i32)) {
                    if ((@:checkr _oldf_3651551 ?? throw "null pointer dereference")._parents[(_p_3651782 : stdgo.GoInt)] != ((@:checkr _newf ?? throw "null pointer dereference")._parents[(_p_3651782 : stdgo.GoInt)])) {
                        _gotoNext = 3651847i32;
                    } else {
                        _gotoNext = 3651800i32;
                    };
                } else if (__value__ == (3651847i32)) {
                    _i_3651523++;
                    _gotoNext = 3652280i32;
                } else if (__value__ == (3651878i32)) {
                    if ((((@:checkr _oldf_3651551 ?? throw "null pointer dereference")._parents.length) > ((@:checkr _newf ?? throw "null pointer dereference")._parents.length) : Bool)) {
                        _gotoNext = 3651919i32;
                    } else if ((((@:checkr _oldf_3651551 ?? throw "null pointer dereference")._parents.length) < ((@:checkr _newf ?? throw "null pointer dereference")._parents.length) : Bool)) {
                        _gotoNext = 3652066i32;
                    } else {
                        _gotoNext = 3652172i32;
                    };
                } else if (__value__ == (3651919i32)) {
                    if ((@:checkr _oldf_3651551 ?? throw "null pointer dereference")._parents[((@:checkr _newf ?? throw "null pointer dereference")._parents.length : stdgo.GoInt)] == ((@:checkr _newf ?? throw "null pointer dereference")._name)) {
                        _gotoNext = 3651972i32;
                    } else {
                        _gotoNext = 3651523i32;
                    };
                } else if (__value__ == (3651972i32)) {
                    _conflicts_3651429 = (_conflicts_3651429.__append__(_i_3651523));
                    _gotoNext = 3651523i32;
                } else if (__value__ == (3652066i32)) {
                    if ((@:checkr _newf ?? throw "null pointer dereference")._parents[((@:checkr _oldf_3651551 ?? throw "null pointer dereference")._parents.length : stdgo.GoInt)] == ((@:checkr _oldf_3651551 ?? throw "null pointer dereference")._name)) {
                        _gotoNext = 3652119i32;
                    } else {
                        _gotoNext = 3651523i32;
                    };
                } else if (__value__ == (3652119i32)) {
                    _conflicts_3651429 = (_conflicts_3651429.__append__(_i_3651523));
                    _gotoNext = 3651523i32;
                } else if (__value__ == (3652172i32)) {
                    _gotoNext = 3652172i32;
                    if ((((@:checkr _newf ?? throw "null pointer dereference")._name == (@:checkr _oldf_3651551 ?? throw "null pointer dereference")._name) && ((@:checkr _newf ?? throw "null pointer dereference")._xmlns == (@:checkr _oldf_3651551 ?? throw "null pointer dereference")._xmlns) : Bool)) {
                        _gotoNext = 3652231i32;
                    } else {
                        _gotoNext = 3651523i32;
                    };
                } else if (__value__ == (3652231i32)) {
                    _conflicts_3651429 = (_conflicts_3651429.__append__(_i_3651523));
                    _gotoNext = 3651523i32;
                } else if (__value__ == (3652279i32)) {
                    _i_3651523 = 0i32;
                    _gotoNext = 3652280i32;
                } else if (__value__ == (3652280i32)) {
                    if (_i_3651523 < ((@:checkr _tinfo ?? throw "null pointer dereference")._fields.length)) {
                        _gotoNext = 3651547i32;
                    } else {
                        _gotoNext = 3652336i32;
                    };
                } else if (__value__ == (3652336i32)) {
                    if (_conflicts_3651429 == null) {
                        _gotoNext = 3652356i32;
                    } else {
                        _gotoNext = 3652532i32;
                    };
                } else if (__value__ == (3652356i32)) {
                    (@:checkr _tinfo ?? throw "null pointer dereference")._fields = ((@:checkr _tinfo ?? throw "null pointer dereference")._fields.__append__((_newf : stdgo._internal.encoding.xml.Xml_T_fieldInfo.T_fieldInfo)?.__copy__()));
                    return (null : stdgo.Error);
                    _gotoNext = 3652532i32;
                } else if (__value__ == (3652532i32)) {
                    if ((0i32 : stdgo.GoInt) < (_conflicts_3651429.length)) {
                        _gotoNext = 3652628i32;
                    } else {
                        _gotoNext = 3652706i32;
                    };
                } else if (__value__ == (3652536i32)) {
                    _i_3652544_0++;
                    _gotoNext = 3652629i32;
                } else if (__value__ == (3652560i32)) {
                    _i_3652539 = _conflicts_3651429[(_i_3652544_0 : stdgo.GoInt)];
                    if ((((@:checkr _tinfo ?? throw "null pointer dereference")._fields[(_i_3652539 : stdgo.GoInt)]._idx.length) < ((@:checkr _newf ?? throw "null pointer dereference")._idx.length) : Bool)) {
                        _gotoNext = 3652608i32;
                    } else {
                        _gotoNext = 3652536i32;
                    };
                } else if (__value__ == (3652608i32)) {
                    return (null : stdgo.Error);
                    _gotoNext = 3652536i32;
                } else if (__value__ == (3652628i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _conflicts_3651429[(0i32 : stdgo.GoInt)];
                        _i_3652544_0 = __tmp__0;
                        _i_3652539 = __tmp__1;
                    };
                    _gotoNext = 3652629i32;
                } else if (__value__ == (3652629i32)) {
                    if (_i_3652544_0 < (_conflicts_3651429.length)) {
                        _gotoNext = 3652560i32;
                    } else {
                        _gotoNext = 3652706i32;
                    };
                } else if (__value__ == (3652706i32)) {
                    if ((0i32 : stdgo.GoInt) < (_conflicts_3651429.length)) {
                        _gotoNext = 3652962i32;
                    } else {
                        _gotoNext = 3653107i32;
                    };
                } else if (__value__ == (3652710i32)) {
                    _i_3652718_0++;
                    _gotoNext = 3652963i32;
                } else if (__value__ == (3652734i32)) {
                    _i_3652713 = _conflicts_3651429[(_i_3652718_0 : stdgo.GoInt)];
                    _oldf_3652738 = (stdgo.Go.setRef((@:checkr _tinfo ?? throw "null pointer dereference")._fields[(_i_3652713 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_fieldInfo.T_fieldInfo>);
                    if (((@:checkr _oldf_3652738 ?? throw "null pointer dereference")._idx.length) == (((@:checkr _newf ?? throw "null pointer dereference")._idx.length))) {
                        _gotoNext = 3652799i32;
                    } else {
                        _gotoNext = 3652710i32;
                    };
                } else if (__value__ == (3652799i32)) {
                    _f1_3652804 = _typ.fieldByIndex((@:checkr _oldf_3652738 ?? throw "null pointer dereference")._idx)?.__copy__();
                    _f2_3652840 = _typ.fieldByIndex((@:checkr _newf ?? throw "null pointer dereference")._idx)?.__copy__();
                    return stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.encoding.xml.Xml_TagPathError.TagPathError(_typ, _f1_3652804.name?.__copy__(), _f1_3652804.tag.get(("xml" : stdgo.GoString))?.__copy__(), _f2_3652840.name?.__copy__(), _f2_3652840.tag.get(("xml" : stdgo.GoString))?.__copy__()) : stdgo._internal.encoding.xml.Xml_TagPathError.TagPathError)) : stdgo.Ref<stdgo._internal.encoding.xml.Xml_TagPathError.TagPathError>));
                    _gotoNext = 3652710i32;
                } else if (__value__ == (3652962i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _conflicts_3651429[(0i32 : stdgo.GoInt)];
                        _i_3652718_0 = __tmp__0;
                        _i_3652713 = __tmp__1;
                    };
                    _gotoNext = 3652963i32;
                } else if (__value__ == (3652963i32)) {
                    if (_i_3652718_0 < (_conflicts_3651429.length)) {
                        _gotoNext = 3652734i32;
                    } else {
                        _gotoNext = 3653107i32;
                    };
                } else if (__value__ == (3653107i32)) {
                    _c_3653111 = ((_conflicts_3651429.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
                    _gotoNext = 3653107i32;
                    if ((_c_3653111 >= (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3653148i32;
                    } else {
                        _gotoNext = 3653271i32;
                    };
                } else if (__value__ == (3653148i32)) {
                    _i_3653152 = _conflicts_3651429[(_c_3653111 : stdgo.GoInt)];
                    ((@:checkr _tinfo ?? throw "null pointer dereference")._fields.__slice__(_i_3653152) : stdgo.Slice<stdgo._internal.encoding.xml.Xml_T_fieldInfo.T_fieldInfo>).__copyTo__(((@:checkr _tinfo ?? throw "null pointer dereference")._fields.__slice__((_i_3653152 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.encoding.xml.Xml_T_fieldInfo.T_fieldInfo>));
                    (@:checkr _tinfo ?? throw "null pointer dereference")._fields = ((@:checkr _tinfo ?? throw "null pointer dereference")._fields.__slice__(0, (((@:checkr _tinfo ?? throw "null pointer dereference")._fields.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.encoding.xml.Xml_T_fieldInfo.T_fieldInfo>);
                    _c_3653111--;
                    _gotoNext = 3653107i32;
                } else if (__value__ == (3653271i32)) {
                    (@:checkr _tinfo ?? throw "null pointer dereference")._fields = ((@:checkr _tinfo ?? throw "null pointer dereference")._fields.__append__((_newf : stdgo._internal.encoding.xml.Xml_T_fieldInfo.T_fieldInfo)?.__copy__()));
                    return (null : stdgo.Error);
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
