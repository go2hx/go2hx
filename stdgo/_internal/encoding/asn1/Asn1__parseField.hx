package stdgo._internal.encoding.asn1;
function _parseField(_v:stdgo._internal.reflect.Reflect_Value.Value, _bytes:stdgo.Slice<stdgo.GoUInt8>, _initOffset:stdgo.GoInt, _params:stdgo._internal.encoding.asn1.Asn1_T_fieldParameters.T_fieldParameters):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        var _offset = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        _offset = _initOffset;
        var _fieldType = (_v.type() : stdgo._internal.reflect.Reflect_Type_.Type_);
        if (_offset == ((_bytes.length))) {
            if (!stdgo._internal.encoding.asn1.Asn1__setDefaultValue._setDefaultValue(_v?.__copy__(), _params?.__copy__())) {
                _err = stdgo.Go.asInterface((new stdgo._internal.encoding.asn1.Asn1_SyntaxError.SyntaxError(("sequence truncated" : stdgo.GoString)) : stdgo._internal.encoding.asn1.Asn1_SyntaxError.SyntaxError));
            };
            return { _0 : _offset, _1 : _err };
        };
        {
            var _ifaceType = (_fieldType : stdgo._internal.reflect.Reflect_Type_.Type_);
            if (((_ifaceType.kind() == (20u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) && (_ifaceType.numMethod() == (0 : stdgo.GoInt)) : Bool)) {
                var _t:stdgo._internal.encoding.asn1.Asn1_T_tagAndLength.T_tagAndLength = ({} : stdgo._internal.encoding.asn1.Asn1_T_tagAndLength.T_tagAndLength);
                {
                    var __tmp__ = stdgo._internal.encoding.asn1.Asn1__parseTagAndLength._parseTagAndLength(_bytes, _offset);
                    _t = @:tmpset0 __tmp__._0?.__copy__();
                    _offset = @:tmpset0 __tmp__._1;
                    _err = @:tmpset0 __tmp__._2;
                };
                if (_err != null) {
                    return { _0 : _offset, _1 : _err };
                };
                if (stdgo._internal.encoding.asn1.Asn1__invalidLength._invalidLength(_offset, _t._length, (_bytes.length))) {
                    _err = stdgo.Go.asInterface((new stdgo._internal.encoding.asn1.Asn1_SyntaxError.SyntaxError(("data truncated" : stdgo.GoString)) : stdgo._internal.encoding.asn1.Asn1_SyntaxError.SyntaxError));
                    return { _0 : _offset, _1 : _err };
                };
                var _result:stdgo.AnyInterface = (null : stdgo.AnyInterface);
                if ((!_t._isCompound && (_t._class == (0 : stdgo.GoInt)) : Bool)) {
                    var _innerBytes = (_bytes.__slice__(_offset, (_offset + _t._length : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                    {
                        final __value__ = _t._tag;
                        if (__value__ == ((19 : stdgo.GoInt))) {
                            {
                                var __tmp__ = stdgo._internal.encoding.asn1.Asn1__parsePrintableString._parsePrintableString(_innerBytes);
                                _result = stdgo.Go.toInterface(@:tmpset0 __tmp__._0);
                                _err = @:tmpset0 __tmp__._1;
                            };
                        } else if (__value__ == ((18 : stdgo.GoInt))) {
                            {
                                var __tmp__ = stdgo._internal.encoding.asn1.Asn1__parseNumericString._parseNumericString(_innerBytes);
                                _result = stdgo.Go.toInterface(@:tmpset0 __tmp__._0);
                                _err = @:tmpset0 __tmp__._1;
                            };
                        } else if (__value__ == ((22 : stdgo.GoInt))) {
                            {
                                var __tmp__ = stdgo._internal.encoding.asn1.Asn1__parseIA5String._parseIA5String(_innerBytes);
                                _result = stdgo.Go.toInterface(@:tmpset0 __tmp__._0);
                                _err = @:tmpset0 __tmp__._1;
                            };
                        } else if (__value__ == ((20 : stdgo.GoInt))) {
                            {
                                var __tmp__ = stdgo._internal.encoding.asn1.Asn1__parseT61String._parseT61String(_innerBytes);
                                _result = stdgo.Go.toInterface(@:tmpset0 __tmp__._0);
                                _err = @:tmpset0 __tmp__._1;
                            };
                        } else if (__value__ == ((12 : stdgo.GoInt))) {
                            {
                                var __tmp__ = stdgo._internal.encoding.asn1.Asn1__parseUTF8String._parseUTF8String(_innerBytes);
                                _result = stdgo.Go.toInterface(@:tmpset0 __tmp__._0);
                                _err = @:tmpset0 __tmp__._1;
                            };
                        } else if (__value__ == ((2 : stdgo.GoInt))) {
                            {
                                var __tmp__ = stdgo._internal.encoding.asn1.Asn1__parseInt64._parseInt64(_innerBytes);
                                _result = stdgo.Go.toInterface(@:tmpset0 __tmp__._0);
                                _err = @:tmpset0 __tmp__._1;
                            };
                        } else if (__value__ == ((3 : stdgo.GoInt))) {
                            {
                                var __tmp__ = stdgo._internal.encoding.asn1.Asn1__parseBitString._parseBitString(_innerBytes);
                                _result = stdgo.Go.toInterface(stdgo.Go.asInterface(@:tmpset0 __tmp__._0));
                                _err = @:tmpset0 __tmp__._1;
                            };
                        } else if (__value__ == ((6 : stdgo.GoInt))) {
                            {
                                var __tmp__ = stdgo._internal.encoding.asn1.Asn1__parseObjectIdentifier._parseObjectIdentifier(_innerBytes);
                                _result = stdgo.Go.toInterface(stdgo.Go.asInterface(@:tmpset0 __tmp__._0));
                                _err = @:tmpset0 __tmp__._1;
                            };
                        } else if (__value__ == ((23 : stdgo.GoInt))) {
                            {
                                var __tmp__ = stdgo._internal.encoding.asn1.Asn1__parseUTCTime._parseUTCTime(_innerBytes);
                                _result = stdgo.Go.toInterface(stdgo.Go.asInterface(@:tmpset0 __tmp__._0));
                                _err = @:tmpset0 __tmp__._1;
                            };
                        } else if (__value__ == ((24 : stdgo.GoInt))) {
                            {
                                var __tmp__ = stdgo._internal.encoding.asn1.Asn1__parseGeneralizedTime._parseGeneralizedTime(_innerBytes);
                                _result = stdgo.Go.toInterface(stdgo.Go.asInterface(@:tmpset0 __tmp__._0));
                                _err = @:tmpset0 __tmp__._1;
                            };
                        } else if (__value__ == ((4 : stdgo.GoInt))) {
                            _result = stdgo.Go.toInterface(_innerBytes);
                        } else if (__value__ == ((30 : stdgo.GoInt))) {
                            {
                                var __tmp__ = stdgo._internal.encoding.asn1.Asn1__parseBMPString._parseBMPString(_innerBytes);
                                _result = stdgo.Go.toInterface(@:tmpset0 __tmp__._0);
                                _err = @:tmpset0 __tmp__._1;
                            };
                        } else {};
                    };
                };
                _offset = (_offset + (_t._length) : stdgo.GoInt);
                if (_err != null) {
                    return { _0 : _offset, _1 : _err };
                };
                if (_result != null) {
                    _v.set(stdgo._internal.reflect.Reflect_valueOf.valueOf(_result)?.__copy__());
                };
                return { _0 : _offset, _1 : _err };
            };
        };
        var __tmp__ = stdgo._internal.encoding.asn1.Asn1__parseTagAndLength._parseTagAndLength(_bytes, _offset), _t:stdgo._internal.encoding.asn1.Asn1_T_tagAndLength.T_tagAndLength = __tmp__._0, _offset:stdgo.GoInt = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        if (_err != null) {
            return { _0 : _offset, _1 : _err };
        };
        if (_params._explicit) {
            var _expectedClass = (2 : stdgo.GoInt);
            if (_params._application) {
                _expectedClass = (1 : stdgo.GoInt);
            };
            if (_offset == ((_bytes.length))) {
                _err = stdgo.Go.asInterface((new stdgo._internal.encoding.asn1.Asn1_StructuralError.StructuralError(("explicit tag has no child" : stdgo.GoString)) : stdgo._internal.encoding.asn1.Asn1_StructuralError.StructuralError));
                return { _0 : _offset, _1 : _err };
            };
            if (((_t._class == (_expectedClass) && _t._tag == (_params._tag.value) : Bool) && (((_t._length == (0 : stdgo.GoInt)) || _t._isCompound : Bool)) : Bool)) {
                if ((_fieldType.string() : String) == (stdgo._internal.encoding.asn1.Asn1__rawValueType._rawValueType.string() : String)) {} else if ((_t._length > (0 : stdgo.GoInt) : Bool)) {
                    {
                        var __tmp__ = stdgo._internal.encoding.asn1.Asn1__parseTagAndLength._parseTagAndLength(_bytes, _offset);
                        _t = @:tmpset0 __tmp__._0?.__copy__();
                        _offset = @:tmpset0 __tmp__._1;
                        _err = @:tmpset0 __tmp__._2;
                    };
                    if (_err != null) {
                        return { _0 : _offset, _1 : _err };
                    };
                } else {
                    if (!((_fieldType.string() : String) == (stdgo._internal.encoding.asn1.Asn1__flagType._flagType.string() : String))) {
                        _err = stdgo.Go.asInterface((new stdgo._internal.encoding.asn1.Asn1_StructuralError.StructuralError(("zero length explicit tag was not an asn1.Flag" : stdgo.GoString)) : stdgo._internal.encoding.asn1.Asn1_StructuralError.StructuralError));
                        return { _0 : _offset, _1 : _err };
                    };
                    _v.setBool(true);
                    return { _0 : _offset, _1 : _err };
                };
            } else {
                var _ok = (stdgo._internal.encoding.asn1.Asn1__setDefaultValue._setDefaultValue(_v?.__copy__(), _params?.__copy__()) : Bool);
                if (_ok) {
                    _offset = _initOffset;
                } else {
                    _err = stdgo.Go.asInterface((new stdgo._internal.encoding.asn1.Asn1_StructuralError.StructuralError(("explicitly tagged member didn\'t match" : stdgo.GoString)) : stdgo._internal.encoding.asn1.Asn1_StructuralError.StructuralError));
                };
                return { _0 : _offset, _1 : _err };
            };
        };
        var __tmp__ = stdgo._internal.encoding.asn1.Asn1__getUniversalType._getUniversalType(_fieldType), _matchAny:Bool = __tmp__._0, _universalTag:stdgo.GoInt = __tmp__._1, _compoundType:Bool = __tmp__._2, _ok1:Bool = __tmp__._3;
        if (!_ok1) {
            _err = stdgo.Go.asInterface((new stdgo._internal.encoding.asn1.Asn1_StructuralError.StructuralError(stdgo._internal.fmt.Fmt_sprintf.sprintf(("unknown Go type: %v" : stdgo.GoString), stdgo.Go.toInterface(_fieldType))?.__copy__()) : stdgo._internal.encoding.asn1.Asn1_StructuralError.StructuralError));
            return { _0 : _offset, _1 : _err };
        };
        if (_universalTag == ((19 : stdgo.GoInt))) {
            if (_t._class == ((0 : stdgo.GoInt))) {
                {
                    final __value__ = _t._tag;
                    if (__value__ == ((22 : stdgo.GoInt)) || __value__ == ((27 : stdgo.GoInt)) || __value__ == ((20 : stdgo.GoInt)) || __value__ == ((12 : stdgo.GoInt)) || __value__ == ((18 : stdgo.GoInt)) || __value__ == ((30 : stdgo.GoInt))) {
                        _universalTag = _t._tag;
                    };
                };
            } else if (_params._stringType != ((0 : stdgo.GoInt))) {
                _universalTag = _params._stringType;
            };
        };
        if (((_universalTag == ((23 : stdgo.GoInt)) && _t._tag == ((24 : stdgo.GoInt)) : Bool) && (_t._class == (0 : stdgo.GoInt)) : Bool)) {
            _universalTag = (24 : stdgo.GoInt);
        };
        if (_params._set) {
            _universalTag = (17 : stdgo.GoInt);
        };
        var _matchAnyClassAndTag = (_matchAny : Bool);
        var _expectedClass = (0 : stdgo.GoInt);
        var _expectedTag = (_universalTag : stdgo.GoInt);
        if ((!_params._explicit && (_params._tag != null) : Bool)) {
            _expectedClass = (2 : stdgo.GoInt);
            _expectedTag = _params._tag.value;
            _matchAnyClassAndTag = false;
        };
        if (((!_params._explicit && _params._application : Bool) && (_params._tag != null) : Bool)) {
            _expectedClass = (1 : stdgo.GoInt);
            _expectedTag = _params._tag.value;
            _matchAnyClassAndTag = false;
        };
        if (((!_params._explicit && _params._private : Bool) && (_params._tag != null) : Bool)) {
            _expectedClass = (3 : stdgo.GoInt);
            _expectedTag = _params._tag.value;
            _matchAnyClassAndTag = false;
        };
        if (((!_matchAnyClassAndTag && (((_t._class != _expectedClass) || (_t._tag != _expectedTag) : Bool)) : Bool) || ((!_matchAny && (_t._isCompound != _compoundType) : Bool)) : Bool)) {
            var _ok = (stdgo._internal.encoding.asn1.Asn1__setDefaultValue._setDefaultValue(_v?.__copy__(), _params?.__copy__()) : Bool);
            if (_ok) {
                _offset = _initOffset;
            } else {
                _err = stdgo.Go.asInterface((new stdgo._internal.encoding.asn1.Asn1_StructuralError.StructuralError(stdgo._internal.fmt.Fmt_sprintf.sprintf(("tags don\'t match (%d vs %+v) %+v %s @%d" : stdgo.GoString), stdgo.Go.toInterface(_expectedTag), stdgo.Go.toInterface(stdgo.Go.asInterface(_t)), stdgo.Go.toInterface(stdgo.Go.asInterface(_params)), stdgo.Go.toInterface(_fieldType.name()), stdgo.Go.toInterface(_offset))?.__copy__()) : stdgo._internal.encoding.asn1.Asn1_StructuralError.StructuralError));
            };
            return { _0 : _offset, _1 : _err };
        };
        if (stdgo._internal.encoding.asn1.Asn1__invalidLength._invalidLength(_offset, _t._length, (_bytes.length))) {
            _err = stdgo.Go.asInterface((new stdgo._internal.encoding.asn1.Asn1_SyntaxError.SyntaxError(("data truncated" : stdgo.GoString)) : stdgo._internal.encoding.asn1.Asn1_SyntaxError.SyntaxError));
            return { _0 : _offset, _1 : _err };
        };
        var _innerBytes = (_bytes.__slice__(_offset, (_offset + _t._length : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        _offset = (_offset + (_t._length) : stdgo.GoInt);
        {
            final __type__ = _v.addr().interface_();
            if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.encoding.asn1.Asn1_RawValue.RawValue>))) {
                var _v:stdgo.Ref<stdgo._internal.encoding.asn1.Asn1_RawValue.RawValue> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.encoding.asn1.Asn1_RawValue.RawValue>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.encoding.asn1.Asn1_RawValue.RawValue>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.encoding.asn1.Asn1_RawValue.RawValue>) : __type__.__underlying__().value;
                {
                    var __tmp__ = (new stdgo._internal.encoding.asn1.Asn1_RawValue.RawValue(_t._class, _t._tag, _t._isCompound, _innerBytes, (_bytes.__slice__(_initOffset, _offset) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo._internal.encoding.asn1.Asn1_RawValue.RawValue);
                    var x = (_v : stdgo._internal.encoding.asn1.Asn1_RawValue.RawValue);
                    x.class_ = __tmp__?.class_;
                    x.tag = __tmp__?.tag;
                    x.isCompound = __tmp__?.isCompound;
                    x.bytes = __tmp__?.bytes;
                    x.fullBytes = __tmp__?.fullBytes;
                };
                return { _0 : _offset, _1 : _err };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.encoding.asn1.Asn1_ObjectIdentifier.ObjectIdentifier>))) {
                var _v:stdgo.Ref<stdgo._internal.encoding.asn1.Asn1_ObjectIdentifier.ObjectIdentifier> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.encoding.asn1.Asn1_ObjectIdentifier.ObjectIdentifier>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.encoding.asn1.Asn1_ObjectIdentifier.ObjectIdentifier>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.encoding.asn1.Asn1_ObjectIdentifier.ObjectIdentifier>) : __type__.__underlying__().value;
                {
                    var __tmp__ = stdgo._internal.encoding.asn1.Asn1__parseObjectIdentifier._parseObjectIdentifier(_innerBytes);
                    _v.__setData__(@:tmpset0 __tmp__._0);
                    _err = @:tmpset0 __tmp__._1;
                };
                return { _0 : _offset, _1 : _err };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.encoding.asn1.Asn1_BitString.BitString>))) {
                var _v:stdgo.Ref<stdgo._internal.encoding.asn1.Asn1_BitString.BitString> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.encoding.asn1.Asn1_BitString.BitString>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.encoding.asn1.Asn1_BitString.BitString>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.encoding.asn1.Asn1_BitString.BitString>) : __type__.__underlying__().value;
                {
                    var __tmp__ = stdgo._internal.encoding.asn1.Asn1__parseBitString._parseBitString(_innerBytes);
                    var x = _v;
                    x.bytes = @:tmpset0 __tmp__._0?.__copy__()?.bytes;
                    x.bitLength = @:tmpset0 __tmp__._0?.__copy__()?.bitLength;
                    _err = @:tmpset0 __tmp__._1;
                };
                return { _0 : _offset, _1 : _err };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.time.Time_Time.Time>))) {
                var _v:stdgo.Ref<stdgo._internal.time.Time_Time.Time> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.time.Time_Time.Time>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.time.Time_Time.Time>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.time.Time_Time.Time>) : __type__.__underlying__().value;
                if (_universalTag == ((23 : stdgo.GoInt))) {
                    {
                        var __tmp__ = stdgo._internal.encoding.asn1.Asn1__parseUTCTime._parseUTCTime(_innerBytes);
                        var x = _v;
                        x._wall = @:tmpset0 __tmp__._0?.__copy__()?._wall;
                        x._ext = @:tmpset0 __tmp__._0?.__copy__()?._ext;
                        x._loc = @:tmpset0 __tmp__._0?.__copy__()?._loc;
                        _err = @:tmpset0 __tmp__._1;
                    };
                    return { _0 : _offset, _1 : _err };
                };
                {
                    var __tmp__ = stdgo._internal.encoding.asn1.Asn1__parseGeneralizedTime._parseGeneralizedTime(_innerBytes);
                    var x = _v;
                    x._wall = @:tmpset0 __tmp__._0?.__copy__()?._wall;
                    x._ext = @:tmpset0 __tmp__._0?.__copy__()?._ext;
                    x._loc = @:tmpset0 __tmp__._0?.__copy__()?._loc;
                    _err = @:tmpset0 __tmp__._1;
                };
                return { _0 : _offset, _1 : _err };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Pointer<stdgo._internal.encoding.asn1.Asn1_Enumerated.Enumerated>))) {
                var _v:stdgo.Pointer<stdgo._internal.encoding.asn1.Asn1_Enumerated.Enumerated> = __type__ == null ? (null : stdgo.Pointer<stdgo._internal.encoding.asn1.Asn1_Enumerated.Enumerated>) : __type__.__underlying__() == null ? (null : stdgo.Pointer<stdgo._internal.encoding.asn1.Asn1_Enumerated.Enumerated>) : __type__ == null ? (null : stdgo.Pointer<stdgo._internal.encoding.asn1.Asn1_Enumerated.Enumerated>) : __type__.__underlying__().value;
                var __tmp__ = stdgo._internal.encoding.asn1.Asn1__parseInt32._parseInt32(_innerBytes), _parsedInt:stdgo.GoInt32 = __tmp__._0, _err1:stdgo.Error = __tmp__._1;
                if (_err1 == null) {
                    _v.value = (_parsedInt : stdgo._internal.encoding.asn1.Asn1_Enumerated.Enumerated);
                };
                _err = _err1;
                return { _0 : _offset, _1 : _err };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Pointer<stdgo._internal.encoding.asn1.Asn1_Flag.Flag>))) {
                var _v:stdgo.Pointer<stdgo._internal.encoding.asn1.Asn1_Flag.Flag> = __type__ == null ? (null : stdgo.Pointer<stdgo._internal.encoding.asn1.Asn1_Flag.Flag>) : __type__.__underlying__() == null ? (null : stdgo.Pointer<stdgo._internal.encoding.asn1.Asn1_Flag.Flag>) : __type__ == null ? (null : stdgo.Pointer<stdgo._internal.encoding.asn1.Asn1_Flag.Flag>) : __type__.__underlying__().value;
                _v.value = true;
                return { _0 : _offset, _1 : _err };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>>))) {
                var _v:stdgo.Ref<stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>> = __type__ == null ? (null : stdgo.Ref<stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>>) : __type__ == null ? (null : stdgo.Ref<stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>>) : __type__.__underlying__().value;
                var __tmp__ = stdgo._internal.encoding.asn1.Asn1__parseBigInt._parseBigInt(_innerBytes), _parsedInt:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> = __tmp__._0, _err1:stdgo.Error = __tmp__._1;
                if (_err1 == null) {
                    _v = _parsedInt;
                };
                _err = _err1;
                return { _0 : _offset, _1 : _err };
            };
        };
        {
            var _val = (_v?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
            {
                final __value__ = _val.kind();
                if (__value__ == ((1u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                    var __tmp__ = stdgo._internal.encoding.asn1.Asn1__parseBool._parseBool(_innerBytes), _parsedBool:Bool = __tmp__._0, _err1:stdgo.Error = __tmp__._1;
                    if (_err1 == null) {
                        _val.setBool(_parsedBool);
                    };
                    _err = _err1;
                    return { _0 : _offset, _1 : _err };
                } else if (__value__ == ((2u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((5u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((6u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                    if (_val.type().size() == ((new stdgo.GoUIntptr(4) : stdgo.GoUIntptr))) {
                        var __tmp__ = stdgo._internal.encoding.asn1.Asn1__parseInt32._parseInt32(_innerBytes), _parsedInt:stdgo.GoInt32 = __tmp__._0, _err1:stdgo.Error = __tmp__._1;
                        if (_err1 == null) {
                            _val.setInt((_parsedInt : stdgo.GoInt64));
                        };
                        _err = _err1;
                    } else {
                        var __tmp__ = stdgo._internal.encoding.asn1.Asn1__parseInt64._parseInt64(_innerBytes), _parsedInt:stdgo.GoInt64 = __tmp__._0, _err1:stdgo.Error = __tmp__._1;
                        if (_err1 == null) {
                            _val.setInt(_parsedInt);
                        };
                        _err = _err1;
                    };
                    return { _0 : _offset, _1 : _err };
                } else if (__value__ == ((25u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                    var _structType = (_fieldType : stdgo._internal.reflect.Reflect_Type_.Type_);
                    {
                        var _i = (0 : stdgo.GoInt);
                        while ((_i < _structType.numField() : Bool)) {
                            if (!_structType.field(_i).isExported()) {
                                _err = stdgo.Go.asInterface((new stdgo._internal.encoding.asn1.Asn1_StructuralError.StructuralError(("struct contains unexported fields" : stdgo.GoString)) : stdgo._internal.encoding.asn1.Asn1_StructuralError.StructuralError));
                                return { _0 : _offset, _1 : _err };
                            };
                            _i++;
                        };
                    };
                    if (((_structType.numField() > (0 : stdgo.GoInt) : Bool) && ((_structType.field((0 : stdgo.GoInt)).type.string() : String) == (stdgo._internal.encoding.asn1.Asn1__rawContentsType._rawContentsType.string() : String)) : Bool)) {
                        var _bytes = (_bytes.__slice__(_initOffset, _offset) : stdgo.Slice<stdgo.GoUInt8>);
                        _val.field((0 : stdgo.GoInt)).set(stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface((_bytes : stdgo._internal.encoding.asn1.Asn1_RawContent.RawContent)))?.__copy__());
                    };
                    var _innerOffset = (0 : stdgo.GoInt);
                    {
                        var _i = (0 : stdgo.GoInt);
                        while ((_i < _structType.numField() : Bool)) {
                            var _field = (_structType.field(_i).__copy__() : stdgo._internal.reflect.Reflect_StructField.StructField);
if (((_i == (0 : stdgo.GoInt)) && ((_field.type.string() : String) == (stdgo._internal.encoding.asn1.Asn1__rawContentsType._rawContentsType.string() : String)) : Bool)) {
                                {
                                    _i++;
                                    continue;
                                };
                            };
{
                                var __tmp__ = stdgo._internal.encoding.asn1.Asn1__parseField._parseField(_val.field(_i).__copy__(), _innerBytes, _innerOffset, stdgo._internal.encoding.asn1.Asn1__parseFieldParameters._parseFieldParameters(_field.tag.get(("asn1" : stdgo.GoString)).__copy__()).__copy__());
                                _innerOffset = @:tmpset0 __tmp__._0;
                                _err = @:tmpset0 __tmp__._1;
                            };
if (_err != null) {
                                return { _0 : _offset, _1 : _err };
                            };
                            _i++;
                        };
                    };
                    return { _0 : _offset, _1 : _err };
                } else if (__value__ == ((23u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                    var _sliceType = (_fieldType : stdgo._internal.reflect.Reflect_Type_.Type_);
                    if (_sliceType.elem().kind() == ((8u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                        _val.set(stdgo._internal.reflect.Reflect_makeSlice.makeSlice(_sliceType, (_innerBytes.length), (_innerBytes.length))?.__copy__());
                        stdgo._internal.reflect.Reflect_copy.copy(_val?.__copy__(), stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(_innerBytes))?.__copy__());
                        return { _0 : _offset, _1 : _err };
                    };
                    var __tmp__ = stdgo._internal.encoding.asn1.Asn1__parseSequenceOf._parseSequenceOf(_innerBytes, _sliceType, _sliceType.elem()), _newSlice:stdgo._internal.reflect.Reflect_Value.Value = __tmp__._0, _err1:stdgo.Error = __tmp__._1;
                    if (_err1 == null) {
                        _val.set(_newSlice?.__copy__());
                    };
                    _err = _err1;
                    return { _0 : _offset, _1 : _err };
                } else if (__value__ == ((24u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                    var _v:stdgo.GoString = ("" : stdgo.GoString);
                    {
                        final __value__ = _universalTag;
                        if (__value__ == ((19 : stdgo.GoInt))) {
                            {
                                var __tmp__ = stdgo._internal.encoding.asn1.Asn1__parsePrintableString._parsePrintableString(_innerBytes);
                                _v = @:tmpset0 __tmp__._0?.__copy__();
                                _err = @:tmpset0 __tmp__._1;
                            };
                        } else if (__value__ == ((18 : stdgo.GoInt))) {
                            {
                                var __tmp__ = stdgo._internal.encoding.asn1.Asn1__parseNumericString._parseNumericString(_innerBytes);
                                _v = @:tmpset0 __tmp__._0?.__copy__();
                                _err = @:tmpset0 __tmp__._1;
                            };
                        } else if (__value__ == ((22 : stdgo.GoInt))) {
                            {
                                var __tmp__ = stdgo._internal.encoding.asn1.Asn1__parseIA5String._parseIA5String(_innerBytes);
                                _v = @:tmpset0 __tmp__._0?.__copy__();
                                _err = @:tmpset0 __tmp__._1;
                            };
                        } else if (__value__ == ((20 : stdgo.GoInt))) {
                            {
                                var __tmp__ = stdgo._internal.encoding.asn1.Asn1__parseT61String._parseT61String(_innerBytes);
                                _v = @:tmpset0 __tmp__._0?.__copy__();
                                _err = @:tmpset0 __tmp__._1;
                            };
                        } else if (__value__ == ((12 : stdgo.GoInt))) {
                            {
                                var __tmp__ = stdgo._internal.encoding.asn1.Asn1__parseUTF8String._parseUTF8String(_innerBytes);
                                _v = @:tmpset0 __tmp__._0?.__copy__();
                                _err = @:tmpset0 __tmp__._1;
                            };
                        } else if (__value__ == ((27 : stdgo.GoInt))) {
                            {
                                var __tmp__ = stdgo._internal.encoding.asn1.Asn1__parseT61String._parseT61String(_innerBytes);
                                _v = @:tmpset0 __tmp__._0?.__copy__();
                                _err = @:tmpset0 __tmp__._1;
                            };
                        } else if (__value__ == ((30 : stdgo.GoInt))) {
                            {
                                var __tmp__ = stdgo._internal.encoding.asn1.Asn1__parseBMPString._parseBMPString(_innerBytes);
                                _v = @:tmpset0 __tmp__._0?.__copy__();
                                _err = @:tmpset0 __tmp__._1;
                            };
                        } else {
                            _err = stdgo.Go.asInterface((new stdgo._internal.encoding.asn1.Asn1_SyntaxError.SyntaxError(stdgo._internal.fmt.Fmt_sprintf.sprintf(("internal error: unknown string type %d" : stdgo.GoString), stdgo.Go.toInterface(_universalTag))?.__copy__()) : stdgo._internal.encoding.asn1.Asn1_SyntaxError.SyntaxError));
                        };
                    };
                    if (_err == null) {
                        _val.setString(_v?.__copy__());
                    };
                    return { _0 : _offset, _1 : _err };
                };
            };
        };
        _err = stdgo.Go.asInterface((new stdgo._internal.encoding.asn1.Asn1_StructuralError.StructuralError((("unsupported: " : stdgo.GoString) + (_v.type().string() : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__()) : stdgo._internal.encoding.asn1.Asn1_StructuralError.StructuralError));
        return { _0 : _offset, _1 : _err };
    }
