package stdgo._internal.encoding.asn1;
function _makeBody(_value:stdgo._internal.reflect.Reflect_value.Value, _params:stdgo._internal.encoding.asn1.Asn1_t_fieldparameters.T_fieldParameters):{ var _0 : stdgo._internal.encoding.asn1.Asn1_t_encoder.T_encoder; var _1 : stdgo.Error; } {
        var _e = (null : stdgo._internal.encoding.asn1.Asn1_t_encoder.T_encoder), _err = (null : stdgo.Error);
        {
            final __value__ = _value.type();
            if ((__value__.string() : String) == (stdgo._internal.encoding.asn1.Asn1__flagtype._flagType.string() : String)) {
                return {
                    final __tmp__:{ var _0 : stdgo._internal.encoding.asn1.Asn1_t_encoder.T_encoder; var _1 : stdgo.Error; } = { _0 : stdgo.Go.asInterface((new stdgo._internal.encoding.asn1.Asn1_t_bytesencoder.T_bytesEncoder(0, 0) : stdgo._internal.encoding.asn1.Asn1_t_bytesencoder.T_bytesEncoder)), _1 : (null : stdgo.Error) };
                    _e = __tmp__._0;
                    _err = __tmp__._1;
                    __tmp__;
                };
            } else if ((__value__.string() : String) == (stdgo._internal.encoding.asn1.Asn1__timetype._timeType.string() : String)) {
                var _t = ((stdgo.Go.typeAssert((_value.interface_() : stdgo._internal.time.Time_time.Time)) : stdgo._internal.time.Time_time.Time)?.__copy__() : stdgo._internal.time.Time_time.Time);
                if (((_params._timeType == (24 : stdgo.GoInt)) || stdgo._internal.encoding.asn1.Asn1__outsideutcrange._outsideUTCRange(_t?.__copy__()) : Bool)) {
                    return {
                        final __tmp__ = stdgo._internal.encoding.asn1.Asn1__makegeneralizedtime._makeGeneralizedTime(_t?.__copy__());
                        _e = __tmp__._0;
                        _err = __tmp__._1;
                        { _0 : _e, _1 : _err };
                    };
                };
                return {
                    final __tmp__ = stdgo._internal.encoding.asn1.Asn1__makeutctime._makeUTCTime(_t?.__copy__());
                    _e = __tmp__._0;
                    _err = __tmp__._1;
                    { _0 : _e, _1 : _err };
                };
            } else if ((__value__.string() : String) == (stdgo._internal.encoding.asn1.Asn1__bitstringtype._bitStringType.string() : String)) {
                return {
                    final __tmp__:{ var _0 : stdgo._internal.encoding.asn1.Asn1_t_encoder.T_encoder; var _1 : stdgo.Error; } = { _0 : stdgo.Go.asInterface((({
                        final e = (stdgo.Go.typeAssert((_value.interface_() : stdgo._internal.encoding.asn1.Asn1_bitstring.BitString)) : stdgo._internal.encoding.asn1.Asn1_bitstring.BitString);
                        ({ bytes : e.bytes, bitLength : e.bitLength } : stdgo._internal.encoding.asn1.Asn1_t_bitstringencoder.T_bitStringEncoder);
                    }))), _1 : (null : stdgo.Error) };
                    _e = __tmp__._0;
                    _err = __tmp__._1;
                    __tmp__;
                };
            } else if ((__value__.string() : String) == (stdgo._internal.encoding.asn1.Asn1__objectidentifiertype._objectIdentifierType.string() : String)) {
                return {
                    final __tmp__ = stdgo._internal.encoding.asn1.Asn1__makeobjectidentifier._makeObjectIdentifier((stdgo.Go.typeAssert((_value.interface_() : stdgo._internal.encoding.asn1.Asn1_objectidentifier.ObjectIdentifier)) : stdgo._internal.encoding.asn1.Asn1_objectidentifier.ObjectIdentifier));
                    _e = __tmp__._0;
                    _err = __tmp__._1;
                    { _0 : _e, _1 : _err };
                };
            } else if ((__value__.string() : String) == (stdgo._internal.encoding.asn1.Asn1__biginttype._bigIntType.string() : String)) {
                return {
                    final __tmp__ = stdgo._internal.encoding.asn1.Asn1__makebigint._makeBigInt((stdgo.Go.typeAssert((_value.interface_() : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>));
                    _e = __tmp__._0;
                    _err = __tmp__._1;
                    { _0 : _e, _1 : _err };
                };
            };
        };
        {
            var _v = (_value?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
            {
                final __value__ = _v.kind();
                if (__value__ == ((1u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                    if (_v.bool_()) {
                        return {
                            final __tmp__:{ var _0 : stdgo._internal.encoding.asn1.Asn1_t_encoder.T_encoder; var _1 : stdgo.Error; } = { _0 : stdgo._internal.encoding.asn1.Asn1__byteffencoder._byteFFEncoder, _1 : (null : stdgo.Error) };
                            _e = __tmp__._0;
                            _err = __tmp__._1;
                            __tmp__;
                        };
                    };
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.encoding.asn1.Asn1_t_encoder.T_encoder; var _1 : stdgo.Error; } = { _0 : stdgo._internal.encoding.asn1.Asn1__byte00encoder._byte00Encoder, _1 : (null : stdgo.Error) };
                        _e = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                } else if (__value__ == ((2u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((3u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((4u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((5u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((6u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.encoding.asn1.Asn1_t_encoder.T_encoder; var _1 : stdgo.Error; } = { _0 : stdgo.Go.asInterface((_v.int_() : stdgo._internal.encoding.asn1.Asn1_t_int64encoder.T_int64Encoder)), _1 : (null : stdgo.Error) };
                        _e = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                } else if (__value__ == ((25u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                    var _t = (_v.type() : stdgo._internal.reflect.Reflect_type_.Type_);
                    {
                        var _i = (0 : stdgo.GoInt);
                        while ((_i < _t.numField() : Bool)) {
                            if (!_t.field(_i).isExported()) {
                                return {
                                    final __tmp__:{ var _0 : stdgo._internal.encoding.asn1.Asn1_t_encoder.T_encoder; var _1 : stdgo.Error; } = { _0 : (null : stdgo._internal.encoding.asn1.Asn1_t_encoder.T_encoder), _1 : stdgo.Go.asInterface((new stdgo._internal.encoding.asn1.Asn1_structuralerror.StructuralError(("struct contains unexported fields" : stdgo.GoString)) : stdgo._internal.encoding.asn1.Asn1_structuralerror.StructuralError)) };
                                    _e = __tmp__._0;
                                    _err = __tmp__._1;
                                    __tmp__;
                                };
                            };
                            _i++;
                        };
                    };
                    var _startingField = (0 : stdgo.GoInt);
                    var _n = (_t.numField() : stdgo.GoInt);
                    if (_n == ((0 : stdgo.GoInt))) {
                        return {
                            final __tmp__:{ var _0 : stdgo._internal.encoding.asn1.Asn1_t_encoder.T_encoder; var _1 : stdgo.Error; } = { _0 : stdgo.Go.asInterface((new stdgo._internal.encoding.asn1.Asn1_t_bytesencoder.T_bytesEncoder(0, 0) : stdgo._internal.encoding.asn1.Asn1_t_bytesencoder.T_bytesEncoder)), _1 : (null : stdgo.Error) };
                            _e = __tmp__._0;
                            _err = __tmp__._1;
                            __tmp__;
                        };
                    };
                    if ((_t.field((0 : stdgo.GoInt)).type.string() : String) == (stdgo._internal.encoding.asn1.Asn1__rawcontentstype._rawContentsType.string() : String)) {
                        var _s = (_v.field((0 : stdgo.GoInt))?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
                        if ((_s.len() > (0 : stdgo.GoInt) : Bool)) {
                            var _bytes = _s.bytes();
                            return {
                                final __tmp__:{ var _0 : stdgo._internal.encoding.asn1.Asn1_t_encoder.T_encoder; var _1 : stdgo.Error; } = { _0 : stdgo.Go.asInterface((stdgo._internal.encoding.asn1.Asn1__striptagandlength._stripTagAndLength(_bytes) : stdgo._internal.encoding.asn1.Asn1_t_bytesencoder.T_bytesEncoder)), _1 : (null : stdgo.Error) };
                                _e = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                        };
                        _startingField = (1 : stdgo.GoInt);
                    };
                    {
                        var _n1 = (_n - _startingField : stdgo.GoInt);
                        {
                            final __value__ = _n1;
                            if (__value__ == ((0 : stdgo.GoInt))) {
                                return {
                                    final __tmp__:{ var _0 : stdgo._internal.encoding.asn1.Asn1_t_encoder.T_encoder; var _1 : stdgo.Error; } = { _0 : stdgo.Go.asInterface((new stdgo._internal.encoding.asn1.Asn1_t_bytesencoder.T_bytesEncoder(0, 0) : stdgo._internal.encoding.asn1.Asn1_t_bytesencoder.T_bytesEncoder)), _1 : (null : stdgo.Error) };
                                    _e = __tmp__._0;
                                    _err = __tmp__._1;
                                    __tmp__;
                                };
                            } else if (__value__ == ((1 : stdgo.GoInt))) {
                                return {
                                    final __tmp__ = stdgo._internal.encoding.asn1.Asn1__makefield._makeField(_v.field(_startingField)?.__copy__(), stdgo._internal.encoding.asn1.Asn1__parsefieldparameters._parseFieldParameters(_t.field(_startingField).tag.get(("asn1" : stdgo.GoString))?.__copy__())?.__copy__());
                                    _e = __tmp__._0;
                                    _err = __tmp__._1;
                                    { _0 : _e, _1 : _err };
                                };
                            } else {
                                var _m = (new stdgo.Slice<stdgo._internal.encoding.asn1.Asn1_t_encoder.T_encoder>((_n1 : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo._internal.encoding.asn1.Asn1_t_encoder.T_encoder>);
                                {
                                    var _i = (0 : stdgo.GoInt);
                                    while ((_i < _n1 : Bool)) {
                                        {
                                            var __tmp__ = stdgo._internal.encoding.asn1.Asn1__makefield._makeField(_v.field((_i + _startingField : stdgo.GoInt)).__copy__(), stdgo._internal.encoding.asn1.Asn1__parsefieldparameters._parseFieldParameters(_t.field((_i + _startingField : stdgo.GoInt)).tag.get(("asn1" : stdgo.GoString)).__copy__()).__copy__());
                                            _m[(_i : stdgo.GoInt)] = @:tmpset0 __tmp__._0;
                                            _err = @:tmpset0 __tmp__._1;
                                        };
if (_err != null) {
                                            return {
                                                final __tmp__:{ var _0 : stdgo._internal.encoding.asn1.Asn1_t_encoder.T_encoder; var _1 : stdgo.Error; } = { _0 : (null : stdgo._internal.encoding.asn1.Asn1_t_encoder.T_encoder), _1 : _err };
                                                _e = __tmp__._0;
                                                _err = __tmp__._1;
                                                __tmp__;
                                            };
                                        };
                                        _i++;
                                    };
                                };
                                return {
                                    final __tmp__:{ var _0 : stdgo._internal.encoding.asn1.Asn1_t_encoder.T_encoder; var _1 : stdgo.Error; } = { _0 : stdgo.Go.asInterface((_m : stdgo._internal.encoding.asn1.Asn1_t_multiencoder.T_multiEncoder)), _1 : (null : stdgo.Error) };
                                    _e = __tmp__._0;
                                    _err = __tmp__._1;
                                    __tmp__;
                                };
                            };
                        };
                    };
                } else if (__value__ == ((23u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                    var _sliceType = (_v.type() : stdgo._internal.reflect.Reflect_type_.Type_);
                    if (_sliceType.elem().kind() == ((8u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                        return {
                            final __tmp__:{ var _0 : stdgo._internal.encoding.asn1.Asn1_t_encoder.T_encoder; var _1 : stdgo.Error; } = { _0 : stdgo.Go.asInterface((_v.bytes() : stdgo._internal.encoding.asn1.Asn1_t_bytesencoder.T_bytesEncoder)), _1 : (null : stdgo.Error) };
                            _e = __tmp__._0;
                            _err = __tmp__._1;
                            __tmp__;
                        };
                    };
                    var _fp:stdgo._internal.encoding.asn1.Asn1_t_fieldparameters.T_fieldParameters = ({} : stdgo._internal.encoding.asn1.Asn1_t_fieldparameters.T_fieldParameters);
                    {
                        var _l = (_v.len() : stdgo.GoInt);
                        {
                            final __value__ = _l;
                            if (__value__ == ((0 : stdgo.GoInt))) {
                                return {
                                    final __tmp__:{ var _0 : stdgo._internal.encoding.asn1.Asn1_t_encoder.T_encoder; var _1 : stdgo.Error; } = { _0 : stdgo.Go.asInterface((new stdgo._internal.encoding.asn1.Asn1_t_bytesencoder.T_bytesEncoder(0, 0) : stdgo._internal.encoding.asn1.Asn1_t_bytesencoder.T_bytesEncoder)), _1 : (null : stdgo.Error) };
                                    _e = __tmp__._0;
                                    _err = __tmp__._1;
                                    __tmp__;
                                };
                            } else if (__value__ == ((1 : stdgo.GoInt))) {
                                return {
                                    final __tmp__ = stdgo._internal.encoding.asn1.Asn1__makefield._makeField(_v.index((0 : stdgo.GoInt))?.__copy__(), _fp?.__copy__());
                                    _e = __tmp__._0;
                                    _err = __tmp__._1;
                                    { _0 : _e, _1 : _err };
                                };
                            } else {
                                var _m = (new stdgo.Slice<stdgo._internal.encoding.asn1.Asn1_t_encoder.T_encoder>((_l : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo._internal.encoding.asn1.Asn1_t_encoder.T_encoder>);
                                {
                                    var _i = (0 : stdgo.GoInt);
                                    while ((_i < _l : Bool)) {
                                        {
                                            var __tmp__ = stdgo._internal.encoding.asn1.Asn1__makefield._makeField(_v.index(_i).__copy__(), _fp.__copy__());
                                            _m[(_i : stdgo.GoInt)] = @:tmpset0 __tmp__._0;
                                            _err = @:tmpset0 __tmp__._1;
                                        };
if (_err != null) {
                                            return {
                                                final __tmp__:{ var _0 : stdgo._internal.encoding.asn1.Asn1_t_encoder.T_encoder; var _1 : stdgo.Error; } = { _0 : (null : stdgo._internal.encoding.asn1.Asn1_t_encoder.T_encoder), _1 : _err };
                                                _e = __tmp__._0;
                                                _err = __tmp__._1;
                                                __tmp__;
                                            };
                                        };
                                        _i++;
                                    };
                                };
                                if (_params._set) {
                                    return {
                                        final __tmp__:{ var _0 : stdgo._internal.encoding.asn1.Asn1_t_encoder.T_encoder; var _1 : stdgo.Error; } = { _0 : stdgo.Go.asInterface((_m : stdgo._internal.encoding.asn1.Asn1_t_setencoder.T_setEncoder)), _1 : (null : stdgo.Error) };
                                        _e = __tmp__._0;
                                        _err = __tmp__._1;
                                        __tmp__;
                                    };
                                };
                                return {
                                    final __tmp__:{ var _0 : stdgo._internal.encoding.asn1.Asn1_t_encoder.T_encoder; var _1 : stdgo.Error; } = { _0 : stdgo.Go.asInterface((_m : stdgo._internal.encoding.asn1.Asn1_t_multiencoder.T_multiEncoder)), _1 : (null : stdgo.Error) };
                                    _e = __tmp__._0;
                                    _err = __tmp__._1;
                                    __tmp__;
                                };
                            };
                        };
                    };
                } else if (__value__ == ((24u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                    {
                        final __value__ = _params._stringType;
                        if (__value__ == ((22 : stdgo.GoInt))) {
                            return {
                                final __tmp__ = stdgo._internal.encoding.asn1.Asn1__makeia5string._makeIA5String((_v.string() : stdgo.GoString)?.__copy__());
                                _e = __tmp__._0;
                                _err = __tmp__._1;
                                { _0 : _e, _1 : _err };
                            };
                        } else if (__value__ == ((19 : stdgo.GoInt))) {
                            return {
                                final __tmp__ = stdgo._internal.encoding.asn1.Asn1__makeprintablestring._makePrintableString((_v.string() : stdgo.GoString)?.__copy__());
                                _e = __tmp__._0;
                                _err = __tmp__._1;
                                { _0 : _e, _1 : _err };
                            };
                        } else if (__value__ == ((18 : stdgo.GoInt))) {
                            return {
                                final __tmp__ = stdgo._internal.encoding.asn1.Asn1__makenumericstring._makeNumericString((_v.string() : stdgo.GoString)?.__copy__());
                                _e = __tmp__._0;
                                _err = __tmp__._1;
                                { _0 : _e, _1 : _err };
                            };
                        } else {
                            return {
                                final __tmp__:{ var _0 : stdgo._internal.encoding.asn1.Asn1_t_encoder.T_encoder; var _1 : stdgo.Error; } = { _0 : stdgo._internal.encoding.asn1.Asn1__makeutf8string._makeUTF8String((_v.string() : stdgo.GoString)?.__copy__()), _1 : (null : stdgo.Error) };
                                _e = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                        };
                    };
                };
            };
        };
        return {
            final __tmp__:{ var _0 : stdgo._internal.encoding.asn1.Asn1_t_encoder.T_encoder; var _1 : stdgo.Error; } = { _0 : (null : stdgo._internal.encoding.asn1.Asn1_t_encoder.T_encoder), _1 : stdgo.Go.asInterface((new stdgo._internal.encoding.asn1.Asn1_structuralerror.StructuralError(("unknown Go type" : stdgo.GoString)) : stdgo._internal.encoding.asn1.Asn1_structuralerror.StructuralError)) };
            _e = __tmp__._0;
            _err = __tmp__._1;
            __tmp__;
        };
    }
