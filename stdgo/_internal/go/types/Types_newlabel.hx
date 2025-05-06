package stdgo._internal.go.types;
function newLabel(_pos:stdgo._internal.go.token.Token_pos.Pos, _pkg:stdgo.Ref<stdgo._internal.go.types.Types_package.Package>, _name:stdgo.GoString):stdgo.Ref<stdgo._internal.go.types.Types_label.Label> {
        //"file:///home/runner/.go/go1.21.3/src/go/types/object.go#L441"
        return (stdgo.Go.setRef((new stdgo._internal.go.types.Types_label.Label(({ _pos : _pos, _pkg : _pkg, _name : _name?.__copy__(), _typ : stdgo.Go.asInterface(stdgo._internal.go.types.Types_typ.typ[((0 : stdgo._internal.go.types.Types_basickind.BasicKind) : stdgo.GoInt)]), _color_ : (1u32 : stdgo._internal.go.types.Types_t_color.T_color) } : stdgo._internal.go.types.Types_t_object.T_object), false) : stdgo._internal.go.types.Types_label.Label)) : stdgo.Ref<stdgo._internal.go.types.Types_label.Label>);
    }
