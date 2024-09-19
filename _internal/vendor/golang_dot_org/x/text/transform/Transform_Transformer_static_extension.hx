package _internal.vendor.golang_dot_org.x.text.transform;
@:keep class Transformer_static_extension {
    static public function reset(t:Transformer):Void t.reset();
    static public function transform(t:Transformer, _dst:stdgo.Slice<stdgo.GoUInt8>, _src:stdgo.Slice<stdgo.GoUInt8>, _atEOF:Bool):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } return t.transform(_dst, _src, _atEOF);
}
