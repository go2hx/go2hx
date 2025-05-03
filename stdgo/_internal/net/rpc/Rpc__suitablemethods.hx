package stdgo._internal.net.rpc;
function _suitableMethods(_typ:stdgo._internal.reflect.Reflect_type_.Type_, _logErr:Bool):stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.net.rpc.Rpc_t_methodtype.T_methodType>> {
        var _methods = (({
            final x = new stdgo.GoMap.GoStringMap<stdgo.Ref<stdgo._internal.net.rpc.Rpc_t_methodtype.T_methodType>>();
            x.__defaultValue__ = () -> (null : stdgo.Ref<stdgo._internal.net.rpc.Rpc_t_methodtype.T_methodType>);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.net.rpc.Rpc_t_methodtype.T_methodType>>) : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.net.rpc.Rpc_t_methodtype.T_methodType>>);
        //"file:///home/runner/.go/go1.21.3/src/net/rpc/server.go#L286"
        {
            var _m = (0 : stdgo.GoInt);
            while ((_m < _typ.numMethod() : Bool)) {
                var _method = (_typ.method(_m).__copy__() : stdgo._internal.reflect.Reflect_method.Method);
var _mtype = (_method.type : stdgo._internal.reflect.Reflect_type_.Type_);
var _mname = (_method.name.__copy__() : stdgo.GoString);
//"file:///home/runner/.go/go1.21.3/src/net/rpc/server.go#L291"
                if (!_method.isExported()) {
                    //"file:///home/runner/.go/go1.21.3/src/net/rpc/server.go#L292"
                    {
                        _m++;
                        continue;
                    };
                };
//"file:///home/runner/.go/go1.21.3/src/net/rpc/server.go#L295"
                if (_mtype.numIn() != ((3 : stdgo.GoInt))) {
                    //"file:///home/runner/.go/go1.21.3/src/net/rpc/server.go#L296"
                    if (_logErr) {
                        //"file:///home/runner/.go/go1.21.3/src/net/rpc/server.go#L297"
                        stdgo._internal.log.Log_printf.printf(("rpc.Register: method %q has %d input parameters; needs exactly three\n" : stdgo.GoString), stdgo.Go.toInterface(_mname), stdgo.Go.toInterface(_mtype.numIn()));
                    };
                    //"file:///home/runner/.go/go1.21.3/src/net/rpc/server.go#L299"
                    {
                        _m++;
                        continue;
                    };
                };
var _argType = (_mtype.in_((1 : stdgo.GoInt)) : stdgo._internal.reflect.Reflect_type_.Type_);
//"file:///home/runner/.go/go1.21.3/src/net/rpc/server.go#L303"
                if (!stdgo._internal.net.rpc.Rpc__isexportedorbuiltintype._isExportedOrBuiltinType(_argType)) {
                    //"file:///home/runner/.go/go1.21.3/src/net/rpc/server.go#L304"
                    if (_logErr) {
                        //"file:///home/runner/.go/go1.21.3/src/net/rpc/server.go#L305"
                        stdgo._internal.log.Log_printf.printf(("rpc.Register: argument type of method %q is not exported: %q\n" : stdgo.GoString), stdgo.Go.toInterface(_mname), stdgo.Go.toInterface(_argType));
                    };
                    //"file:///home/runner/.go/go1.21.3/src/net/rpc/server.go#L307"
                    {
                        _m++;
                        continue;
                    };
                };
var _replyType = (_mtype.in_((2 : stdgo.GoInt)) : stdgo._internal.reflect.Reflect_type_.Type_);
//"file:///home/runner/.go/go1.21.3/src/net/rpc/server.go#L311"
                if (_replyType.kind() != ((22u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                    //"file:///home/runner/.go/go1.21.3/src/net/rpc/server.go#L312"
                    if (_logErr) {
                        //"file:///home/runner/.go/go1.21.3/src/net/rpc/server.go#L313"
                        stdgo._internal.log.Log_printf.printf(("rpc.Register: reply type of method %q is not a pointer: %q\n" : stdgo.GoString), stdgo.Go.toInterface(_mname), stdgo.Go.toInterface(_replyType));
                    };
                    //"file:///home/runner/.go/go1.21.3/src/net/rpc/server.go#L315"
                    {
                        _m++;
                        continue;
                    };
                };
//"file:///home/runner/.go/go1.21.3/src/net/rpc/server.go#L318"
                if (!stdgo._internal.net.rpc.Rpc__isexportedorbuiltintype._isExportedOrBuiltinType(_replyType)) {
                    //"file:///home/runner/.go/go1.21.3/src/net/rpc/server.go#L319"
                    if (_logErr) {
                        //"file:///home/runner/.go/go1.21.3/src/net/rpc/server.go#L320"
                        stdgo._internal.log.Log_printf.printf(("rpc.Register: reply type of method %q is not exported: %q\n" : stdgo.GoString), stdgo.Go.toInterface(_mname), stdgo.Go.toInterface(_replyType));
                    };
                    //"file:///home/runner/.go/go1.21.3/src/net/rpc/server.go#L322"
                    {
                        _m++;
                        continue;
                    };
                };
//"file:///home/runner/.go/go1.21.3/src/net/rpc/server.go#L325"
                if (_mtype.numOut() != ((1 : stdgo.GoInt))) {
                    //"file:///home/runner/.go/go1.21.3/src/net/rpc/server.go#L326"
                    if (_logErr) {
                        //"file:///home/runner/.go/go1.21.3/src/net/rpc/server.go#L327"
                        stdgo._internal.log.Log_printf.printf(("rpc.Register: method %q has %d output parameters; needs exactly one\n" : stdgo.GoString), stdgo.Go.toInterface(_mname), stdgo.Go.toInterface(_mtype.numOut()));
                    };
                    //"file:///home/runner/.go/go1.21.3/src/net/rpc/server.go#L329"
                    {
                        _m++;
                        continue;
                    };
                };
//"file:///home/runner/.go/go1.21.3/src/net/rpc/server.go#L332"
                {
                    var _returnType = (_mtype.out((0 : stdgo.GoInt)) : stdgo._internal.reflect.Reflect_type_.Type_);
                    if (!((_returnType.string() : String) == (stdgo._internal.net.rpc.Rpc__typeoferror._typeOfError.string() : String))) {
                        //"file:///home/runner/.go/go1.21.3/src/net/rpc/server.go#L333"
                        if (_logErr) {
                            //"file:///home/runner/.go/go1.21.3/src/net/rpc/server.go#L334"
                            stdgo._internal.log.Log_printf.printf(("rpc.Register: return type of method %q is %q, must be error\n" : stdgo.GoString), stdgo.Go.toInterface(_mname), stdgo.Go.toInterface(_returnType));
                        };
                        //"file:///home/runner/.go/go1.21.3/src/net/rpc/server.go#L336"
                        {
                            _m++;
                            continue;
                        };
                    };
                };
_methods[_mname] = (stdgo.Go.setRef(({ _method : _method.__copy__(), argType : _argType, replyType : _replyType } : stdgo._internal.net.rpc.Rpc_t_methodtype.T_methodType)) : stdgo.Ref<stdgo._internal.net.rpc.Rpc_t_methodtype.T_methodType>);
                _m++;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/net/rpc/server.go#L340"
        return _methods;
    }
