package stdgo._internal.debug.plan9obj;
@:keep @:allow(stdgo._internal.debug.plan9obj.Plan9obj.File_asInterface) class File_static_extension {
    @:keep
    static public function section( _f:stdgo.Ref<stdgo._internal.debug.plan9obj.Plan9obj_File.File>, _name:stdgo.GoString):stdgo.Ref<stdgo._internal.debug.plan9obj.Plan9obj_Section.Section> {
        @:recv var _f:stdgo.Ref<stdgo._internal.debug.plan9obj.Plan9obj_File.File> = _f;
        for (__0 => _s in _f.sections) {
            if (_s.sectionHeader.name == (_name)) {
                return _s;
            };
        };
        return null;
    }
    @:keep
    static public function symbols( _f:stdgo.Ref<stdgo._internal.debug.plan9obj.Plan9obj_File.File>):{ var _0 : stdgo.Slice<stdgo._internal.debug.plan9obj.Plan9obj_Sym.Sym>; var _1 : stdgo.Error; } {
        @:recv var _f:stdgo.Ref<stdgo._internal.debug.plan9obj.Plan9obj_File.File> = _f;
        var _symtabSection = _f.section(("syms" : stdgo.GoString));
        if ((_symtabSection == null || (_symtabSection : Dynamic).__nil__)) {
            return { _0 : (null : stdgo.Slice<stdgo._internal.debug.plan9obj.Plan9obj_Sym.Sym>), _1 : stdgo._internal.debug.plan9obj.Plan9obj_errNoSymbols.errNoSymbols };
        };
        var __tmp__ = _symtabSection.data(), _symtab:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : (null : stdgo.Slice<stdgo._internal.debug.plan9obj.Plan9obj_Sym.Sym>), _1 : stdgo._internal.errors.Errors_new_.new_(("cannot load symbol section" : stdgo.GoString)) };
        };
        return stdgo._internal.debug.plan9obj.Plan9obj__newTable._newTable(_symtab, _f.fileHeader.ptrSize);
    }
    @:keep
    static public function close( _f:stdgo.Ref<stdgo._internal.debug.plan9obj.Plan9obj_File.File>):stdgo.Error {
        @:recv var _f:stdgo.Ref<stdgo._internal.debug.plan9obj.Plan9obj_File.File> = _f;
        var _err:stdgo.Error = (null : stdgo.Error);
        if (_f._closer != null) {
            _err = _f._closer.close();
            _f._closer = (null : stdgo._internal.io.Io_Closer.Closer);
        };
        return _err;
    }
}
