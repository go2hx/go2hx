package stdgo._internal.debug.gosym;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.sort.Sort;
import stdgo._internal.strings.Strings;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.fmt.Fmt;
@:structInit @:using(stdgo._internal.debug.gosym.Gosym_Obj_static_extension.Obj_static_extension) class Obj {
    public var funcs : stdgo.Slice<stdgo._internal.debug.gosym.Gosym_Func.Func> = (null : stdgo.Slice<stdgo._internal.debug.gosym.Gosym_Func.Func>);
    public var paths : stdgo.Slice<stdgo._internal.debug.gosym.Gosym_Sym.Sym> = (null : stdgo.Slice<stdgo._internal.debug.gosym.Gosym_Sym.Sym>);
    public function new(?funcs:stdgo.Slice<stdgo._internal.debug.gosym.Gosym_Func.Func>, ?paths:stdgo.Slice<stdgo._internal.debug.gosym.Gosym_Sym.Sym>) {
        if (funcs != null) this.funcs = funcs;
        if (paths != null) this.paths = paths;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Obj(funcs, paths);
    }
}
