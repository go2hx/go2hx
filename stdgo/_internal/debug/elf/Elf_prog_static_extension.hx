package stdgo._internal.debug.elf;
@:keep @:allow(stdgo._internal.debug.elf.Elf.Prog_asInterface) class Prog_static_extension {
    @:keep
    @:tdfield
    static public function open( _p:stdgo.Ref<stdgo._internal.debug.elf.Elf_prog.Prog>):stdgo._internal.io.Io_readseeker.ReadSeeker {
        @:recv var _p:stdgo.Ref<stdgo._internal.debug.elf.Elf_prog.Prog> = _p;
        return stdgo.Go.asInterface(stdgo._internal.io.Io_newsectionreader.newSectionReader(stdgo.Go.asInterface((@:checkr _p ?? throw "null pointer dereference")._sr), (0i64 : stdgo.GoInt64), (9223372036854775807i64 : stdgo.GoInt64)));
    }
    @:embedded
    @:embeddededffieldsffun
    public static function readAt( __self__:stdgo._internal.debug.elf.Elf_prog.Prog, _0:stdgo.Slice<stdgo.GoUInt8>, _1:stdgo.GoInt64):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:_5 __self__.readAt(_0, _1);
}
