package stdgo._internal.go.types;
function newConst(_pos:stdgo._internal.go.token.Token_pos.Pos, _pkg:stdgo.Ref<stdgo._internal.go.types.Types_package.Package>, _name:stdgo.GoString, _typ:stdgo._internal.go.types.Types_type_.Type_, _val:stdgo._internal.go.constant.Constant_value.Value):stdgo.Ref<stdgo._internal.go.types.Types_const.Const> {
        //"file:///home/runner/.go/go1.21.3/src/go/types/object.go#L253"
        return (stdgo.Go.setRef((new stdgo._internal.go.types.Types_const.Const((new stdgo._internal.go.types.Types_t_object.T_object(null, _pos, _pkg, _name?.__copy__(), _typ, (0u32 : stdgo.GoUInt32), stdgo._internal.go.types.Types__colorfor._colorFor(_typ), stdgo._internal.go.types.Types__nopos._nopos) : stdgo._internal.go.types.Types_t_object.T_object), _val) : stdgo._internal.go.types.Types_const.Const)) : stdgo.Ref<stdgo._internal.go.types.Types_const.Const>);
    }
