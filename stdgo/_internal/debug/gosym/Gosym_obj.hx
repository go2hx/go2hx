package stdgo._internal.debug.gosym;
@:structInit @:using(stdgo._internal.debug.gosym.Gosym_obj_static_extension.Obj_static_extension) class Obj {
    public var funcs : stdgo.Slice<stdgo._internal.debug.gosym.Gosym_func.Func> = (null : stdgo.Slice<stdgo._internal.debug.gosym.Gosym_func.Func>);
    public var paths : stdgo.Slice<stdgo._internal.debug.gosym.Gosym_sym.Sym> = (null : stdgo.Slice<stdgo._internal.debug.gosym.Gosym_sym.Sym>);
    public function new(?funcs:stdgo.Slice<stdgo._internal.debug.gosym.Gosym_func.Func>, ?paths:stdgo.Slice<stdgo._internal.debug.gosym.Gosym_sym.Sym>) {
        if (funcs != null) this.funcs = funcs;
        if (paths != null) this.paths = paths;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Obj(funcs, paths);
    }
}
