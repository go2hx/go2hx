package stdgo._internal.debug.gosym;
@:structInit @:using(stdgo._internal.debug.gosym.Gosym_table_static_extension.Table_static_extension) class Table {
    public var syms : stdgo.Slice<stdgo._internal.debug.gosym.Gosym_sym.Sym> = (null : stdgo.Slice<stdgo._internal.debug.gosym.Gosym_sym.Sym>);
    public var funcs : stdgo.Slice<stdgo._internal.debug.gosym.Gosym_func.Func> = (null : stdgo.Slice<stdgo._internal.debug.gosym.Gosym_func.Func>);
    public var files : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.debug.gosym.Gosym_obj.Obj>> = (null : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.debug.gosym.Gosym_obj.Obj>>);
    public var objs : stdgo.Slice<stdgo._internal.debug.gosym.Gosym_obj.Obj> = (null : stdgo.Slice<stdgo._internal.debug.gosym.Gosym_obj.Obj>);
    public var _go12line : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_linetable.LineTable> = (null : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_linetable.LineTable>);
    public function new(?syms:stdgo.Slice<stdgo._internal.debug.gosym.Gosym_sym.Sym>, ?funcs:stdgo.Slice<stdgo._internal.debug.gosym.Gosym_func.Func>, ?files:stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.debug.gosym.Gosym_obj.Obj>>, ?objs:stdgo.Slice<stdgo._internal.debug.gosym.Gosym_obj.Obj>, ?_go12line:stdgo.Ref<stdgo._internal.debug.gosym.Gosym_linetable.LineTable>) {
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
