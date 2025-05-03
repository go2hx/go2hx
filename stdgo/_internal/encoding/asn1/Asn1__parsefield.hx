package stdgo._internal.encoding.asn1;
function _parseField(_v:stdgo._internal.reflect.Reflect_value.Value, _bytes:stdgo.Slice<stdgo.GoUInt8>, _initOffset:stdgo.GoInt, _params:stdgo._internal.encoding.asn1.Asn1_t_fieldparameters.T_fieldParameters):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        var _offset = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        _offset = _initOffset;
        var _fieldType = (_v.type() : stdgo._internal.reflect.Reflect_type_.Type_);
        //"file:///home/runner/.go/go1.21.3/src/encoding/asn1/asn1.go#L683"
        if (_offset == ((_bytes.length))) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/asn1/asn1.go#L684"
            if (!stdgo._internal.encoding.asn1.Asn1__setdefaultvalue._setDefaultValue(_v?.__copy__(), _params?.__copy__())) {
                _err = stdgo.Go.asInterface((new stdgo._internal.encoding.asn1.Asn1_syntaxerror.SyntaxError(("sequence truncated" : stdgo.GoString)) : stdgo._internal.encoding.asn1.Asn1_syntaxerror.SyntaxError));
            };
            //"file:///home/runner/.go/go1.21.3/src/encoding/asn1/asn1.go#L687"
            return { _0 : _offset, _1 : _err };
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/asn1/asn1.go#L691"
        {
            var _ifaceType = (_fieldType : stdgo._internal.reflect.Reflect_type_.Type_);
            if (((_ifaceType.kind() == (20u32 : stdgo._internal.reflect.Reflect_kind.Kind)) && (_ifaceType.numMethod() == (0 : stdgo.GoInt)) : Bool)) {
                var _t:stdgo._internal.encoding.asn1.Asn1_t_tagandlength.T_tagAndLength = ({} : stdgo._internal.encoding.asn1.Asn1_t_tagandlength.T_tagAndLength);
                {
                    var __tmp__ = stdgo._internal.encoding.asn1.Asn1__parsetagandlength._parseTagAndLength(_bytes, _offset);
                    _t = @:tmpset0 __tmp__._0?.__copy__();
                    _offset = @:tmpset0 __tmp__._1;
                    _err = @:tmpset0 __tmp__._2;
                };
                //"file:///home/runner/.go/go1.21.3/src/encoding/asn1/asn1.go#L694"
                if (_err != null) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/asn1/asn1.go#L695"
                    return { _0 : _offset, _1 : _err };
                };
                //"file:///home/runner/.go/go1.21.3/src/encoding/asn1/asn1.go#L697"
                if (stdgo._internal.encoding.asn1.Asn1__invalidlength._invalidLength(_offset, _t._length, (_bytes.length))) {
                    _err = stdgo.Go.asInterface((new stdgo._internal.encoding.asn1.Asn1_syntaxerror.SyntaxError(("data truncated" : stdgo.GoString)) : stdgo._internal.encoding.asn1.Asn1_syntaxerror.SyntaxError));
                    //"file:///home/runner/.go/go1.21.3/src/encoding/asn1/asn1.go#L699"
                    return { _0 : _offset, _1 : _err };
                };
                var _result:stdgo.AnyInterface = (null : stdgo.AnyInterface);
                //"file:///home/runner/.go/go1.21.3/src/encoding/asn1/asn1.go#L702"
                if ((!_t._isCompound && (_t._class == (0 : stdgo.GoInt)) : Bool)) {
                    var _innerBytes = (_bytes.__slice__(_offset, (_offset + _t._length : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                    //"file:///home/runner/.go/go1.21.3/src/encoding/asn1/asn1.go#L704"
                    {
                        final __value__ = _t._tag;
                        if (__value__ == ((19 : stdgo.GoInt))) {
                            {
                                var __tmp__ = stdgo._internal.encoding.asn1.Asn1__parseprintablestring._parsePrintableString(_innerBytes);
                                _result = stdgo.Go.toInterface(@:tmpset0 __tmp__._0);
                                _err = @:tmpset0 __tmp__._1;
                            };
                        } else if (__value__ == ((18 : stdgo.GoInt))) {
                            {
                                var __tmp__ = stdgo._internal.encoding.asn1.Asn1__parsenumericstring._parseNumericString(_innerBytes);
                                _result = stdgo.Go.toInterface(@:tmpset0 __tmp__._0);
                                _err = @:tmpset0 __tmp__._1;
                            };
                        } else if (__value__ == ((22 : stdgo.GoInt))) {
                            {
                                var __tmp__ = stdgo._internal.encoding.asn1.Asn1__parseia5string._parseIA5String(_innerBytes);
                                _result = stdgo.Go.toInterface(@:tmpset0 __tmp__._0);
                                _err = @:tmpset0 __tmp__._1;
                            };
                        } else if (__value__ == ((20 : stdgo.GoInt))) {
                            {
                                var __tmp__ = stdgo._internal.encoding.asn1.Asn1__parset61string._parseT61String(_innerBytes);
                                _result = stdgo.Go.toInterface(@:tmpset0 __tmp__._0);
                                _err = @:tmpset0 __tmp__._1;
                            };
                        } else if (__value__ == ((12 : stdgo.GoInt))) {
                            {
                                var __tmp__ = stdgo._internal.encoding.asn1.Asn1__parseutf8string._parseUTF8String(_innerBytes);
                                _result = stdgo.Go.toInterface(@:tmpset0 __tmp__._0);
                                _err = @:tmpset0 __tmp__._1;
                            };
                        } else if (__value__ == ((2 : stdgo.GoInt))) {
                            {
                                var __tmp__ = stdgo._internal.encoding.asn1.Asn1__parseint64._parseInt64(_innerBytes);
                                _result = stdgo.Go.toInterface(@:tmpset0 __tmp__._0);
                                _err = @:tmpset0 __tmp__._1;
                            };
                        } else if (__value__ == ((3 : stdgo.GoInt))) {
                            {
                                var __tmp__ = stdgo._internal.encoding.asn1.Asn1__parsebitstring._parseBitString(_innerBytes);
                                _result = stdgo.Go.toInterface(stdgo.Go.asInterface(@:tmpset0 __tmp__._0));
                                _err = @:tmpset0 __tmp__._1;
                            };
                        } else if (__value__ == ((6 : stdgo.GoInt))) {
                            {
                                var __tmp__ = stdgo._internal.encoding.asn1.Asn1__parseobjectidentifier._parseObjectIdentifier(_innerBytes);
                                _result = stdgo.Go.toInterface(stdgo.Go.asInterface(@:tmpset0 __tmp__._0));
                                _err = @:tmpset0 __tmp__._1;
                            };
                        } else if (__value__ == ((23 : stdgo.GoInt))) {
                            {
                                var __tmp__ = stdgo._internal.encoding.asn1.Asn1__parseutctime._parseUTCTime(_innerBytes);
                                _result = stdgo.Go.toInterface(stdgo.Go.asInterface(@:tmpset0 __tmp__._0));
                                _err = @:tmpset0 __tmp__._1;
                            };
                        } else if (__value__ == ((24 : stdgo.GoInt))) {
                            {
                                var __tmp__ = stdgo._internal.encoding.asn1.Asn1__parsegeneralizedtime._parseGeneralizedTime(_innerBytes);
                                _result = stdgo.Go.toInterface(stdgo.Go.asInterface(@:tmpset0 __tmp__._0));
                                _err = @:tmpset0 __tmp__._1;
                            };
                        } else if (__value__ == ((4 : stdgo.GoInt))) {
                            _result = stdgo.Go.toInterface(_innerBytes);
                        } else if (__value__ == ((30 : stdgo.GoInt))) {
                            {
                                var __tmp__ = stdgo._internal.encoding.asn1.Asn1__parsebmpstring._parseBMPString(_innerBytes);
                                _result = stdgo.Go.toInterface(@:tmpset0 __tmp__._0);
                                _err = @:tmpset0 __tmp__._1;
                            };
                        } else {};
                    };
                };
                _offset = (_offset + (_t._length) : stdgo.GoInt);
                //"file:///home/runner/.go/go1.21.3/src/encoding/asn1/asn1.go#L734"
                if (_err != null) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/asn1/asn1.go#L735"
                    return { _0 : _offset, _1 : _err };
                };
                //"file:///home/runner/.go/go1.21.3/src/encoding/asn1/asn1.go#L737"
                if (_result != null) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/asn1/asn1.go#L738"
                    _v.set(stdgo._internal.reflect.Reflect_valueof.valueOf(_result)?.__copy__());
                };
                //"file:///home/runner/.go/go1.21.3/src/encoding/asn1/asn1.go#L740"
                return { _0 : _offset, _1 : _err };
            };
        };
        var __tmp__ = stdgo._internal.encoding.asn1.Asn1__parsetagandlength._parseTagAndLength(_bytes, _offset), _t:stdgo._internal.encoding.asn1.Asn1_t_tagandlength.T_tagAndLength = __tmp__._0, _offset:stdgo.GoInt = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        //"file:///home/runner/.go/go1.21.3/src/encoding/asn1/asn1.go#L744"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/asn1/asn1.go#L745"
            return { _0 : _offset, _1 : _err };
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/asn1/asn1.go#L747"
        if (_params._explicit) {
            var _expectedClass = (2 : stdgo.GoInt);
            //"file:///home/runner/.go/go1.21.3/src/encoding/asn1/asn1.go#L749"
            if (_params._application) {
                _expectedClass = (1 : stdgo.GoInt);
            };
            //"file:///home/runner/.go/go1.21.3/src/encoding/asn1/asn1.go#L752"
            if (_offset == ((_bytes.length))) {
                _err = stdgo.Go.asInterface((new stdgo._internal.encoding.asn1.Asn1_structuralerror.StructuralError(("explicit tag has no child" : stdgo.GoString)) : stdgo._internal.encoding.asn1.Asn1_structuralerror.StructuralError));
                //"file:///home/runner/.go/go1.21.3/src/encoding/asn1/asn1.go#L754"
                return { _0 : _offset, _1 : _err };
            };
            //"file:///home/runner/.go/go1.21.3/src/encoding/asn1/asn1.go#L756"
            if (((_t._class == (_expectedClass) && _t._tag == (_params._tag.value) : Bool) && (((_t._length == (0 : stdgo.GoInt)) || _t._isCompound : Bool)) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/asn1/asn1.go#L757"
                if ((_fieldType.string() : String) == (stdgo._internal.encoding.asn1.Asn1__rawvaluetype._rawValueType.string() : String)) {} else if ((_t._length > (0 : stdgo.GoInt) : Bool)) {
                    {
                        var __tmp__ = stdgo._internal.encoding.asn1.Asn1__parsetagandlength._parseTagAndLength(_bytes, _offset);
                        _t = @:tmpset0 __tmp__._0?.__copy__();
                        _offset = @:tmpset0 __tmp__._1;
                        _err = @:tmpset0 __tmp__._2;
                    };
                    //"file:///home/runner/.go/go1.21.3/src/encoding/asn1/asn1.go#L761"
                    if (_err != null) {
                        //"file:///home/runner/.go/go1.21.3/src/encoding/asn1/asn1.go#L762"
                        return { _0 : _offset, _1 : _err };
                    };
                } else {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/asn1/asn1.go#L765"
                    if (!((_fieldType.string() : String) == (stdgo._internal.encoding.asn1.Asn1__flagtype._flagType.string() : String))) {
                        _err = stdgo.Go.asInterface((new stdgo._internal.encoding.asn1.Asn1_structuralerror.StructuralError(("zero length explicit tag was not an asn1.Flag" : stdgo.GoString)) : stdgo._internal.encoding.asn1.Asn1_structuralerror.StructuralError));
                        //"file:///home/runner/.go/go1.21.3/src/encoding/asn1/asn1.go#L767"
                        return { _0 : _offset, _1 : _err };
                    };
                    //"file:///home/runner/.go/go1.21.3/src/encoding/asn1/asn1.go#L769"
                    _v.setBool(true);
                    //"file:///home/runner/.go/go1.21.3/src/encoding/asn1/asn1.go#L770"
                    return { _0 : _offset, _1 : _err };
                };
            } else {
                var _ok = (stdgo._internal.encoding.asn1.Asn1__setdefaultvalue._setDefaultValue(_v?.__copy__(), _params?.__copy__()) : Bool);
                //"file:///home/runner/.go/go1.21.3/src/encoding/asn1/asn1.go#L775"
                if (_ok) {
                    _offset = _initOffset;
                } else {
                    _err = stdgo.Go.asInterface((new stdgo._internal.encoding.asn1.Asn1_structuralerror.StructuralError(("explicitly tagged member didn\'t match" : stdgo.GoString)) : stdgo._internal.encoding.asn1.Asn1_structuralerror.StructuralError));
                };
                //"file:///home/runner/.go/go1.21.3/src/encoding/asn1/asn1.go#L780"
                return { _0 : _offset, _1 : _err };
            };
        };
        var __tmp__ = stdgo._internal.encoding.asn1.Asn1__getuniversaltype._getUniversalType(_fieldType), _matchAny:Bool = __tmp__._0, _universalTag:stdgo.GoInt = __tmp__._1, _compoundType:Bool = __tmp__._2, _ok1:Bool = __tmp__._3;
        //"file:///home/runner/.go/go1.21.3/src/encoding/asn1/asn1.go#L785"
        if (!_ok1) {
            _err = stdgo.Go.asInterface((new stdgo._internal.encoding.asn1.Asn1_structuralerror.StructuralError(stdgo._internal.fmt.Fmt_sprintf.sprintf(("unknown Go type: %v" : stdgo.GoString), stdgo.Go.toInterface(_fieldType))?.__copy__()) : stdgo._internal.encoding.asn1.Asn1_structuralerror.StructuralError));
            //"file:///home/runner/.go/go1.21.3/src/encoding/asn1/asn1.go#L787"
            return { _0 : _offset, _1 : _err };
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/asn1/asn1.go#L794"
        if (_universalTag == ((19 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/asn1/asn1.go#L795"
            if (_t._class == ((0 : stdgo.GoInt))) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/asn1/asn1.go#L796"
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
        //"file:///home/runner/.go/go1.21.3/src/encoding/asn1/asn1.go#L807"
        if (((_universalTag == ((23 : stdgo.GoInt)) && _t._tag == ((24 : stdgo.GoInt)) : Bool) && (_t._class == (0 : stdgo.GoInt)) : Bool)) {
            _universalTag = (24 : stdgo.GoInt);
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/asn1/asn1.go#L811"
        if (_params._set) {
            _universalTag = (17 : stdgo.GoInt);
        };
        var _matchAnyClassAndTag = (_matchAny : Bool);
        var _expectedClass = (0 : stdgo.GoInt);
        var _expectedTag = (_universalTag : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/encoding/asn1/asn1.go#L819"
        if ((!_params._explicit && (_params._tag != null) : Bool)) {
            _expectedClass = (2 : stdgo.GoInt);
            _expectedTag = _params._tag.value;
            _matchAnyClassAndTag = false;
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/asn1/asn1.go#L825"
        if (((!_params._explicit && _params._application : Bool) && (_params._tag != null) : Bool)) {
            _expectedClass = (1 : stdgo.GoInt);
            _expectedTag = _params._tag.value;
            _matchAnyClassAndTag = false;
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/asn1/asn1.go#L831"
        if (((!_params._explicit && _params._private : Bool) && (_params._tag != null) : Bool)) {
            _expectedClass = (3 : stdgo.GoInt);
            _expectedTag = _params._tag.value;
            _matchAnyClassAndTag = false;
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/asn1/asn1.go#L838"
        if (((!_matchAnyClassAndTag && (((_t._class != _expectedClass) || (_t._tag != _expectedTag) : Bool)) : Bool) || ((!_matchAny && (_t._isCompound != _compoundType) : Bool)) : Bool)) {
            var _ok = (stdgo._internal.encoding.asn1.Asn1__setdefaultvalue._setDefaultValue(_v?.__copy__(), _params?.__copy__()) : Bool);
            //"file:///home/runner/.go/go1.21.3/src/encoding/asn1/asn1.go#L842"
            if (_ok) {
                _offset = _initOffset;
            } else {
                _err = stdgo.Go.asInterface((new stdgo._internal.encoding.asn1.Asn1_structuralerror.StructuralError(stdgo._internal.fmt.Fmt_sprintf.sprintf(("tags don\'t match (%d vs %+v) %+v %s @%d" : stdgo.GoString), stdgo.Go.toInterface(_expectedTag), stdgo.Go.toInterface(stdgo.Go.asInterface(_t)), stdgo.Go.toInterface(stdgo.Go.asInterface(_params)), stdgo.Go.toInterface(_fieldType.name()), stdgo.Go.toInterface(_offset))?.__copy__()) : stdgo._internal.encoding.asn1.Asn1_structuralerror.StructuralError));
            };
            //"file:///home/runner/.go/go1.21.3/src/encoding/asn1/asn1.go#L847"
            return { _0 : _offset, _1 : _err };
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/asn1/asn1.go#L849"
        if (stdgo._internal.encoding.asn1.Asn1__invalidlength._invalidLength(_offset, _t._length, (_bytes.length))) {
            _err = stdgo.Go.asInterface((new stdgo._internal.encoding.asn1.Asn1_syntaxerror.SyntaxError(("data truncated" : stdgo.GoString)) : stdgo._internal.encoding.asn1.Asn1_syntaxerror.SyntaxError));
            //"file:///home/runner/.go/go1.21.3/src/encoding/asn1/asn1.go#L851"
            return { _0 : _offset, _1 : _err };
        };
        var _innerBytes = (_bytes.__slice__(_offset, (_offset + _t._length : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        _offset = (_offset + (_t._length) : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/encoding/asn1/asn1.go#L857"
        {
            final __type__ = _v.addr().interface_();
            if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.encoding.asn1.Asn1_rawvalue.RawValue>))) {
                var _v:stdgo.Ref<stdgo._internal.encoding.asn1.Asn1_rawvalue.RawValue> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.encoding.asn1.Asn1_rawvalue.RawValue>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.encoding.asn1.Asn1_rawvalue.RawValue>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.encoding.asn1.Asn1_rawvalue.RawValue>) : __type__.__underlying__().value);
                {
                    var __tmp__ = (new stdgo._internal.encoding.asn1.Asn1_rawvalue.RawValue(_t._class, _t._tag, _t._isCompound, _innerBytes, (_bytes.__slice__(_initOffset, _offset) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo._internal.encoding.asn1.Asn1_rawvalue.RawValue);
                    var x = (_v : stdgo._internal.encoding.asn1.Asn1_rawvalue.RawValue);
                    x.class_ = __tmp__?.class_;
                    x.tag = __tmp__?.tag;
                    x.isCompound = __tmp__?.isCompound;
                    x.bytes = __tmp__?.bytes;
                    x.fullBytes = __tmp__?.fullBytes;
                };
                //"file:///home/runner/.go/go1.21.3/src/encoding/asn1/asn1.go#L860"
                return { _0 : _offset, _1 : _err };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.encoding.asn1.Asn1_objectidentifier.ObjectIdentifier>))) {
                var _v:stdgo.Ref<stdgo._internal.encoding.asn1.Asn1_objectidentifier.ObjectIdentifier> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.encoding.asn1.Asn1_objectidentifier.ObjectIdentifier>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.encoding.asn1.Asn1_objectidentifier.ObjectIdentifier>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.encoding.asn1.Asn1_objectidentifier.ObjectIdentifier>) : __type__.__underlying__().value);
                _v.__setData__(@:tmpset0 __tmp__._0);
                //"file:///home/runner/.go/go1.21.3/src/encoding/asn1/asn1.go#L863"
                return { _0 : _offset, _1 : _err };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.encoding.asn1.Asn1_bitstring.BitString>))) {
                var _v:stdgo.Ref<stdgo._internal.encoding.asn1.Asn1_bitstring.BitString> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.encoding.asn1.Asn1_bitstring.BitString>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.encoding.asn1.Asn1_bitstring.BitString>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.encoding.asn1.Asn1_bitstring.BitString>) : __type__.__underlying__().value);
                {
                    var __tmp__ = stdgo._internal.encoding.asn1.Asn1__parsebitstring._parseBitString(_innerBytes);
                    var x = _v;
                    x.bytes = @:tmpset0 __tmp__._0?.__copy__()?.bytes;
                    x.bitLength = @:tmpset0 __tmp__._0?.__copy__()?.bitLength;
                    _err = @:tmpset0 __tmp__._1;
                };
                //"file:///home/runner/.go/go1.21.3/src/encoding/asn1/asn1.go#L866"
                return { _0 : _offset, _1 : _err };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.time.Time_time.Time>))) {
                var _v:stdgo.Ref<stdgo._internal.time.Time_time.Time> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.time.Time_time.Time>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.time.Time_time.Time>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.time.Time_time.Time>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/encoding/asn1/asn1.go#L868"
                if (_universalTag == ((23 : stdgo.GoInt))) {
                    {
                        var __tmp__ = stdgo._internal.encoding.asn1.Asn1__parseutctime._parseUTCTime(_innerBytes);
                        var x = _v;
                        x._wall = @:tmpset0 __tmp__._0?.__copy__()?._wall;
                        x._ext = @:tmpset0 __tmp__._0?.__copy__()?._ext;
                        x._loc = @:tmpset0 __tmp__._0?.__copy__()?._loc;
                        _err = @:tmpset0 __tmp__._1;
                    };
                    //"file:///home/runner/.go/go1.21.3/src/encoding/asn1/asn1.go#L870"
                    return { _0 : _offset, _1 : _err };
                };
                {
                    var __tmp__ = stdgo._internal.encoding.asn1.Asn1__parsegeneralizedtime._parseGeneralizedTime(_innerBytes);
                    var x = _v;
                    x._wall = @:tmpset0 __tmp__._0?.__copy__()?._wall;
                    x._ext = @:tmpset0 __tmp__._0?.__copy__()?._ext;
                    x._loc = @:tmpset0 __tmp__._0?.__copy__()?._loc;
                    _err = @:tmpset0 __tmp__._1;
                };
                //"file:///home/runner/.go/go1.21.3/src/encoding/asn1/asn1.go#L873"
                return { _0 : _offset, _1 : _err };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Pointer<stdgo._internal.encoding.asn1.Asn1_enumerated.Enumerated>))) {
                var _v:stdgo.Pointer<stdgo._internal.encoding.asn1.Asn1_enumerated.Enumerated> = __type__ == null ? (null : stdgo.Pointer<stdgo._internal.encoding.asn1.Asn1_enumerated.Enumerated>) : __type__.__underlying__() == null ? (null : stdgo.Pointer<stdgo._internal.encoding.asn1.Asn1_enumerated.Enumerated>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Pointer<stdgo._internal.encoding.asn1.Asn1_enumerated.Enumerated>) : __type__.__underlying__().value);
                var __tmp__ = stdgo._internal.encoding.asn1.Asn1__parseint32._parseInt32(_innerBytes), _parsedInt:stdgo.GoInt32 = __tmp__._0, _err1:stdgo.Error = __tmp__._1;
                //"file:///home/runner/.go/go1.21.3/src/encoding/asn1/asn1.go#L876"
                if (_err1 == null) {
                    _v.value = (_parsedInt : stdgo._internal.encoding.asn1.Asn1_enumerated.Enumerated);
                };
                _err = _err1;
                //"file:///home/runner/.go/go1.21.3/src/encoding/asn1/asn1.go#L880"
                return { _0 : _offset, _1 : _err };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Pointer<stdgo._internal.encoding.asn1.Asn1_flag.Flag>))) {
                var _v:stdgo.Pointer<stdgo._internal.encoding.asn1.Asn1_flag.Flag> = __type__ == null ? (null : stdgo.Pointer<stdgo._internal.encoding.asn1.Asn1_flag.Flag>) : __type__.__underlying__() == null ? (null : stdgo.Pointer<stdgo._internal.encoding.asn1.Asn1_flag.Flag>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Pointer<stdgo._internal.encoding.asn1.Asn1_flag.Flag>) : __type__.__underlying__().value);
                _v.value = true;
                //"file:///home/runner/.go/go1.21.3/src/encoding/asn1/asn1.go#L883"
                return { _0 : _offset, _1 : _err };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Pointer<stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>>))) {
                var _v:stdgo.Pointer<stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>> = __type__ == null ? (null : stdgo.Pointer<stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>>) : __type__.__underlying__() == null ? (null : stdgo.Pointer<stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Pointer<stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>>) : __type__.__underlying__().value);
                var __tmp__ = stdgo._internal.encoding.asn1.Asn1__parsebigint._parseBigInt(_innerBytes), _parsedInt:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = __tmp__._0, _err1:stdgo.Error = __tmp__._1;
                //"file:///home/runner/.go/go1.21.3/src/encoding/asn1/asn1.go#L886"
                if (_err1 == null) {
                    _v.value = _parsedInt;
                };
                _err = _err1;
                //"file:///home/runner/.go/go1.21.3/src/encoding/asn1/asn1.go#L890"
                return { _0 : _offset, _1 : _err };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/asn1/asn1.go#L892"
        {
            var _val = (_v?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
            {
                final __value__ = _val.kind();
                if (__value__ == ((1u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                    var __tmp__ = stdgo._internal.encoding.asn1.Asn1__parsebool._parseBool(_innerBytes), _parsedBool:Bool = __tmp__._0, _err1:stdgo.Error = __tmp__._1;
                    //"file:///home/runner/.go/go1.21.3/src/encoding/asn1/asn1.go#L895"
                    if (_err1 == null) {
                        //"file:///home/runner/.go/go1.21.3/src/encoding/asn1/asn1.go#L896"
                        _val.setBool(_parsedBool);
                    };
                    _err = _err1;
                    //"file:///home/runner/.go/go1.21.3/src/encoding/asn1/asn1.go#L899"
                    return { _0 : _offset, _1 : _err };
                } else if (__value__ == ((2u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((5u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((6u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/asn1/asn1.go#L901"
                    if (_val.type().size() == ((new stdgo.GoUIntptr(4) : stdgo.GoUIntptr))) {
                        var __tmp__ = stdgo._internal.encoding.asn1.Asn1__parseint32._parseInt32(_innerBytes), _parsedInt:stdgo.GoInt32 = __tmp__._0, _err1:stdgo.Error = __tmp__._1;
                        //"file:///home/runner/.go/go1.21.3/src/encoding/asn1/asn1.go#L903"
                        if (_err1 == null) {
                            //"file:///home/runner/.go/go1.21.3/src/encoding/asn1/asn1.go#L904"
                            _val.setInt((_parsedInt : stdgo.GoInt64));
                        };
                        _err = _err1;
                    } else {
                        var __tmp__ = stdgo._internal.encoding.asn1.Asn1__parseint64._parseInt64(_innerBytes), _parsedInt:stdgo.GoInt64 = __tmp__._0, _err1:stdgo.Error = __tmp__._1;
                        //"file:///home/runner/.go/go1.21.3/src/encoding/asn1/asn1.go#L909"
                        if (_err1 == null) {
                            //"file:///home/runner/.go/go1.21.3/src/encoding/asn1/asn1.go#L910"
                            _val.setInt(_parsedInt);
                        };
                        _err = _err1;
                    };
                    //"file:///home/runner/.go/go1.21.3/src/encoding/asn1/asn1.go#L914"
                    return { _0 : _offset, _1 : _err };
                } else if (__value__ == ((25u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                    var _structType = (_fieldType : stdgo._internal.reflect.Reflect_type_.Type_);
                    //"file:///home/runner/.go/go1.21.3/src/encoding/asn1/asn1.go#L919"
                    {
                        var _i = (0 : stdgo.GoInt);
                        while ((_i < _structType.numField() : Bool)) {
                            //"file:///home/runner/.go/go1.21.3/src/encoding/asn1/asn1.go#L920"
                            if (!_structType.field(_i).isExported()) {
                                _err = stdgo.Go.asInterface((new stdgo._internal.encoding.asn1.Asn1_structuralerror.StructuralError(("struct contains unexported fields" : stdgo.GoString)) : stdgo._internal.encoding.asn1.Asn1_structuralerror.StructuralError));
                                //"file:///home/runner/.go/go1.21.3/src/encoding/asn1/asn1.go#L922"
                                return { _0 : _offset, _1 : _err };
                            };
                            _i++;
                        };
                    };
                    //"file:///home/runner/.go/go1.21.3/src/encoding/asn1/asn1.go#L926"
                    if (((_structType.numField() > (0 : stdgo.GoInt) : Bool) && ((_structType.field((0 : stdgo.GoInt)).type.string() : String) == (stdgo._internal.encoding.asn1.Asn1__rawcontentstype._rawContentsType.string() : String)) : Bool)) {
                        var _bytes = (_bytes.__slice__(_initOffset, _offset) : stdgo.Slice<stdgo.GoUInt8>);
                        //"file:///home/runner/.go/go1.21.3/src/encoding/asn1/asn1.go#L929"
                        _val.field((0 : stdgo.GoInt)).set(stdgo._internal.reflect.Reflect_valueof.valueOf(stdgo.Go.toInterface((_bytes : stdgo._internal.encoding.asn1.Asn1_rawcontent.RawContent)))?.__copy__());
                    };
                    var _innerOffset = (0 : stdgo.GoInt);
                    //"file:///home/runner/.go/go1.21.3/src/encoding/asn1/asn1.go#L933"
                    {
                        var _i = (0 : stdgo.GoInt);
                        while ((_i < _structType.numField() : Bool)) {
                            var _field = (_structType.field(_i).__copy__() : stdgo._internal.reflect.Reflect_structfield.StructField);
//"file:///home/runner/.go/go1.21.3/src/encoding/asn1/asn1.go#L935"
                            if (((_i == (0 : stdgo.GoInt)) && ((_field.type.string() : String) == (stdgo._internal.encoding.asn1.Asn1__rawcontentstype._rawContentsType.string() : String)) : Bool)) {
                                //"file:///home/runner/.go/go1.21.3/src/encoding/asn1/asn1.go#L936"
                                {
                                    _i++;
                                    continue;
                                };
                            };
{
                                var __tmp__ = stdgo._internal.encoding.asn1.Asn1__parsefield._parseField(_val.field(_i).__copy__(), _innerBytes, _innerOffset, stdgo._internal.encoding.asn1.Asn1__parsefieldparameters._parseFieldParameters(_field.tag.get(("asn1" : stdgo.GoString)).__copy__()).__copy__());
                                _innerOffset = @:tmpset0 __tmp__._0;
                                _err = @:tmpset0 __tmp__._1;
                            };
//"file:///home/runner/.go/go1.21.3/src/encoding/asn1/asn1.go#L939"
                            if (_err != null) {
                                //"file:///home/runner/.go/go1.21.3/src/encoding/asn1/asn1.go#L940"
                                return { _0 : _offset, _1 : _err };
                            };
                            _i++;
                        };
                    };
                    //"file:///home/runner/.go/go1.21.3/src/encoding/asn1/asn1.go#L946"
                    return { _0 : _offset, _1 : _err };
                } else if (__value__ == ((23u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                    var _sliceType = (_fieldType : stdgo._internal.reflect.Reflect_type_.Type_);
                    //"file:///home/runner/.go/go1.21.3/src/encoding/asn1/asn1.go#L949"
                    if (_sliceType.elem().kind() == ((8u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                        //"file:///home/runner/.go/go1.21.3/src/encoding/asn1/asn1.go#L950"
                        _val.set(stdgo._internal.reflect.Reflect_makeslice.makeSlice(_sliceType, (_innerBytes.length), (_innerBytes.length))?.__copy__());
                        //"file:///home/runner/.go/go1.21.3/src/encoding/asn1/asn1.go#L951"
                        stdgo._internal.reflect.Reflect_copy.copy(_val?.__copy__(), stdgo._internal.reflect.Reflect_valueof.valueOf(stdgo.Go.toInterface(_innerBytes))?.__copy__());
                        //"file:///home/runner/.go/go1.21.3/src/encoding/asn1/asn1.go#L952"
                        return { _0 : _offset, _1 : _err };
                    };
                    var __tmp__ = stdgo._internal.encoding.asn1.Asn1__parsesequenceof._parseSequenceOf(_innerBytes, _sliceType, _sliceType.elem()), _newSlice:stdgo._internal.reflect.Reflect_value.Value = __tmp__._0, _err1:stdgo.Error = __tmp__._1;
                    //"file:///home/runner/.go/go1.21.3/src/encoding/asn1/asn1.go#L955"
                    if (_err1 == null) {
                        //"file:///home/runner/.go/go1.21.3/src/encoding/asn1/asn1.go#L956"
                        _val.set(_newSlice?.__copy__());
                    };
                    _err = _err1;
                    //"file:///home/runner/.go/go1.21.3/src/encoding/asn1/asn1.go#L959"
                    return { _0 : _offset, _1 : _err };
                } else if (__value__ == ((24u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                    var _v:stdgo.GoString = ("" : stdgo.GoString);
                    //"file:///home/runner/.go/go1.21.3/src/encoding/asn1/asn1.go#L962"
                    {
                        final __value__ = _universalTag;
                        if (__value__ == ((19 : stdgo.GoInt))) {
                            {
                                var __tmp__ = stdgo._internal.encoding.asn1.Asn1__parseprintablestring._parsePrintableString(_innerBytes);
                                _v = @:tmpset0 __tmp__._0?.__copy__();
                                _err = @:tmpset0 __tmp__._1;
                            };
                        } else if (__value__ == ((18 : stdgo.GoInt))) {
                            {
                                var __tmp__ = stdgo._internal.encoding.asn1.Asn1__parsenumericstring._parseNumericString(_innerBytes);
                                _v = @:tmpset0 __tmp__._0?.__copy__();
                                _err = @:tmpset0 __tmp__._1;
                            };
                        } else if (__value__ == ((22 : stdgo.GoInt))) {
                            {
                                var __tmp__ = stdgo._internal.encoding.asn1.Asn1__parseia5string._parseIA5String(_innerBytes);
                                _v = @:tmpset0 __tmp__._0?.__copy__();
                                _err = @:tmpset0 __tmp__._1;
                            };
                        } else if (__value__ == ((20 : stdgo.GoInt))) {
                            {
                                var __tmp__ = stdgo._internal.encoding.asn1.Asn1__parset61string._parseT61String(_innerBytes);
                                _v = @:tmpset0 __tmp__._0?.__copy__();
                                _err = @:tmpset0 __tmp__._1;
                            };
                        } else if (__value__ == ((12 : stdgo.GoInt))) {
                            {
                                var __tmp__ = stdgo._internal.encoding.asn1.Asn1__parseutf8string._parseUTF8String(_innerBytes);
                                _v = @:tmpset0 __tmp__._0?.__copy__();
                                _err = @:tmpset0 __tmp__._1;
                            };
                        } else if (__value__ == ((27 : stdgo.GoInt))) {
                            {
                                var __tmp__ = stdgo._internal.encoding.asn1.Asn1__parset61string._parseT61String(_innerBytes);
                                _v = @:tmpset0 __tmp__._0?.__copy__();
                                _err = @:tmpset0 __tmp__._1;
                            };
                        } else if (__value__ == ((30 : stdgo.GoInt))) {
                            {
                                var __tmp__ = stdgo._internal.encoding.asn1.Asn1__parsebmpstring._parseBMPString(_innerBytes);
                                _v = @:tmpset0 __tmp__._0?.__copy__();
                                _err = @:tmpset0 __tmp__._1;
                            };
                        } else {
                            _err = stdgo.Go.asInterface((new stdgo._internal.encoding.asn1.Asn1_syntaxerror.SyntaxError(stdgo._internal.fmt.Fmt_sprintf.sprintf(("internal error: unknown string type %d" : stdgo.GoString), stdgo.Go.toInterface(_universalTag))?.__copy__()) : stdgo._internal.encoding.asn1.Asn1_syntaxerror.SyntaxError));
                        };
                    };
                    //"file:///home/runner/.go/go1.21.3/src/encoding/asn1/asn1.go#L985"
                    if (_err == null) {
                        //"file:///home/runner/.go/go1.21.3/src/encoding/asn1/asn1.go#L986"
                        _val.setString(_v?.__copy__());
                    };
                    //"file:///home/runner/.go/go1.21.3/src/encoding/asn1/asn1.go#L988"
                    return { _0 : _offset, _1 : _err };
                };
            };
        };
        _err = stdgo.Go.asInterface((new stdgo._internal.encoding.asn1.Asn1_structuralerror.StructuralError((("unsupported: " : stdgo.GoString) + (_v.type().string() : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__()) : stdgo._internal.encoding.asn1.Asn1_structuralerror.StructuralError));
        //"file:///home/runner/.go/go1.21.3/src/encoding/asn1/asn1.go#L991"
        return { _0 : _offset, _1 : _err };
    }
