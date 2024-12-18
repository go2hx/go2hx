package stdgo._internal.encoding.gob;
function _buildTypeInfo(_ut:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_userTypeInfo.T_userTypeInfo>, _rt:stdgo._internal.reflect.Reflect_Type_.Type_):{ var _0 : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_typeInfo.T_typeInfo>; var _1 : stdgo.Error; } {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            stdgo._internal.encoding.gob.Gob__typeLock._typeLock.lock();
            {
                final __f__ = stdgo._internal.encoding.gob.Gob__typeLock._typeLock.unlock;
                __deferstack__.unshift(() -> __f__());
            };
            {
                var _info = stdgo._internal.encoding.gob.Gob__lookupTypeInfo._lookupTypeInfo(_rt);
                if ((_info != null && ((_info : Dynamic).__nil__ == null || !(_info : Dynamic).__nil__))) {
                    {
                        final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_typeInfo.T_typeInfo>; var _1 : stdgo.Error; } = { _0 : _info, _1 : (null : stdgo.Error) };
                        for (defer in __deferstack__) {
                            defer();
                        };
                        return __ret__;
                    };
                };
            };
            var __tmp__ = stdgo._internal.encoding.gob.Gob__getBaseType._getBaseType(_rt.name()?.__copy__(), _rt), _gt:stdgo._internal.encoding.gob.Gob_T_gobType.T_gobType = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                {
                    final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_typeInfo.T_typeInfo>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return __ret__;
                };
            };
            var _info = (stdgo.Go.setRef(({ _id : _gt._id() } : stdgo._internal.encoding.gob.Gob_T_typeInfo.T_typeInfo)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_typeInfo.T_typeInfo>);
            if (_ut._externalEnc != ((0 : stdgo.GoInt))) {
                var __tmp__ = stdgo._internal.encoding.gob.Gob__getType._getType(_rt.name()?.__copy__(), _ut, _rt), _userType:stdgo._internal.encoding.gob.Gob_T_gobType.T_gobType = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    {
                        final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_typeInfo.T_typeInfo>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                        for (defer in __deferstack__) {
                            defer();
                        };
                        return __ret__;
                    };
                };
                var _gt = (stdgo.Go.typeAssert((stdgo.Go.toInterface(_userType._id()._gobType()) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_gobEncoderType.T_gobEncoderType>)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_gobEncoderType.T_gobEncoderType>);
                {
                    final __value__ = _ut._externalEnc;
                    if (__value__ == ((1 : stdgo.GoInt))) {
                        _info._wire.gobEncoderT = _gt;
                    } else if (__value__ == ((2 : stdgo.GoInt))) {
                        _info._wire.binaryMarshalerT = _gt;
                    } else if (__value__ == ((3 : stdgo.GoInt))) {
                        _info._wire.textMarshalerT = _gt;
                    };
                };
                _rt = _ut._user;
            } else {
                var _t = (_info._id._gobType() : stdgo._internal.encoding.gob.Gob_T_gobType.T_gobType);
                {
                    var _typ = (_rt : stdgo._internal.reflect.Reflect_Type_.Type_);
                    {
                        final __value__ = _typ.kind();
                        if (__value__ == ((17u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                            _info._wire.arrayT = (stdgo.Go.typeAssert((stdgo.Go.toInterface(_t) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_arrayType.T_arrayType>)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_arrayType.T_arrayType>);
                        } else if (__value__ == ((21u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                            _info._wire.mapT = (stdgo.Go.typeAssert((stdgo.Go.toInterface(_t) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_mapType.T_mapType>)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_mapType.T_mapType>);
                        } else if (__value__ == ((23u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                            if (_typ.elem().kind() != ((8u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                                _info._wire.sliceT = (stdgo.Go.typeAssert((stdgo.Go.toInterface(_t) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_sliceType.T_sliceType>)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_sliceType.T_sliceType>);
                            };
                        } else if (__value__ == ((25u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                            _info._wire.structT = (stdgo.Go.typeAssert((stdgo.Go.toInterface(_t) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_structType.T_structType>)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_structType.T_structType>);
                        };
                    };
                };
            };
            {
                var _m = stdgo._internal.encoding.gob.Gob__typeInfoMapInit._typeInfoMapInit;
                if (_m != null) {
                    _m[_rt] = _info;
                    {
                        final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_typeInfo.T_typeInfo>; var _1 : stdgo.Error; } = { _0 : _info, _1 : (null : stdgo.Error) };
                        for (defer in __deferstack__) {
                            defer();
                        };
                        return __ret__;
                    };
                };
            };
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo._internal.encoding.gob.Gob__typeInfoMap._typeInfoMap.load() : stdgo.GoMap<stdgo._internal.reflect.Reflect_Type_.Type_, stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_typeInfo.T_typeInfo>>)) : stdgo.GoMap<stdgo._internal.reflect.Reflect_Type_.Type_, stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_typeInfo.T_typeInfo>>), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo.GoMap<stdgo._internal.reflect.Reflect_Type_.Type_, stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_typeInfo.T_typeInfo>>), _1 : false };
            }, _m = __tmp__._0, __8 = __tmp__._1;
            var _newm = ({
                final x = new stdgo.GoMap.GoObjectMap<stdgo._internal.reflect.Reflect_Type_.Type_, stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_typeInfo.T_typeInfo>>();
                x.t = new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.reflect.Reflect_Type_.Type_", [], stdgo._internal.internal.reflect.Reflect.GoType.interfaceType(false, []), false, { get : () -> null }));
                x.__defaultValue__ = () -> (null : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_typeInfo.T_typeInfo>);
                {};
                cast x;
            } : stdgo.GoMap<stdgo._internal.reflect.Reflect_Type_.Type_, stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_typeInfo.T_typeInfo>>);
            for (_k => _v in _m) {
                _newm[_k] = _v;
            };
            _newm[_rt] = _info;
            stdgo._internal.encoding.gob.Gob__typeInfoMap._typeInfoMap.store(stdgo.Go.toInterface(_newm));
            {
                final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_typeInfo.T_typeInfo>; var _1 : stdgo.Error; } = { _0 : _info, _1 : (null : stdgo.Error) };
                for (defer in __deferstack__) {
                    defer();
                };
                return __ret__;
            };
            {
                final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_typeInfo.T_typeInfo>; var _1 : stdgo.Error; } = { _0 : (null : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_typeInfo.T_typeInfo>), _1 : (null : stdgo.Error) };
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return __ret__;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                if (__exception__.message == "__return__") throw "__return__";
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_typeInfo.T_typeInfo>; var _1 : stdgo.Error; } = { _0 : (null : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_typeInfo.T_typeInfo>), _1 : (null : stdgo.Error) };
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return __ret__;
        };
    }
