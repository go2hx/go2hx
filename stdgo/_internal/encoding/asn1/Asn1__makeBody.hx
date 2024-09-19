package stdgo._internal.encoding.asn1;
function _makeBody(_value:stdgo._internal.reflect.Reflect_Value.Value, _params:stdgo._internal.encoding.asn1.Asn1_T_fieldParameters.T_fieldParameters):{ var _0 : stdgo._internal.encoding.asn1.Asn1_T_encoder.T_encoder; var _1 : stdgo.Error; } {
        var _e = (null : stdgo._internal.encoding.asn1.Asn1_T_encoder.T_encoder), _err = (null : stdgo.Error);
        {
            final __value__ = _value.type();
            if ((__value__.string() : String) == (stdgo._internal.encoding.asn1.Asn1__flagType._flagType.string() : String)) {
                return { _0 : stdgo.Go.asInterface((new stdgo._internal.encoding.asn1.Asn1_T_bytesEncoder.T_bytesEncoder(0, 0) : stdgo._internal.encoding.asn1.Asn1_T_bytesEncoder.T_bytesEncoder)), _1 : (null : stdgo.Error) };
            } else if ((__value__.string() : String) == (stdgo._internal.encoding.asn1.Asn1__timeType._timeType.string() : String)) {
                var _t = ((stdgo.Go.typeAssert((_value.interface_() : stdgo._internal.time.Time_Time.Time)) : stdgo._internal.time.Time_Time.Time)?.__copy__() : stdgo._internal.time.Time_Time.Time);
                if (((_params._timeType == (24 : stdgo.GoInt)) || stdgo._internal.encoding.asn1.Asn1__outsideUTCRange._outsideUTCRange(_t?.__copy__()) : Bool)) {
                    return stdgo._internal.encoding.asn1.Asn1__makeGeneralizedTime._makeGeneralizedTime(_t?.__copy__());
                };
                return stdgo._internal.encoding.asn1.Asn1__makeUTCTime._makeUTCTime(_t?.__copy__());
            } else if ((__value__.string() : String) == (stdgo._internal.encoding.asn1.Asn1__bitStringType._bitStringType.string() : String)) {
                return { _0 : stdgo.Go.asInterface((({
                    final e = (stdgo.Go.typeAssert((_value.interface_() : stdgo._internal.encoding.asn1.Asn1_BitString.BitString)) : stdgo._internal.encoding.asn1.Asn1_BitString.BitString);
                    ({ bytes : e.bytes, bitLength : e.bitLength } : stdgo._internal.encoding.asn1.Asn1_T_bitStringEncoder.T_bitStringEncoder);
                }))), _1 : (null : stdgo.Error) };
            } else if ((__value__.string() : String) == (stdgo._internal.encoding.asn1.Asn1__objectIdentifierType._objectIdentifierType.string() : String)) {
                return stdgo._internal.encoding.asn1.Asn1__makeObjectIdentifier._makeObjectIdentifier((stdgo.Go.typeAssert((_value.interface_() : stdgo._internal.encoding.asn1.Asn1_ObjectIdentifier.ObjectIdentifier)) : stdgo._internal.encoding.asn1.Asn1_ObjectIdentifier.ObjectIdentifier));
            } else if ((__value__.string() : String) == (stdgo._internal.encoding.asn1.Asn1__bigIntType._bigIntType.string() : String)) {
                return stdgo._internal.encoding.asn1.Asn1__makeBigInt._makeBigInt((stdgo.Go.typeAssert((_value.interface_() : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>));
            };
        };
        {
            var _v = (_value?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
            {
                final __value__ = _v.kind();
                if (__value__ == ((1u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                    if (_v.bool_()) {
                        return { _0 : stdgo._internal.encoding.asn1.Asn1__byteFFEncoder._byteFFEncoder, _1 : (null : stdgo.Error) };
                    };
                    return { _0 : stdgo._internal.encoding.asn1.Asn1__byte00Encoder._byte00Encoder, _1 : (null : stdgo.Error) };
                } else if (__value__ == ((2u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((3u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((4u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((5u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((6u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                    return { _0 : stdgo.Go.asInterface((_v.int_() : stdgo._internal.encoding.asn1.Asn1_T_int64Encoder.T_int64Encoder)), _1 : (null : stdgo.Error) };
                } else if (__value__ == ((25u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                    var _t = (_v.type() : stdgo._internal.reflect.Reflect_Type_.Type_);
                    {
                        var _i = (0 : stdgo.GoInt);
                        stdgo.Go.cfor((_i < _t.numField() : Bool), _i++, {
                            if (!_t.field(_i).isExported()) {
                                return { _0 : (null : stdgo._internal.encoding.asn1.Asn1_T_encoder.T_encoder), _1 : stdgo.Go.asInterface((new stdgo._internal.encoding.asn1.Asn1_StructuralError.StructuralError(("struct contains unexported fields" : stdgo.GoString)) : stdgo._internal.encoding.asn1.Asn1_StructuralError.StructuralError)) };
                            };
                        });
                    };
                    var _startingField = (0 : stdgo.GoInt);
                    var _n = (_t.numField() : stdgo.GoInt);
                    if (_n == ((0 : stdgo.GoInt))) {
                        return { _0 : stdgo.Go.asInterface((new stdgo._internal.encoding.asn1.Asn1_T_bytesEncoder.T_bytesEncoder(0, 0) : stdgo._internal.encoding.asn1.Asn1_T_bytesEncoder.T_bytesEncoder)), _1 : (null : stdgo.Error) };
                    };
                    if ((_t.field((0 : stdgo.GoInt)).type.string() : String) == (stdgo._internal.encoding.asn1.Asn1__rawContentsType._rawContentsType.string() : String)) {
                        var _s = (_v.field((0 : stdgo.GoInt))?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
                        if ((_s.len() > (0 : stdgo.GoInt) : Bool)) {
                            var _bytes = _s.bytes();
                            return { _0 : stdgo.Go.asInterface((stdgo._internal.encoding.asn1.Asn1__stripTagAndLength._stripTagAndLength(_bytes) : stdgo._internal.encoding.asn1.Asn1_T_bytesEncoder.T_bytesEncoder)), _1 : (null : stdgo.Error) };
                        };
                        _startingField = (1 : stdgo.GoInt);
                    };
                    {
                        var _n1 = (_n - _startingField : stdgo.GoInt);
                        {
                            final __value__ = _n1;
                            if (__value__ == ((0 : stdgo.GoInt))) {
                                return { _0 : stdgo.Go.asInterface((new stdgo._internal.encoding.asn1.Asn1_T_bytesEncoder.T_bytesEncoder(0, 0) : stdgo._internal.encoding.asn1.Asn1_T_bytesEncoder.T_bytesEncoder)), _1 : (null : stdgo.Error) };
                            } else if (__value__ == ((1 : stdgo.GoInt))) {
                                return stdgo._internal.encoding.asn1.Asn1__makeField._makeField(_v.field(_startingField)?.__copy__(), stdgo._internal.encoding.asn1.Asn1__parseFieldParameters._parseFieldParameters(_t.field(_startingField).tag.get(("asn1" : stdgo.GoString))?.__copy__())?.__copy__());
                            } else {
                                var _m = (new stdgo.Slice<stdgo._internal.encoding.asn1.Asn1_T_encoder.T_encoder>((_n1 : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo._internal.encoding.asn1.Asn1_T_encoder.T_encoder>);
                                {
                                    var _i = (0 : stdgo.GoInt);
                                    stdgo.Go.cfor((_i < _n1 : Bool), _i++, {
                                        {
                                            var __tmp__ = stdgo._internal.encoding.asn1.Asn1__makeField._makeField(_v.field((_i + _startingField : stdgo.GoInt))?.__copy__(), stdgo._internal.encoding.asn1.Asn1__parseFieldParameters._parseFieldParameters(_t.field((_i + _startingField : stdgo.GoInt)).tag.get(("asn1" : stdgo.GoString))?.__copy__())?.__copy__());
                                            _m[(_i : stdgo.GoInt)] = __tmp__._0;
                                            _err = __tmp__._1;
                                        };
                                        if (_err != null) {
                                            return { _0 : (null : stdgo._internal.encoding.asn1.Asn1_T_encoder.T_encoder), _1 : _err };
                                        };
                                    });
                                };
                                return { _0 : stdgo.Go.asInterface((_m : stdgo._internal.encoding.asn1.Asn1_T_multiEncoder.T_multiEncoder)), _1 : (null : stdgo.Error) };
                            };
                        };
                    };
                } else if (__value__ == ((23u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                    var _sliceType = (_v.type() : stdgo._internal.reflect.Reflect_Type_.Type_);
                    if (_sliceType.elem().kind() == ((8u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                        return { _0 : stdgo.Go.asInterface((_v.bytes() : stdgo._internal.encoding.asn1.Asn1_T_bytesEncoder.T_bytesEncoder)), _1 : (null : stdgo.Error) };
                    };
                    var _fp:stdgo._internal.encoding.asn1.Asn1_T_fieldParameters.T_fieldParameters = ({} : stdgo._internal.encoding.asn1.Asn1_T_fieldParameters.T_fieldParameters);
                    {
                        var _l = (_v.len() : stdgo.GoInt);
                        {
                            final __value__ = _l;
                            if (__value__ == ((0 : stdgo.GoInt))) {
                                return { _0 : stdgo.Go.asInterface((new stdgo._internal.encoding.asn1.Asn1_T_bytesEncoder.T_bytesEncoder(0, 0) : stdgo._internal.encoding.asn1.Asn1_T_bytesEncoder.T_bytesEncoder)), _1 : (null : stdgo.Error) };
                            } else if (__value__ == ((1 : stdgo.GoInt))) {
                                return stdgo._internal.encoding.asn1.Asn1__makeField._makeField(_v.index((0 : stdgo.GoInt))?.__copy__(), _fp?.__copy__());
                            } else {
                                var _m = (new stdgo.Slice<stdgo._internal.encoding.asn1.Asn1_T_encoder.T_encoder>((_l : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo._internal.encoding.asn1.Asn1_T_encoder.T_encoder>);
                                {
                                    var _i = (0 : stdgo.GoInt);
                                    stdgo.Go.cfor((_i < _l : Bool), _i++, {
                                        {
                                            var __tmp__ = stdgo._internal.encoding.asn1.Asn1__makeField._makeField(_v.index(_i)?.__copy__(), _fp?.__copy__());
                                            _m[(_i : stdgo.GoInt)] = __tmp__._0;
                                            _err = __tmp__._1;
                                        };
                                        if (_err != null) {
                                            return { _0 : (null : stdgo._internal.encoding.asn1.Asn1_T_encoder.T_encoder), _1 : _err };
                                        };
                                    });
                                };
                                if (_params._set) {
                                    return { _0 : stdgo.Go.asInterface((_m : stdgo._internal.encoding.asn1.Asn1_T_setEncoder.T_setEncoder)), _1 : (null : stdgo.Error) };
                                };
                                return { _0 : stdgo.Go.asInterface((_m : stdgo._internal.encoding.asn1.Asn1_T_multiEncoder.T_multiEncoder)), _1 : (null : stdgo.Error) };
                            };
                        };
                    };
                } else if (__value__ == ((24u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                    {
                        final __value__ = _params._stringType;
                        if (__value__ == ((22 : stdgo.GoInt))) {
                            return stdgo._internal.encoding.asn1.Asn1__makeIA5String._makeIA5String((_v.string() : stdgo.GoString)?.__copy__());
                        } else if (__value__ == ((19 : stdgo.GoInt))) {
                            return stdgo._internal.encoding.asn1.Asn1__makePrintableString._makePrintableString((_v.string() : stdgo.GoString)?.__copy__());
                        } else if (__value__ == ((18 : stdgo.GoInt))) {
                            return stdgo._internal.encoding.asn1.Asn1__makeNumericString._makeNumericString((_v.string() : stdgo.GoString)?.__copy__());
                        } else {
                            return { _0 : stdgo._internal.encoding.asn1.Asn1__makeUTF8String._makeUTF8String((_v.string() : stdgo.GoString)?.__copy__()), _1 : (null : stdgo.Error) };
                        };
                    };
                };
            };
        };
        return { _0 : (null : stdgo._internal.encoding.asn1.Asn1_T_encoder.T_encoder), _1 : stdgo.Go.asInterface((new stdgo._internal.encoding.asn1.Asn1_StructuralError.StructuralError(("unknown Go type" : stdgo.GoString)) : stdgo._internal.encoding.asn1.Asn1_StructuralError.StructuralError)) };
    }