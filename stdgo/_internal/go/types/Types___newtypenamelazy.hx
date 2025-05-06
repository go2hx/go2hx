package stdgo._internal.go.types;
function __NewTypeNameLazy(_pos:stdgo._internal.go.token.Token_pos.Pos, _pkg:stdgo.Ref<stdgo._internal.go.types.Types_package.Package>, _name:stdgo.GoString, _load:stdgo.Ref<stdgo._internal.go.types.Types_named.Named> -> { var _0 : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>>; var _1 : stdgo._internal.go.types.Types_type_.Type_; var _2 : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_func.Func>>; }):stdgo.Ref<stdgo._internal.go.types.Types_typename.TypeName> {
        var _obj = stdgo._internal.go.types.Types_newtypename.newTypeName(_pos, _pkg, _name?.__copy__(), (null : stdgo._internal.go.types.Types_type_.Type_));
        stdgo._internal.go.types.Types_newnamed.newNamed(_obj, (null : stdgo._internal.go.types.Types_type_.Type_), (null : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_func.Func>>))._loader = _load;
        //"file:///home/runner/.go/go1.21.3/src/go/types/object.go#L282"
        return _obj;
    }
