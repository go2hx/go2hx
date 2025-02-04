package stdgo._internal.sort;
@:keep class Interface_static_extension {
    @:interfacetypeffun
    static public function swap(t:stdgo._internal.sort.Sort_interface.Interface, _i:stdgo.GoInt, _j:stdgo.GoInt):Void t.swap(_i, _j);
    @:interfacetypeffun
    static public function less(t:stdgo._internal.sort.Sort_interface.Interface, _i:stdgo.GoInt, _j:stdgo.GoInt):Bool return t.less(_i, _j);
    @:interfacetypeffun
    static public function len(t:stdgo._internal.sort.Sort_interface.Interface):stdgo.GoInt return t.len();
}
