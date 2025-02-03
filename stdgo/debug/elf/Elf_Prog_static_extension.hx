package stdgo.debug.elf;
class Prog_static_extension {
    static public function open(_p:Prog):stdgo._internal.io.Io_ReadSeeker.ReadSeeker {
        final _p = (_p : stdgo.Ref<stdgo._internal.debug.elf.Elf_Prog.Prog>);
        return stdgo._internal.debug.elf.Elf_Prog_static_extension.Prog_static_extension.open(_p);
    }
    public static function readAt(__self__:stdgo._internal.debug.elf.Elf_Prog.Prog, _0:Array<std.UInt>, _1:haxe.Int64):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _0 = ([for (i in _0) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _1 = (_1 : stdgo.GoInt64);
        return {
            final obj = stdgo._internal.debug.elf.Elf_Prog_static_extension.Prog_static_extension.readAt(__self__, _0, _1);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
