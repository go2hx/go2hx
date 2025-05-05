package stdgo._internal.encoding.gob;
function _newTypeObject(_name:stdgo.GoString, _ut:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_usertypeinfo.T_userTypeInfo>, _rt:stdgo._internal.reflect.Reflect_type_.Type_):{ var _0 : stdgo._internal.encoding.gob.Gob_t_gobtype.T_gobType; var _1 : stdgo.Error; } {
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/type.go#L454"
            if ((@:checkr _ut ?? throw "null pointer dereference")._externalEnc != ((0 : stdgo.GoInt))) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/gob/type.go#L455"
                return { _0 : stdgo.Go.asInterface(stdgo._internal.encoding.gob.Gob__newgobencodertype._newGobEncoderType(_name?.__copy__())), _1 : (null : stdgo.Error) };
            };
            var _err:stdgo.Error = (null : stdgo.Error);
            var _type0:stdgo._internal.encoding.gob.Gob_t_gobtype.T_gobType = (null : stdgo._internal.encoding.gob.Gob_t_gobtype.T_gobType), _type1:stdgo._internal.encoding.gob.Gob_t_gobtype.T_gobType = (null : stdgo._internal.encoding.gob.Gob_t_gobtype.T_gobType);
            {
                __deferstack__.unshift({ ran : false, f : () -> ({
                    var a = function():Void {
                        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/type.go#L460"
                        if (_err != null) {
                            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/type.go#L461"
                            if (stdgo._internal.encoding.gob.Gob__types._types != null) stdgo._internal.encoding.gob.Gob__types._types.__remove__(_rt);
                        };
                    };
                    a();
                }) });
            };
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/type.go#L466"
            {
                var _t = (_rt : stdgo._internal.reflect.Reflect_type_.Type_);
                {
                    final __value__ = _t.kind();
                    if (__value__ == ((1u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/type.go#L469"
                        {
                            final __ret__:{ var _0 : stdgo._internal.encoding.gob.Gob_t_gobtype.T_gobType; var _1 : stdgo.Error; } = { _0 : stdgo._internal.encoding.gob.Gob__tbool._tBool._gobType(), _1 : (null : stdgo.Error) };
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return __ret__;
                        };
                    } else if (__value__ == ((2u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((3u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((4u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((5u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((6u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/type.go#L472"
                        {
                            final __ret__:{ var _0 : stdgo._internal.encoding.gob.Gob_t_gobtype.T_gobType; var _1 : stdgo.Error; } = { _0 : stdgo._internal.encoding.gob.Gob__tint._tInt._gobType(), _1 : (null : stdgo.Error) };
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return __ret__;
                        };
                    } else if (__value__ == ((7u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((8u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((9u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((10u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((11u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((12u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/type.go#L475"
                        {
                            final __ret__:{ var _0 : stdgo._internal.encoding.gob.Gob_t_gobtype.T_gobType; var _1 : stdgo.Error; } = { _0 : stdgo._internal.encoding.gob.Gob__tuint._tUint._gobType(), _1 : (null : stdgo.Error) };
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return __ret__;
                        };
                    } else if (__value__ == ((13u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((14u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/type.go#L478"
                        {
                            final __ret__:{ var _0 : stdgo._internal.encoding.gob.Gob_t_gobtype.T_gobType; var _1 : stdgo.Error; } = { _0 : stdgo._internal.encoding.gob.Gob__tfloat._tFloat._gobType(), _1 : (null : stdgo.Error) };
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return __ret__;
                        };
                    } else if (__value__ == ((15u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((16u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/type.go#L481"
                        {
                            final __ret__:{ var _0 : stdgo._internal.encoding.gob.Gob_t_gobtype.T_gobType; var _1 : stdgo.Error; } = { _0 : stdgo._internal.encoding.gob.Gob__tcomplex._tComplex._gobType(), _1 : (null : stdgo.Error) };
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return __ret__;
                        };
                    } else if (__value__ == ((24u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/type.go#L484"
                        {
                            final __ret__:{ var _0 : stdgo._internal.encoding.gob.Gob_t_gobtype.T_gobType; var _1 : stdgo.Error; } = { _0 : stdgo._internal.encoding.gob.Gob__tstring._tString._gobType(), _1 : (null : stdgo.Error) };
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return __ret__;
                        };
                    } else if (__value__ == ((20u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/type.go#L487"
                        {
                            final __ret__:{ var _0 : stdgo._internal.encoding.gob.Gob_t_gobtype.T_gobType; var _1 : stdgo.Error; } = { _0 : stdgo._internal.encoding.gob.Gob__tinterface._tInterface._gobType(), _1 : (null : stdgo.Error) };
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return __ret__;
                        };
                    } else if (__value__ == ((17u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                        var _at = stdgo._internal.encoding.gob.Gob__newarraytype._newArrayType(_name?.__copy__());
                        stdgo._internal.encoding.gob.Gob__types._types[_rt] = stdgo.Go.asInterface(_at);
                        {
                            var __tmp__ = stdgo._internal.encoding.gob.Gob__getbasetype._getBaseType((stdgo.Go.str() : stdgo.GoString)?.__copy__(), _t.elem());
                            _type0 = @:tmpset0 __tmp__._0;
                            _err = @:tmpset0 __tmp__._1;
                        };
                        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/type.go#L493"
                        if (_err != null) {
                            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/type.go#L494"
                            {
                                final __ret__:{ var _0 : stdgo._internal.encoding.gob.Gob_t_gobtype.T_gobType; var _1 : stdgo.Error; } = { _0 : (null : stdgo._internal.encoding.gob.Gob_t_gobtype.T_gobType), _1 : _err };
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                                return __ret__;
                            };
                        };
                        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/type.go#L504"
                        _at._init(_type0, _t.len());
                        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/type.go#L505"
                        {
                            final __ret__:{ var _0 : stdgo._internal.encoding.gob.Gob_t_gobtype.T_gobType; var _1 : stdgo.Error; } = { _0 : stdgo.Go.asInterface(_at), _1 : (null : stdgo.Error) };
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return __ret__;
                        };
                    } else if (__value__ == ((21u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                        var _mt = stdgo._internal.encoding.gob.Gob__newmaptype._newMapType(_name?.__copy__());
                        stdgo._internal.encoding.gob.Gob__types._types[_rt] = stdgo.Go.asInterface(_mt);
                        {
                            var __tmp__ = stdgo._internal.encoding.gob.Gob__getbasetype._getBaseType((stdgo.Go.str() : stdgo.GoString)?.__copy__(), _t.key());
                            _type0 = @:tmpset0 __tmp__._0;
                            _err = @:tmpset0 __tmp__._1;
                        };
                        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/type.go#L511"
                        if (_err != null) {
                            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/type.go#L512"
                            {
                                final __ret__:{ var _0 : stdgo._internal.encoding.gob.Gob_t_gobtype.T_gobType; var _1 : stdgo.Error; } = { _0 : (null : stdgo._internal.encoding.gob.Gob_t_gobtype.T_gobType), _1 : _err };
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                                return __ret__;
                            };
                        };
                        {
                            var __tmp__ = stdgo._internal.encoding.gob.Gob__getbasetype._getBaseType((stdgo.Go.str() : stdgo.GoString)?.__copy__(), _t.elem());
                            _type1 = @:tmpset0 __tmp__._0;
                            _err = @:tmpset0 __tmp__._1;
                        };
                        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/type.go#L515"
                        if (_err != null) {
                            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/type.go#L516"
                            {
                                final __ret__:{ var _0 : stdgo._internal.encoding.gob.Gob_t_gobtype.T_gobType; var _1 : stdgo.Error; } = { _0 : (null : stdgo._internal.encoding.gob.Gob_t_gobtype.T_gobType), _1 : _err };
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                                return __ret__;
                            };
                        };
                        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/type.go#L518"
                        _mt._init(_type0, _type1);
                        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/type.go#L519"
                        {
                            final __ret__:{ var _0 : stdgo._internal.encoding.gob.Gob_t_gobtype.T_gobType; var _1 : stdgo.Error; } = { _0 : stdgo.Go.asInterface(_mt), _1 : (null : stdgo.Error) };
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return __ret__;
                        };
                    } else if (__value__ == ((23u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/type.go#L523"
                        if (_t.elem().kind() == ((8u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/type.go#L524"
                            {
                                final __ret__:{ var _0 : stdgo._internal.encoding.gob.Gob_t_gobtype.T_gobType; var _1 : stdgo.Error; } = { _0 : stdgo._internal.encoding.gob.Gob__tbytes._tBytes._gobType(), _1 : (null : stdgo.Error) };
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                                return __ret__;
                            };
                        };
                        var _st = stdgo._internal.encoding.gob.Gob__newslicetype._newSliceType(_name?.__copy__());
                        stdgo._internal.encoding.gob.Gob__types._types[_rt] = stdgo.Go.asInterface(_st);
                        {
                            var __tmp__ = stdgo._internal.encoding.gob.Gob__getbasetype._getBaseType(_t.elem().name()?.__copy__(), _t.elem());
                            _type0 = @:tmpset0 __tmp__._0;
                            _err = @:tmpset0 __tmp__._1;
                        };
                        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/type.go#L529"
                        if (_err != null) {
                            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/type.go#L530"
                            {
                                final __ret__:{ var _0 : stdgo._internal.encoding.gob.Gob_t_gobtype.T_gobType; var _1 : stdgo.Error; } = { _0 : (null : stdgo._internal.encoding.gob.Gob_t_gobtype.T_gobType), _1 : _err };
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                                return __ret__;
                            };
                        };
                        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/type.go#L532"
                        _st._init(_type0);
                        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/type.go#L533"
                        {
                            final __ret__:{ var _0 : stdgo._internal.encoding.gob.Gob_t_gobtype.T_gobType; var _1 : stdgo.Error; } = { _0 : stdgo.Go.asInterface(_st), _1 : (null : stdgo.Error) };
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return __ret__;
                        };
                    } else if (__value__ == ((25u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                        var _st = stdgo._internal.encoding.gob.Gob__newstructtype._newStructType(_name?.__copy__());
                        stdgo._internal.encoding.gob.Gob__types._types[_rt] = stdgo.Go.asInterface(_st);
                        stdgo._internal.encoding.gob.Gob__idtotypeslice._idToTypeSlice[(_st._id() : stdgo.GoInt)] = stdgo.Go.asInterface(_st);
                        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/type.go#L539"
                        {
                            var _i = (0 : stdgo.GoInt);
                            while ((_i < _t.numField() : Bool)) {
                                var _f = (_t.field(_i).__copy__() : stdgo._internal.reflect.Reflect_structfield.StructField);
//"file:///home/runner/.go/go1.21.3/src/encoding/gob/type.go#L541"
                                if (!stdgo._internal.encoding.gob.Gob__issent._isSent((stdgo.Go.setRef(_f) : stdgo.Ref<stdgo._internal.reflect.Reflect_structfield.StructField>))) {
                                    //"file:///home/runner/.go/go1.21.3/src/encoding/gob/type.go#L542"
                                    {
                                        _i++;
                                        continue;
                                    };
                                };
var _typ = (stdgo._internal.encoding.gob.Gob__usertype._userType(_f.type)._base : stdgo._internal.reflect.Reflect_type_.Type_);
var _tname = (_typ.name().__copy__() : stdgo.GoString);
//"file:///home/runner/.go/go1.21.3/src/encoding/gob/type.go#L546"
                                if (_tname == ((stdgo.Go.str() : stdgo.GoString))) {
                                    var _t = (stdgo._internal.encoding.gob.Gob__usertype._userType(_f.type)._base : stdgo._internal.reflect.Reflect_type_.Type_);
                                    _tname = (_t.string() : stdgo.GoString).__copy__();
                                };
var __tmp__ = stdgo._internal.encoding.gob.Gob__getbasetype._getBaseType(_tname.__copy__(), _f.type), _gt:stdgo._internal.encoding.gob.Gob_t_gobtype.T_gobType = __tmp__._0, _err:stdgo.Error = __tmp__._1;
//"file:///home/runner/.go/go1.21.3/src/encoding/gob/type.go#L551"
                                if (_err != null) {
                                    //"file:///home/runner/.go/go1.21.3/src/encoding/gob/type.go#L552"
                                    {
                                        final __ret__:{ var _0 : stdgo._internal.encoding.gob.Gob_t_gobtype.T_gobType; var _1 : stdgo.Error; } = { _0 : (null : stdgo._internal.encoding.gob.Gob_t_gobtype.T_gobType), _1 : _err };
                                        for (defer in __deferstack__) {
                                            if (defer.ran) continue;
                                            defer.ran = true;
                                            defer.f();
                                        };
                                        return __ret__;
                                    };
                                };
//"file:///home/runner/.go/go1.21.3/src/encoding/gob/type.go#L558"
                                if (_gt._id() == ((0 : stdgo._internal.encoding.gob.Gob_t_typeid.T_typeId))) {
                                    //"file:///home/runner/.go/go1.21.3/src/encoding/gob/type.go#L559"
                                    stdgo._internal.encoding.gob.Gob__settypeid._setTypeId(_gt);
                                };
(@:checkr _st ?? throw "null pointer dereference").field = ((@:checkr _st ?? throw "null pointer dereference").field.__append__((new stdgo._internal.encoding.gob.Gob_t_fieldtype.T_fieldType(_f.name.__copy__(), _gt._id()) : stdgo._internal.encoding.gob.Gob_t_fieldtype.T_fieldType)) : stdgo.Slice<stdgo._internal.encoding.gob.Gob_t_fieldtype.T_fieldType>);
                                _i++;
                            };
                        };
                        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/type.go#L563"
                        {
                            final __ret__:{ var _0 : stdgo._internal.encoding.gob.Gob_t_gobtype.T_gobType; var _1 : stdgo.Error; } = { _0 : stdgo.Go.asInterface(_st), _1 : (null : stdgo.Error) };
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return __ret__;
                        };
                    } else {
                        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/type.go#L566"
                        {
                            final __ret__:{ var _0 : stdgo._internal.encoding.gob.Gob_t_gobtype.T_gobType; var _1 : stdgo.Error; } = { _0 : (null : stdgo._internal.encoding.gob.Gob_t_gobtype.T_gobType), _1 : stdgo._internal.errors.Errors_new_.new_((("gob NewTypeObject can\'t handle type: " : stdgo.GoString) + (_rt.string() : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__()) };
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return __ret__;
                        };
                    };
                };
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
                return { _0 : (null : stdgo._internal.encoding.gob.Gob_t_gobtype.T_gobType), _1 : (null : stdgo.Error) };
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
                return { _0 : (null : stdgo._internal.encoding.gob.Gob_t_gobtype.T_gobType), _1 : (null : stdgo.Error) };
            };
        };
    }
