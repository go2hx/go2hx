package stdgo._internal.go.constant;
@:keep class Value_static_extension {
    @:interfacetypeffun
    static public function _implementsValue(t:stdgo._internal.go.constant.Constant_value.Value):Void t._implementsValue();
    @:interfacetypeffun
    static public function exactString(t:stdgo._internal.go.constant.Constant_value.Value):stdgo.GoString return t.exactString();
    @:interfacetypeffun
    static public function string(t:stdgo._internal.go.constant.Constant_value.Value):stdgo.GoString return t.string();
    @:interfacetypeffun
    static public function kind(t:stdgo._internal.go.constant.Constant_value.Value):stdgo._internal.go.constant.Constant_kind.Kind return t.kind();
}
