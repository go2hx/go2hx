package stdgo._internal.encoding.gob;
function _buildTypeInfo(_ut:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_usertypeinfo.T_userTypeInfo>, _rt:stdgo._internal.reflect.Reflect_type_.Type_):{ var _0 : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_typeinfo.T_typeInfo>; var _1 : stdgo.Error; } {
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/type.go#L729"
            stdgo._internal.encoding.gob.Gob__typelock._typeLock.lock();
            {
                final __f__ = stdgo._internal.encoding.gob.Gob__typelock._typeLock.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/type.go#L732"
            {
                var _info = stdgo._internal.encoding.gob.Gob__lookuptypeinfo._lookupTypeInfo(_rt);
                if (({
                    final value = _info;
                    (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                })) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/gob/type.go#L733"
                    {
                        final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_typeinfo.T_typeInfo>; var _1 : stdgo.Error; } = { _0 : _info, _1 : (null : stdgo.Error) };
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return __ret__;
                    };
                };
            };
            var __tmp__ = stdgo._internal.encoding.gob.Gob__getbasetype._getBaseType(_rt.name()?.__copy__(), _rt), _gt:stdgo._internal.encoding.gob.Gob_t_gobtype.T_gobType = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/type.go#L737"
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/gob/type.go#L738"
                {
                    final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_typeinfo.T_typeInfo>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return __ret__;
                };
            };
            var _info = (stdgo.Go.setRef(({ _id : _gt._id() } : stdgo._internal.encoding.gob.Gob_t_typeinfo.T_typeInfo)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_typeinfo.T_typeInfo>);
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/type.go#L742"
            if ((@:checkr _ut ?? throw "null pointer dereference")._externalEnc != ((0 : stdgo.GoInt))) {
                var __tmp__ = stdgo._internal.encoding.gob.Gob__gettype._getType(_rt.name()?.__copy__(), _ut, _rt), _userType:stdgo._internal.encoding.gob.Gob_t_gobtype.T_gobType = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                //"file:///home/runner/.go/go1.21.3/src/encoding/gob/type.go#L744"
                if (_err != null) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/gob/type.go#L745"
                    {
                        final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_typeinfo.T_typeInfo>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return __ret__;
                    };
                };
                var _gt = (stdgo.Go.typeAssert((stdgo.Go.toInterface(_userType._id()._gobType()) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_gobencodertype.T_gobEncoderType>)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_gobencodertype.T_gobEncoderType>);
                //"file:///home/runner/.go/go1.21.3/src/encoding/gob/type.go#L748"
                {
                    final __value__ = (@:checkr _ut ?? throw "null pointer dereference")._externalEnc;
                    if (__value__ == ((1 : stdgo.GoInt))) {
                        (@:checkr _info ?? throw "null pointer dereference")._wire.gobEncoderT = _gt;
                    } else if (__value__ == ((2 : stdgo.GoInt))) {
                        (@:checkr _info ?? throw "null pointer dereference")._wire.binaryMarshalerT = _gt;
                    } else if (__value__ == ((3 : stdgo.GoInt))) {
                        (@:checkr _info ?? throw "null pointer dereference")._wire.textMarshalerT = _gt;
                    };
                };
                _rt = (@:checkr _ut ?? throw "null pointer dereference")._user;
            } else {
                var _t = ((@:checkr _info ?? throw "null pointer dereference")._id._gobType() : stdgo._internal.encoding.gob.Gob_t_gobtype.T_gobType);
                //"file:///home/runner/.go/go1.21.3/src/encoding/gob/type.go#L759"
                {
                    var _typ = (_rt : stdgo._internal.reflect.Reflect_type_.Type_);
                    {
                        final __value__ = _typ.kind();
                        if (__value__ == ((17u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                            (@:checkr _info ?? throw "null pointer dereference")._wire.arrayT = (stdgo.Go.typeAssert((stdgo.Go.toInterface(_t) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_arraytype.T_arrayType>)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_arraytype.T_arrayType>);
                        } else if (__value__ == ((21u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                            (@:checkr _info ?? throw "null pointer dereference")._wire.mapT = (stdgo.Go.typeAssert((stdgo.Go.toInterface(_t) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_maptype.T_mapType>)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_maptype.T_mapType>);
                        } else if (__value__ == ((23u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/type.go#L766"
                            if (_typ.elem().kind() != ((8u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                                (@:checkr _info ?? throw "null pointer dereference")._wire.sliceT = (stdgo.Go.typeAssert((stdgo.Go.toInterface(_t) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_slicetype.T_sliceType>)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_slicetype.T_sliceType>);
                            };
                        } else if (__value__ == ((25u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                            (@:checkr _info ?? throw "null pointer dereference")._wire.structT = (stdgo.Go.typeAssert((stdgo.Go.toInterface(_t) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_structtype.T_structType>)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_structtype.T_structType>);
                        };
                    };
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/type.go#L774"
            {
                var _m = stdgo._internal.encoding.gob.Gob__typeinfomapinit._typeInfoMapInit;
                if (_m != null) {
                    _m[_rt] = _info;
                    //"file:///home/runner/.go/go1.21.3/src/encoding/gob/type.go#L776"
                    {
                        final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_typeinfo.T_typeInfo>; var _1 : stdgo.Error; } = { _0 : _info, _1 : (null : stdgo.Error) };
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return __ret__;
                    };
                };
            };
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo._internal.encoding.gob.Gob__typeinfomap._typeInfoMap.load() : stdgo.GoMap<stdgo._internal.reflect.Reflect_type_.Type_, stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_typeinfo.T_typeInfo>>)) : stdgo.GoMap<stdgo._internal.reflect.Reflect_type_.Type_, stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_typeinfo.T_typeInfo>>), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo.GoMap<stdgo._internal.reflect.Reflect_type_.Type_, stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_typeinfo.T_typeInfo>>), _1 : false };
            }, _m = __tmp__._0, __8 = __tmp__._1;
            var _newm = (({
                final x = new stdgo.GoMap.GoObjectMap<stdgo._internal.reflect.Reflect_type_.Type_, stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_typeinfo.T_typeInfo>>();
                x.t = new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.reflect.Reflect_type_.Type_", [], stdgo._internal.internal.reflect.Reflect.GoType.interfaceType(false, []), false, { get : () -> null }));
                x.__defaultValue__ = () -> (null : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_typeinfo.T_typeInfo>);
                {};
                cast x;
            } : stdgo.GoMap<stdgo._internal.reflect.Reflect_type_.Type_, stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_typeinfo.T_typeInfo>>) : stdgo.GoMap<stdgo._internal.reflect.Reflect_type_.Type_, stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_typeinfo.T_typeInfo>>);
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/type.go#L782"
            for (_k => _v in _m) {
                _newm[_k] = _v;
            };
            _newm[_rt] = _info;
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/type.go#L786"
            stdgo._internal.encoding.gob.Gob__typeinfomap._typeInfoMap.store(stdgo.Go.toInterface(_newm));
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/type.go#L787"
            {
                final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_typeinfo.T_typeInfo>; var _1 : stdgo.Error; } = { _0 : _info, _1 : (null : stdgo.Error) };
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                return __ret__;
            };
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    throw e;
                };
                return { _0 : (null : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_typeinfo.T_typeInfo>), _1 : (null : stdgo.Error) };
            };
        } catch(__exception__) {
            {
                var exe:Dynamic = __exception__.native;
                if ((exe is haxe.ValueException)) exe = exe.value;
                if ((exe is stdgo.AnyInterface.AnyInterfaceData) == false) {
                    if (__exception__.message == "__return__") throw "__return__";
                    exe = stdgo.Go.toInterface(__exception__.message);
                };
                stdgo.Go.recover_exception = exe;
                {
                    function f() {
                        try {
                            {
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                            };
                        } catch(__exception__2) {
                            var exe:Dynamic = __exception__2.native;
                            if ((exe is haxe.ValueException)) exe = exe.value;
                            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                                if (__exception__.message == "__return__") throw "__return__";
                                exe = stdgo.Go.toInterface(__exception__.message);
                            };
                            stdgo.Go.recover_exception = exe;
                            f();
                        };
                    };
                    f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    throw e;
                };
                return { _0 : (null : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_typeinfo.T_typeInfo>), _1 : (null : stdgo.Error) };
            };
        };
    }
