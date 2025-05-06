package stdgo._internal.go.types;
function newField(_pos:stdgo._internal.go.token.Token_pos.Pos, _pkg:stdgo.Ref<stdgo._internal.go.types.Types_package.Package>, _name:stdgo.GoString, _typ:stdgo._internal.go.types.Types_type_.Type_, _embedded:Bool):stdgo.Ref<stdgo._internal.go.types.Types_var.Var> {
        //"file:///home/runner/.go/go1.21.3/src/go/types/object.go#L335"
        return (stdgo.Go.setRef(({ _object : (new stdgo._internal.go.types.Types_t_object.T_object(null, _pos, _pkg, _name?.__copy__(), _typ, (0u32 : stdgo.GoUInt32), stdgo._internal.go.types.Types__colorfor._colorFor(_typ), stdgo._internal.go.types.Types__nopos._nopos) : stdgo._internal.go.types.Types_t_object.T_object), _embedded : _embedded, _isField : true } : stdgo._internal.go.types.Types_var.Var)) : stdgo.Ref<stdgo._internal.go.types.Types_var.Var>);
    }
