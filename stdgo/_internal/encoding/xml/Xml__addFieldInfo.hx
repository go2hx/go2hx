package stdgo._internal.encoding.xml;
function _addFieldInfo(_typ:stdgo._internal.reflect.Reflect_Type_.Type_, _tinfo:stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_typeInfo.T_typeInfo>, _newf:stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_fieldInfo.T_fieldInfo>):stdgo.Error {
        stdgo._internal.internal.Macro.controlFlow({
            var _conflicts:stdgo.Slice<stdgo.GoInt> = (null : stdgo.Slice<stdgo.GoInt>);
            @:label("Loop") for (_i => _ in _tinfo._fields) {
                var _oldf = (stdgo.Go.setRef(_tinfo._fields[(_i : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_fieldInfo.T_fieldInfo>);
                if ((_oldf._flags & (127 : stdgo._internal.encoding.xml.Xml_T_fieldFlags.T_fieldFlags) : stdgo._internal.encoding.xml.Xml_T_fieldFlags.T_fieldFlags) != ((_newf._flags & (127 : stdgo._internal.encoding.xml.Xml_T_fieldFlags.T_fieldFlags) : stdgo._internal.encoding.xml.Xml_T_fieldFlags.T_fieldFlags))) {
                    continue;
                };
                if (((_oldf._xmlns != (stdgo.Go.str()) && _newf._xmlns != (stdgo.Go.str()) : Bool) && (_oldf._xmlns != _newf._xmlns) : Bool)) {
                    continue;
                };
                var _minl = (stdgo._internal.encoding.xml.Xml__min._min((_newf._parents.length), (_oldf._parents.length)) : stdgo.GoInt);
                {
                    var _p = (0 : stdgo.GoInt);
                    while ((_p < _minl : Bool)) {
                        if (_oldf._parents[(_p : stdgo.GoInt)] != (_newf._parents[(_p : stdgo.GoInt)])) {
                            @:jump("Loop") {
                                _p++;
                                continue;
                            };
                        };
                        _p++;
                    };
                };
                if (((_oldf._parents.length) > (_newf._parents.length) : Bool)) {
                    if (_oldf._parents[(_newf._parents.length : stdgo.GoInt)] == (_newf._name)) {
                        _conflicts = (_conflicts.__append__(_i));
                    };
                } else if (((_oldf._parents.length) < (_newf._parents.length) : Bool)) {
                    if (_newf._parents[(_oldf._parents.length : stdgo.GoInt)] == (_oldf._name)) {
                        _conflicts = (_conflicts.__append__(_i));
                    };
                } else {
                    if (((_newf._name == _oldf._name) && (_newf._xmlns == _oldf._xmlns) : Bool)) {
                        _conflicts = (_conflicts.__append__(_i));
                    };
                };
            };
            if (_conflicts == null) {
                _tinfo._fields = (_tinfo._fields.__append__((_newf : stdgo._internal.encoding.xml.Xml_T_fieldInfo.T_fieldInfo)?.__copy__()));
                return (null : stdgo.Error);
            };
            for (__0 => _i in _conflicts) {
                if (((_tinfo._fields[(_i : stdgo.GoInt)]._idx.length) < (_newf._idx.length) : Bool)) {
                    return (null : stdgo.Error);
                };
            };
            for (__1 => _i in _conflicts) {
                var _oldf = (stdgo.Go.setRef(_tinfo._fields[(_i : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_fieldInfo.T_fieldInfo>);
                if ((_oldf._idx.length) == ((_newf._idx.length))) {
                    var _f1 = (_typ.fieldByIndex(_oldf._idx)?.__copy__() : stdgo._internal.reflect.Reflect_StructField.StructField);
                    var _f2 = (_typ.fieldByIndex(_newf._idx)?.__copy__() : stdgo._internal.reflect.Reflect_StructField.StructField);
                    return stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.encoding.xml.Xml_TagPathError.TagPathError(_typ, _f1.name?.__copy__(), _f1.tag.get(("xml" : stdgo.GoString))?.__copy__(), _f2.name?.__copy__(), _f2.tag.get(("xml" : stdgo.GoString))?.__copy__()) : stdgo._internal.encoding.xml.Xml_TagPathError.TagPathError)) : stdgo.Ref<stdgo._internal.encoding.xml.Xml_TagPathError.TagPathError>));
                };
            };
            {
                var _c = ((_conflicts.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
                while ((_c >= (0 : stdgo.GoInt) : Bool)) {
                    var _i = (_conflicts[(_c : stdgo.GoInt)] : stdgo.GoInt);
stdgo.Go.copySlice((_tinfo._fields.__slice__(_i) : stdgo.Slice<stdgo._internal.encoding.xml.Xml_T_fieldInfo.T_fieldInfo>), (_tinfo._fields.__slice__((_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.encoding.xml.Xml_T_fieldInfo.T_fieldInfo>));
_tinfo._fields = (_tinfo._fields.__slice__(0, ((_tinfo._fields.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.encoding.xml.Xml_T_fieldInfo.T_fieldInfo>);
                    _c--;
                };
            };
            _tinfo._fields = (_tinfo._fields.__append__((_newf : stdgo._internal.encoding.xml.Xml_T_fieldInfo.T_fieldInfo)?.__copy__()));
            return (null : stdgo.Error);
        });
    }
