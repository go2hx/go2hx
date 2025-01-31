package stdgo._internal.regexp.syntax;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.strings.Strings;
import stdgo._internal.sort.Sort;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.strconv.Strconv;
@:structInit @:using(stdgo._internal.regexp.syntax.Syntax_Inst_static_extension.Inst_static_extension) class Inst {
    public var op : stdgo._internal.regexp.syntax.Syntax_InstOp.InstOp = ((0 : stdgo.GoUInt8) : stdgo._internal.regexp.syntax.Syntax_InstOp.InstOp);
    public var out : stdgo.GoUInt32 = 0;
    public var arg : stdgo.GoUInt32 = 0;
    public var rune : stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
    public function new(?op:stdgo._internal.regexp.syntax.Syntax_InstOp.InstOp, ?out:stdgo.GoUInt32, ?arg:stdgo.GoUInt32, ?rune:stdgo.Slice<stdgo.GoInt32>) {
        if (op != null) this.op = op;
        if (out != null) this.out = out;
        if (arg != null) this.arg = arg;
        if (rune != null) this.rune = rune;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Inst(op, out, arg, rune);
    }
}
