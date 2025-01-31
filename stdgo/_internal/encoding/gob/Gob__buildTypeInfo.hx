package stdgo._internal.encoding.gob;
import stdgo._internal.flag.Flag;
import stdgo._internal.errors.Errors;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.strings.Strings;
import stdgo._internal.time.Time;
import stdgo._internal.math.rand.Rand;
import stdgo._internal.testing.Testing;
import stdgo._internal.io.Io;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.math.Math;
import stdgo._internal.internal.saferio.Saferio;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.encoding.hex.Hex;
import stdgo._internal.sort.Sort;
import stdgo._internal.os.Os;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.encoding.binary.Binary;
function _buildTypeInfo(_ut:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_userTypeInfo.T_userTypeInfo>, _rt:stdgo._internal.reflect.Reflect_Type_.Type_):{ var _0 : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_typeInfo.T_typeInfo>; var _1 : stdgo.Error; } {
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            @:check2 stdgo._internal.encoding.gob.Gob__typeLock._typeLock.lock();
            {
                final __f__ = @:check2 stdgo._internal.encoding.gob.Gob__typeLock._typeLock.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            {
                var _info = stdgo._internal.encoding.gob.Gob__lookupTypeInfo._lookupTypeInfo(_rt);
                if ((_info != null && ((_info : Dynamic).__nil__ == null || !(_info : Dynamic).__nil__))) {
                    {
                        final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_typeInfo.T_typeInfo>; var _1 : stdgo.Error; } = { _0 : _info, _1 : (null : stdgo.Error) };
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
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
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return __ret__;
                };
            };
            var _info = (stdgo.Go.setRef(({ _id : _gt._id() } : stdgo._internal.encoding.gob.Gob_T_typeInfo.T_typeInfo)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_typeInfo.T_typeInfo>);
            if ((@:checkr _ut ?? throw "null pointer dereference")._externalEnc != ((0 : stdgo.GoInt))) {
                var __tmp__ = stdgo._internal.encoding.gob.Gob__getType._getType(_rt.name()?.__copy__(), _ut, _rt), _userType:stdgo._internal.encoding.gob.Gob_T_gobType.T_gobType = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    {
                        final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_typeInfo.T_typeInfo>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return __ret__;
                    };
                };
                var _gt = (stdgo.Go.typeAssert((stdgo.Go.toInterface(_userType._id()._gobType()) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_gobEncoderType.T_gobEncoderType>)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_gobEncoderType.T_gobEncoderType>);
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
                var _t = ((@:checkr _info ?? throw "null pointer dereference")._id._gobType() : stdgo._internal.encoding.gob.Gob_T_gobType.T_gobType);
                {
                    var _typ = (_rt : stdgo._internal.reflect.Reflect_Type_.Type_);
                    {
                        final __value__ = _typ.kind();
                        if (__value__ == ((17u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                            (@:checkr _info ?? throw "null pointer dereference")._wire.arrayT = (stdgo.Go.typeAssert((stdgo.Go.toInterface(_t) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_arrayType.T_arrayType>)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_arrayType.T_arrayType>);
                        } else if (__value__ == ((21u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                            (@:checkr _info ?? throw "null pointer dereference")._wire.mapT = (stdgo.Go.typeAssert((stdgo.Go.toInterface(_t) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_mapType.T_mapType>)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_mapType.T_mapType>);
                        } else if (__value__ == ((23u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                            if (_typ.elem().kind() != ((8u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                                (@:checkr _info ?? throw "null pointer dereference")._wire.sliceT = (stdgo.Go.typeAssert((stdgo.Go.toInterface(_t) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_sliceType.T_sliceType>)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_sliceType.T_sliceType>);
                            };
                        } else if (__value__ == ((25u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                            (@:checkr _info ?? throw "null pointer dereference")._wire.structT = (stdgo.Go.typeAssert((stdgo.Go.toInterface(_t) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_structType.T_structType>)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_structType.T_structType>);
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
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return __ret__;
                    };
                };
            };
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((@:check2 stdgo._internal.encoding.gob.Gob__typeInfoMap._typeInfoMap.load() : stdgo.GoMap<stdgo._internal.reflect.Reflect_Type_.Type_, stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_typeInfo.T_typeInfo>>)) : stdgo.GoMap<stdgo._internal.reflect.Reflect_Type_.Type_, stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_typeInfo.T_typeInfo>>), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo.GoMap<stdgo._internal.reflect.Reflect_Type_.Type_, stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_typeInfo.T_typeInfo>>), _1 : false };
            }, _m = __tmp__._0, __8 = __tmp__._1;
            var _newm = (({
                final x = new stdgo.GoMap.GoObjectMap<stdgo._internal.reflect.Reflect_Type_.Type_, stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_typeInfo.T_typeInfo>>();
                x.t = new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.reflect.Reflect_Type_.Type_", [], stdgo._internal.internal.reflect.Reflect.GoType.interfaceType(false, []), false, { get : () -> null }));
                x.__defaultValue__ = () -> (null : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_typeInfo.T_typeInfo>);
                {};
                cast x;
            } : stdgo.GoMap<stdgo._internal.reflect.Reflect_Type_.Type_, stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_typeInfo.T_typeInfo>>) : stdgo.GoMap<stdgo._internal.reflect.Reflect_Type_.Type_, stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_typeInfo.T_typeInfo>>);
            for (_k => _v in _m) {
                _newm[_k] = _v;
            };
            _newm[_rt] = _info;
            @:check2 stdgo._internal.encoding.gob.Gob__typeInfoMap._typeInfoMap.store(stdgo.Go.toInterface(_newm));
            {
                final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_typeInfo.T_typeInfo>; var _1 : stdgo.Error; } = { _0 : _info, _1 : (null : stdgo.Error) };
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
                return { _0 : (null : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_typeInfo.T_typeInfo>), _1 : (null : stdgo.Error) };
            };
        } catch(__exception__) {
            {
                var exe:Dynamic = __exception__.native;
                if ((exe is haxe.ValueException)) exe = exe.value;
                if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
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
                return { _0 : (null : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_typeInfo.T_typeInfo>), _1 : (null : stdgo.Error) };
            };
        };
    }
