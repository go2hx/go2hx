package stdgo._internal.hash;
@:keep class Hash_static_extension {
    static public function blockSize(t:stdgo._internal.hash.Hash_Hash.Hash):stdgo.GoInt return t.blockSize();
    static public function size(t:stdgo._internal.hash.Hash_Hash.Hash):stdgo.GoInt return t.size();
    static public function reset(t:stdgo._internal.hash.Hash_Hash.Hash):Void t.reset();
    static public function sum(t:stdgo._internal.hash.Hash_Hash.Hash, _b:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> return t.sum(_b);
}
