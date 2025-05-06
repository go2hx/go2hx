package stdgo._internal.go.types;
function _newErrorf(_at:stdgo._internal.go.types.Types_t_positioner.T_positioner, _code:stdgo._internal.internal.types.errors.Errors_code.Code, _format:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):stdgo.Ref<stdgo._internal.go.types.Types_t_error_.T_error_> {
        var _args = new stdgo.Slice<stdgo.AnyInterface>(_args.length, 0, ..._args);
        //"file:///home/runner/.go/go1.21.3/src/go/types/errors.go#L299"
        return (stdgo.Go.setRef(({ _desc : (new stdgo.Slice<stdgo._internal.go.types.Types_t_errordesc.T_errorDesc>(1, 1, ...[(new stdgo._internal.go.types.Types_t_errordesc.T_errorDesc(_at, _format?.__copy__(), _args) : stdgo._internal.go.types.Types_t_errordesc.T_errorDesc)].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.go.types.Types_t_errordesc.T_errorDesc)])) : stdgo.Slice<stdgo._internal.go.types.Types_t_errordesc.T_errorDesc>), _code : _code } : stdgo._internal.go.types.Types_t_error_.T_error_)) : stdgo.Ref<stdgo._internal.go.types.Types_t_error_.T_error_>);
    }
