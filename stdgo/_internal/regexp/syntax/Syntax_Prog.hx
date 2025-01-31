package stdgo._internal.regexp.syntax;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.strings.Strings;
import stdgo._internal.sort.Sort;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.strconv.Strconv;
@:structInit @:using(stdgo._internal.regexp.syntax.Syntax_Prog_static_extension.Prog_static_extension) class Prog {
    public var inst : stdgo.Slice<stdgo._internal.regexp.syntax.Syntax_Inst.Inst> = (null : stdgo.Slice<stdgo._internal.regexp.syntax.Syntax_Inst.Inst>);
    public var start : stdgo.GoInt = 0;
    public var numCap : stdgo.GoInt = 0;
    public function new(?inst:stdgo.Slice<stdgo._internal.regexp.syntax.Syntax_Inst.Inst>, ?start:stdgo.GoInt, ?numCap:stdgo.GoInt) {
        if (inst != null) this.inst = inst;
        if (start != null) this.start = start;
        if (numCap != null) this.numCap = numCap;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Prog(inst, start, numCap);
    }
}
