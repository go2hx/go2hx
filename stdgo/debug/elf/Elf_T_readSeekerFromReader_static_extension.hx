package stdgo.debug.elf;
class T_readSeekerFromReader_static_extension {
    static public function seek(_r:T_readSeekerFromReader, _offset:haxe.Int64, _whence:StdTypes.Int):stdgo.Tuple<haxe.Int64, stdgo.Error> {
        final _r = (_r : stdgo.Ref<stdgo._internal.debug.elf.Elf_T_readSeekerFromReader.T_readSeekerFromReader>);
        final _offset = (_offset : stdgo.GoInt64);
        final _whence = (_whence : stdgo.GoInt);
        return {
            final obj = stdgo._internal.debug.elf.Elf_T_readSeekerFromReader_static_extension.T_readSeekerFromReader_static_extension.seek(_r, _offset, _whence);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function read(_r:T_readSeekerFromReader, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _r = (_r : stdgo.Ref<stdgo._internal.debug.elf.Elf_T_readSeekerFromReader.T_readSeekerFromReader>);
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.debug.elf.Elf_T_readSeekerFromReader_static_extension.T_readSeekerFromReader_static_extension.read(_r, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _start(_r:T_readSeekerFromReader):Void {
        final _r = (_r : stdgo.Ref<stdgo._internal.debug.elf.Elf_T_readSeekerFromReader.T_readSeekerFromReader>);
        stdgo._internal.debug.elf.Elf_T_readSeekerFromReader_static_extension.T_readSeekerFromReader_static_extension._start(_r);
    }
}
