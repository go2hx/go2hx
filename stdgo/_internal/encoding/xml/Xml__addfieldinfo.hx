package stdgo._internal.encoding.xml;
function _addFieldInfo(_typ:stdgo._internal.reflect.Reflect_type_.Type_, _tinfo:stdgo.Ref<stdgo._internal.encoding.xml.Xml_t_typeinfo.T_typeInfo>, _newf:stdgo.Ref<stdgo._internal.encoding.xml.Xml_t_fieldinfo.T_fieldInfo>):stdgo.Error {
        var _c_78:stdgo.GoInt = (0 : stdgo.GoInt);
        var _oldf_75:stdgo.Ref<stdgo._internal.encoding.xml.Xml_t_fieldinfo.T_fieldInfo> = (null : stdgo.Ref<stdgo._internal.encoding.xml.Xml_t_fieldinfo.T_fieldInfo>);
        var _i_74:stdgo.GoInt = (0 : stdgo.GoInt);
        var _p_70:stdgo.GoInt = (0 : stdgo.GoInt);
        var _f1_76:stdgo._internal.reflect.Reflect_structfield.StructField = ({} : stdgo._internal.reflect.Reflect_structfield.StructField);
        var _i_72:stdgo.GoInt = (0 : stdgo.GoInt);
        var _iterator_3707553_71:stdgo.GoInt = (0 : stdgo.GoInt);
        var _minl_69:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_79:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_67:stdgo.GoInt = (0 : stdgo.GoInt);
        var _f2_77:stdgo._internal.reflect.Reflect_structfield.StructField = ({} : stdgo._internal.reflect.Reflect_structfield.StructField);
        var _iterator_3707727_73:stdgo.GoInt = (0 : stdgo.GoInt);
        var _oldf_68:stdgo.Ref<stdgo._internal.encoding.xml.Xml_t_fieldinfo.T_fieldInfo> = (null : stdgo.Ref<stdgo._internal.encoding.xml.Xml_t_fieldinfo.T_fieldInfo>);
        var _conflicts_66:stdgo.Slice<stdgo.GoInt> = (null : stdgo.Slice<stdgo.GoInt>);
        var _gotoNext = 0i64;
        _gotoNext == ((0i64 : stdgo.GoInt));
        //"file://#L0"
        while (_gotoNext != ((-1i64 : stdgo.GoInt))) {
            //"file://#L0"
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i64)) {
                    _gotoNext = 3706454i64;
                } else if (__value__ == (3706454i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/typeinfo.go#L272"
                    if ((0i64 : stdgo.GoInt) < ((@:checkr _tinfo ?? throw "null pointer dereference")._fields.length)) {
                        _gotoNext = 3707288i64;
                    } else {
                        _gotoNext = 3707345i64;
                    };
                } else if (__value__ == (3706532i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/typeinfo.go#L272"
                    _i_67++;
                    _gotoNext = 3707289i64;
                } else if (__value__ == (3706556i64)) {
                    _oldf_68 = (stdgo.Go.setRef((@:checkr _tinfo ?? throw "null pointer dereference")._fields[(_i_67 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.encoding.xml.Xml_t_fieldinfo.T_fieldInfo>);
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/typeinfo.go#L274"
                    if (((@:checkr _oldf_68 ?? throw "null pointer dereference")._flags & (127 : stdgo._internal.encoding.xml.Xml_t_fieldflags.T_fieldFlags) : stdgo._internal.encoding.xml.Xml_t_fieldflags.T_fieldFlags) != (((@:checkr _newf ?? throw "null pointer dereference")._flags & (127 : stdgo._internal.encoding.xml.Xml_t_fieldflags.T_fieldFlags) : stdgo._internal.encoding.xml.Xml_t_fieldflags.T_fieldFlags))) {
                        _gotoNext = 3706627i64;
                    } else {
                        _gotoNext = 3706647i64;
                    };
                } else if (__value__ == (3706627i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/typeinfo.go#L272"
                    _i_67++;
                    _gotoNext = 3707289i64;
                } else if (__value__ == (3706647i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/typeinfo.go#L277"
                    if ((((@:checkr _oldf_68 ?? throw "null pointer dereference")._xmlns != ((stdgo.Go.str() : stdgo.GoString)) && (@:checkr _newf ?? throw "null pointer dereference")._xmlns != ((stdgo.Go.str() : stdgo.GoString)) : Bool) && ((@:checkr _oldf_68 ?? throw "null pointer dereference")._xmlns != (@:checkr _newf ?? throw "null pointer dereference")._xmlns) : Bool)) {
                        _gotoNext = 3706715i64;
                    } else {
                        _gotoNext = 3706735i64;
                    };
                } else if (__value__ == (3706715i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/typeinfo.go#L272"
                    _i_67++;
                    _gotoNext = 3707289i64;
                } else if (__value__ == (3706735i64)) {
                    _minl_69 = stdgo._internal.encoding.xml.Xml__min._min(((@:checkr _newf ?? throw "null pointer dereference")._parents.length), ((@:checkr _oldf_68 ?? throw "null pointer dereference")._parents.length));
                    _p_70 = (0 : stdgo.GoInt);
                    _gotoNext = 3706787i64;
                } else if (__value__ == (3706787i64)) {
                    //"file://#L0"
                    if ((_p_70 < _minl_69 : Bool)) {
                        _gotoNext = 3706813i64;
                    } else {
                        _gotoNext = 3706887i64;
                    };
                } else if (__value__ == (3706809i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/typeinfo.go#L281"
                    _p_70++;
                    _gotoNext = 3706787i64;
                } else if (__value__ == (3706813i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/typeinfo.go#L282"
                    if ((@:checkr _oldf_68 ?? throw "null pointer dereference")._parents[(_p_70 : stdgo.GoInt)] != ((@:checkr _newf ?? throw "null pointer dereference")._parents[(_p_70 : stdgo.GoInt)])) {
                        _gotoNext = 3706856i64;
                    } else {
                        _gotoNext = 3706809i64;
                    };
                } else if (__value__ == (3706856i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/typeinfo.go#L272"
                    _i_67++;
                    _gotoNext = 3707289i64;
                } else if (__value__ == (3706887i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/typeinfo.go#L286"
                    if ((((@:checkr _oldf_68 ?? throw "null pointer dereference")._parents.length) > ((@:checkr _newf ?? throw "null pointer dereference")._parents.length) : Bool)) {
                        _gotoNext = 3706928i64;
                    } else if ((((@:checkr _oldf_68 ?? throw "null pointer dereference")._parents.length) < ((@:checkr _newf ?? throw "null pointer dereference")._parents.length) : Bool)) {
                        _gotoNext = 3707075i64;
                    } else {
                        _gotoNext = 3707181i64;
                    };
                } else if (__value__ == (3706928i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/typeinfo.go#L287"
                    if ((@:checkr _oldf_68 ?? throw "null pointer dereference")._parents[((@:checkr _newf ?? throw "null pointer dereference")._parents.length : stdgo.GoInt)] == ((@:checkr _newf ?? throw "null pointer dereference")._name)) {
                        _gotoNext = 3706981i64;
                    } else {
                        _gotoNext = 3706532i64;
                    };
                } else if (__value__ == (3706981i64)) {
                    _conflicts_66 = (_conflicts_66.__append__(_i_67) : stdgo.Slice<stdgo.GoInt>);
                    _gotoNext = 3706532i64;
                } else if (__value__ == (3707075i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/typeinfo.go#L291"
                    if ((@:checkr _newf ?? throw "null pointer dereference")._parents[((@:checkr _oldf_68 ?? throw "null pointer dereference")._parents.length : stdgo.GoInt)] == ((@:checkr _oldf_68 ?? throw "null pointer dereference")._name)) {
                        _gotoNext = 3707128i64;
                    } else {
                        _gotoNext = 3706532i64;
                    };
                } else if (__value__ == (3707128i64)) {
                    _conflicts_66 = (_conflicts_66.__append__(_i_67) : stdgo.Slice<stdgo.GoInt>);
                    _gotoNext = 3706532i64;
                } else if (__value__ == (3707181i64)) {
                    _gotoNext = 3707181i64;
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/typeinfo.go#L295"
                    if ((((@:checkr _newf ?? throw "null pointer dereference")._name == (@:checkr _oldf_68 ?? throw "null pointer dereference")._name) && ((@:checkr _newf ?? throw "null pointer dereference")._xmlns == (@:checkr _oldf_68 ?? throw "null pointer dereference")._xmlns) : Bool)) {
                        _gotoNext = 3707240i64;
                    } else {
                        _gotoNext = 3706532i64;
                    };
                } else if (__value__ == (3707240i64)) {
                    _conflicts_66 = (_conflicts_66.__append__(_i_67) : stdgo.Slice<stdgo.GoInt>);
                    _gotoNext = 3706532i64;
                } else if (__value__ == (3707288i64)) {
                    _i_67 = 0i64;
                    _gotoNext = 3707289i64;
                } else if (__value__ == (3707289i64)) {
                    //"file://#L0"
                    if (_i_67 < ((@:checkr _tinfo ?? throw "null pointer dereference")._fields.length)) {
                        _gotoNext = 3706556i64;
                    } else {
                        _gotoNext = 3707345i64;
                    };
                } else if (__value__ == (3707345i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/typeinfo.go#L301"
                    if (_conflicts_66 == null) {
                        _gotoNext = 3707365i64;
                    } else {
                        _gotoNext = 3707541i64;
                    };
                } else if (__value__ == (3707365i64)) {
                    (@:checkr _tinfo ?? throw "null pointer dereference")._fields = ((@:checkr _tinfo ?? throw "null pointer dereference")._fields.__append__((_newf : stdgo._internal.encoding.xml.Xml_t_fieldinfo.T_fieldInfo)?.__copy__()) : stdgo.Slice<stdgo._internal.encoding.xml.Xml_t_fieldinfo.T_fieldInfo>);
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/typeinfo.go#L303"
                    return (null : stdgo.Error);
                    _gotoNext = 3707541i64;
                } else if (__value__ == (3707541i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/typeinfo.go#L308"
                    if ((0i64 : stdgo.GoInt) < (_conflicts_66.length)) {
                        _gotoNext = 3707637i64;
                    } else {
                        _gotoNext = 3707715i64;
                    };
                } else if (__value__ == (3707545i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/typeinfo.go#L308"
                    _iterator_3707553_71++;
                    _gotoNext = 3707638i64;
                } else if (__value__ == (3707569i64)) {
                    _i_72 = _conflicts_66[(_iterator_3707553_71 : stdgo.GoInt)];
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/typeinfo.go#L309"
                    if ((((@:checkr _tinfo ?? throw "null pointer dereference")._fields[(_i_72 : stdgo.GoInt)]._idx.length) < ((@:checkr _newf ?? throw "null pointer dereference")._idx.length) : Bool)) {
                        _gotoNext = 3707617i64;
                    } else {
                        _gotoNext = 3707545i64;
                    };
                } else if (__value__ == (3707617i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/typeinfo.go#L310"
                    return (null : stdgo.Error);
                    _gotoNext = 3707545i64;
                } else if (__value__ == (3707637i64)) {
                    {
                        final __tmp__0 = 0i64;
                        final __tmp__1 = _conflicts_66[(0i64 : stdgo.GoInt)];
                        _iterator_3707553_71 = @:binopAssign __tmp__0;
                        _i_72 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 3707638i64;
                } else if (__value__ == (3707638i64)) {
                    //"file://#L0"
                    if (_iterator_3707553_71 < (_conflicts_66.length)) {
                        _gotoNext = 3707569i64;
                    } else {
                        _gotoNext = 3707715i64;
                    };
                } else if (__value__ == (3707715i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/typeinfo.go#L315"
                    if ((0i64 : stdgo.GoInt) < (_conflicts_66.length)) {
                        _gotoNext = 3707971i64;
                    } else {
                        _gotoNext = 3708116i64;
                    };
                } else if (__value__ == (3707719i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/typeinfo.go#L315"
                    _iterator_3707727_73++;
                    _gotoNext = 3707972i64;
                } else if (__value__ == (3707743i64)) {
                    _i_74 = _conflicts_66[(_iterator_3707727_73 : stdgo.GoInt)];
                    _oldf_75 = (stdgo.Go.setRef((@:checkr _tinfo ?? throw "null pointer dereference")._fields[(_i_74 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.encoding.xml.Xml_t_fieldinfo.T_fieldInfo>);
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/typeinfo.go#L317"
                    if (((@:checkr _oldf_75 ?? throw "null pointer dereference")._idx.length) == (((@:checkr _newf ?? throw "null pointer dereference")._idx.length))) {
                        _gotoNext = 3707808i64;
                    } else {
                        _gotoNext = 3707719i64;
                    };
                } else if (__value__ == (3707808i64)) {
                    _f1_76 = _typ.fieldByIndex((@:checkr _oldf_75 ?? throw "null pointer dereference")._idx)?.__copy__();
                    _f2_77 = _typ.fieldByIndex((@:checkr _newf ?? throw "null pointer dereference")._idx)?.__copy__();
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/typeinfo.go#L320"
                    return stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.encoding.xml.Xml_tagpatherror.TagPathError(_typ, _f1_76.name?.__copy__(), _f1_76.tag.get(("xml" : stdgo.GoString))?.__copy__(), _f2_77.name?.__copy__(), _f2_77.tag.get(("xml" : stdgo.GoString))?.__copy__()) : stdgo._internal.encoding.xml.Xml_tagpatherror.TagPathError)) : stdgo.Ref<stdgo._internal.encoding.xml.Xml_tagpatherror.TagPathError>));
                    _gotoNext = 3707719i64;
                } else if (__value__ == (3707971i64)) {
                    {
                        final __tmp__0 = 0i64;
                        final __tmp__1 = _conflicts_66[(0i64 : stdgo.GoInt)];
                        _iterator_3707727_73 = @:binopAssign __tmp__0;
                        _i_74 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 3707972i64;
                } else if (__value__ == (3707972i64)) {
                    //"file://#L0"
                    if (_iterator_3707727_73 < (_conflicts_66.length)) {
                        _gotoNext = 3707743i64;
                    } else {
                        _gotoNext = 3708116i64;
                    };
                } else if (__value__ == (3708116i64)) {
                    _c_78 = ((_conflicts_66.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
                    _gotoNext = 3708116i64;
                    //"file://#L0"
                    if ((_c_78 >= (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3708157i64;
                    } else {
                        _gotoNext = 3708280i64;
                    };
                } else if (__value__ == (3708157i64)) {
                    _i_79 = _conflicts_66[(_c_78 : stdgo.GoInt)];
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/typeinfo.go#L328"
                    ((@:checkr _tinfo ?? throw "null pointer dereference")._fields.__slice__(_i_79) : stdgo.Slice<stdgo._internal.encoding.xml.Xml_t_fieldinfo.T_fieldInfo>).__copyTo__(((@:checkr _tinfo ?? throw "null pointer dereference")._fields.__slice__((_i_79 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.encoding.xml.Xml_t_fieldinfo.T_fieldInfo>));
                    (@:checkr _tinfo ?? throw "null pointer dereference")._fields = ((@:checkr _tinfo ?? throw "null pointer dereference")._fields.__slice__(0, (((@:checkr _tinfo ?? throw "null pointer dereference")._fields.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.encoding.xml.Xml_t_fieldinfo.T_fieldInfo>);
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/typeinfo.go#L326"
                    _c_78--;
                    _gotoNext = 3708116i64;
                } else if (__value__ == (3708280i64)) {
                    (@:checkr _tinfo ?? throw "null pointer dereference")._fields = ((@:checkr _tinfo ?? throw "null pointer dereference")._fields.__append__((_newf : stdgo._internal.encoding.xml.Xml_t_fieldinfo.T_fieldInfo)?.__copy__()) : stdgo.Slice<stdgo._internal.encoding.xml.Xml_t_fieldinfo.T_fieldInfo>);
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/typeinfo.go#L332"
                    return (null : stdgo.Error);
                    _gotoNext = -1i64;
                };
            };
        };
        //"file://#L0"
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
