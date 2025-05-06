package stdgo._internal.go.types;
@:keep class Sizes_static_extension {
    @:interfacetypeffun
    static public function sizeof(t:stdgo._internal.go.types.Types_sizes.Sizes, t:stdgo._internal.go.types.Types_type_.Type_):stdgo.GoInt64 return t.sizeof(t);
    @:interfacetypeffun
    static public function offsetsof(t:stdgo._internal.go.types.Types_sizes.Sizes, _fields:stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_var.Var>>):stdgo.Slice<stdgo.GoInt64> return t.offsetsof(_fields);
    @:interfacetypeffun
    static public function alignof_(t:stdgo._internal.go.types.Types_sizes.Sizes, t:stdgo._internal.go.types.Types_type_.Type_):stdgo.GoInt64 return t.alignof_(t);
}
