package stdgo.regexp.syntax;
final errInternalError : ErrorCode = stdgo._internal.regexp.syntax.Syntax_errInternalError.errInternalError;
final errInvalidCharClass : ErrorCode = stdgo._internal.regexp.syntax.Syntax_errInvalidCharClass.errInvalidCharClass;
final errInvalidCharRange : ErrorCode = stdgo._internal.regexp.syntax.Syntax_errInvalidCharRange.errInvalidCharRange;
final errInvalidEscape : ErrorCode = stdgo._internal.regexp.syntax.Syntax_errInvalidEscape.errInvalidEscape;
final errInvalidNamedCapture : ErrorCode = stdgo._internal.regexp.syntax.Syntax_errInvalidNamedCapture.errInvalidNamedCapture;
final errInvalidPerlOp : ErrorCode = stdgo._internal.regexp.syntax.Syntax_errInvalidPerlOp.errInvalidPerlOp;
final errInvalidRepeatOp : ErrorCode = stdgo._internal.regexp.syntax.Syntax_errInvalidRepeatOp.errInvalidRepeatOp;
final errInvalidRepeatSize : ErrorCode = stdgo._internal.regexp.syntax.Syntax_errInvalidRepeatSize.errInvalidRepeatSize;
final errInvalidUTF8 : ErrorCode = stdgo._internal.regexp.syntax.Syntax_errInvalidUTF8.errInvalidUTF8;
final errMissingBracket : ErrorCode = stdgo._internal.regexp.syntax.Syntax_errMissingBracket.errMissingBracket;
final errMissingParen : ErrorCode = stdgo._internal.regexp.syntax.Syntax_errMissingParen.errMissingParen;
final errMissingRepeatArgument : ErrorCode = stdgo._internal.regexp.syntax.Syntax_errMissingRepeatArgument.errMissingRepeatArgument;
final errTrailingBackslash : ErrorCode = stdgo._internal.regexp.syntax.Syntax_errTrailingBackslash.errTrailingBackslash;
final errUnexpectedParen : ErrorCode = stdgo._internal.regexp.syntax.Syntax_errUnexpectedParen.errUnexpectedParen;
final errNestingDepth : ErrorCode = stdgo._internal.regexp.syntax.Syntax_errNestingDepth.errNestingDepth;
final errLarge : ErrorCode = stdgo._internal.regexp.syntax.Syntax_errLarge.errLarge;
final foldCase : Flags = stdgo._internal.regexp.syntax.Syntax_foldCase.foldCase;
final literal = stdgo._internal.regexp.syntax.Syntax_literal.literal;
final classNL = stdgo._internal.regexp.syntax.Syntax_classNL.classNL;
final dotNL = stdgo._internal.regexp.syntax.Syntax_dotNL.dotNL;
final oneLine = stdgo._internal.regexp.syntax.Syntax_oneLine.oneLine;
final nonGreedy = stdgo._internal.regexp.syntax.Syntax_nonGreedy.nonGreedy;
final perlX = stdgo._internal.regexp.syntax.Syntax_perlX.perlX;
final unicodeGroups = stdgo._internal.regexp.syntax.Syntax_unicodeGroups.unicodeGroups;
final wasDollar = stdgo._internal.regexp.syntax.Syntax_wasDollar.wasDollar;
final simple = stdgo._internal.regexp.syntax.Syntax_simple.simple;
final matchNL : Flags = stdgo._internal.regexp.syntax.Syntax_matchNL.matchNL;
final perl : Flags = stdgo._internal.regexp.syntax.Syntax_perl.perl;
final posix : Flags = stdgo._internal.regexp.syntax.Syntax_posix.posix;
final instAlt : InstOp = stdgo._internal.regexp.syntax.Syntax_instAlt.instAlt;
final instAltMatch = stdgo._internal.regexp.syntax.Syntax_instAltMatch.instAltMatch;
final instCapture = stdgo._internal.regexp.syntax.Syntax_instCapture.instCapture;
final instEmptyWidth = stdgo._internal.regexp.syntax.Syntax_instEmptyWidth.instEmptyWidth;
final instMatch = stdgo._internal.regexp.syntax.Syntax_instMatch.instMatch;
final instFail = stdgo._internal.regexp.syntax.Syntax_instFail.instFail;
final instNop = stdgo._internal.regexp.syntax.Syntax_instNop.instNop;
final instRune = stdgo._internal.regexp.syntax.Syntax_instRune.instRune;
final instRune1 = stdgo._internal.regexp.syntax.Syntax_instRune1.instRune1;
final instRuneAny = stdgo._internal.regexp.syntax.Syntax_instRuneAny.instRuneAny;
final instRuneAnyNotNL = stdgo._internal.regexp.syntax.Syntax_instRuneAnyNotNL.instRuneAnyNotNL;
final emptyBeginLine : EmptyOp = stdgo._internal.regexp.syntax.Syntax_emptyBeginLine.emptyBeginLine;
final emptyEndLine = stdgo._internal.regexp.syntax.Syntax_emptyEndLine.emptyEndLine;
final emptyBeginText = stdgo._internal.regexp.syntax.Syntax_emptyBeginText.emptyBeginText;
final emptyEndText = stdgo._internal.regexp.syntax.Syntax_emptyEndText.emptyEndText;
final emptyWordBoundary = stdgo._internal.regexp.syntax.Syntax_emptyWordBoundary.emptyWordBoundary;
final emptyNoWordBoundary = stdgo._internal.regexp.syntax.Syntax_emptyNoWordBoundary.emptyNoWordBoundary;
final opNoMatch : Op = stdgo._internal.regexp.syntax.Syntax_opNoMatch.opNoMatch;
final opEmptyMatch = stdgo._internal.regexp.syntax.Syntax_opEmptyMatch.opEmptyMatch;
final opLiteral = stdgo._internal.regexp.syntax.Syntax_opLiteral.opLiteral;
final opCharClass = stdgo._internal.regexp.syntax.Syntax_opCharClass.opCharClass;
final opAnyCharNotNL = stdgo._internal.regexp.syntax.Syntax_opAnyCharNotNL.opAnyCharNotNL;
final opAnyChar = stdgo._internal.regexp.syntax.Syntax_opAnyChar.opAnyChar;
final opBeginLine = stdgo._internal.regexp.syntax.Syntax_opBeginLine.opBeginLine;
final opEndLine = stdgo._internal.regexp.syntax.Syntax_opEndLine.opEndLine;
final opBeginText = stdgo._internal.regexp.syntax.Syntax_opBeginText.opBeginText;
final opEndText = stdgo._internal.regexp.syntax.Syntax_opEndText.opEndText;
final opWordBoundary = stdgo._internal.regexp.syntax.Syntax_opWordBoundary.opWordBoundary;
final opNoWordBoundary = stdgo._internal.regexp.syntax.Syntax_opNoWordBoundary.opNoWordBoundary;
final opCapture = stdgo._internal.regexp.syntax.Syntax_opCapture.opCapture;
final opStar = stdgo._internal.regexp.syntax.Syntax_opStar.opStar;
final opPlus = stdgo._internal.regexp.syntax.Syntax_opPlus.opPlus;
final opQuest = stdgo._internal.regexp.syntax.Syntax_opQuest.opQuest;
final opRepeat = stdgo._internal.regexp.syntax.Syntax_opRepeat.opRepeat;
final opConcat = stdgo._internal.regexp.syntax.Syntax_opConcat.opConcat;
final opAlternate = stdgo._internal.regexp.syntax.Syntax_opAlternate.opAlternate;
@:structInit @:using(stdgo.regexp.syntax.Syntax.T_patchList_static_extension) abstract T_patchList(stdgo._internal.regexp.syntax.Syntax_T_patchList.T_patchList) from stdgo._internal.regexp.syntax.Syntax_T_patchList.T_patchList to stdgo._internal.regexp.syntax.Syntax_T_patchList.T_patchList {
    public var _head(get, set) : std.UInt;
    function get__head():std.UInt return this._head;
    function set__head(v:std.UInt):std.UInt {
        this._head = v;
        return v;
    }
    public var _tail(get, set) : std.UInt;
    function get__tail():std.UInt return this._tail;
    function set__tail(v:std.UInt):std.UInt {
        this._tail = v;
        return v;
    }
    public function new(?_head:std.UInt, ?_tail:std.UInt) this = new stdgo._internal.regexp.syntax.Syntax_T_patchList.T_patchList(_head, _tail);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract T_frag(stdgo._internal.regexp.syntax.Syntax_T_frag.T_frag) from stdgo._internal.regexp.syntax.Syntax_T_frag.T_frag to stdgo._internal.regexp.syntax.Syntax_T_frag.T_frag {
    public var _i(get, set) : std.UInt;
    function get__i():std.UInt return this._i;
    function set__i(v:std.UInt):std.UInt {
        this._i = v;
        return v;
    }
    public var _out(get, set) : T_patchList;
    function get__out():T_patchList return this._out;
    function set__out(v:T_patchList):T_patchList {
        this._out = v;
        return v;
    }
    public var _nullable(get, set) : Bool;
    function get__nullable():Bool return this._nullable;
    function set__nullable(v:Bool):Bool {
        this._nullable = v;
        return v;
    }
    public function new(?_i:std.UInt, ?_out:T_patchList, ?_nullable:Bool) this = new stdgo._internal.regexp.syntax.Syntax_T_frag.T_frag(_i, _out, _nullable);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.regexp.syntax.Syntax.T_compiler_static_extension) abstract T_compiler(stdgo._internal.regexp.syntax.Syntax_T_compiler.T_compiler) from stdgo._internal.regexp.syntax.Syntax_T_compiler.T_compiler to stdgo._internal.regexp.syntax.Syntax_T_compiler.T_compiler {
    public var _p(get, set) : Prog;
    function get__p():Prog return this._p;
    function set__p(v:Prog):Prog {
        this._p = v;
        return v;
    }
    public function new(?_p:Prog) this = new stdgo._internal.regexp.syntax.Syntax_T_compiler.T_compiler(_p);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.regexp.syntax.Syntax.Error_static_extension) abstract Error(stdgo._internal.regexp.syntax.Syntax_Error.Error) from stdgo._internal.regexp.syntax.Syntax_Error.Error to stdgo._internal.regexp.syntax.Syntax_Error.Error {
    public var code(get, set) : ErrorCode;
    function get_code():ErrorCode return this.code;
    function set_code(v:ErrorCode):ErrorCode {
        this.code = v;
        return v;
    }
    public var expr(get, set) : String;
    function get_expr():String return this.expr;
    function set_expr(v:String):String {
        this.expr = v;
        return v;
    }
    public function new(?code:ErrorCode, ?expr:String) this = new stdgo._internal.regexp.syntax.Syntax_Error.Error(code, expr);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.regexp.syntax.Syntax.T_parser_static_extension) abstract T_parser(stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser) from stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser to stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser {
    public var _flags(get, set) : Flags;
    function get__flags():Flags return this._flags;
    function set__flags(v:Flags):Flags {
        this._flags = v;
        return v;
    }
    public var _stack(get, set) : Array<Regexp>;
    function get__stack():Array<Regexp> return [for (i in this._stack) i];
    function set__stack(v:Array<Regexp>):Array<Regexp> {
        this._stack = ([for (i in v) i] : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>>);
        return v;
    }
    public var _free(get, set) : Regexp;
    function get__free():Regexp return this._free;
    function set__free(v:Regexp):Regexp {
        this._free = v;
        return v;
    }
    public var _numCap(get, set) : StdTypes.Int;
    function get__numCap():StdTypes.Int return this._numCap;
    function set__numCap(v:StdTypes.Int):StdTypes.Int {
        this._numCap = v;
        return v;
    }
    public var _wholeRegexp(get, set) : String;
    function get__wholeRegexp():String return this._wholeRegexp;
    function set__wholeRegexp(v:String):String {
        this._wholeRegexp = v;
        return v;
    }
    public var _tmpClass(get, set) : Array<StdTypes.Int>;
    function get__tmpClass():Array<StdTypes.Int> return [for (i in this._tmpClass) i];
    function set__tmpClass(v:Array<StdTypes.Int>):Array<StdTypes.Int> {
        this._tmpClass = ([for (i in v) i] : stdgo.Slice<stdgo.GoInt32>);
        return v;
    }
    public var _numRegexp(get, set) : StdTypes.Int;
    function get__numRegexp():StdTypes.Int return this._numRegexp;
    function set__numRegexp(v:StdTypes.Int):StdTypes.Int {
        this._numRegexp = v;
        return v;
    }
    public var _numRunes(get, set) : StdTypes.Int;
    function get__numRunes():StdTypes.Int return this._numRunes;
    function set__numRunes(v:StdTypes.Int):StdTypes.Int {
        this._numRunes = v;
        return v;
    }
    public var _repeats(get, set) : haxe.Int64;
    function get__repeats():haxe.Int64 return this._repeats;
    function set__repeats(v:haxe.Int64):haxe.Int64 {
        this._repeats = v;
        return v;
    }
    public var _height(get, set) : stdgo.GoMap<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>, stdgo.GoInt>;
    function get__height():stdgo.GoMap<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>, stdgo.GoInt> return this._height;
    function set__height(v:stdgo.GoMap<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>, stdgo.GoInt>):stdgo.GoMap<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>, stdgo.GoInt> {
        this._height = v;
        return v;
    }
    public var _size(get, set) : stdgo.GoMap<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>, stdgo.GoInt64>;
    function get__size():stdgo.GoMap<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>, stdgo.GoInt64> return this._size;
    function set__size(v:stdgo.GoMap<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>, stdgo.GoInt64>):stdgo.GoMap<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>, stdgo.GoInt64> {
        this._size = v;
        return v;
    }
    public function new(?_flags:Flags, ?_stack:Array<Regexp>, ?_free:Regexp, ?_numCap:StdTypes.Int, ?_wholeRegexp:String, ?_tmpClass:Array<StdTypes.Int>, ?_numRegexp:StdTypes.Int, ?_numRunes:StdTypes.Int, ?_repeats:haxe.Int64, ?_height:stdgo.GoMap<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>, stdgo.GoInt>, ?_size:stdgo.GoMap<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>, stdgo.GoInt64>) this = new stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser(
_flags,
([for (i in _stack) i] : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>>),
_free,
_numCap,
_wholeRegexp,
([for (i in _tmpClass) i] : stdgo.Slice<stdgo.GoInt32>),
_numRegexp,
_numRunes,
_repeats,
_height,
_size);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract T_charGroup(stdgo._internal.regexp.syntax.Syntax_T_charGroup.T_charGroup) from stdgo._internal.regexp.syntax.Syntax_T_charGroup.T_charGroup to stdgo._internal.regexp.syntax.Syntax_T_charGroup.T_charGroup {
    public var _sign(get, set) : StdTypes.Int;
    function get__sign():StdTypes.Int return this._sign;
    function set__sign(v:StdTypes.Int):StdTypes.Int {
        this._sign = v;
        return v;
    }
    public var _class(get, set) : Array<StdTypes.Int>;
    function get__class():Array<StdTypes.Int> return [for (i in this._class) i];
    function set__class(v:Array<StdTypes.Int>):Array<StdTypes.Int> {
        this._class = ([for (i in v) i] : stdgo.Slice<stdgo.GoInt32>);
        return v;
    }
    public function new(?_sign:StdTypes.Int, ?_class:Array<StdTypes.Int>) this = new stdgo._internal.regexp.syntax.Syntax_T_charGroup.T_charGroup(_sign, ([for (i in _class) i] : stdgo.Slice<stdgo.GoInt32>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.regexp.syntax.Syntax.T_ranges_static_extension) abstract T_ranges(stdgo._internal.regexp.syntax.Syntax_T_ranges.T_ranges) from stdgo._internal.regexp.syntax.Syntax_T_ranges.T_ranges to stdgo._internal.regexp.syntax.Syntax_T_ranges.T_ranges {
    public var _p(get, set) : Array<StdTypes.Int>;
    function get__p():Array<StdTypes.Int> return this._p;
    function set__p(v:Array<StdTypes.Int>):Array<StdTypes.Int> {
        this._p = v;
        return v;
    }
    public function new(?_p:Array<StdTypes.Int>) this = new stdgo._internal.regexp.syntax.Syntax_T_ranges.T_ranges(_p);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract T_parseTest(stdgo._internal.regexp.syntax.Syntax_T_parseTest.T_parseTest) from stdgo._internal.regexp.syntax.Syntax_T_parseTest.T_parseTest to stdgo._internal.regexp.syntax.Syntax_T_parseTest.T_parseTest {
    public var regexp(get, set) : String;
    function get_regexp():String return this.regexp;
    function set_regexp(v:String):String {
        this.regexp = v;
        return v;
    }
    public var dump(get, set) : String;
    function get_dump():String return this.dump;
    function set_dump(v:String):String {
        this.dump = v;
        return v;
    }
    public function new(?regexp:String, ?dump:String) this = new stdgo._internal.regexp.syntax.Syntax_T_parseTest.T_parseTest(regexp, dump);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.regexp.syntax.Syntax.Prog_static_extension) abstract Prog(stdgo._internal.regexp.syntax.Syntax_Prog.Prog) from stdgo._internal.regexp.syntax.Syntax_Prog.Prog to stdgo._internal.regexp.syntax.Syntax_Prog.Prog {
    public var inst(get, set) : Array<Inst>;
    function get_inst():Array<Inst> return [for (i in this.inst) i];
    function set_inst(v:Array<Inst>):Array<Inst> {
        this.inst = ([for (i in v) i] : stdgo.Slice<stdgo._internal.regexp.syntax.Syntax_Inst.Inst>);
        return v;
    }
    public var start(get, set) : StdTypes.Int;
    function get_start():StdTypes.Int return this.start;
    function set_start(v:StdTypes.Int):StdTypes.Int {
        this.start = v;
        return v;
    }
    public var numCap(get, set) : StdTypes.Int;
    function get_numCap():StdTypes.Int return this.numCap;
    function set_numCap(v:StdTypes.Int):StdTypes.Int {
        this.numCap = v;
        return v;
    }
    public function new(?inst:Array<Inst>, ?start:StdTypes.Int, ?numCap:StdTypes.Int) this = new stdgo._internal.regexp.syntax.Syntax_Prog.Prog(([for (i in inst) i] : stdgo.Slice<stdgo._internal.regexp.syntax.Syntax_Inst.Inst>), start, numCap);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.regexp.syntax.Syntax.Inst_static_extension) abstract Inst(stdgo._internal.regexp.syntax.Syntax_Inst.Inst) from stdgo._internal.regexp.syntax.Syntax_Inst.Inst to stdgo._internal.regexp.syntax.Syntax_Inst.Inst {
    public var op(get, set) : InstOp;
    function get_op():InstOp return this.op;
    function set_op(v:InstOp):InstOp {
        this.op = v;
        return v;
    }
    public var out(get, set) : std.UInt;
    function get_out():std.UInt return this.out;
    function set_out(v:std.UInt):std.UInt {
        this.out = v;
        return v;
    }
    public var arg(get, set) : std.UInt;
    function get_arg():std.UInt return this.arg;
    function set_arg(v:std.UInt):std.UInt {
        this.arg = v;
        return v;
    }
    public var rune(get, set) : Array<StdTypes.Int>;
    function get_rune():Array<StdTypes.Int> return [for (i in this.rune) i];
    function set_rune(v:Array<StdTypes.Int>):Array<StdTypes.Int> {
        this.rune = ([for (i in v) i] : stdgo.Slice<stdgo.GoInt32>);
        return v;
    }
    public function new(?op:InstOp, ?out:std.UInt, ?arg:std.UInt, ?rune:Array<StdTypes.Int>) this = new stdgo._internal.regexp.syntax.Syntax_Inst.Inst(op, out, arg, ([for (i in rune) i] : stdgo.Slice<stdgo.GoInt32>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.regexp.syntax.Syntax.Regexp_static_extension) abstract Regexp(stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp) from stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp to stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp {
    public var op(get, set) : Op;
    function get_op():Op return this.op;
    function set_op(v:Op):Op {
        this.op = v;
        return v;
    }
    public var flags(get, set) : Flags;
    function get_flags():Flags return this.flags;
    function set_flags(v:Flags):Flags {
        this.flags = v;
        return v;
    }
    public var sub(get, set) : Array<Regexp>;
    function get_sub():Array<Regexp> return [for (i in this.sub) i];
    function set_sub(v:Array<Regexp>):Array<Regexp> {
        this.sub = ([for (i in v) i] : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>>);
        return v;
    }
    public var sub0(get, set) : haxe.ds.Vector<Regexp>;
    function get_sub0():haxe.ds.Vector<Regexp> return haxe.ds.Vector.fromArrayCopy([for (i in this.sub0) i]);
    function set_sub0(v:haxe.ds.Vector<Regexp>):haxe.ds.Vector<Regexp> {
        this.sub0 = ([for (i in v) i] : stdgo.GoArray<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>>);
        return v;
    }
    public var rune(get, set) : Array<StdTypes.Int>;
    function get_rune():Array<StdTypes.Int> return [for (i in this.rune) i];
    function set_rune(v:Array<StdTypes.Int>):Array<StdTypes.Int> {
        this.rune = ([for (i in v) i] : stdgo.Slice<stdgo.GoInt32>);
        return v;
    }
    public var rune0(get, set) : haxe.ds.Vector<StdTypes.Int>;
    function get_rune0():haxe.ds.Vector<StdTypes.Int> return haxe.ds.Vector.fromArrayCopy([for (i in this.rune0) i]);
    function set_rune0(v:haxe.ds.Vector<StdTypes.Int>):haxe.ds.Vector<StdTypes.Int> {
        this.rune0 = ([for (i in v) i] : stdgo.GoArray<stdgo.GoInt32>);
        return v;
    }
    public var min(get, set) : StdTypes.Int;
    function get_min():StdTypes.Int return this.min;
    function set_min(v:StdTypes.Int):StdTypes.Int {
        this.min = v;
        return v;
    }
    public var max(get, set) : StdTypes.Int;
    function get_max():StdTypes.Int return this.max;
    function set_max(v:StdTypes.Int):StdTypes.Int {
        this.max = v;
        return v;
    }
    public var cap(get, set) : StdTypes.Int;
    function get_cap():StdTypes.Int return this.cap;
    function set_cap(v:StdTypes.Int):StdTypes.Int {
        this.cap = v;
        return v;
    }
    public var name(get, set) : String;
    function get_name():String return this.name;
    function set_name(v:String):String {
        this.name = v;
        return v;
    }
    public function new(?op:Op, ?flags:Flags, ?sub:Array<Regexp>, ?sub0:haxe.ds.Vector<Regexp>, ?rune:Array<StdTypes.Int>, ?rune0:haxe.ds.Vector<StdTypes.Int>, ?min:StdTypes.Int, ?max:StdTypes.Int, ?cap:StdTypes.Int, ?name:String) this = new stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp(op, flags, ([for (i in sub) i] : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>>), ([for (i in sub0) i] : stdgo.GoArray<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>>), ([for (i in rune) i] : stdgo.Slice<stdgo.GoInt32>), ([for (i in rune0) i] : stdgo.GoArray<stdgo.GoInt32>), min, max, cap, name);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
class T__struct_0_static_extension {

}
typedef T__struct_0 = stdgo._internal.regexp.syntax.Syntax_T__struct_0.T__struct_0;
class T__struct_1_static_extension {

}
typedef T__struct_1 = stdgo._internal.regexp.syntax.Syntax_T__struct_1.T__struct_1;
class T__struct_2_static_extension {

}
typedef T__struct_2 = stdgo._internal.regexp.syntax.Syntax_T__struct_2.T__struct_2;
typedef ErrorCode = stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode;
typedef Flags = stdgo._internal.regexp.syntax.Syntax_Flags.Flags;
typedef InstOp = stdgo._internal.regexp.syntax.Syntax_InstOp.InstOp;
typedef EmptyOp = stdgo._internal.regexp.syntax.Syntax_EmptyOp.EmptyOp;
typedef Op = stdgo._internal.regexp.syntax.Syntax_Op.Op;
class T_patchList_static_extension {
    static public function _append(_l1:T_patchList, _p:Prog, _l2:T_patchList):T_patchList {
        return stdgo._internal.regexp.syntax.Syntax_T_patchList_static_extension.T_patchList_static_extension._append(_l1, _p, _l2);
    }
    static public function _patch(_l:T_patchList, _p:Prog, _val:std.UInt):Void {
        stdgo._internal.regexp.syntax.Syntax_T_patchList_static_extension.T_patchList_static_extension._patch(_l, _p, _val);
    }
}
class T_compiler_static_extension {
    static public function _rune(_c:T_compiler, _r:Array<StdTypes.Int>, _flags:Flags):T_frag {
        final _r = ([for (i in _r) i] : stdgo.Slice<stdgo.GoInt32>);
        return stdgo._internal.regexp.syntax.Syntax_T_compiler_static_extension.T_compiler_static_extension._rune(_c, _r, _flags);
    }
    static public function _empty(_c:T_compiler, _op:EmptyOp):T_frag {
        return stdgo._internal.regexp.syntax.Syntax_T_compiler_static_extension.T_compiler_static_extension._empty(_c, _op);
    }
    static public function _plus(_c:T_compiler, _f1:T_frag, _nongreedy:Bool):T_frag {
        return stdgo._internal.regexp.syntax.Syntax_T_compiler_static_extension.T_compiler_static_extension._plus(_c, _f1, _nongreedy);
    }
    static public function _star(_c:T_compiler, _f1:T_frag, _nongreedy:Bool):T_frag {
        return stdgo._internal.regexp.syntax.Syntax_T_compiler_static_extension.T_compiler_static_extension._star(_c, _f1, _nongreedy);
    }
    static public function _loop(_c:T_compiler, _f1:T_frag, _nongreedy:Bool):T_frag {
        return stdgo._internal.regexp.syntax.Syntax_T_compiler_static_extension.T_compiler_static_extension._loop(_c, _f1, _nongreedy);
    }
    static public function _quest(_c:T_compiler, _f1:T_frag, _nongreedy:Bool):T_frag {
        return stdgo._internal.regexp.syntax.Syntax_T_compiler_static_extension.T_compiler_static_extension._quest(_c, _f1, _nongreedy);
    }
    static public function _alt(_c:T_compiler, _f1:T_frag, _f2:T_frag):T_frag {
        return stdgo._internal.regexp.syntax.Syntax_T_compiler_static_extension.T_compiler_static_extension._alt(_c, _f1, _f2);
    }
    static public function _cat(_c:T_compiler, _f1:T_frag, _f2:T_frag):T_frag {
        return stdgo._internal.regexp.syntax.Syntax_T_compiler_static_extension.T_compiler_static_extension._cat(_c, _f1, _f2);
    }
    static public function _cap(_c:T_compiler, _arg:std.UInt):T_frag {
        return stdgo._internal.regexp.syntax.Syntax_T_compiler_static_extension.T_compiler_static_extension._cap(_c, _arg);
    }
    static public function _fail(_c:T_compiler):T_frag {
        return stdgo._internal.regexp.syntax.Syntax_T_compiler_static_extension.T_compiler_static_extension._fail(_c);
    }
    static public function _nop(_c:T_compiler):T_frag {
        return stdgo._internal.regexp.syntax.Syntax_T_compiler_static_extension.T_compiler_static_extension._nop(_c);
    }
    static public function _inst(_c:T_compiler, _op:InstOp):T_frag {
        return stdgo._internal.regexp.syntax.Syntax_T_compiler_static_extension.T_compiler_static_extension._inst(_c, _op);
    }
    static public function _compile(_c:T_compiler, _re:Regexp):T_frag {
        return stdgo._internal.regexp.syntax.Syntax_T_compiler_static_extension.T_compiler_static_extension._compile(_c, _re);
    }
    static public function _init(_c:T_compiler):Void {
        stdgo._internal.regexp.syntax.Syntax_T_compiler_static_extension.T_compiler_static_extension._init(_c);
    }
}
class Error_static_extension {
    static public function error(_e:Error):String {
        return stdgo._internal.regexp.syntax.Syntax_Error_static_extension.Error_static_extension.error(_e);
    }
}
class T_parser_static_extension {
    static public function _parseClass(_p:T_parser, _s:String):stdgo.Tuple<String, stdgo.Error> {
        return {
            final obj = stdgo._internal.regexp.syntax.Syntax_T_parser_static_extension.T_parser_static_extension._parseClass(_p, _s);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _parseUnicodeClass(_p:T_parser, _s:String, _r:Array<StdTypes.Int>):stdgo.Tuple.Tuple3<Array<StdTypes.Int>, String, stdgo.Error> {
        final _r = ([for (i in _r) i] : stdgo.Slice<stdgo.GoInt32>);
        return {
            final obj = stdgo._internal.regexp.syntax.Syntax_T_parser_static_extension.T_parser_static_extension._parseUnicodeClass(_p, _s, _r);
            { _0 : [for (i in obj._0) i], _1 : obj._1, _2 : obj._2 };
        };
    }
    static public function _appendGroup(_p:T_parser, _r:Array<StdTypes.Int>, _g:T_charGroup):Array<StdTypes.Int> {
        final _r = ([for (i in _r) i] : stdgo.Slice<stdgo.GoInt32>);
        return [for (i in stdgo._internal.regexp.syntax.Syntax_T_parser_static_extension.T_parser_static_extension._appendGroup(_p, _r, _g)) i];
    }
    static public function _parseNamedClass(_p:T_parser, _s:String, _r:Array<StdTypes.Int>):stdgo.Tuple.Tuple3<Array<StdTypes.Int>, String, stdgo.Error> {
        final _r = ([for (i in _r) i] : stdgo.Slice<stdgo.GoInt32>);
        return {
            final obj = stdgo._internal.regexp.syntax.Syntax_T_parser_static_extension.T_parser_static_extension._parseNamedClass(_p, _s, _r);
            { _0 : [for (i in obj._0) i], _1 : obj._1, _2 : obj._2 };
        };
    }
    static public function _parsePerlClassEscape(_p:T_parser, _s:String, _r:Array<StdTypes.Int>):stdgo.Tuple<Array<StdTypes.Int>, String> {
        final _r = ([for (i in _r) i] : stdgo.Slice<stdgo.GoInt32>);
        return {
            final obj = stdgo._internal.regexp.syntax.Syntax_T_parser_static_extension.T_parser_static_extension._parsePerlClassEscape(_p, _s, _r);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function _parseClassChar(_p:T_parser, _s:String, _wholeClass:String):stdgo.Tuple.Tuple3<StdTypes.Int, String, stdgo.Error> {
        return {
            final obj = stdgo._internal.regexp.syntax.Syntax_T_parser_static_extension.T_parser_static_extension._parseClassChar(_p, _s, _wholeClass);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    static public function _parseEscape(_p:T_parser, _s:String):stdgo.Tuple.Tuple3<StdTypes.Int, String, stdgo.Error> {
        return {
            final obj = stdgo._internal.regexp.syntax.Syntax_T_parser_static_extension.T_parser_static_extension._parseEscape(_p, _s);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    static public function _parseRightParen(_p:T_parser):stdgo.Error {
        return stdgo._internal.regexp.syntax.Syntax_T_parser_static_extension.T_parser_static_extension._parseRightParen(_p);
    }
    static public function _swapVerticalBar(_p:T_parser):Bool {
        return stdgo._internal.regexp.syntax.Syntax_T_parser_static_extension.T_parser_static_extension._swapVerticalBar(_p);
    }
    static public function _parseVerticalBar(_p:T_parser):stdgo.Error {
        return stdgo._internal.regexp.syntax.Syntax_T_parser_static_extension.T_parser_static_extension._parseVerticalBar(_p);
    }
    static public function _parseInt(_p:T_parser, _s:String):stdgo.Tuple.Tuple3<StdTypes.Int, String, Bool> {
        return {
            final obj = stdgo._internal.regexp.syntax.Syntax_T_parser_static_extension.T_parser_static_extension._parseInt(_p, _s);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    static public function _parsePerlFlags(_p:T_parser, _s:String):stdgo.Tuple<String, stdgo.Error> {
        return {
            final obj = stdgo._internal.regexp.syntax.Syntax_T_parser_static_extension.T_parser_static_extension._parsePerlFlags(_p, _s);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _parseRepeat(_p:T_parser, _s:String):stdgo.Tuple.Tuple4<StdTypes.Int, StdTypes.Int, String, Bool> {
        return {
            final obj = stdgo._internal.regexp.syntax.Syntax_T_parser_static_extension.T_parser_static_extension._parseRepeat(_p, _s);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2, _3 : obj._3 };
        };
    }
    static public function _removeLeadingRegexp(_p:T_parser, _re:Regexp, _reuse:Bool):Regexp {
        return stdgo._internal.regexp.syntax.Syntax_T_parser_static_extension.T_parser_static_extension._removeLeadingRegexp(_p, _re, _reuse);
    }
    static public function _leadingRegexp(_p:T_parser, _re:Regexp):Regexp {
        return stdgo._internal.regexp.syntax.Syntax_T_parser_static_extension.T_parser_static_extension._leadingRegexp(_p, _re);
    }
    static public function _removeLeadingString(_p:T_parser, _re:Regexp, _n:StdTypes.Int):Regexp {
        return stdgo._internal.regexp.syntax.Syntax_T_parser_static_extension.T_parser_static_extension._removeLeadingString(_p, _re, _n);
    }
    static public function _leadingString(_p:T_parser, _re:Regexp):stdgo.Tuple<Array<StdTypes.Int>, Flags> {
        return {
            final obj = stdgo._internal.regexp.syntax.Syntax_T_parser_static_extension.T_parser_static_extension._leadingString(_p, _re);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function _factor(_p:T_parser, _sub:Array<Regexp>):Array<Regexp> {
        final _sub = ([for (i in _sub) i] : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>>);
        return [for (i in stdgo._internal.regexp.syntax.Syntax_T_parser_static_extension.T_parser_static_extension._factor(_p, _sub)) i];
    }
    static public function _collapse(_p:T_parser, _subs:Array<Regexp>, _op:Op):Regexp {
        final _subs = ([for (i in _subs) i] : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>>);
        return stdgo._internal.regexp.syntax.Syntax_T_parser_static_extension.T_parser_static_extension._collapse(_p, _subs, _op);
    }
    static public function _alternate(_p:T_parser):Regexp {
        return stdgo._internal.regexp.syntax.Syntax_T_parser_static_extension.T_parser_static_extension._alternate(_p);
    }
    static public function _concat(_p:T_parser):Regexp {
        return stdgo._internal.regexp.syntax.Syntax_T_parser_static_extension.T_parser_static_extension._concat(_p);
    }
    static public function _repeat(_p:T_parser, _op:Op, _min:StdTypes.Int, _max:StdTypes.Int, _before:String, _after:String, _lastRepeat:String):stdgo.Tuple<String, stdgo.Error> {
        return {
            final obj = stdgo._internal.regexp.syntax.Syntax_T_parser_static_extension.T_parser_static_extension._repeat(_p, _op, _min, _max, _before, _after, _lastRepeat);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _op(_p:T_parser, _op:Op):Regexp {
        return stdgo._internal.regexp.syntax.Syntax_T_parser_static_extension.T_parser_static_extension._op(_p, _op);
    }
    static public function _literal(_p:T_parser, _r:StdTypes.Int):Void {
        stdgo._internal.regexp.syntax.Syntax_T_parser_static_extension.T_parser_static_extension._literal(_p, _r);
    }
    static public function _maybeConcat(_p:T_parser, _r:StdTypes.Int, _flags:Flags):Bool {
        return stdgo._internal.regexp.syntax.Syntax_T_parser_static_extension.T_parser_static_extension._maybeConcat(_p, _r, _flags);
    }
    static public function _push(_p:T_parser, _re:Regexp):Regexp {
        return stdgo._internal.regexp.syntax.Syntax_T_parser_static_extension.T_parser_static_extension._push(_p, _re);
    }
    static public function _calcHeight(_p:T_parser, _re:Regexp, _force:Bool):StdTypes.Int {
        return stdgo._internal.regexp.syntax.Syntax_T_parser_static_extension.T_parser_static_extension._calcHeight(_p, _re, _force);
    }
    static public function _checkHeight(_p:T_parser, _re:Regexp):Void {
        stdgo._internal.regexp.syntax.Syntax_T_parser_static_extension.T_parser_static_extension._checkHeight(_p, _re);
    }
    static public function _calcSize(_p:T_parser, _re:Regexp, _force:Bool):haxe.Int64 {
        return stdgo._internal.regexp.syntax.Syntax_T_parser_static_extension.T_parser_static_extension._calcSize(_p, _re, _force);
    }
    static public function _checkSize(_p:T_parser, _re:Regexp):Void {
        stdgo._internal.regexp.syntax.Syntax_T_parser_static_extension.T_parser_static_extension._checkSize(_p, _re);
    }
    static public function _checkLimits(_p:T_parser, _re:Regexp):Void {
        stdgo._internal.regexp.syntax.Syntax_T_parser_static_extension.T_parser_static_extension._checkLimits(_p, _re);
    }
    static public function _reuse(_p:T_parser, _re:Regexp):Void {
        stdgo._internal.regexp.syntax.Syntax_T_parser_static_extension.T_parser_static_extension._reuse(_p, _re);
    }
    static public function _newRegexp(_p:T_parser, _op:Op):Regexp {
        return stdgo._internal.regexp.syntax.Syntax_T_parser_static_extension.T_parser_static_extension._newRegexp(_p, _op);
    }
}
class T_ranges_static_extension {
    static public function swap(_ra:T_ranges, _i:StdTypes.Int, _j:StdTypes.Int):Void {
        stdgo._internal.regexp.syntax.Syntax_T_ranges_static_extension.T_ranges_static_extension.swap(_ra, _i, _j);
    }
    static public function len(_ra:T_ranges):StdTypes.Int {
        return stdgo._internal.regexp.syntax.Syntax_T_ranges_static_extension.T_ranges_static_extension.len(_ra);
    }
    static public function less(_ra:T_ranges, _i:StdTypes.Int, _j:StdTypes.Int):Bool {
        return stdgo._internal.regexp.syntax.Syntax_T_ranges_static_extension.T_ranges_static_extension.less(_ra, _i, _j);
    }
}
class Prog_static_extension {
    static public function startCond(_p:Prog):EmptyOp {
        return stdgo._internal.regexp.syntax.Syntax_Prog_static_extension.Prog_static_extension.startCond(_p);
    }
    static public function prefix(_p:Prog):stdgo.Tuple<String, Bool> {
        return {
            final obj = stdgo._internal.regexp.syntax.Syntax_Prog_static_extension.Prog_static_extension.prefix(_p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _skipNop(_p:Prog, _pc:std.UInt):Inst {
        return stdgo._internal.regexp.syntax.Syntax_Prog_static_extension.Prog_static_extension._skipNop(_p, _pc);
    }
    static public function string(_p:Prog):String {
        return stdgo._internal.regexp.syntax.Syntax_Prog_static_extension.Prog_static_extension.string(_p);
    }
}
class Inst_static_extension {
    static public function string(_i:Inst):String {
        return stdgo._internal.regexp.syntax.Syntax_Inst_static_extension.Inst_static_extension.string(_i);
    }
    static public function matchEmptyWidth(_i:Inst, _before:StdTypes.Int, _after:StdTypes.Int):Bool {
        return stdgo._internal.regexp.syntax.Syntax_Inst_static_extension.Inst_static_extension.matchEmptyWidth(_i, _before, _after);
    }
    static public function matchRunePos(_i:Inst, _r:StdTypes.Int):StdTypes.Int {
        return stdgo._internal.regexp.syntax.Syntax_Inst_static_extension.Inst_static_extension.matchRunePos(_i, _r);
    }
    static public function matchRune(_i:Inst, _r:StdTypes.Int):Bool {
        return stdgo._internal.regexp.syntax.Syntax_Inst_static_extension.Inst_static_extension.matchRune(_i, _r);
    }
    static public function _op(_i:Inst):InstOp {
        return stdgo._internal.regexp.syntax.Syntax_Inst_static_extension.Inst_static_extension._op(_i);
    }
}
class Regexp_static_extension {
    static public function simplify(_re:Regexp):Regexp {
        return stdgo._internal.regexp.syntax.Syntax_Regexp_static_extension.Regexp_static_extension.simplify(_re);
    }
    static public function _capNames(_re:Regexp, _names:Array<String>):Void {
        final _names = ([for (i in _names) i] : stdgo.Slice<stdgo.GoString>);
        stdgo._internal.regexp.syntax.Syntax_Regexp_static_extension.Regexp_static_extension._capNames(_re, _names);
    }
    static public function capNames(_re:Regexp):Array<String> {
        return [for (i in stdgo._internal.regexp.syntax.Syntax_Regexp_static_extension.Regexp_static_extension.capNames(_re)) i];
    }
    static public function maxCap(_re:Regexp):StdTypes.Int {
        return stdgo._internal.regexp.syntax.Syntax_Regexp_static_extension.Regexp_static_extension.maxCap(_re);
    }
    static public function string(_re:Regexp):String {
        return stdgo._internal.regexp.syntax.Syntax_Regexp_static_extension.Regexp_static_extension.string(_re);
    }
    static public function equal(_x:Regexp, _y:Regexp):Bool {
        return stdgo._internal.regexp.syntax.Syntax_Regexp_static_extension.Regexp_static_extension.equal(_x, _y);
    }
}
class ErrorCode_static_extension {
    static public function string(_e:ErrorCode):String {
        return stdgo._internal.regexp.syntax.Syntax_ErrorCode_static_extension.ErrorCode_static_extension.string(_e);
    }
}
class InstOp_static_extension {
    static public function string(_i:InstOp):String {
        return stdgo._internal.regexp.syntax.Syntax_InstOp_static_extension.InstOp_static_extension.string(_i);
    }
}
class Op_static_extension {
    static public function string(_i:Op):String {
        return stdgo._internal.regexp.syntax.Syntax_Op_static_extension.Op_static_extension.string(_i);
    }
}
/**
    /|*{
    	pc_3535402 = uint32(p.Start)
    	i_3535425 = &p.Inst[pc_3535402]
    	gotoNext = 3535442
    	_ = gotoNext == 3535442
    	_ = 0
    	LoopBreak = false
    	gotoNext = 3535449
    	_ = gotoNext == 3535449
    	if !LoopBreak {
    		gotoNext = 3535453
    		_ = gotoNext == 3535453
    		gotoNext = 3535457
    		_ = gotoNext == 3535457
    		switch i_3535425.Op {
    		case 3:
    			gotoNext = 3535473
    			_ = gotoNext == 3535473
    			flag_3535388 |= EmptyOp(i_3535425.Arg)
    			gotoNext = 3535630
    		case 5:
    			gotoNext = 3535522
    			_ = gotoNext == 3535522
    			return 255
    			gotoNext = 3535630
    		case 2, 6:
    			gotoNext = 3535561
    			_ = gotoNext == 3535561
    			gotoNext = 3535630
    		default:
    			gotoNext = 3535601
    			_ = gotoNext == 3535601
    			LoopBreak = true
    			gotoNext = 3535449
    			gotoNext = 3535630
    		}
    		_ = gotoNext == 3535630
    		pc_3535402 = i_3535425.Out
    		i_3535425 = &p.Inst[pc_3535402]
    		gotoNext = 3535449
    	} else {
    		gotoNext = 3535663
    	}
    	_ = gotoNext == 3535663
    	return flag_3535388
    	gotoNext = -1
    }*|/
**/
class Syntax {
    /**
        Compile compiles the regexp into a program to be executed.
        The regexp should have been simplified already (returned from re.Simplify).
    **/
    static public function compile(_re:Regexp):stdgo.Tuple<Prog, stdgo.Error> {
        return {
            final obj = stdgo._internal.regexp.syntax.Syntax_compile.compile(_re);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        Parse parses a regular expression string s, controlled by the specified
        Flags, and returns a regular expression parse tree. The syntax is
        described in the top-level comment.
    **/
    static public function parse(_s:String, _flags:Flags):stdgo.Tuple<Regexp, stdgo.Error> {
        return {
            final obj = stdgo._internal.regexp.syntax.Syntax_parse.parse(_s, _flags);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function testParseSimple(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        stdgo._internal.regexp.syntax.Syntax_testParseSimple.testParseSimple(_t);
    }
    static public function testParseFoldCase(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        stdgo._internal.regexp.syntax.Syntax_testParseFoldCase.testParseFoldCase(_t);
    }
    static public function testParseLiteral(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        stdgo._internal.regexp.syntax.Syntax_testParseLiteral.testParseLiteral(_t);
    }
    static public function testParseMatchNL(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        stdgo._internal.regexp.syntax.Syntax_testParseMatchNL.testParseMatchNL(_t);
    }
    static public function testParseNoMatchNL(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        stdgo._internal.regexp.syntax.Syntax_testParseNoMatchNL.testParseNoMatchNL(_t);
    }
    static public function testFoldConstants(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        stdgo._internal.regexp.syntax.Syntax_testFoldConstants.testFoldConstants(_t);
    }
    static public function testAppendRangeCollapse(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        stdgo._internal.regexp.syntax.Syntax_testAppendRangeCollapse.testAppendRangeCollapse(_t);
    }
    static public function testParseInvalidRegexps(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        stdgo._internal.regexp.syntax.Syntax_testParseInvalidRegexps.testParseInvalidRegexps(_t);
    }
    static public function testToStringEquivalentParse(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        stdgo._internal.regexp.syntax.Syntax_testToStringEquivalentParse.testToStringEquivalentParse(_t);
    }
    /**
        EmptyOpContext returns the zero-width assertions
        satisfied at the position between the runes r1 and r2.
        Passing r1 == -1 indicates that the position is
        at the beginning of the text.
        Passing r2 == -1 indicates that the position is
        at the end of the text.
    **/
    static public function emptyOpContext(_r1:StdTypes.Int, _r2:StdTypes.Int):EmptyOp {
        return stdgo._internal.regexp.syntax.Syntax_emptyOpContext.emptyOpContext(_r1, _r2);
    }
    /**
        IsWordChar reports whether r is considered a “word character”
        during the evaluation of the \b and \B zero-width assertions.
        These assertions are ASCII-only: the word characters are [A-Za-z0-9_].
    **/
    static public function isWordChar(_r:StdTypes.Int):Bool {
        return stdgo._internal.regexp.syntax.Syntax_isWordChar.isWordChar(_r);
    }
    static public function testCompile(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        stdgo._internal.regexp.syntax.Syntax_testCompile.testCompile(_t);
    }
    static public function benchmarkEmptyOpContext(_b:stdgo._internal.testing.Testing_B.B):Void {
        stdgo._internal.regexp.syntax.Syntax_benchmarkEmptyOpContext.benchmarkEmptyOpContext(_b);
    }
    static public function benchmarkIsWordChar(_b:stdgo._internal.testing.Testing_B.B):Void {
        stdgo._internal.regexp.syntax.Syntax_benchmarkIsWordChar.benchmarkIsWordChar(_b);
    }
    static public function testSimplify(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        stdgo._internal.regexp.syntax.Syntax_testSimplify.testSimplify(_t);
    }
}
