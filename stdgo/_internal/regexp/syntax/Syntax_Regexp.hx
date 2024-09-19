package stdgo._internal.regexp.syntax;
@:structInit @:using(stdgo._internal.regexp.syntax.Syntax_Regexp_static_extension.Regexp_static_extension) class Regexp {
    public var op : stdgo._internal.regexp.syntax.Syntax_Op.Op = ((0 : stdgo.GoUInt8) : stdgo._internal.regexp.syntax.Syntax_Op.Op);
    public var flags : stdgo._internal.regexp.syntax.Syntax_Flags.Flags = ((0 : stdgo.GoUInt16) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags);
    public var sub : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>>);
    public var sub0 : stdgo.GoArray<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>> = new stdgo.GoArray<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>>(1, 1, ...[for (i in 0 ... 1) (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>)]);
    public var rune : stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
    public var rune0 : stdgo.GoArray<stdgo.GoInt32> = new stdgo.GoArray<stdgo.GoInt32>(2, 2, ...[for (i in 0 ... 2) (0 : stdgo.GoInt32)]);
    public var min : stdgo.GoInt = 0;
    public var max : stdgo.GoInt = 0;
    public var cap : stdgo.GoInt = 0;
    public var name : stdgo.GoString = "";
    public function new(?op:stdgo._internal.regexp.syntax.Syntax_Op.Op, ?flags:stdgo._internal.regexp.syntax.Syntax_Flags.Flags, ?sub:stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>>, ?sub0:stdgo.GoArray<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>>, ?rune:stdgo.Slice<stdgo.GoInt32>, ?rune0:stdgo.GoArray<stdgo.GoInt32>, ?min:stdgo.GoInt, ?max:stdgo.GoInt, ?cap:stdgo.GoInt, ?name:stdgo.GoString) {
        if (op != null) this.op = op;
        if (flags != null) this.flags = flags;
        if (sub != null) this.sub = sub;
        if (sub0 != null) this.sub0 = sub0;
        if (rune != null) this.rune = rune;
        if (rune0 != null) this.rune0 = rune0;
        if (min != null) this.min = min;
        if (max != null) this.max = max;
        if (cap != null) this.cap = cap;
        if (name != null) this.name = name;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Regexp(op, flags, sub, sub0, rune, rune0, min, max, cap, name);
    }
}