package stdgo.hash;
class Hash_static_extension {
    static public function blockSize(t:stdgo._internal.hash.Hash_hash.Hash):StdTypes.Int {
        return stdgo._internal.hash.Hash_hash_static_extension.Hash_static_extension.blockSize(t);
    }
    static public function size(t:stdgo._internal.hash.Hash_hash.Hash):StdTypes.Int {
        return stdgo._internal.hash.Hash_hash_static_extension.Hash_static_extension.size(t);
    }
    static public function reset(t:stdgo._internal.hash.Hash_hash.Hash):Void {
        stdgo._internal.hash.Hash_hash_static_extension.Hash_static_extension.reset(t);
    }
    static public function sum(t:stdgo._internal.hash.Hash_hash.Hash, _b:Array<std.UInt>):Array<std.UInt> {
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return [for (i in stdgo._internal.hash.Hash_hash_static_extension.Hash_static_extension.sum(t, _b)) i];
    }
}
@:interface @:forward abstract Hash_(stdgo._internal.hash.Hash_hash.Hash) from stdgo._internal.hash.Hash_hash.Hash to stdgo._internal.hash.Hash_hash.Hash {
    @:from
    static function fromHaxeInterface(x:{ function sum(_b:Array<std.UInt>):Array<std.UInt>; function reset():Void; function size():StdTypes.Int; function blockSize():StdTypes.Int; function write(_0:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error>; }):Hash_ {
        var __f__:Void -> stdgo.AnyInterface = null;
        final y:Hash_ = { sum : _0 -> [for (i in x.sum([for (i in _0) i])) i], reset : () -> x.reset(), size : () -> x.size(), blockSize : () -> x.blockSize(), write : _0 -> {
            final obj = x.write([for (i in _0) i]);
            { _0 : obj._0, _1 : obj._1 };
        }, __underlying__ : () -> __f__() };
        __f__ = () -> stdgo.Go.toInterface(y);
        return y;
    }
}
class Hash32_static_extension {
    static public function sum32(t:stdgo._internal.hash.Hash_hash32.Hash32):std.UInt {
        return stdgo._internal.hash.Hash_hash32_static_extension.Hash32_static_extension.sum32(t);
    }
}
@:interface @:forward abstract Hash32(stdgo._internal.hash.Hash_hash32.Hash32) from stdgo._internal.hash.Hash_hash32.Hash32 to stdgo._internal.hash.Hash_hash32.Hash32 {
    @:from
    static function fromHaxeInterface(x:{ function sum32():std.UInt; function blockSize():StdTypes.Int; function reset():Void; function size():StdTypes.Int; function sum(_0:Array<std.UInt>):Array<std.UInt>; function write(_0:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error>; }):Hash32 {
        var __f__:Void -> stdgo.AnyInterface = null;
        final y:Hash32 = { sum32 : () -> x.sum32(), blockSize : () -> x.blockSize(), reset : () -> x.reset(), size : () -> x.size(), sum : _0 -> [for (i in x.sum([for (i in _0) i])) i], write : _0 -> {
            final obj = x.write([for (i in _0) i]);
            { _0 : obj._0, _1 : obj._1 };
        }, __underlying__ : () -> __f__() };
        __f__ = () -> stdgo.Go.toInterface(y);
        return y;
    }
}
class Hash64_static_extension {
    static public function sum64(t:stdgo._internal.hash.Hash_hash64.Hash64):haxe.UInt64 {
        return stdgo._internal.hash.Hash_hash64_static_extension.Hash64_static_extension.sum64(t);
    }
}
@:interface @:forward abstract Hash64(stdgo._internal.hash.Hash_hash64.Hash64) from stdgo._internal.hash.Hash_hash64.Hash64 to stdgo._internal.hash.Hash_hash64.Hash64 {
    @:from
    static function fromHaxeInterface(x:{ function sum64():haxe.UInt64; function blockSize():StdTypes.Int; function reset():Void; function size():StdTypes.Int; function sum(_0:Array<std.UInt>):Array<std.UInt>; function write(_0:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error>; }):Hash64 {
        var __f__:Void -> stdgo.AnyInterface = null;
        final y:Hash64 = { sum64 : () -> x.sum64(), blockSize : () -> x.blockSize(), reset : () -> x.reset(), size : () -> x.size(), sum : _0 -> [for (i in x.sum([for (i in _0) i])) i], write : _0 -> {
            final obj = x.write([for (i in _0) i]);
            { _0 : obj._0, _1 : obj._1 };
        }, __underlying__ : () -> __f__() };
        __f__ = () -> stdgo.Go.toInterface(y);
        return y;
    }
}
/**
    * Package hash provides interfaces for hash functions.
**/
class Hash {

}
