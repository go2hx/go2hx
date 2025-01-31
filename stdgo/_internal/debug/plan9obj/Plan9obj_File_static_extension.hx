package stdgo._internal.debug.plan9obj;
import stdgo._internal.errors.Errors;
import stdgo._internal.os.Os;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.io.Io;
import stdgo._internal.internal.saferio.Saferio;
import stdgo._internal.fmt.Fmt;
@:keep @:allow(stdgo._internal.debug.plan9obj.Plan9obj.File_asInterface) class File_static_extension {
    @:keep
    @:tdfield
    static public function section( _f:stdgo.Ref<stdgo._internal.debug.plan9obj.Plan9obj_File.File>, _name:stdgo.GoString):stdgo.Ref<stdgo._internal.debug.plan9obj.Plan9obj_Section.Section> {
        @:recv var _f:stdgo.Ref<stdgo._internal.debug.plan9obj.Plan9obj_File.File> = _f;
        for (__0 => _s in (@:checkr _f ?? throw "null pointer dereference").sections) {
            if ((@:checkr _s ?? throw "null pointer dereference").sectionHeader.name == (_name)) {
                return _s;
            };
        };
        return null;
    }
    @:keep
    @:tdfield
    static public function symbols( _f:stdgo.Ref<stdgo._internal.debug.plan9obj.Plan9obj_File.File>):{ var _0 : stdgo.Slice<stdgo._internal.debug.plan9obj.Plan9obj_Sym.Sym>; var _1 : stdgo.Error; } {
        @:recv var _f:stdgo.Ref<stdgo._internal.debug.plan9obj.Plan9obj_File.File> = _f;
        var _symtabSection = @:check2r _f.section(("syms" : stdgo.GoString));
        if ((_symtabSection == null || (_symtabSection : Dynamic).__nil__)) {
            return { _0 : (null : stdgo.Slice<stdgo._internal.debug.plan9obj.Plan9obj_Sym.Sym>), _1 : stdgo._internal.debug.plan9obj.Plan9obj_errNoSymbols.errNoSymbols };
        };
        var __tmp__ = @:check2r _symtabSection.data(), _symtab:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : (null : stdgo.Slice<stdgo._internal.debug.plan9obj.Plan9obj_Sym.Sym>), _1 : stdgo._internal.errors.Errors_new_.new_(("cannot load symbol section" : stdgo.GoString)) };
        };
        return stdgo._internal.debug.plan9obj.Plan9obj__newTable._newTable(_symtab, (@:checkr _f ?? throw "null pointer dereference").fileHeader.ptrSize);
    }
    @:keep
    @:tdfield
    static public function close( _f:stdgo.Ref<stdgo._internal.debug.plan9obj.Plan9obj_File.File>):stdgo.Error {
        @:recv var _f:stdgo.Ref<stdgo._internal.debug.plan9obj.Plan9obj_File.File> = _f;
        var _err:stdgo.Error = (null : stdgo.Error);
        if ((@:checkr _f ?? throw "null pointer dereference")._closer != null) {
            _err = (@:checkr _f ?? throw "null pointer dereference")._closer.close();
            (@:checkr _f ?? throw "null pointer dereference")._closer = (null : stdgo._internal.io.Io_Closer.Closer);
        };
        return _err;
    }
}
