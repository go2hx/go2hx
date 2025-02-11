package stdgo._internal.encoding.asn1;
function _makeField(_v:stdgo._internal.reflect.Reflect_value.Value, _params:stdgo._internal.encoding.asn1.Asn1_t_fieldparameters.T_fieldParameters):{ var _0 : stdgo._internal.encoding.asn1.Asn1_t_encoder.T_encoder; var _1 : stdgo.Error; } {
        var _e = (null : stdgo._internal.encoding.asn1.Asn1_t_encoder.T_encoder), _err = (null : stdgo.Error);
        if (!_v.isValid()) {
            return {
                final __tmp__:{ var _0 : stdgo._internal.encoding.asn1.Asn1_t_encoder.T_encoder; var _1 : stdgo.Error; } = { _0 : (null : stdgo._internal.encoding.asn1.Asn1_t_encoder.T_encoder), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("asn1: cannot marshal nil value" : stdgo.GoString)) };
                _e = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
        if (((_v.kind() == (20u32 : stdgo._internal.reflect.Reflect_kind.Kind)) && (_v.type().numMethod() == (0 : stdgo.GoInt)) : Bool)) {
            return {
                final __tmp__ = stdgo._internal.encoding.asn1.Asn1__makefield._makeField(_v.elem()?.__copy__(), _params?.__copy__());
                _e = __tmp__._0;
                _err = __tmp__._1;
                { _0 : _e, _1 : _err };
            };
        };
        if (((_v.kind() == ((23u32 : stdgo._internal.reflect.Reflect_kind.Kind)) && _v.len() == ((0 : stdgo.GoInt)) : Bool) && _params._omitEmpty : Bool)) {
            return {
                final __tmp__:{ var _0 : stdgo._internal.encoding.asn1.Asn1_t_encoder.T_encoder; var _1 : stdgo.Error; } = { _0 : stdgo.Go.asInterface((new stdgo._internal.encoding.asn1.Asn1_t_bytesencoder.T_bytesEncoder(0, 0) : stdgo._internal.encoding.asn1.Asn1_t_bytesencoder.T_bytesEncoder)), _1 : (null : stdgo.Error) };
                _e = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
        if (((_params._optional && _params._defaultValue != null : Bool) && stdgo._internal.encoding.asn1.Asn1__canhavedefaultvalue._canHaveDefaultValue(_v.kind()) : Bool)) {
            var _defaultValue = (stdgo._internal.reflect.Reflect_new_.new_(_v.type()).elem()?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
            _defaultValue.setInt(_params._defaultValue.value);
            if (stdgo._internal.reflect.Reflect_deepequal.deepEqual(_v.interface_(), _defaultValue.interface_())) {
                return {
                    final __tmp__:{ var _0 : stdgo._internal.encoding.asn1.Asn1_t_encoder.T_encoder; var _1 : stdgo.Error; } = { _0 : stdgo.Go.asInterface((new stdgo._internal.encoding.asn1.Asn1_t_bytesencoder.T_bytesEncoder(0, 0) : stdgo._internal.encoding.asn1.Asn1_t_bytesencoder.T_bytesEncoder)), _1 : (null : stdgo.Error) };
                    _e = __tmp__._0;
                    _err = __tmp__._1;
                    __tmp__;
                };
            };
        };
        if ((_params._optional && (_params._defaultValue == null) : Bool)) {
            if (stdgo._internal.reflect.Reflect_deepequal.deepEqual(_v.interface_(), stdgo._internal.reflect.Reflect_zero.zero(_v.type()).interface_())) {
                return {
                    final __tmp__:{ var _0 : stdgo._internal.encoding.asn1.Asn1_t_encoder.T_encoder; var _1 : stdgo.Error; } = { _0 : stdgo.Go.asInterface((new stdgo._internal.encoding.asn1.Asn1_t_bytesencoder.T_bytesEncoder(0, 0) : stdgo._internal.encoding.asn1.Asn1_t_bytesencoder.T_bytesEncoder)), _1 : (null : stdgo.Error) };
                    _e = __tmp__._0;
                    _err = __tmp__._1;
                    __tmp__;
                };
            };
        };
        if ((_v.type().string() : String) == (stdgo._internal.encoding.asn1.Asn1__rawvaluetype._rawValueType.string() : String)) {
            var _rv = ((stdgo.Go.typeAssert((_v.interface_() : stdgo._internal.encoding.asn1.Asn1_rawvalue.RawValue)) : stdgo._internal.encoding.asn1.Asn1_rawvalue.RawValue)?.__copy__() : stdgo._internal.encoding.asn1.Asn1_rawvalue.RawValue);
            if ((_rv.fullBytes.length) != ((0 : stdgo.GoInt))) {
                return {
                    final __tmp__:{ var _0 : stdgo._internal.encoding.asn1.Asn1_t_encoder.T_encoder; var _1 : stdgo.Error; } = { _0 : stdgo.Go.asInterface((_rv.fullBytes : stdgo._internal.encoding.asn1.Asn1_t_bytesencoder.T_bytesEncoder)), _1 : (null : stdgo.Error) };
                    _e = __tmp__._0;
                    _err = __tmp__._1;
                    __tmp__;
                };
            };
            var _t = (stdgo.Go.setRef(({} : stdgo._internal.encoding.asn1.Asn1_t_taggedencoder.T_taggedEncoder)) : stdgo.Ref<stdgo._internal.encoding.asn1.Asn1_t_taggedencoder.T_taggedEncoder>);
            (@:checkr _t ?? throw "null pointer dereference")._tag = stdgo.Go.asInterface((stdgo._internal.encoding.asn1.Asn1__appendtagandlength._appendTagAndLength(((@:checkr _t ?? throw "null pointer dereference")._scratch.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), (new stdgo._internal.encoding.asn1.Asn1_t_tagandlength.T_tagAndLength(_rv.class_, _rv.tag, (_rv.bytes.length), _rv.isCompound) : stdgo._internal.encoding.asn1.Asn1_t_tagandlength.T_tagAndLength)) : stdgo._internal.encoding.asn1.Asn1_t_bytesencoder.T_bytesEncoder));
            (@:checkr _t ?? throw "null pointer dereference")._body = stdgo.Go.asInterface((_rv.bytes : stdgo._internal.encoding.asn1.Asn1_t_bytesencoder.T_bytesEncoder));
            return {
                final __tmp__:{ var _0 : stdgo._internal.encoding.asn1.Asn1_t_encoder.T_encoder; var _1 : stdgo.Error; } = { _0 : stdgo.Go.asInterface(_t), _1 : (null : stdgo.Error) };
                _e = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
        var __tmp__ = stdgo._internal.encoding.asn1.Asn1__getuniversaltype._getUniversalType(_v.type()), _matchAny:Bool = __tmp__._0, _tag:stdgo.GoInt = __tmp__._1, _isCompound:Bool = __tmp__._2, _ok:Bool = __tmp__._3;
        if ((!_ok || _matchAny : Bool)) {
            return {
                final __tmp__:{ var _0 : stdgo._internal.encoding.asn1.Asn1_t_encoder.T_encoder; var _1 : stdgo.Error; } = { _0 : (null : stdgo._internal.encoding.asn1.Asn1_t_encoder.T_encoder), _1 : stdgo.Go.asInterface((new stdgo._internal.encoding.asn1.Asn1_structuralerror.StructuralError(stdgo._internal.fmt.Fmt_sprintf.sprintf(("unknown Go type: %v" : stdgo.GoString), stdgo.Go.toInterface(_v.type()))?.__copy__()) : stdgo._internal.encoding.asn1.Asn1_structuralerror.StructuralError)) };
                _e = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
        if (((_params._timeType != (0 : stdgo.GoInt)) && (_tag != (23 : stdgo.GoInt)) : Bool)) {
            return {
                final __tmp__:{ var _0 : stdgo._internal.encoding.asn1.Asn1_t_encoder.T_encoder; var _1 : stdgo.Error; } = { _0 : (null : stdgo._internal.encoding.asn1.Asn1_t_encoder.T_encoder), _1 : stdgo.Go.asInterface((new stdgo._internal.encoding.asn1.Asn1_structuralerror.StructuralError(("explicit time type given to non-time member" : stdgo.GoString)) : stdgo._internal.encoding.asn1.Asn1_structuralerror.StructuralError)) };
                _e = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
        if (((_params._stringType != (0 : stdgo.GoInt)) && (_tag != (19 : stdgo.GoInt)) : Bool)) {
            return {
                final __tmp__:{ var _0 : stdgo._internal.encoding.asn1.Asn1_t_encoder.T_encoder; var _1 : stdgo.Error; } = { _0 : (null : stdgo._internal.encoding.asn1.Asn1_t_encoder.T_encoder), _1 : stdgo.Go.asInterface((new stdgo._internal.encoding.asn1.Asn1_structuralerror.StructuralError(("explicit string type given to non-string member" : stdgo.GoString)) : stdgo._internal.encoding.asn1.Asn1_structuralerror.StructuralError)) };
                _e = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
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
                                if (((_r >= (128 : stdgo.GoInt32) : Bool) || !stdgo._internal.encoding.asn1.Asn1__isprintable._isPrintable((_r : stdgo.GoUInt8), false, false) : Bool)) {
                                    if (!stdgo._internal.unicode.utf8.Utf8_validstring.validString((_v.string() : stdgo.GoString)?.__copy__())) {
                                        return {
                                            final __tmp__:{ var _0 : stdgo._internal.encoding.asn1.Asn1_t_encoder.T_encoder; var _1 : stdgo.Error; } = { _0 : (null : stdgo._internal.encoding.asn1.Asn1_t_encoder.T_encoder), _1 : stdgo._internal.errors.Errors_new_.new_(("asn1: string not valid UTF-8" : stdgo.GoString)) };
                                            _e = __tmp__._0;
                                            _err = __tmp__._1;
                                            __tmp__;
                                        };
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
                        if (((_params._timeType == (24 : stdgo.GoInt)) || stdgo._internal.encoding.asn1.Asn1__outsideutcrange._outsideUTCRange((stdgo.Go.typeAssert((_v.interface_() : stdgo._internal.time.Time_time.Time)) : stdgo._internal.time.Time_time.Time)?.__copy__()) : Bool)) {
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
                return {
                    final __tmp__:{ var _0 : stdgo._internal.encoding.asn1.Asn1_t_encoder.T_encoder; var _1 : stdgo.Error; } = { _0 : (null : stdgo._internal.encoding.asn1.Asn1_t_encoder.T_encoder), _1 : stdgo.Go.asInterface((new stdgo._internal.encoding.asn1.Asn1_structuralerror.StructuralError(("non sequence tagged as set" : stdgo.GoString)) : stdgo._internal.encoding.asn1.Asn1_structuralerror.StructuralError)) };
                    _e = __tmp__._0;
                    _err = __tmp__._1;
                    __tmp__;
                };
            };
            _tag = (17 : stdgo.GoInt);
        };
        if (((_tag == (17 : stdgo.GoInt)) && !_params._set : Bool)) {
            _params._set = true;
        };
        var _t = (stdgo.Go.setRef(({} : stdgo._internal.encoding.asn1.Asn1_t_taggedencoder.T_taggedEncoder)) : stdgo.Ref<stdgo._internal.encoding.asn1.Asn1_t_taggedencoder.T_taggedEncoder>);
        {
            var __tmp__ = stdgo._internal.encoding.asn1.Asn1__makebody._makeBody(_v?.__copy__(), _params?.__copy__());
            (@:checkr _t ?? throw "null pointer dereference")._body = @:tmpset0 __tmp__._0;
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
        var _bodyLen = ((@:checkr _t ?? throw "null pointer dereference")._body.len() : stdgo.GoInt);
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
                (@:checkr _t ?? throw "null pointer dereference")._tag = stdgo.Go.asInterface((stdgo._internal.encoding.asn1.Asn1__appendtagandlength._appendTagAndLength(((@:checkr _t ?? throw "null pointer dereference")._scratch.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), (new stdgo._internal.encoding.asn1.Asn1_t_tagandlength.T_tagAndLength((0 : stdgo.GoInt), _tag, _bodyLen, _isCompound) : stdgo._internal.encoding.asn1.Asn1_t_tagandlength.T_tagAndLength)) : stdgo._internal.encoding.asn1.Asn1_t_bytesencoder.T_bytesEncoder));
                var _tt = (stdgo.Go.setRef(({} : stdgo._internal.encoding.asn1.Asn1_t_taggedencoder.T_taggedEncoder)) : stdgo.Ref<stdgo._internal.encoding.asn1.Asn1_t_taggedencoder.T_taggedEncoder>);
                (@:checkr _tt ?? throw "null pointer dereference")._body = stdgo.Go.asInterface(_t);
                (@:checkr _tt ?? throw "null pointer dereference")._tag = stdgo.Go.asInterface((stdgo._internal.encoding.asn1.Asn1__appendtagandlength._appendTagAndLength(((@:checkr _tt ?? throw "null pointer dereference")._scratch.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), ({ _class : _class, _tag : _params._tag.value, _length : (_bodyLen + (@:checkr _t ?? throw "null pointer dereference")._tag.len() : stdgo.GoInt), _isCompound : true } : stdgo._internal.encoding.asn1.Asn1_t_tagandlength.T_tagAndLength)) : stdgo._internal.encoding.asn1.Asn1_t_bytesencoder.T_bytesEncoder));
                return {
                    final __tmp__:{ var _0 : stdgo._internal.encoding.asn1.Asn1_t_encoder.T_encoder; var _1 : stdgo.Error; } = { _0 : stdgo.Go.asInterface(_tt), _1 : (null : stdgo.Error) };
                    _e = __tmp__._0;
                    _err = __tmp__._1;
                    __tmp__;
                };
            };
            _tag = _params._tag.value;
        };
        (@:checkr _t ?? throw "null pointer dereference")._tag = stdgo.Go.asInterface((stdgo._internal.encoding.asn1.Asn1__appendtagandlength._appendTagAndLength(((@:checkr _t ?? throw "null pointer dereference")._scratch.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), (new stdgo._internal.encoding.asn1.Asn1_t_tagandlength.T_tagAndLength(_class, _tag, _bodyLen, _isCompound) : stdgo._internal.encoding.asn1.Asn1_t_tagandlength.T_tagAndLength)) : stdgo._internal.encoding.asn1.Asn1_t_bytesencoder.T_bytesEncoder));
        return {
            final __tmp__:{ var _0 : stdgo._internal.encoding.asn1.Asn1_t_encoder.T_encoder; var _1 : stdgo.Error; } = { _0 : stdgo.Go.asInterface(_t), _1 : (null : stdgo.Error) };
            _e = __tmp__._0;
            _err = __tmp__._1;
            __tmp__;
        };
    }
