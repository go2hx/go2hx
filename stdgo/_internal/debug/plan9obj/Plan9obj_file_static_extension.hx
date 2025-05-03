package stdgo._internal.debug.plan9obj;
@:keep @:allow(stdgo._internal.debug.plan9obj.Plan9obj.File_asInterface) class File_static_extension {
    @:keep
    @:tdfield
    static public function section( _f:stdgo.Ref<stdgo._internal.debug.plan9obj.Plan9obj_file.File>, _name:stdgo.GoString):stdgo.Ref<stdgo._internal.debug.plan9obj.Plan9obj_section.Section> {
        @:recv var _f:stdgo.Ref<stdgo._internal.debug.plan9obj.Plan9obj_file.File> = _f;
        //"file:///home/runner/.go/go1.21.3/src/debug/plan9obj/file.go#L334"
        for (__0 => _s in (@:checkr _f ?? throw "null pointer dereference").sections) {
            //"file:///home/runner/.go/go1.21.3/src/debug/plan9obj/file.go#L335"
            if ((@:checkr _s ?? throw "null pointer dereference").sectionHeader.name == (_name)) {
                //"file:///home/runner/.go/go1.21.3/src/debug/plan9obj/file.go#L336"
                return _s;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/debug/plan9obj/file.go#L339"
        return null;
    }
    @:keep
    @:tdfield
    static public function symbols( _f:stdgo.Ref<stdgo._internal.debug.plan9obj.Plan9obj_file.File>):{ var _0 : stdgo.Slice<stdgo._internal.debug.plan9obj.Plan9obj_sym.Sym>; var _1 : stdgo.Error; } {
        @:recv var _f:stdgo.Ref<stdgo._internal.debug.plan9obj.Plan9obj_file.File> = _f;
        var _symtabSection = _f.section(("syms" : stdgo.GoString));
        //"file:///home/runner/.go/go1.21.3/src/debug/plan9obj/file.go#L319"
        if (({
            final value = _symtabSection;
            (value == null || (value : Dynamic).__nil__);
        })) {
            //"file:///home/runner/.go/go1.21.3/src/debug/plan9obj/file.go#L320"
            return { _0 : (null : stdgo.Slice<stdgo._internal.debug.plan9obj.Plan9obj_sym.Sym>), _1 : stdgo._internal.debug.plan9obj.Plan9obj_errnosymbols.errNoSymbols };
        };
        var __tmp__ = _symtabSection.data(), _symtab:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/debug/plan9obj/file.go#L324"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/debug/plan9obj/file.go#L325"
            return { _0 : (null : stdgo.Slice<stdgo._internal.debug.plan9obj.Plan9obj_sym.Sym>), _1 : stdgo._internal.errors.Errors_new_.new_(("cannot load symbol section" : stdgo.GoString)) };
        };
        //"file:///home/runner/.go/go1.21.3/src/debug/plan9obj/file.go#L328"
        return stdgo._internal.debug.plan9obj.Plan9obj__newtable._newTable(_symtab, (@:checkr _f ?? throw "null pointer dereference").fileHeader.ptrSize);
    }
    @:keep
    @:tdfield
    static public function close( _f:stdgo.Ref<stdgo._internal.debug.plan9obj.Plan9obj_file.File>):stdgo.Error {
        @:recv var _f:stdgo.Ref<stdgo._internal.debug.plan9obj.Plan9obj_file.File> = _f;
        var _err:stdgo.Error = (null : stdgo.Error);
        //"file:///home/runner/.go/go1.21.3/src/debug/plan9obj/file.go#L123"
        if ((@:checkr _f ?? throw "null pointer dereference")._closer != null) {
            _err = (@:checkr _f ?? throw "null pointer dereference")._closer.close();
            (@:checkr _f ?? throw "null pointer dereference")._closer = (null : stdgo._internal.io.Io_closer.Closer);
        };
        //"file:///home/runner/.go/go1.21.3/src/debug/plan9obj/file.go#L127"
        return _err;
    }
}
