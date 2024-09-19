package stdgo._internal.encoding.asn1;
function _makeField(_v:stdgo._internal.reflect.Reflect_Value.Value, _params:stdgo._internal.encoding.asn1.Asn1_T_fieldParameters.T_fieldParameters):{ var _0 : stdgo._internal.encoding.asn1.Asn1_T_encoder.T_encoder; var _1 : stdgo.Error; } {
        var _e = (null : stdgo._internal.encoding.asn1.Asn1_T_encoder.T_encoder), _err = (null : stdgo.Error);
        if (!_v.isValid()) {
            return { _0 : (null : stdgo._internal.encoding.asn1.Asn1_T_encoder.T_encoder), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("asn1: cannot marshal nil value" : stdgo.GoString)) };
        };
        if (((_v.kind() == (20u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) && (_v.type().numMethod() == (0 : stdgo.GoInt)) : Bool)) {
            return stdgo._internal.encoding.asn1.Asn1__makeField._makeField(_v.elem()?.__copy__(), _params?.__copy__());
        };
        if (((_v.kind() == ((23u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) && _v.len() == ((0 : stdgo.GoInt)) : Bool) && _params._omitEmpty : Bool)) {
            return { _0 : stdgo.Go.asInterface((new stdgo._internal.encoding.asn1.Asn1_T_bytesEncoder.T_bytesEncoder(0, 0) : stdgo._internal.encoding.asn1.Asn1_T_bytesEncoder.T_bytesEncoder)), _1 : (null : stdgo.Error) };
        };
        if (((_params._optional && _params._defaultValue != null : Bool) && stdgo._internal.encoding.asn1.Asn1__canHaveDefaultValue._canHaveDefaultValue(_v.kind()) : Bool)) {
            var _defaultValue = (stdgo._internal.reflect.Reflect_new_.new_(_v.type()).elem()?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
            _defaultValue.setInt(_params._defaultValue.value);
            if (stdgo._internal.reflect.Reflect_deepEqual.deepEqual(_v.interface_(), _defaultValue.interface_())) {
                return { _0 : stdgo.Go.asInterface((new stdgo._internal.encoding.asn1.Asn1_T_bytesEncoder.T_bytesEncoder(0, 0) : stdgo._internal.encoding.asn1.Asn1_T_bytesEncoder.T_bytesEncoder)), _1 : (null : stdgo.Error) };
            };
        };
        if ((_params._optional && (_params._defaultValue == null) : Bool)) {
            if (stdgo._internal.reflect.Reflect_deepEqual.deepEqual(_v.interface_(), stdgo._internal.reflect.Reflect_zero.zero(_v.type()).interface_())) {
                return { _0 : stdgo.Go.asInterface((new stdgo._internal.encoding.asn1.Asn1_T_bytesEncoder.T_bytesEncoder(0, 0) : stdgo._internal.encoding.asn1.Asn1_T_bytesEncoder.T_bytesEncoder)), _1 : (null : stdgo.Error) };
            };
        };
        if ((_v.type().string() : String) == (stdgo._internal.encoding.asn1.Asn1__rawValueType._rawValueType.string() : String)) {
            var _rv = ((stdgo.Go.typeAssert((_v.interface_() : stdgo._internal.encoding.asn1.Asn1_RawValue.RawValue)) : stdgo._internal.encoding.asn1.Asn1_RawValue.RawValue)?.__copy__() : stdgo._internal.encoding.asn1.Asn1_RawValue.RawValue);
            if ((_rv.fullBytes.length) != ((0 : stdgo.GoInt))) {
                return { _0 : stdgo.Go.asInterface((_rv.fullBytes : stdgo._internal.encoding.asn1.Asn1_T_bytesEncoder.T_bytesEncoder)), _1 : (null : stdgo.Error) };
            };
            var _t = (stdgo.Go.setRef(({} : stdgo._internal.encoding.asn1.Asn1_T_taggedEncoder.T_taggedEncoder)) : stdgo.Ref<stdgo._internal.encoding.asn1.Asn1_T_taggedEncoder.T_taggedEncoder>);
            _t._tag = stdgo.Go.asInterface((stdgo._internal.encoding.asn1.Asn1__appendTagAndLength._appendTagAndLength((_t._scratch.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), (new stdgo._internal.encoding.asn1.Asn1_T_tagAndLength.T_tagAndLength(_rv.class_, _rv.tag, (_rv.bytes.length), _rv.isCompound) : stdgo._internal.encoding.asn1.Asn1_T_tagAndLength.T_tagAndLength)) : stdgo._internal.encoding.asn1.Asn1_T_bytesEncoder.T_bytesEncoder));
            _t._body = stdgo.Go.asInterface((_rv.bytes : stdgo._internal.encoding.asn1.Asn1_T_bytesEncoder.T_bytesEncoder));
            return { _0 : stdgo.Go.asInterface(_t), _1 : (null : stdgo.Error) };
        };
        var __tmp__ = stdgo._internal.encoding.asn1.Asn1__getUniversalType._getUniversalType(_v.type()), _matchAny:Bool = __tmp__._0, _tag:stdgo.GoInt = __tmp__._1, _isCompound:Bool = __tmp__._2, _ok:Bool = __tmp__._3;
        if ((!_ok || _matchAny : Bool)) {
            return { _0 : (null : stdgo._internal.encoding.asn1.Asn1_T_encoder.T_encoder), _1 : stdgo.Go.asInterface((new stdgo._internal.encoding.asn1.Asn1_StructuralError.StructuralError(stdgo._internal.fmt.Fmt_sprintf.sprintf(("unknown Go type: %v" : stdgo.GoString), stdgo.Go.toInterface(_v.type()))?.__copy__()) : stdgo._internal.encoding.asn1.Asn1_StructuralError.StructuralError)) };
        };
        if (((_params._timeType != (0 : stdgo.GoInt)) && (_tag != (23 : stdgo.GoInt)) : Bool)) {
            return { _0 : (null : stdgo._internal.encoding.asn1.Asn1_T_encoder.T_encoder), _1 : stdgo.Go.asInterface((new stdgo._internal.encoding.asn1.Asn1_StructuralError.StructuralError(("explicit time type given to non-time member" : stdgo.GoString)) : stdgo._internal.encoding.asn1.Asn1_StructuralError.StructuralError)) };
        };
        if (((_params._stringType != (0 : stdgo.GoInt)) && (_tag != (19 : stdgo.GoInt)) : Bool)) {
            return { _0 : (null : stdgo._internal.encoding.asn1.Asn1_T_encoder.T_encoder), _1 : stdgo.Go.asInterface((new stdgo._internal.encoding.asn1.Asn1_StructuralError.StructuralError(("explicit string type given to non-string member" : stdgo.GoString)) : stdgo._internal.encoding.asn1.Asn1_StructuralError.StructuralError)) };
        };
        {
            var __switchIndex__ = -1;
            var __run__ = true;
            while (__run__) {
                __run__ = false;
                {
                    final __value__ = _tag;
                    if (__value__ == ((19 : stdgo.GoInt))) {
                        if (_params._stringType == ((0 : stdgo.GoInt))) {
                            for (__0 => _r in (_v.string() : stdgo.GoString)) {
                                if (((_r >= (128 : stdgo.GoInt32) : Bool) || !stdgo._internal.encoding.asn1.Asn1__isPrintable._isPrintable((_r : stdgo.GoUInt8), false, false) : Bool)) {
                                    if (!stdgo._internal.unicode.utf8.Utf8_validString.validString((_v.string() : stdgo.GoString)?.__copy__())) {
                                        return { _0 : (null : stdgo._internal.encoding.asn1.Asn1_T_encoder.T_encoder), _1 : stdgo._internal.errors.Errors_new_.new_(("asn1: string not valid UTF-8" : stdgo.GoString)) };
                                    };
                                    _tag = (12 : stdgo.GoInt);
                                    break;
                                };
                            };
                        } else {
                            _tag = _params._stringType;
                        };
                        break;
                    } else if (__value__ == ((23 : stdgo.GoInt))) {
                        if (((_params._timeType == (24 : stdgo.GoInt)) || stdgo._internal.encoding.asn1.Asn1__outsideUTCRange._outsideUTCRange((stdgo.Go.typeAssert((_v.interface_() : stdgo._internal.time.Time_Time.Time)) : stdgo._internal.time.Time_Time.Time)?.__copy__()) : Bool)) {
                            _tag = (24 : stdgo.GoInt);
                        };
                        break;
                    };
                };
                break;
            };
        };
        if (_params._set) {
            if (_tag != ((16 : stdgo.GoInt))) {
                return { _0 : (null : stdgo._internal.encoding.asn1.Asn1_T_encoder.T_encoder), _1 : stdgo.Go.asInterface((new stdgo._internal.encoding.asn1.Asn1_StructuralError.StructuralError(("non sequence tagged as set" : stdgo.GoString)) : stdgo._internal.encoding.asn1.Asn1_StructuralError.StructuralError)) };
            };
            _tag = (17 : stdgo.GoInt);
        };
        if (((_tag == (17 : stdgo.GoInt)) && !_params._set : Bool)) {
            _params._set = true;
        };
        var _t = (stdgo.Go.setRef(({} : stdgo._internal.encoding.asn1.Asn1_T_taggedEncoder.T_taggedEncoder)) : stdgo.Ref<stdgo._internal.encoding.asn1.Asn1_T_taggedEncoder.T_taggedEncoder>);
        {
            var __tmp__ = stdgo._internal.encoding.asn1.Asn1__makeBody._makeBody(_v?.__copy__(), _params?.__copy__());
            _t._body = __tmp__._0;
            _err = __tmp__._1;
        };
        if (_err != null) {
            return { _0 : (null : stdgo._internal.encoding.asn1.Asn1_T_encoder.T_encoder), _1 : _err };
        };
        var _bodyLen = (_t._body.len() : stdgo.GoInt);
        var _class = (0 : stdgo.GoInt);
        if (_params._tag != null) {
            if (_params._application) {
                _class = (1 : stdgo.GoInt);
            } else if (_params._private) {
                _class = (3 : stdgo.GoInt);
            } else {
                _class = (2 : stdgo.GoInt);
            };
            if (_params._explicit) {
                _t._tag = stdgo.Go.asInterface((stdgo._internal.encoding.asn1.Asn1__appendTagAndLength._appendTagAndLength((_t._scratch.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), (new stdgo._internal.encoding.asn1.Asn1_T_tagAndLength.T_tagAndLength((0 : stdgo.GoInt), _tag, _bodyLen, _isCompound) : stdgo._internal.encoding.asn1.Asn1_T_tagAndLength.T_tagAndLength)) : stdgo._internal.encoding.asn1.Asn1_T_bytesEncoder.T_bytesEncoder));
                var _tt = (stdgo.Go.setRef(({} : stdgo._internal.encoding.asn1.Asn1_T_taggedEncoder.T_taggedEncoder)) : stdgo.Ref<stdgo._internal.encoding.asn1.Asn1_T_taggedEncoder.T_taggedEncoder>);
                _tt._body = stdgo.Go.asInterface(_t);
                _tt._tag = stdgo.Go.asInterface((stdgo._internal.encoding.asn1.Asn1__appendTagAndLength._appendTagAndLength((_tt._scratch.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), ({ _class : _class, _tag : _params._tag.value, _length : (_bodyLen + _t._tag.len() : stdgo.GoInt), _isCompound : true } : stdgo._internal.encoding.asn1.Asn1_T_tagAndLength.T_tagAndLength)) : stdgo._internal.encoding.asn1.Asn1_T_bytesEncoder.T_bytesEncoder));
                return { _0 : stdgo.Go.asInterface(_tt), _1 : (null : stdgo.Error) };
            };
            _tag = _params._tag.value;
        };
        _t._tag = stdgo.Go.asInterface((stdgo._internal.encoding.asn1.Asn1__appendTagAndLength._appendTagAndLength((_t._scratch.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), (new stdgo._internal.encoding.asn1.Asn1_T_tagAndLength.T_tagAndLength(_class, _tag, _bodyLen, _isCompound) : stdgo._internal.encoding.asn1.Asn1_T_tagAndLength.T_tagAndLength)) : stdgo._internal.encoding.asn1.Asn1_T_bytesEncoder.T_bytesEncoder));
        return { _0 : stdgo.Go.asInterface(_t), _1 : (null : stdgo.Error) };
    }