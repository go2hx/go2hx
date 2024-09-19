package stdgo._internal.net.rpc;
function _suitableMethods(_typ:stdgo._internal.reflect.Reflect_Type_.Type_, _logErr:Bool):stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.net.rpc.Rpc_T_methodType.T_methodType>> {
        var _methods = ({
            final x = new stdgo.GoMap.GoStringMap<stdgo.Ref<stdgo._internal.net.rpc.Rpc_T_methodType.T_methodType>>();
            x.__defaultValue__ = () -> (null : stdgo.Ref<stdgo._internal.net.rpc.Rpc_T_methodType.T_methodType>);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.net.rpc.Rpc_T_methodType.T_methodType>>);
        {
            var _m = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_m < _typ.numMethod() : Bool), _m++, {
                var _method = (_typ.method(_m)?.__copy__() : stdgo._internal.reflect.Reflect_Method.Method);
                var _mtype = (_method.type : stdgo._internal.reflect.Reflect_Type_.Type_);
                var _mname = (_method.name?.__copy__() : stdgo.GoString);
                if (!_method.isExported()) {
                    continue;
                };
                if (_mtype.numIn() != ((3 : stdgo.GoInt))) {
                    if (_logErr) {
                        stdgo._internal.log.Log_printf.printf(("rpc.Register: method %q has %d input parameters; needs exactly three\n" : stdgo.GoString), stdgo.Go.toInterface(_mname), stdgo.Go.toInterface(_mtype.numIn()));
                    };
                    continue;
                };
                var _argType = (_mtype.in_((1 : stdgo.GoInt)) : stdgo._internal.reflect.Reflect_Type_.Type_);
                if (!stdgo._internal.net.rpc.Rpc__isExportedOrBuiltinType._isExportedOrBuiltinType(_argType)) {
                    if (_logErr) {
                        stdgo._internal.log.Log_printf.printf(("rpc.Register: argument type of method %q is not exported: %q\n" : stdgo.GoString), stdgo.Go.toInterface(_mname), stdgo.Go.toInterface(_argType));
                    };
                    continue;
                };
                var _replyType = (_mtype.in_((2 : stdgo.GoInt)) : stdgo._internal.reflect.Reflect_Type_.Type_);
                if (_replyType.kind() != ((22u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                    if (_logErr) {
                        stdgo._internal.log.Log_printf.printf(("rpc.Register: reply type of method %q is not a pointer: %q\n" : stdgo.GoString), stdgo.Go.toInterface(_mname), stdgo.Go.toInterface(_replyType));
                    };
                    continue;
                };
                if (!stdgo._internal.net.rpc.Rpc__isExportedOrBuiltinType._isExportedOrBuiltinType(_replyType)) {
                    if (_logErr) {
                        stdgo._internal.log.Log_printf.printf(("rpc.Register: reply type of method %q is not exported: %q\n" : stdgo.GoString), stdgo.Go.toInterface(_mname), stdgo.Go.toInterface(_replyType));
                    };
                    continue;
                };
                if (_mtype.numOut() != ((1 : stdgo.GoInt))) {
                    if (_logErr) {
                        stdgo._internal.log.Log_printf.printf(("rpc.Register: method %q has %d output parameters; needs exactly one\n" : stdgo.GoString), stdgo.Go.toInterface(_mname), stdgo.Go.toInterface(_mtype.numOut()));
                    };
                    continue;
                };
                {
                    var _returnType = (_mtype.out((0 : stdgo.GoInt)) : stdgo._internal.reflect.Reflect_Type_.Type_);
                    if (!((_returnType.string() : String) == (stdgo._internal.net.rpc.Rpc__typeOfError._typeOfError.string() : String))) {
                        if (_logErr) {
                            stdgo._internal.log.Log_printf.printf(("rpc.Register: return type of method %q is %q, must be error\n" : stdgo.GoString), stdgo.Go.toInterface(_mname), stdgo.Go.toInterface(_returnType));
                        };
                        continue;
                    };
                };
                _methods[_mname] = (stdgo.Go.setRef(({ _method : _method?.__copy__(), argType : _argType, replyType : _replyType } : stdgo._internal.net.rpc.Rpc_T_methodType.T_methodType)) : stdgo.Ref<stdgo._internal.net.rpc.Rpc_T_methodType.T_methodType>);
            });
        };
        return _methods;
    }