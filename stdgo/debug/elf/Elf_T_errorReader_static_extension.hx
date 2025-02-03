package stdgo.debug.elf;
class T_errorReader_static_extension {
    static public function close(_r:T_errorReader):stdgo.Error {
        return stdgo._internal.debug.elf.Elf_T_errorReader_static_extension.T_errorReader_static_extension.close(_r);
    }
    static public function seek(_r:T_errorReader, _offset:haxe.Int64, _whence:StdTypes.Int):stdgo.Tuple<haxe.Int64, stdgo.Error> {
        final _offset = (_offset : stdgo.GoInt64);
        final _whence = (_whence : stdgo.GoInt);
        return {
            final obj = stdgo._internal.debug.elf.Elf_T_errorReader_static_extension.T_errorReader_static_extension.seek(_r, _offset, _whence);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function readAt(_r:T_errorReader, _p:Array<std.UInt>, _off:haxe.Int64):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _off = (_off : stdgo.GoInt64);
        return {
            final obj = stdgo._internal.debug.elf.Elf_T_errorReader_static_extension.T_errorReader_static_extension.readAt(_r, _p, _off);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function read(_r:T_errorReader, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.debug.elf.Elf_T_errorReader_static_extension.T_errorReader_static_extension.read(_r, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function error(__self__:stdgo._internal.debug.elf.Elf_T_errorReader.T_errorReader):String {
        return stdgo._internal.debug.elf.Elf_T_errorReader_static_extension.T_errorReader_static_extension.error(__self__);
    }
}
