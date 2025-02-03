package stdgo.debug.gosym;
@:structInit @:using(stdgo.debug.gosym.Gosym.Table_static_extension) abstract Table(stdgo._internal.debug.gosym.Gosym_Table.Table) from stdgo._internal.debug.gosym.Gosym_Table.Table to stdgo._internal.debug.gosym.Gosym_Table.Table {
    public var syms(get, set) : Array<Sym>;
    function get_syms():Array<Sym> return [for (i in this.syms) i];
    function set_syms(v:Array<Sym>):Array<Sym> {
        this.syms = ([for (i in v) i] : stdgo.Slice<stdgo._internal.debug.gosym.Gosym_Sym.Sym>);
        return v;
    }
    public var funcs(get, set) : Array<Func>;
    function get_funcs():Array<Func> return [for (i in this.funcs) i];
    function set_funcs(v:Array<Func>):Array<Func> {
        this.funcs = ([for (i in v) i] : stdgo.Slice<stdgo._internal.debug.gosym.Gosym_Func.Func>);
        return v;
    }
    public var files(get, set) : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.debug.gosym.Gosym_Obj.Obj>>;
    function get_files():stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.debug.gosym.Gosym_Obj.Obj>> return this.files;
    function set_files(v:stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.debug.gosym.Gosym_Obj.Obj>>):stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.debug.gosym.Gosym_Obj.Obj>> {
        this.files = (v : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.debug.gosym.Gosym_Obj.Obj>>);
        return v;
    }
    public var objs(get, set) : Array<Obj>;
    function get_objs():Array<Obj> return [for (i in this.objs) i];
    function set_objs(v:Array<Obj>):Array<Obj> {
        this.objs = ([for (i in v) i] : stdgo.Slice<stdgo._internal.debug.gosym.Gosym_Obj.Obj>);
        return v;
    }
    public var _go12line(get, set) : LineTable;
    function get__go12line():LineTable return this._go12line;
    function set__go12line(v:LineTable):LineTable {
        this._go12line = (v : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_LineTable.LineTable>);
        return v;
    }
    public function new(?syms:Array<Sym>, ?funcs:Array<Func>, ?files:stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.debug.gosym.Gosym_Obj.Obj>>, ?objs:Array<Obj>, ?_go12line:LineTable) this = new stdgo._internal.debug.gosym.Gosym_Table.Table(([for (i in syms) i] : stdgo.Slice<stdgo._internal.debug.gosym.Gosym_Sym.Sym>), ([for (i in funcs) i] : stdgo.Slice<stdgo._internal.debug.gosym.Gosym_Func.Func>), (files : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.debug.gosym.Gosym_Obj.Obj>>), ([for (i in objs) i] : stdgo.Slice<stdgo._internal.debug.gosym.Gosym_Obj.Obj>), (_go12line : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_LineTable.LineTable>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
