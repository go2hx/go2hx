package stdgo.debug.gosym;
@:structInit @:using(stdgo.debug.gosym.Gosym.Func_static_extension) abstract Func(stdgo._internal.debug.gosym.Gosym_Func.Func) from stdgo._internal.debug.gosym.Gosym_Func.Func to stdgo._internal.debug.gosym.Gosym_Func.Func {
    public var entry(get, set) : haxe.UInt64;
    function get_entry():haxe.UInt64 return this.entry;
    function set_entry(v:haxe.UInt64):haxe.UInt64 {
        this.entry = (v : stdgo.GoUInt64);
        return v;
    }
    public var sym(get, set) : Sym;
    function get_sym():Sym return this.sym;
    function set_sym(v:Sym):Sym {
        this.sym = (v : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_Sym.Sym>);
        return v;
    }
    public var end(get, set) : haxe.UInt64;
    function get_end():haxe.UInt64 return this.end;
    function set_end(v:haxe.UInt64):haxe.UInt64 {
        this.end = (v : stdgo.GoUInt64);
        return v;
    }
    public var params(get, set) : Array<Sym>;
    function get_params():Array<Sym> return [for (i in this.params) i];
    function set_params(v:Array<Sym>):Array<Sym> {
        this.params = ([for (i in v) (i : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_Sym.Sym>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.debug.gosym.Gosym_Sym.Sym>>);
        return v;
    }
    public var locals(get, set) : Array<Sym>;
    function get_locals():Array<Sym> return [for (i in this.locals) i];
    function set_locals(v:Array<Sym>):Array<Sym> {
        this.locals = ([for (i in v) (i : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_Sym.Sym>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.debug.gosym.Gosym_Sym.Sym>>);
        return v;
    }
    public var frameSize(get, set) : StdTypes.Int;
    function get_frameSize():StdTypes.Int return this.frameSize;
    function set_frameSize(v:StdTypes.Int):StdTypes.Int {
        this.frameSize = (v : stdgo.GoInt);
        return v;
    }
    public var lineTable(get, set) : LineTable;
    function get_lineTable():LineTable return this.lineTable;
    function set_lineTable(v:LineTable):LineTable {
        this.lineTable = (v : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_LineTable.LineTable>);
        return v;
    }
    public var obj(get, set) : Obj;
    function get_obj():Obj return this.obj;
    function set_obj(v:Obj):Obj {
        this.obj = (v : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_Obj.Obj>);
        return v;
    }
    public function new(?entry:haxe.UInt64, ?sym:Sym, ?end:haxe.UInt64, ?params:Array<Sym>, ?locals:Array<Sym>, ?frameSize:StdTypes.Int, ?lineTable:LineTable, ?obj:Obj) this = new stdgo._internal.debug.gosym.Gosym_Func.Func((entry : stdgo.GoUInt64), (sym : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_Sym.Sym>), (end : stdgo.GoUInt64), ([for (i in params) (i : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_Sym.Sym>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.debug.gosym.Gosym_Sym.Sym>>), ([for (i in locals) (i : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_Sym.Sym>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.debug.gosym.Gosym_Sym.Sym>>), (frameSize : stdgo.GoInt), (lineTable : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_LineTable.LineTable>), (obj : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_Obj.Obj>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
