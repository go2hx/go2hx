package stdgo.hash.maphash;
class Hash_static_extension {
    static public function blockSize(_h:Hash):StdTypes.Int {
        final _h = (_h : stdgo.Ref<stdgo._internal.hash.maphash.Maphash_Hash.Hash>);
        return stdgo._internal.hash.maphash.Maphash_Hash_static_extension.Hash_static_extension.blockSize(_h);
    }
    static public function size(_h:Hash):StdTypes.Int {
        final _h = (_h : stdgo.Ref<stdgo._internal.hash.maphash.Maphash_Hash.Hash>);
        return stdgo._internal.hash.maphash.Maphash_Hash_static_extension.Hash_static_extension.size(_h);
    }
    static public function sum(_h:Hash, _b:Array<std.UInt>):Array<std.UInt> {
        final _h = (_h : stdgo.Ref<stdgo._internal.hash.maphash.Maphash_Hash.Hash>);
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return [for (i in stdgo._internal.hash.maphash.Maphash_Hash_static_extension.Hash_static_extension.sum(_h, _b)) i];
    }
    static public function sum64(_h:Hash):haxe.UInt64 {
        final _h = (_h : stdgo.Ref<stdgo._internal.hash.maphash.Maphash_Hash.Hash>);
        return stdgo._internal.hash.maphash.Maphash_Hash_static_extension.Hash_static_extension.sum64(_h);
    }
    static public function _flush(_h:Hash):Void {
        final _h = (_h : stdgo.Ref<stdgo._internal.hash.maphash.Maphash_Hash.Hash>);
        stdgo._internal.hash.maphash.Maphash_Hash_static_extension.Hash_static_extension._flush(_h);
    }
    static public function reset(_h:Hash):Void {
        final _h = (_h : stdgo.Ref<stdgo._internal.hash.maphash.Maphash_Hash.Hash>);
        stdgo._internal.hash.maphash.Maphash_Hash_static_extension.Hash_static_extension.reset(_h);
    }
    static public function setSeed(_h:Hash, _seed:Seed):Void {
        final _h = (_h : stdgo.Ref<stdgo._internal.hash.maphash.Maphash_Hash.Hash>);
        stdgo._internal.hash.maphash.Maphash_Hash_static_extension.Hash_static_extension.setSeed(_h, _seed);
    }
    static public function seed(_h:Hash):Seed {
        final _h = (_h : stdgo.Ref<stdgo._internal.hash.maphash.Maphash_Hash.Hash>);
        return stdgo._internal.hash.maphash.Maphash_Hash_static_extension.Hash_static_extension.seed(_h);
    }
    static public function writeString(_h:Hash, _s:String):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _h = (_h : stdgo.Ref<stdgo._internal.hash.maphash.Maphash_Hash.Hash>);
        final _s = (_s : stdgo.GoString);
        return {
            final obj = stdgo._internal.hash.maphash.Maphash_Hash_static_extension.Hash_static_extension.writeString(_h, _s);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function write(_h:Hash, _b:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _h = (_h : stdgo.Ref<stdgo._internal.hash.maphash.Maphash_Hash.Hash>);
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.hash.maphash.Maphash_Hash_static_extension.Hash_static_extension.write(_h, _b);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function writeByte(_h:Hash, _b:std.UInt):stdgo.Error {
        final _h = (_h : stdgo.Ref<stdgo._internal.hash.maphash.Maphash_Hash.Hash>);
        final _b = (_b : stdgo.GoUInt8);
        return stdgo._internal.hash.maphash.Maphash_Hash_static_extension.Hash_static_extension.writeByte(_h, _b);
    }
    static public function _initSeed(_h:Hash):Void {
        final _h = (_h : stdgo.Ref<stdgo._internal.hash.maphash.Maphash_Hash.Hash>);
        stdgo._internal.hash.maphash.Maphash_Hash_static_extension.Hash_static_extension._initSeed(_h);
    }
}
