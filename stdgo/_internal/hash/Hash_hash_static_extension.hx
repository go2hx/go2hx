package stdgo._internal.hash;
@:keep class Hash_static_extension {
    @:interfacetypeffun
    static public function blockSize(t:stdgo._internal.hash.Hash_hash.Hash):stdgo.GoInt return t.blockSize();
    @:interfacetypeffun
    static public function size(t:stdgo._internal.hash.Hash_hash.Hash):stdgo.GoInt return t.size();
    @:interfacetypeffun
    static public function reset(t:stdgo._internal.hash.Hash_hash.Hash):Void t.reset();
    @:interfacetypeffun
    static public function sum(t:stdgo._internal.hash.Hash_hash.Hash, _b:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> return t.sum(_b);
}
