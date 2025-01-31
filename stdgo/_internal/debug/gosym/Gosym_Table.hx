package stdgo._internal.debug.gosym;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.sort.Sort;
import stdgo._internal.strings.Strings;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.fmt.Fmt;
@:structInit @:using(stdgo._internal.debug.gosym.Gosym_Table_static_extension.Table_static_extension) class Table {
    public var syms : stdgo.Slice<stdgo._internal.debug.gosym.Gosym_Sym.Sym> = (null : stdgo.Slice<stdgo._internal.debug.gosym.Gosym_Sym.Sym>);
    public var funcs : stdgo.Slice<stdgo._internal.debug.gosym.Gosym_Func.Func> = (null : stdgo.Slice<stdgo._internal.debug.gosym.Gosym_Func.Func>);
    public var files : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.debug.gosym.Gosym_Obj.Obj>> = (null : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.debug.gosym.Gosym_Obj.Obj>>);
    public var objs : stdgo.Slice<stdgo._internal.debug.gosym.Gosym_Obj.Obj> = (null : stdgo.Slice<stdgo._internal.debug.gosym.Gosym_Obj.Obj>);
    public var _go12line : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_LineTable.LineTable> = (null : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_LineTable.LineTable>);
    public function new(?syms:stdgo.Slice<stdgo._internal.debug.gosym.Gosym_Sym.Sym>, ?funcs:stdgo.Slice<stdgo._internal.debug.gosym.Gosym_Func.Func>, ?files:stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.debug.gosym.Gosym_Obj.Obj>>, ?objs:stdgo.Slice<stdgo._internal.debug.gosym.Gosym_Obj.Obj>, ?_go12line:stdgo.Ref<stdgo._internal.debug.gosym.Gosym_LineTable.LineTable>) {
        if (syms != null) this.syms = syms;
        if (funcs != null) this.funcs = funcs;
        if (files != null) this.files = files;
        if (objs != null) this.objs = objs;
        if (_go12line != null) this._go12line = _go12line;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Table(syms, funcs, files, objs, _go12line);
    }
}
