package stdgo.debug.gosym;
@:structInit @:using(stdgo.debug.gosym.Gosym.Obj_static_extension) abstract Obj(stdgo._internal.debug.gosym.Gosym_Obj.Obj) from stdgo._internal.debug.gosym.Gosym_Obj.Obj to stdgo._internal.debug.gosym.Gosym_Obj.Obj {
    public var funcs(get, set) : Array<Func>;
    function get_funcs():Array<Func> return [for (i in this.funcs) i];
    function set_funcs(v:Array<Func>):Array<Func> {
        this.funcs = ([for (i in v) i] : stdgo.Slice<stdgo._internal.debug.gosym.Gosym_Func.Func>);
        return v;
    }
    public var paths(get, set) : Array<Sym>;
    function get_paths():Array<Sym> return [for (i in this.paths) i];
    function set_paths(v:Array<Sym>):Array<Sym> {
        this.paths = ([for (i in v) i] : stdgo.Slice<stdgo._internal.debug.gosym.Gosym_Sym.Sym>);
        return v;
    }
    public function new(?funcs:Array<Func>, ?paths:Array<Sym>) this = new stdgo._internal.debug.gosym.Gosym_Obj.Obj(([for (i in funcs) i] : stdgo.Slice<stdgo._internal.debug.gosym.Gosym_Func.Func>), ([for (i in paths) i] : stdgo.Slice<stdgo._internal.debug.gosym.Gosym_Sym.Sym>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
