package stdgo;
final errInternalError : ErrorCode = stdgo._internal.regexp.syntax.Syntax_errinternalerror.errInternalError;
final errInvalidCharClass : ErrorCode = stdgo._internal.regexp.syntax.Syntax_errinvalidcharclass.errInvalidCharClass;
final errInvalidCharRange : ErrorCode = stdgo._internal.regexp.syntax.Syntax_errinvalidcharrange.errInvalidCharRange;
final errInvalidEscape : ErrorCode = stdgo._internal.regexp.syntax.Syntax_errinvalidescape.errInvalidEscape;
final errInvalidNamedCapture : ErrorCode = stdgo._internal.regexp.syntax.Syntax_errinvalidnamedcapture.errInvalidNamedCapture;
final errInvalidPerlOp : ErrorCode = stdgo._internal.regexp.syntax.Syntax_errinvalidperlop.errInvalidPerlOp;
final errInvalidRepeatOp : ErrorCode = stdgo._internal.regexp.syntax.Syntax_errinvalidrepeatop.errInvalidRepeatOp;
final errInvalidRepeatSize : ErrorCode = stdgo._internal.regexp.syntax.Syntax_errinvalidrepeatsize.errInvalidRepeatSize;
final errInvalidUTF8 : ErrorCode = stdgo._internal.regexp.syntax.Syntax_errinvalidutf8.errInvalidUTF8;
final errMissingBracket : ErrorCode = stdgo._internal.regexp.syntax.Syntax_errmissingbracket.errMissingBracket;
final errMissingParen : ErrorCode = stdgo._internal.regexp.syntax.Syntax_errmissingparen.errMissingParen;
final errMissingRepeatArgument : ErrorCode = stdgo._internal.regexp.syntax.Syntax_errmissingrepeatargument.errMissingRepeatArgument;
final errTrailingBackslash : ErrorCode = stdgo._internal.regexp.syntax.Syntax_errtrailingbackslash.errTrailingBackslash;
final errUnexpectedParen : ErrorCode = stdgo._internal.regexp.syntax.Syntax_errunexpectedparen.errUnexpectedParen;
final errNestingDepth : ErrorCode = stdgo._internal.regexp.syntax.Syntax_errnestingdepth.errNestingDepth;
final errLarge : ErrorCode = stdgo._internal.regexp.syntax.Syntax_errlarge.errLarge;
final foldCase : Flags = stdgo._internal.regexp.syntax.Syntax_foldcase.foldCase;
final literal = stdgo._internal.regexp.syntax.Syntax_literal.literal;
final classNL = stdgo._internal.regexp.syntax.Syntax_classnl.classNL;
final dotNL = stdgo._internal.regexp.syntax.Syntax_dotnl.dotNL;
final oneLine = stdgo._internal.regexp.syntax.Syntax_oneline.oneLine;
final nonGreedy = stdgo._internal.regexp.syntax.Syntax_nongreedy.nonGreedy;
final perlX = stdgo._internal.regexp.syntax.Syntax_perlx.perlX;
final unicodeGroups = stdgo._internal.regexp.syntax.Syntax_unicodegroups.unicodeGroups;
final wasDollar = stdgo._internal.regexp.syntax.Syntax_wasdollar.wasDollar;
final simple = stdgo._internal.regexp.syntax.Syntax_simple.simple;
final matchNL : Flags = stdgo._internal.regexp.syntax.Syntax_matchnl.matchNL;
final perl : Flags = stdgo._internal.regexp.syntax.Syntax_perl.perl;
final pOSIX : Flags = stdgo._internal.regexp.syntax.Syntax_posix.pOSIX;
final instAlt : InstOp = stdgo._internal.regexp.syntax.Syntax_instalt.instAlt;
final instAltMatch = stdgo._internal.regexp.syntax.Syntax_instaltmatch.instAltMatch;
final instCapture = stdgo._internal.regexp.syntax.Syntax_instcapture.instCapture;
final instEmptyWidth = stdgo._internal.regexp.syntax.Syntax_instemptywidth.instEmptyWidth;
final instMatch = stdgo._internal.regexp.syntax.Syntax_instmatch.instMatch;
final instFail = stdgo._internal.regexp.syntax.Syntax_instfail.instFail;
final instNop = stdgo._internal.regexp.syntax.Syntax_instnop.instNop;
final instRune = stdgo._internal.regexp.syntax.Syntax_instrune.instRune;
final instRune1 = stdgo._internal.regexp.syntax.Syntax_instrune1.instRune1;
final instRuneAny = stdgo._internal.regexp.syntax.Syntax_instruneany.instRuneAny;
final instRuneAnyNotNL = stdgo._internal.regexp.syntax.Syntax_instruneanynotnl.instRuneAnyNotNL;
final emptyBeginLine : EmptyOp = stdgo._internal.regexp.syntax.Syntax_emptybeginline.emptyBeginLine;
final emptyEndLine = stdgo._internal.regexp.syntax.Syntax_emptyendline.emptyEndLine;
final emptyBeginText = stdgo._internal.regexp.syntax.Syntax_emptybegintext.emptyBeginText;
final emptyEndText = stdgo._internal.regexp.syntax.Syntax_emptyendtext.emptyEndText;
final emptyWordBoundary = stdgo._internal.regexp.syntax.Syntax_emptywordboundary.emptyWordBoundary;
final emptyNoWordBoundary = stdgo._internal.regexp.syntax.Syntax_emptynowordboundary.emptyNoWordBoundary;
final opNoMatch : Op = stdgo._internal.regexp.syntax.Syntax_opnomatch.opNoMatch;
final opEmptyMatch = stdgo._internal.regexp.syntax.Syntax_opemptymatch.opEmptyMatch;
final opLiteral = stdgo._internal.regexp.syntax.Syntax_opliteral.opLiteral;
final opCharClass = stdgo._internal.regexp.syntax.Syntax_opcharclass.opCharClass;
final opAnyCharNotNL = stdgo._internal.regexp.syntax.Syntax_opanycharnotnl.opAnyCharNotNL;
final opAnyChar = stdgo._internal.regexp.syntax.Syntax_opanychar.opAnyChar;
final opBeginLine = stdgo._internal.regexp.syntax.Syntax_opbeginline.opBeginLine;
final opEndLine = stdgo._internal.regexp.syntax.Syntax_opendline.opEndLine;
final opBeginText = stdgo._internal.regexp.syntax.Syntax_opbegintext.opBeginText;
final opEndText = stdgo._internal.regexp.syntax.Syntax_opendtext.opEndText;
final opWordBoundary = stdgo._internal.regexp.syntax.Syntax_opwordboundary.opWordBoundary;
final opNoWordBoundary = stdgo._internal.regexp.syntax.Syntax_opnowordboundary.opNoWordBoundary;
final opCapture = stdgo._internal.regexp.syntax.Syntax_opcapture.opCapture;
final opStar = stdgo._internal.regexp.syntax.Syntax_opstar.opStar;
final opPlus = stdgo._internal.regexp.syntax.Syntax_opplus.opPlus;
final opQuest = stdgo._internal.regexp.syntax.Syntax_opquest.opQuest;
final opRepeat = stdgo._internal.regexp.syntax.Syntax_oprepeat.opRepeat;
final opConcat = stdgo._internal.regexp.syntax.Syntax_opconcat.opConcat;
final opAlternate = stdgo._internal.regexp.syntax.Syntax_opalternate.opAlternate;
@:structInit @:using(stdgo.regexp.syntax.Syntax.T_patchList_static_extension) @:dox(hide) abstract T_patchList(stdgo._internal.regexp.syntax.Syntax_t_patchlist.T_patchList) from stdgo._internal.regexp.syntax.Syntax_t_patchlist.T_patchList to stdgo._internal.regexp.syntax.Syntax_t_patchlist.T_patchList {
    public var _head(get, set) : std.UInt;
    function get__head():std.UInt return this._head;
    function set__head(v:std.UInt):std.UInt {
        this._head = (v : stdgo.GoUInt32);
        return v;
    }
    public var _tail(get, set) : std.UInt;
    function get__tail():std.UInt return this._tail;
    function set__tail(v:std.UInt):std.UInt {
        this._tail = (v : stdgo.GoUInt32);
        return v;
    }
    public function new(?_head:std.UInt, ?_tail:std.UInt) this = new stdgo._internal.regexp.syntax.Syntax_t_patchlist.T_patchList((_head : stdgo.GoUInt32), (_tail : stdgo.GoUInt32));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.regexp.syntax.Syntax.T_frag_static_extension) @:dox(hide) abstract T_frag(stdgo._internal.regexp.syntax.Syntax_t_frag.T_frag) from stdgo._internal.regexp.syntax.Syntax_t_frag.T_frag to stdgo._internal.regexp.syntax.Syntax_t_frag.T_frag {
    public var _i(get, set) : std.UInt;
    function get__i():std.UInt return this._i;
    function set__i(v:std.UInt):std.UInt {
        this._i = (v : stdgo.GoUInt32);
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
    public function new(?_i:std.UInt, ?_out:T_patchList, ?_nullable:Bool) this = new stdgo._internal.regexp.syntax.Syntax_t_frag.T_frag((_i : stdgo.GoUInt32), _out, _nullable);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.regexp.syntax.Syntax.T_compiler_static_extension) @:dox(hide) abstract T_compiler(stdgo._internal.regexp.syntax.Syntax_t_compiler.T_compiler) from stdgo._internal.regexp.syntax.Syntax_t_compiler.T_compiler to stdgo._internal.regexp.syntax.Syntax_t_compiler.T_compiler {
    public var _p(get, set) : Prog;
    function get__p():Prog return this._p;
    function set__p(v:Prog):Prog {
        this._p = (v : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_prog.Prog>);
        return v;
    }
    public function new(?_p:Prog) this = new stdgo._internal.regexp.syntax.Syntax_t_compiler.T_compiler((_p : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_prog.Prog>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.regexp.syntax.Syntax.Error_static_extension) abstract Error(stdgo._internal.regexp.syntax.Syntax_error.Error) from stdgo._internal.regexp.syntax.Syntax_error.Error to stdgo._internal.regexp.syntax.Syntax_error.Error {
    public var code(get, set) : ErrorCode;
    function get_code():ErrorCode return this.code;
    function set_code(v:ErrorCode):ErrorCode {
        this.code = v;
        return v;
    }
    public var expr(get, set) : String;
    function get_expr():String return this.expr;
    function set_expr(v:String):String {
        this.expr = (v : stdgo.GoString);
        return v;
    }
    public function new(?code:ErrorCode, ?expr:String) this = new stdgo._internal.regexp.syntax.Syntax_error.Error(code, (expr : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.regexp.syntax.Syntax.T_parser_static_extension) @:dox(hide) abstract T_parser(stdgo._internal.regexp.syntax.Syntax_t_parser.T_parser) from stdgo._internal.regexp.syntax.Syntax_t_parser.T_parser to stdgo._internal.regexp.syntax.Syntax_t_parser.T_parser {
    public var _flags(get, set) : Flags;
    function get__flags():Flags return this._flags;
    function set__flags(v:Flags):Flags {
        this._flags = v;
        return v;
    }
    public var _stack(get, set) : Array<Regexp>;
    function get__stack():Array<Regexp> return [for (i in this._stack) i];
    function set__stack(v:Array<Regexp>):Array<Regexp> {
        this._stack = ([for (i in v) (i : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>>);
        return v;
    }
    public var _free(get, set) : Regexp;
    function get__free():Regexp return this._free;
    function set__free(v:Regexp):Regexp {
        this._free = (v : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>);
        return v;
    }
    public var _numCap(get, set) : StdTypes.Int;
    function get__numCap():StdTypes.Int return this._numCap;
    function set__numCap(v:StdTypes.Int):StdTypes.Int {
        this._numCap = (v : stdgo.GoInt);
        return v;
    }
    public var _wholeRegexp(get, set) : String;
    function get__wholeRegexp():String return this._wholeRegexp;
    function set__wholeRegexp(v:String):String {
        this._wholeRegexp = (v : stdgo.GoString);
        return v;
    }
    public var _tmpClass(get, set) : Array<StdTypes.Int>;
    function get__tmpClass():Array<StdTypes.Int> return [for (i in this._tmpClass) i];
    function set__tmpClass(v:Array<StdTypes.Int>):Array<StdTypes.Int> {
        this._tmpClass = ([for (i in v) (i : stdgo.GoInt32)] : stdgo.Slice<stdgo.GoInt32>);
        return v;
    }
    public var _numRegexp(get, set) : StdTypes.Int;
    function get__numRegexp():StdTypes.Int return this._numRegexp;
    function set__numRegexp(v:StdTypes.Int):StdTypes.Int {
        this._numRegexp = (v : stdgo.GoInt);
        return v;
    }
    public var _numRunes(get, set) : StdTypes.Int;
    function get__numRunes():StdTypes.Int return this._numRunes;
    function set__numRunes(v:StdTypes.Int):StdTypes.Int {
        this._numRunes = (v : stdgo.GoInt);
        return v;
    }
    public var _repeats(get, set) : haxe.Int64;
    function get__repeats():haxe.Int64 return this._repeats;
    function set__repeats(v:haxe.Int64):haxe.Int64 {
        this._repeats = (v : stdgo.GoInt64);
        return v;
    }
    public var _height(get, set) : Map<Regexp, StdTypes.Int>;
    function get__height():Map<Regexp, StdTypes.Int> return {
        final __obj__:Map<Regexp, StdTypes.Int> = [];
        for (key => value in this._height) {
            __obj__[key] = value;
        };
        __obj__;
    };
    function set__height(v:Map<Regexp, StdTypes.Int>):Map<Regexp, StdTypes.Int> {
        this._height = {
            final __obj__ = new stdgo.GoMap<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>, stdgo.GoInt>();
            for (key => value in v) {
                __obj__[(key : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>)] = (value : stdgo.GoInt);
            };
            __obj__;
        };
        return v;
    }
    public var _size(get, set) : Map<Regexp, haxe.Int64>;
    function get__size():Map<Regexp, haxe.Int64> return {
        final __obj__:Map<Regexp, haxe.Int64> = [];
        for (key => value in this._size) {
            __obj__[key] = value;
        };
        __obj__;
    };
    function set__size(v:Map<Regexp, haxe.Int64>):Map<Regexp, haxe.Int64> {
        this._size = {
            final __obj__ = new stdgo.GoMap<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>, stdgo.GoInt64>();
            for (key => value in v) {
                __obj__[(key : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>)] = (value : stdgo.GoInt64);
            };
            __obj__;
        };
        return v;
    }
    public function new(?_flags:Flags, ?_stack:Array<Regexp>, ?_free:Regexp, ?_numCap:StdTypes.Int, ?_wholeRegexp:String, ?_tmpClass:Array<StdTypes.Int>, ?_numRegexp:StdTypes.Int, ?_numRunes:StdTypes.Int, ?_repeats:haxe.Int64, ?_height:Map<Regexp, StdTypes.Int>, ?_size:Map<Regexp, haxe.Int64>) this = new stdgo._internal.regexp.syntax.Syntax_t_parser.T_parser(
_flags,
([for (i in _stack) (i : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>>),
(_free : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>),
(_numCap : stdgo.GoInt),
(_wholeRegexp : stdgo.GoString),
([for (i in _tmpClass) (i : stdgo.GoInt32)] : stdgo.Slice<stdgo.GoInt32>),
(_numRegexp : stdgo.GoInt),
(_numRunes : stdgo.GoInt),
(_repeats : stdgo.GoInt64),
{
        final __obj__ = new stdgo.GoMap<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>, stdgo.GoInt>();
        for (key => value in _height) {
            __obj__[(key : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>)] = (value : stdgo.GoInt);
        };
        __obj__;
    },
{
        final __obj__ = new stdgo.GoMap<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>, stdgo.GoInt64>();
        for (key => value in _size) {
            __obj__[(key : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>)] = (value : stdgo.GoInt64);
        };
        __obj__;
    });
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.regexp.syntax.Syntax.T_charGroup_static_extension) @:dox(hide) abstract T_charGroup(stdgo._internal.regexp.syntax.Syntax_t_chargroup.T_charGroup) from stdgo._internal.regexp.syntax.Syntax_t_chargroup.T_charGroup to stdgo._internal.regexp.syntax.Syntax_t_chargroup.T_charGroup {
    public var _sign(get, set) : StdTypes.Int;
    function get__sign():StdTypes.Int return this._sign;
    function set__sign(v:StdTypes.Int):StdTypes.Int {
        this._sign = (v : stdgo.GoInt);
        return v;
    }
    public var _class(get, set) : Array<StdTypes.Int>;
    function get__class():Array<StdTypes.Int> return [for (i in this._class) i];
    function set__class(v:Array<StdTypes.Int>):Array<StdTypes.Int> {
        this._class = ([for (i in v) (i : stdgo.GoInt32)] : stdgo.Slice<stdgo.GoInt32>);
        return v;
    }
    public function new(?_sign:StdTypes.Int, ?_class:Array<StdTypes.Int>) this = new stdgo._internal.regexp.syntax.Syntax_t_chargroup.T_charGroup((_sign : stdgo.GoInt), ([for (i in _class) (i : stdgo.GoInt32)] : stdgo.Slice<stdgo.GoInt32>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.regexp.syntax.Syntax.T_ranges_static_extension) @:dox(hide) abstract T_ranges(stdgo._internal.regexp.syntax.Syntax_t_ranges.T_ranges) from stdgo._internal.regexp.syntax.Syntax_t_ranges.T_ranges to stdgo._internal.regexp.syntax.Syntax_t_ranges.T_ranges {
    public var _p(get, set) : Array<StdTypes.Int>;
    function get__p():Array<StdTypes.Int> return this._p;
    function set__p(v:Array<StdTypes.Int>):Array<StdTypes.Int> {
        this._p = (v : stdgo.Ref<stdgo.Slice<stdgo.GoInt32>>);
        return v;
    }
    public function new(?_p:Array<StdTypes.Int>) this = new stdgo._internal.regexp.syntax.Syntax_t_ranges.T_ranges((_p : stdgo.Ref<stdgo.Slice<stdgo.GoInt32>>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.regexp.syntax.Syntax.T_parseTest_static_extension) @:dox(hide) abstract T_parseTest(stdgo._internal.regexp.syntax.Syntax_t_parsetest.T_parseTest) from stdgo._internal.regexp.syntax.Syntax_t_parsetest.T_parseTest to stdgo._internal.regexp.syntax.Syntax_t_parsetest.T_parseTest {
    public var regexp(get, set) : String;
    function get_regexp():String return this.regexp;
    function set_regexp(v:String):String {
        this.regexp = (v : stdgo.GoString);
        return v;
    }
    public var dump(get, set) : String;
    function get_dump():String return this.dump;
    function set_dump(v:String):String {
        this.dump = (v : stdgo.GoString);
        return v;
    }
    public function new(?regexp:String, ?dump:String) this = new stdgo._internal.regexp.syntax.Syntax_t_parsetest.T_parseTest((regexp : stdgo.GoString), (dump : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.regexp.syntax.Syntax.Prog_static_extension) abstract Prog(stdgo._internal.regexp.syntax.Syntax_prog.Prog) from stdgo._internal.regexp.syntax.Syntax_prog.Prog to stdgo._internal.regexp.syntax.Syntax_prog.Prog {
    public var inst(get, set) : Array<Inst>;
    function get_inst():Array<Inst> return [for (i in this.inst) i];
    function set_inst(v:Array<Inst>):Array<Inst> {
        this.inst = ([for (i in v) i] : stdgo.Slice<stdgo._internal.regexp.syntax.Syntax_inst.Inst>);
        return v;
    }
    public var start(get, set) : StdTypes.Int;
    function get_start():StdTypes.Int return this.start;
    function set_start(v:StdTypes.Int):StdTypes.Int {
        this.start = (v : stdgo.GoInt);
        return v;
    }
    public var numCap(get, set) : StdTypes.Int;
    function get_numCap():StdTypes.Int return this.numCap;
    function set_numCap(v:StdTypes.Int):StdTypes.Int {
        this.numCap = (v : stdgo.GoInt);
        return v;
    }
    public function new(?inst:Array<Inst>, ?start:StdTypes.Int, ?numCap:StdTypes.Int) this = new stdgo._internal.regexp.syntax.Syntax_prog.Prog(([for (i in inst) i] : stdgo.Slice<stdgo._internal.regexp.syntax.Syntax_inst.Inst>), (start : stdgo.GoInt), (numCap : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.regexp.syntax.Syntax.Inst_static_extension) abstract Inst(stdgo._internal.regexp.syntax.Syntax_inst.Inst) from stdgo._internal.regexp.syntax.Syntax_inst.Inst to stdgo._internal.regexp.syntax.Syntax_inst.Inst {
    public var op(get, set) : InstOp;
    function get_op():InstOp return this.op;
    function set_op(v:InstOp):InstOp {
        this.op = v;
        return v;
    }
    public var out(get, set) : std.UInt;
    function get_out():std.UInt return this.out;
    function set_out(v:std.UInt):std.UInt {
        this.out = (v : stdgo.GoUInt32);
        return v;
    }
    public var arg(get, set) : std.UInt;
    function get_arg():std.UInt return this.arg;
    function set_arg(v:std.UInt):std.UInt {
        this.arg = (v : stdgo.GoUInt32);
        return v;
    }
    public var rune(get, set) : Array<StdTypes.Int>;
    function get_rune():Array<StdTypes.Int> return [for (i in this.rune) i];
    function set_rune(v:Array<StdTypes.Int>):Array<StdTypes.Int> {
        this.rune = ([for (i in v) (i : stdgo.GoInt32)] : stdgo.Slice<stdgo.GoInt32>);
        return v;
    }
    public function new(?op:InstOp, ?out:std.UInt, ?arg:std.UInt, ?rune:Array<StdTypes.Int>) this = new stdgo._internal.regexp.syntax.Syntax_inst.Inst(op, (out : stdgo.GoUInt32), (arg : stdgo.GoUInt32), ([for (i in rune) (i : stdgo.GoInt32)] : stdgo.Slice<stdgo.GoInt32>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.regexp.syntax.Syntax.Regexp_static_extension) abstract Regexp(stdgo._internal.regexp.syntax.Syntax_regexp.Regexp) from stdgo._internal.regexp.syntax.Syntax_regexp.Regexp to stdgo._internal.regexp.syntax.Syntax_regexp.Regexp {
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
        this.sub = ([for (i in v) (i : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>>);
        return v;
    }
    public var sub0(get, set) : haxe.ds.Vector<Regexp>;
    function get_sub0():haxe.ds.Vector<Regexp> return haxe.ds.Vector.fromArrayCopy([for (i in this.sub0) i]);
    function set_sub0(v:haxe.ds.Vector<Regexp>):haxe.ds.Vector<Regexp> {
        this.sub0 = ([for (i in v) (i : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>)] : stdgo.GoArray<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>>);
        return v;
    }
    public var rune(get, set) : Array<StdTypes.Int>;
    function get_rune():Array<StdTypes.Int> return [for (i in this.rune) i];
    function set_rune(v:Array<StdTypes.Int>):Array<StdTypes.Int> {
        this.rune = ([for (i in v) (i : stdgo.GoInt32)] : stdgo.Slice<stdgo.GoInt32>);
        return v;
    }
    public var rune0(get, set) : haxe.ds.Vector<StdTypes.Int>;
    function get_rune0():haxe.ds.Vector<StdTypes.Int> return haxe.ds.Vector.fromArrayCopy([for (i in this.rune0) i]);
    function set_rune0(v:haxe.ds.Vector<StdTypes.Int>):haxe.ds.Vector<StdTypes.Int> {
        this.rune0 = ([for (i in v) (i : stdgo.GoInt32)] : stdgo.GoArray<stdgo.GoInt32>);
        return v;
    }
    public var min(get, set) : StdTypes.Int;
    function get_min():StdTypes.Int return this.min;
    function set_min(v:StdTypes.Int):StdTypes.Int {
        this.min = (v : stdgo.GoInt);
        return v;
    }
    public var max(get, set) : StdTypes.Int;
    function get_max():StdTypes.Int return this.max;
    function set_max(v:StdTypes.Int):StdTypes.Int {
        this.max = (v : stdgo.GoInt);
        return v;
    }
    public var cap(get, set) : StdTypes.Int;
    function get_cap():StdTypes.Int return this.cap;
    function set_cap(v:StdTypes.Int):StdTypes.Int {
        this.cap = (v : stdgo.GoInt);
        return v;
    }
    public var name(get, set) : String;
    function get_name():String return this.name;
    function set_name(v:String):String {
        this.name = (v : stdgo.GoString);
        return v;
    }
    public function new(?op:Op, ?flags:Flags, ?sub:Array<Regexp>, ?sub0:haxe.ds.Vector<Regexp>, ?rune:Array<StdTypes.Int>, ?rune0:haxe.ds.Vector<StdTypes.Int>, ?min:StdTypes.Int, ?max:StdTypes.Int, ?cap:StdTypes.Int, ?name:String) this = new stdgo._internal.regexp.syntax.Syntax_regexp.Regexp(op, flags, ([for (i in sub) (i : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>>), ([for (i in sub0) (i : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>)] : stdgo.GoArray<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>>), ([for (i in rune) (i : stdgo.GoInt32)] : stdgo.Slice<stdgo.GoInt32>), ([for (i in rune0) (i : stdgo.GoInt32)] : stdgo.GoArray<stdgo.GoInt32>), (min : stdgo.GoInt), (max : stdgo.GoInt), (cap : stdgo.GoInt), (name : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:dox(hide) typedef T__struct_0Pointer = stdgo._internal.regexp.syntax.Syntax_t__struct_0pointer.T__struct_0Pointer;
@:dox(hide) class T__struct_0_static_extension {

}
@:dox(hide) typedef T__struct_0 = stdgo._internal.regexp.syntax.Syntax_t__struct_0.T__struct_0;
@:dox(hide) typedef T__struct_1Pointer = stdgo._internal.regexp.syntax.Syntax_t__struct_1pointer.T__struct_1Pointer;
@:dox(hide) class T__struct_1_static_extension {

}
@:dox(hide) typedef T__struct_1 = stdgo._internal.regexp.syntax.Syntax_t__struct_1.T__struct_1;
@:dox(hide) typedef T__struct_2Pointer = stdgo._internal.regexp.syntax.Syntax_t__struct_2pointer.T__struct_2Pointer;
@:dox(hide) class T__struct_2_static_extension {

}
@:dox(hide) typedef T__struct_2 = stdgo._internal.regexp.syntax.Syntax_t__struct_2.T__struct_2;
typedef ErrorCode = stdgo._internal.regexp.syntax.Syntax_errorcode.ErrorCode;
typedef Flags = stdgo._internal.regexp.syntax.Syntax_flags.Flags;
typedef InstOp = stdgo._internal.regexp.syntax.Syntax_instop.InstOp;
typedef EmptyOp = stdgo._internal.regexp.syntax.Syntax_emptyop.EmptyOp;
typedef Op = stdgo._internal.regexp.syntax.Syntax_op.Op;
@:dox(hide) typedef T_patchListPointer = stdgo._internal.regexp.syntax.Syntax_t_patchlistpointer.T_patchListPointer;
@:dox(hide) class T_patchList_static_extension {
    static public function _append(_l1:T_patchList, _p:Prog, _l2:T_patchList):T_patchList {
        final _p = (_p : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_prog.Prog>);
        return stdgo._internal.regexp.syntax.Syntax_t_patchlist_static_extension.T_patchList_static_extension._append(_l1, _p, _l2);
    }
    static public function _patch(_l:T_patchList, _p:Prog, _val:std.UInt):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_prog.Prog>);
        final _val = (_val : stdgo.GoUInt32);
        stdgo._internal.regexp.syntax.Syntax_t_patchlist_static_extension.T_patchList_static_extension._patch(_l, _p, _val);
    }
}
@:dox(hide) typedef T_fragPointer = stdgo._internal.regexp.syntax.Syntax_t_fragpointer.T_fragPointer;
@:dox(hide) class T_frag_static_extension {

}
@:dox(hide) typedef T_compilerPointer = stdgo._internal.regexp.syntax.Syntax_t_compilerpointer.T_compilerPointer;
@:dox(hide) class T_compiler_static_extension {
    static public function _rune(_c:T_compiler, _r:Array<StdTypes.Int>, _flags:Flags):T_frag {
        final _c = (_c : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_t_compiler.T_compiler>);
        final _r = ([for (i in _r) (i : stdgo.GoInt32)] : stdgo.Slice<stdgo.GoInt32>);
        return stdgo._internal.regexp.syntax.Syntax_t_compiler_static_extension.T_compiler_static_extension._rune(_c, _r, _flags);
    }
    static public function _empty(_c:T_compiler, _op:EmptyOp):T_frag {
        final _c = (_c : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_t_compiler.T_compiler>);
        return stdgo._internal.regexp.syntax.Syntax_t_compiler_static_extension.T_compiler_static_extension._empty(_c, _op);
    }
    static public function _plus(_c:T_compiler, _f1:T_frag, _nongreedy:Bool):T_frag {
        final _c = (_c : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_t_compiler.T_compiler>);
        return stdgo._internal.regexp.syntax.Syntax_t_compiler_static_extension.T_compiler_static_extension._plus(_c, _f1, _nongreedy);
    }
    static public function _star(_c:T_compiler, _f1:T_frag, _nongreedy:Bool):T_frag {
        final _c = (_c : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_t_compiler.T_compiler>);
        return stdgo._internal.regexp.syntax.Syntax_t_compiler_static_extension.T_compiler_static_extension._star(_c, _f1, _nongreedy);
    }
    static public function _loop(_c:T_compiler, _f1:T_frag, _nongreedy:Bool):T_frag {
        final _c = (_c : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_t_compiler.T_compiler>);
        return stdgo._internal.regexp.syntax.Syntax_t_compiler_static_extension.T_compiler_static_extension._loop(_c, _f1, _nongreedy);
    }
    static public function _quest(_c:T_compiler, _f1:T_frag, _nongreedy:Bool):T_frag {
        final _c = (_c : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_t_compiler.T_compiler>);
        return stdgo._internal.regexp.syntax.Syntax_t_compiler_static_extension.T_compiler_static_extension._quest(_c, _f1, _nongreedy);
    }
    static public function _alt(_c:T_compiler, _f1:T_frag, _f2:T_frag):T_frag {
        final _c = (_c : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_t_compiler.T_compiler>);
        return stdgo._internal.regexp.syntax.Syntax_t_compiler_static_extension.T_compiler_static_extension._alt(_c, _f1, _f2);
    }
    static public function _cat(_c:T_compiler, _f1:T_frag, _f2:T_frag):T_frag {
        final _c = (_c : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_t_compiler.T_compiler>);
        return stdgo._internal.regexp.syntax.Syntax_t_compiler_static_extension.T_compiler_static_extension._cat(_c, _f1, _f2);
    }
    static public function _cap(_c:T_compiler, _arg:std.UInt):T_frag {
        final _c = (_c : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_t_compiler.T_compiler>);
        final _arg = (_arg : stdgo.GoUInt32);
        return stdgo._internal.regexp.syntax.Syntax_t_compiler_static_extension.T_compiler_static_extension._cap(_c, _arg);
    }
    static public function _fail(_c:T_compiler):T_frag {
        final _c = (_c : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_t_compiler.T_compiler>);
        return stdgo._internal.regexp.syntax.Syntax_t_compiler_static_extension.T_compiler_static_extension._fail(_c);
    }
    static public function _nop(_c:T_compiler):T_frag {
        final _c = (_c : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_t_compiler.T_compiler>);
        return stdgo._internal.regexp.syntax.Syntax_t_compiler_static_extension.T_compiler_static_extension._nop(_c);
    }
    static public function _inst(_c:T_compiler, _op:InstOp):T_frag {
        final _c = (_c : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_t_compiler.T_compiler>);
        return stdgo._internal.regexp.syntax.Syntax_t_compiler_static_extension.T_compiler_static_extension._inst(_c, _op);
    }
    static public function _compile(_c:T_compiler, _re:Regexp):T_frag {
        final _c = (_c : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_t_compiler.T_compiler>);
        final _re = (_re : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>);
        return stdgo._internal.regexp.syntax.Syntax_t_compiler_static_extension.T_compiler_static_extension._compile(_c, _re);
    }
    static public function _init(_c:T_compiler):Void {
        final _c = (_c : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_t_compiler.T_compiler>);
        stdgo._internal.regexp.syntax.Syntax_t_compiler_static_extension.T_compiler_static_extension._init(_c);
    }
}
typedef ErrorPointer = stdgo._internal.regexp.syntax.Syntax_errorpointer.ErrorPointer;
class Error_static_extension {
    static public function error(_e:Error):String {
        final _e = (_e : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_error.Error>);
        return stdgo._internal.regexp.syntax.Syntax_error_static_extension.Error_static_extension.error(_e);
    }
}
@:dox(hide) typedef T_parserPointer = stdgo._internal.regexp.syntax.Syntax_t_parserpointer.T_parserPointer;
@:dox(hide) class T_parser_static_extension {
    static public function _parseClass(_p:T_parser, _s:String):stdgo.Tuple<String, stdgo.Error> {
        final _p = (_p : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_t_parser.T_parser>);
        final _s = (_s : stdgo.GoString);
        return {
            final obj = stdgo._internal.regexp.syntax.Syntax_t_parser_static_extension.T_parser_static_extension._parseClass(_p, _s);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _parseUnicodeClass(_p:T_parser, _s:String, _r:Array<StdTypes.Int>):stdgo.Tuple.Tuple3<Array<StdTypes.Int>, String, stdgo.Error> {
        final _p = (_p : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_t_parser.T_parser>);
        final _s = (_s : stdgo.GoString);
        final _r = ([for (i in _r) (i : stdgo.GoInt32)] : stdgo.Slice<stdgo.GoInt32>);
        return {
            final obj = stdgo._internal.regexp.syntax.Syntax_t_parser_static_extension.T_parser_static_extension._parseUnicodeClass(_p, _s, _r);
            { _0 : [for (i in obj._0) i], _1 : obj._1, _2 : obj._2 };
        };
    }
    static public function _appendGroup(_p:T_parser, _r:Array<StdTypes.Int>, _g:T_charGroup):Array<StdTypes.Int> {
        final _p = (_p : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_t_parser.T_parser>);
        final _r = ([for (i in _r) (i : stdgo.GoInt32)] : stdgo.Slice<stdgo.GoInt32>);
        return [for (i in stdgo._internal.regexp.syntax.Syntax_t_parser_static_extension.T_parser_static_extension._appendGroup(_p, _r, _g)) i];
    }
    static public function _parseNamedClass(_p:T_parser, _s:String, _r:Array<StdTypes.Int>):stdgo.Tuple.Tuple3<Array<StdTypes.Int>, String, stdgo.Error> {
        final _p = (_p : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_t_parser.T_parser>);
        final _s = (_s : stdgo.GoString);
        final _r = ([for (i in _r) (i : stdgo.GoInt32)] : stdgo.Slice<stdgo.GoInt32>);
        return {
            final obj = stdgo._internal.regexp.syntax.Syntax_t_parser_static_extension.T_parser_static_extension._parseNamedClass(_p, _s, _r);
            { _0 : [for (i in obj._0) i], _1 : obj._1, _2 : obj._2 };
        };
    }
    static public function _parsePerlClassEscape(_p:T_parser, _s:String, _r:Array<StdTypes.Int>):stdgo.Tuple<Array<StdTypes.Int>, String> {
        final _p = (_p : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_t_parser.T_parser>);
        final _s = (_s : stdgo.GoString);
        final _r = ([for (i in _r) (i : stdgo.GoInt32)] : stdgo.Slice<stdgo.GoInt32>);
        return {
            final obj = stdgo._internal.regexp.syntax.Syntax_t_parser_static_extension.T_parser_static_extension._parsePerlClassEscape(_p, _s, _r);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function _parseClassChar(_p:T_parser, _s:String, _wholeClass:String):stdgo.Tuple.Tuple3<StdTypes.Int, String, stdgo.Error> {
        final _p = (_p : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_t_parser.T_parser>);
        final _s = (_s : stdgo.GoString);
        final _wholeClass = (_wholeClass : stdgo.GoString);
        return {
            final obj = stdgo._internal.regexp.syntax.Syntax_t_parser_static_extension.T_parser_static_extension._parseClassChar(_p, _s, _wholeClass);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    static public function _parseEscape(_p:T_parser, _s:String):stdgo.Tuple.Tuple3<StdTypes.Int, String, stdgo.Error> {
        final _p = (_p : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_t_parser.T_parser>);
        final _s = (_s : stdgo.GoString);
        return {
            final obj = stdgo._internal.regexp.syntax.Syntax_t_parser_static_extension.T_parser_static_extension._parseEscape(_p, _s);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    static public function _parseRightParen(_p:T_parser):stdgo.Error {
        final _p = (_p : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_t_parser.T_parser>);
        return stdgo._internal.regexp.syntax.Syntax_t_parser_static_extension.T_parser_static_extension._parseRightParen(_p);
    }
    static public function _swapVerticalBar(_p:T_parser):Bool {
        final _p = (_p : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_t_parser.T_parser>);
        return stdgo._internal.regexp.syntax.Syntax_t_parser_static_extension.T_parser_static_extension._swapVerticalBar(_p);
    }
    static public function _parseVerticalBar(_p:T_parser):stdgo.Error {
        final _p = (_p : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_t_parser.T_parser>);
        return stdgo._internal.regexp.syntax.Syntax_t_parser_static_extension.T_parser_static_extension._parseVerticalBar(_p);
    }
    static public function _parseInt(_p:T_parser, _s:String):stdgo.Tuple.Tuple3<StdTypes.Int, String, Bool> {
        final _p = (_p : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_t_parser.T_parser>);
        final _s = (_s : stdgo.GoString);
        return {
            final obj = stdgo._internal.regexp.syntax.Syntax_t_parser_static_extension.T_parser_static_extension._parseInt(_p, _s);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    static public function _parsePerlFlags(_p:T_parser, _s:String):stdgo.Tuple<String, stdgo.Error> {
        final _p = (_p : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_t_parser.T_parser>);
        final _s = (_s : stdgo.GoString);
        return {
            final obj = stdgo._internal.regexp.syntax.Syntax_t_parser_static_extension.T_parser_static_extension._parsePerlFlags(_p, _s);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _parseRepeat(_p:T_parser, _s:String):stdgo.Tuple.Tuple4<StdTypes.Int, StdTypes.Int, String, Bool> {
        final _p = (_p : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_t_parser.T_parser>);
        final _s = (_s : stdgo.GoString);
        return {
            final obj = stdgo._internal.regexp.syntax.Syntax_t_parser_static_extension.T_parser_static_extension._parseRepeat(_p, _s);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2, _3 : obj._3 };
        };
    }
    static public function _removeLeadingRegexp(_p:T_parser, _re:Regexp, _reuse:Bool):Regexp {
        final _p = (_p : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_t_parser.T_parser>);
        final _re = (_re : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>);
        return stdgo._internal.regexp.syntax.Syntax_t_parser_static_extension.T_parser_static_extension._removeLeadingRegexp(_p, _re, _reuse);
    }
    static public function _leadingRegexp(_p:T_parser, _re:Regexp):Regexp {
        final _p = (_p : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_t_parser.T_parser>);
        final _re = (_re : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>);
        return stdgo._internal.regexp.syntax.Syntax_t_parser_static_extension.T_parser_static_extension._leadingRegexp(_p, _re);
    }
    static public function _removeLeadingString(_p:T_parser, _re:Regexp, _n:StdTypes.Int):Regexp {
        final _p = (_p : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_t_parser.T_parser>);
        final _re = (_re : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>);
        final _n = (_n : stdgo.GoInt);
        return stdgo._internal.regexp.syntax.Syntax_t_parser_static_extension.T_parser_static_extension._removeLeadingString(_p, _re, _n);
    }
    static public function _leadingString(_p:T_parser, _re:Regexp):stdgo.Tuple<Array<StdTypes.Int>, Flags> {
        final _p = (_p : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_t_parser.T_parser>);
        final _re = (_re : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>);
        return {
            final obj = stdgo._internal.regexp.syntax.Syntax_t_parser_static_extension.T_parser_static_extension._leadingString(_p, _re);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function _factor(_p:T_parser, _sub:Array<Regexp>):Array<Regexp> {
        final _p = (_p : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_t_parser.T_parser>);
        final _sub = ([for (i in _sub) (i : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>>);
        return [for (i in stdgo._internal.regexp.syntax.Syntax_t_parser_static_extension.T_parser_static_extension._factor(_p, _sub)) i];
    }
    static public function _collapse(_p:T_parser, _subs:Array<Regexp>, _op:Op):Regexp {
        final _p = (_p : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_t_parser.T_parser>);
        final _subs = ([for (i in _subs) (i : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>>);
        return stdgo._internal.regexp.syntax.Syntax_t_parser_static_extension.T_parser_static_extension._collapse(_p, _subs, _op);
    }
    static public function _alternate(_p:T_parser):Regexp {
        final _p = (_p : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_t_parser.T_parser>);
        return stdgo._internal.regexp.syntax.Syntax_t_parser_static_extension.T_parser_static_extension._alternate(_p);
    }
    static public function _concat(_p:T_parser):Regexp {
        final _p = (_p : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_t_parser.T_parser>);
        return stdgo._internal.regexp.syntax.Syntax_t_parser_static_extension.T_parser_static_extension._concat(_p);
    }
    static public function _repeat(_p:T_parser, _op:Op, _min:StdTypes.Int, _max:StdTypes.Int, _before:String, _after:String, _lastRepeat:String):stdgo.Tuple<String, stdgo.Error> {
        final _p = (_p : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_t_parser.T_parser>);
        final _min = (_min : stdgo.GoInt);
        final _max = (_max : stdgo.GoInt);
        final _before = (_before : stdgo.GoString);
        final _after = (_after : stdgo.GoString);
        final _lastRepeat = (_lastRepeat : stdgo.GoString);
        return {
            final obj = stdgo._internal.regexp.syntax.Syntax_t_parser_static_extension.T_parser_static_extension._repeat(_p, _op, _min, _max, _before, _after, _lastRepeat);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _op(_p:T_parser, _op:Op):Regexp {
        final _p = (_p : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_t_parser.T_parser>);
        return stdgo._internal.regexp.syntax.Syntax_t_parser_static_extension.T_parser_static_extension._op(_p, _op);
    }
    static public function _literal(_p:T_parser, _r:StdTypes.Int):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_t_parser.T_parser>);
        final _r = (_r : stdgo.GoInt32);
        stdgo._internal.regexp.syntax.Syntax_t_parser_static_extension.T_parser_static_extension._literal(_p, _r);
    }
    static public function _maybeConcat(_p:T_parser, _r:StdTypes.Int, _flags:Flags):Bool {
        final _p = (_p : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_t_parser.T_parser>);
        final _r = (_r : stdgo.GoInt32);
        return stdgo._internal.regexp.syntax.Syntax_t_parser_static_extension.T_parser_static_extension._maybeConcat(_p, _r, _flags);
    }
    static public function _push(_p:T_parser, _re:Regexp):Regexp {
        final _p = (_p : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_t_parser.T_parser>);
        final _re = (_re : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>);
        return stdgo._internal.regexp.syntax.Syntax_t_parser_static_extension.T_parser_static_extension._push(_p, _re);
    }
    static public function _calcHeight(_p:T_parser, _re:Regexp, _force:Bool):StdTypes.Int {
        final _p = (_p : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_t_parser.T_parser>);
        final _re = (_re : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>);
        return stdgo._internal.regexp.syntax.Syntax_t_parser_static_extension.T_parser_static_extension._calcHeight(_p, _re, _force);
    }
    static public function _checkHeight(_p:T_parser, _re:Regexp):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_t_parser.T_parser>);
        final _re = (_re : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>);
        stdgo._internal.regexp.syntax.Syntax_t_parser_static_extension.T_parser_static_extension._checkHeight(_p, _re);
    }
    static public function _calcSize(_p:T_parser, _re:Regexp, _force:Bool):haxe.Int64 {
        final _p = (_p : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_t_parser.T_parser>);
        final _re = (_re : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>);
        return stdgo._internal.regexp.syntax.Syntax_t_parser_static_extension.T_parser_static_extension._calcSize(_p, _re, _force);
    }
    static public function _checkSize(_p:T_parser, _re:Regexp):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_t_parser.T_parser>);
        final _re = (_re : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>);
        stdgo._internal.regexp.syntax.Syntax_t_parser_static_extension.T_parser_static_extension._checkSize(_p, _re);
    }
    static public function _checkLimits(_p:T_parser, _re:Regexp):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_t_parser.T_parser>);
        final _re = (_re : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>);
        stdgo._internal.regexp.syntax.Syntax_t_parser_static_extension.T_parser_static_extension._checkLimits(_p, _re);
    }
    static public function _reuse(_p:T_parser, _re:Regexp):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_t_parser.T_parser>);
        final _re = (_re : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>);
        stdgo._internal.regexp.syntax.Syntax_t_parser_static_extension.T_parser_static_extension._reuse(_p, _re);
    }
    static public function _newRegexp(_p:T_parser, _op:Op):Regexp {
        final _p = (_p : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_t_parser.T_parser>);
        return stdgo._internal.regexp.syntax.Syntax_t_parser_static_extension.T_parser_static_extension._newRegexp(_p, _op);
    }
}
@:dox(hide) typedef T_charGroupPointer = stdgo._internal.regexp.syntax.Syntax_t_chargrouppointer.T_charGroupPointer;
@:dox(hide) class T_charGroup_static_extension {

}
@:dox(hide) typedef T_rangesPointer = stdgo._internal.regexp.syntax.Syntax_t_rangespointer.T_rangesPointer;
@:dox(hide) class T_ranges_static_extension {
    static public function swap(_ra:T_ranges, _i:StdTypes.Int, _j:StdTypes.Int):Void {
        final _i = (_i : stdgo.GoInt);
        final _j = (_j : stdgo.GoInt);
        stdgo._internal.regexp.syntax.Syntax_t_ranges_static_extension.T_ranges_static_extension.swap(_ra, _i, _j);
    }
    static public function len(_ra:T_ranges):StdTypes.Int {
        return stdgo._internal.regexp.syntax.Syntax_t_ranges_static_extension.T_ranges_static_extension.len(_ra);
    }
    static public function less(_ra:T_ranges, _i:StdTypes.Int, _j:StdTypes.Int):Bool {
        final _i = (_i : stdgo.GoInt);
        final _j = (_j : stdgo.GoInt);
        return stdgo._internal.regexp.syntax.Syntax_t_ranges_static_extension.T_ranges_static_extension.less(_ra, _i, _j);
    }
}
@:dox(hide) typedef T_parseTestPointer = stdgo._internal.regexp.syntax.Syntax_t_parsetestpointer.T_parseTestPointer;
@:dox(hide) class T_parseTest_static_extension {

}
typedef ProgPointer = stdgo._internal.regexp.syntax.Syntax_progpointer.ProgPointer;
class Prog_static_extension {
    static public function startCond(_p:Prog):EmptyOp {
        final _p = (_p : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_prog.Prog>);
        return stdgo._internal.regexp.syntax.Syntax_prog_static_extension.Prog_static_extension.startCond(_p);
    }
    static public function prefix(_p:Prog):stdgo.Tuple<String, Bool> {
        final _p = (_p : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_prog.Prog>);
        return {
            final obj = stdgo._internal.regexp.syntax.Syntax_prog_static_extension.Prog_static_extension.prefix(_p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _skipNop(_p:Prog, _pc:std.UInt):Inst {
        final _p = (_p : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_prog.Prog>);
        final _pc = (_pc : stdgo.GoUInt32);
        return stdgo._internal.regexp.syntax.Syntax_prog_static_extension.Prog_static_extension._skipNop(_p, _pc);
    }
    static public function string(_p:Prog):String {
        final _p = (_p : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_prog.Prog>);
        return stdgo._internal.regexp.syntax.Syntax_prog_static_extension.Prog_static_extension.string(_p);
    }
}
typedef InstPointer = stdgo._internal.regexp.syntax.Syntax_instpointer.InstPointer;
class Inst_static_extension {
    static public function string(_i:Inst):String {
        final _i = (_i : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_inst.Inst>);
        return stdgo._internal.regexp.syntax.Syntax_inst_static_extension.Inst_static_extension.string(_i);
    }
    static public function matchEmptyWidth(_i:Inst, _before:StdTypes.Int, _after:StdTypes.Int):Bool {
        final _i = (_i : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_inst.Inst>);
        final _before = (_before : stdgo.GoInt32);
        final _after = (_after : stdgo.GoInt32);
        return stdgo._internal.regexp.syntax.Syntax_inst_static_extension.Inst_static_extension.matchEmptyWidth(_i, _before, _after);
    }
    static public function matchRunePos(_i:Inst, _r:StdTypes.Int):StdTypes.Int {
        final _i = (_i : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_inst.Inst>);
        final _r = (_r : stdgo.GoInt32);
        return stdgo._internal.regexp.syntax.Syntax_inst_static_extension.Inst_static_extension.matchRunePos(_i, _r);
    }
    static public function matchRune(_i:Inst, _r:StdTypes.Int):Bool {
        final _i = (_i : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_inst.Inst>);
        final _r = (_r : stdgo.GoInt32);
        return stdgo._internal.regexp.syntax.Syntax_inst_static_extension.Inst_static_extension.matchRune(_i, _r);
    }
    static public function _op(_i:Inst):InstOp {
        final _i = (_i : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_inst.Inst>);
        return stdgo._internal.regexp.syntax.Syntax_inst_static_extension.Inst_static_extension._op(_i);
    }
}
typedef RegexpPointer = stdgo._internal.regexp.syntax.Syntax_regexppointer.RegexpPointer;
class Regexp_static_extension {
    static public function simplify(_re:Regexp):Regexp {
        final _re = (_re : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>);
        return stdgo._internal.regexp.syntax.Syntax_regexp_static_extension.Regexp_static_extension.simplify(_re);
    }
    static public function _capNames(_re:Regexp, _names:Array<String>):Void {
        final _re = (_re : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>);
        final _names = ([for (i in _names) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>);
        stdgo._internal.regexp.syntax.Syntax_regexp_static_extension.Regexp_static_extension._capNames(_re, _names);
    }
    static public function capNames(_re:Regexp):Array<String> {
        final _re = (_re : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>);
        return [for (i in stdgo._internal.regexp.syntax.Syntax_regexp_static_extension.Regexp_static_extension.capNames(_re)) i];
    }
    static public function maxCap(_re:Regexp):StdTypes.Int {
        final _re = (_re : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>);
        return stdgo._internal.regexp.syntax.Syntax_regexp_static_extension.Regexp_static_extension.maxCap(_re);
    }
    static public function string(_re:Regexp):String {
        final _re = (_re : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>);
        return stdgo._internal.regexp.syntax.Syntax_regexp_static_extension.Regexp_static_extension.string(_re);
    }
    static public function equal(_x:Regexp, _y:Regexp):Bool {
        final _x = (_x : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>);
        final _y = (_y : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>);
        return stdgo._internal.regexp.syntax.Syntax_regexp_static_extension.Regexp_static_extension.equal(_x, _y);
    }
}
@:dox(hide) typedef T__struct_0PointerPointer = stdgo._internal.regexp.syntax.Syntax_t__struct_0pointerpointer.T__struct_0PointerPointer;
@:dox(hide) class T__struct_0Pointer_static_extension {

}
@:dox(hide) typedef T__struct_1PointerPointer = stdgo._internal.regexp.syntax.Syntax_t__struct_1pointerpointer.T__struct_1PointerPointer;
@:dox(hide) class T__struct_1Pointer_static_extension {

}
@:dox(hide) typedef T__struct_2PointerPointer = stdgo._internal.regexp.syntax.Syntax_t__struct_2pointerpointer.T__struct_2PointerPointer;
@:dox(hide) class T__struct_2Pointer_static_extension {

}
typedef ErrorCodePointer = stdgo._internal.regexp.syntax.Syntax_errorcodepointer.ErrorCodePointer;
class ErrorCode_static_extension {
    static public function string(_e:ErrorCode):String {
        return stdgo._internal.regexp.syntax.Syntax_errorcode_static_extension.ErrorCode_static_extension.string(_e);
    }
}
typedef FlagsPointer = stdgo._internal.regexp.syntax.Syntax_flagspointer.FlagsPointer;
class Flags_static_extension {

}
typedef InstOpPointer = stdgo._internal.regexp.syntax.Syntax_instoppointer.InstOpPointer;
class InstOp_static_extension {
    static public function string(_i:InstOp):String {
        return stdgo._internal.regexp.syntax.Syntax_instop_static_extension.InstOp_static_extension.string(_i);
    }
}
typedef EmptyOpPointer = stdgo._internal.regexp.syntax.Syntax_emptyoppointer.EmptyOpPointer;
class EmptyOp_static_extension {

}
typedef OpPointer = stdgo._internal.regexp.syntax.Syntax_oppointer.OpPointer;
class Op_static_extension {
    static public function string(_i:Op):String {
        return stdgo._internal.regexp.syntax.Syntax_op_static_extension.Op_static_extension.string(_i);
    }
}
/**
    * 
    * Package syntax parses regular expressions into parse trees and compiles
    * parse trees into programs. Most clients of regular expressions will use the
    * facilities of package regexp (such as Compile and Match) instead of this package.
    * 
    * # Syntax
    * 
    * The regular expression syntax understood by this package when parsing with the Perl flag is as follows.
    * Parts of the syntax can be disabled by passing alternate flags to Parse.
    * 
    * Single characters:
    * 
    * 	.              any character, possibly including newline (flag s=true)
    * 	[xyz]          character class
    * 	[^xyz]         negated character class
    * 	\d             Perl character class
    * 	\D             negated Perl character class
    * 	[[:alpha:]]    ASCII character class
    * 	[[:^alpha:]]   negated ASCII character class
    * 	\pN            Unicode character class (one-letter name)
    * 	\p{Greek}      Unicode character class
    * 	\PN            negated Unicode character class (one-letter name)
    * 	\P{Greek}      negated Unicode character class
    * 
    * Composites:
    * 
    * 	xy             x followed by y
    * 	x|y            x or y (prefer x)
    * 
    * Repetitions:
    * 
    * 	x*             zero or more x, prefer more
    * 	x+             one or more x, prefer more
    * 	x?             zero or one x, prefer one
    * 	x{n,m}         n or n+1 or ... or m x, prefer more
    * 	x{n,}          n or more x, prefer more
    * 	x{n}           exactly n x
    * 	x*?            zero or more x, prefer fewer
    * 	x+?            one or more x, prefer fewer
    * 	x??            zero or one x, prefer zero
    * 	x{n,m}?        n or n+1 or ... or m x, prefer fewer
    * 	x{n,}?         n or more x, prefer fewer
    * 	x{n}?          exactly n x
    * 
    * Implementation restriction: The counting forms x{n,m}, x{n,}, and x{n}
    * reject forms that create a minimum or maximum repetition count above 1000.
    * Unlimited repetitions are not subject to this restriction.
    * 
    * Grouping:
    * 
    * 	(re)           numbered capturing group (submatch)
    * 	(?P<name>re)   named & numbered capturing group (submatch)
    * 	(?:re)         non-capturing group
    * 	(?flags)       set flags within current group; non-capturing
    * 	(?flags:re)    set flags during re; non-capturing
    * 
    * 	Flag syntax is xyz (set) or -xyz (clear) or xy-z (set xy, clear z). The flags are:
    * 
    * 	i              case-insensitive (default false)
    * 	m              multi-line mode: ^ and $ match begin/end line in addition to begin/end text (default false)
    * 	s              let . match \n (default false)
    * 	U              ungreedy: swap meaning of x* and x*?, x+ and x+?, etc (default false)
    * 
    * Empty strings:
    * 
    * 	^              at beginning of text or line (flag m=true)
    * 	$              at end of text (like \z not \Z) or line (flag m=true)
    * 	\A             at beginning of text
    * 	\b             at ASCII word boundary (\w on one side and \W, \A, or \z on the other)
    * 	\B             not at ASCII word boundary
    * 	\z             at end of text
    * 
    * Escape sequences:
    * 
    * 	\a             bell (== \007)
    * 	\f             form feed (== \014)
    * 	\t             horizontal tab (== \011)
    * 	\n             newline (== \012)
    * 	\r             carriage return (== \015)
    * 	\v             vertical tab character (== \013)
    * 	\*             literal *, for any punctuation character *
    * 	\123           octal character code (up to three digits)
    * 	\x7F           hex character code (exactly two digits)
    * 	\x{10FFFF}     hex character code
    * 	\Q...\E        literal text ... even if ... has punctuation
    * 
    * Character class elements:
    * 
    * 	x              single character
    * 	A-Z            character range (inclusive)
    * 	\d             Perl character class
    * 	[:foo:]        ASCII character class foo
    * 	\p{Foo}        Unicode character class Foo
    * 	\pF            Unicode character class F (one-letter name)
    * 
    * Named character classes as character class elements:
    * 
    * 	[\d]           digits (== \d)
    * 	[^\d]          not digits (== \D)
    * 	[\D]           not digits (== \D)
    * 	[^\D]          not not digits (== \d)
    * 	[[:name:]]     named ASCII class inside character class (== [:name:])
    * 	[^[:name:]]    named ASCII class inside negated character class (== [:^name:])
    * 	[\p{Name}]     named Unicode property inside character class (== \p{Name})
    * 	[^\p{Name}]    named Unicode property inside negated character class (== \P{Name})
    * 
    * Perl character classes (all ASCII-only):
    * 
    * 	\d             digits (== [0-9])
    * 	\D             not digits (== [^0-9])
    * 	\s             whitespace (== [\t\n\f\r ])
    * 	\S             not whitespace (== [^\t\n\f\r ])
    * 	\w             word characters (== [0-9A-Za-z_])
    * 	\W             not word characters (== [^0-9A-Za-z_])
    * 
    * ASCII character classes:
    * 
    * 	[[:alnum:]]    alphanumeric (== [0-9A-Za-z])
    * 	[[:alpha:]]    alphabetic (== [A-Za-z])
    * 	[[:ascii:]]    ASCII (== [\x00-\x7F])
    * 	[[:blank:]]    blank (== [\t ])
    * 	[[:cntrl:]]    control (== [\x00-\x1F\x7F])
    * 	[[:digit:]]    digits (== [0-9])
    * 	[[:graph:]]    graphical (== [!-~] == [A-Za-z0-9!"#$%&'()*+,\-./:;<=>?@[\\\]^_`{|}~])
    * 	[[:lower:]]    lower case (== [a-z])
    * 	[[:print:]]    printable (== [ -~] == [ [:graph:]])
    * 	[[:punct:]]    punctuation (== [!-/:-@[-`{-~])
    * 	[[:space:]]    whitespace (== [\t\n\v\f\r ])
    * 	[[:upper:]]    upper case (== [A-Z])
    * 	[[:word:]]     word characters (== [0-9A-Za-z_])
    * 	[[:xdigit:]]   hex digit (== [0-9A-Fa-f])
    * 
    * Unicode character classes are those in unicode.Categories and unicode.Scripts.
    * 
**/
class Syntax {
    /**
        * Compile compiles the regexp into a program to be executed.
        * The regexp should have been simplified already (returned from re.Simplify).
    **/
    static public inline function compile(_re:Regexp):stdgo.Tuple<Prog, stdgo.Error> {
        final _re = (_re : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>);
        return {
            final obj = stdgo._internal.regexp.syntax.Syntax_compile.compile(_re);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        * Parse parses a regular expression string s, controlled by the specified
        * Flags, and returns a regular expression parse tree. The syntax is
        * described in the top-level comment.
    **/
    static public inline function parse(_s:String, _flags:Flags):stdgo.Tuple<Regexp, stdgo.Error> {
        final _s = (_s : stdgo.GoString);
        return {
            final obj = stdgo._internal.regexp.syntax.Syntax_parse.parse(_s, _flags);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public inline function testParseSimple(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.regexp.syntax.Syntax_testparsesimple.testParseSimple(_t);
    }
    static public inline function testParseFoldCase(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.regexp.syntax.Syntax_testparsefoldcase.testParseFoldCase(_t);
    }
    static public inline function testParseLiteral(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.regexp.syntax.Syntax_testparseliteral.testParseLiteral(_t);
    }
    static public inline function testParseMatchNL(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.regexp.syntax.Syntax_testparsematchnl.testParseMatchNL(_t);
    }
    static public inline function testParseNoMatchNL(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.regexp.syntax.Syntax_testparsenomatchnl.testParseNoMatchNL(_t);
    }
    static public inline function testFoldConstants(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.regexp.syntax.Syntax_testfoldconstants.testFoldConstants(_t);
    }
    static public inline function testAppendRangeCollapse(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.regexp.syntax.Syntax_testappendrangecollapse.testAppendRangeCollapse(_t);
    }
    static public inline function testParseInvalidRegexps(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.regexp.syntax.Syntax_testparseinvalidregexps.testParseInvalidRegexps(_t);
    }
    static public inline function testToStringEquivalentParse(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.regexp.syntax.Syntax_testtostringequivalentparse.testToStringEquivalentParse(_t);
    }
    /**
        * EmptyOpContext returns the zero-width assertions
        * satisfied at the position between the runes r1 and r2.
        * Passing r1 == -1 indicates that the position is
        * at the beginning of the text.
        * Passing r2 == -1 indicates that the position is
        * at the end of the text.
    **/
    static public inline function emptyOpContext(_r1:StdTypes.Int, _r2:StdTypes.Int):EmptyOp {
        final _r1 = (_r1 : stdgo.GoInt32);
        final _r2 = (_r2 : stdgo.GoInt32);
        return stdgo._internal.regexp.syntax.Syntax_emptyopcontext.emptyOpContext(_r1, _r2);
    }
    /**
        * IsWordChar reports whether r is considered a “word character”
        * during the evaluation of the \b and \B zero-width assertions.
        * These assertions are ASCII-only: the word characters are [A-Za-z0-9_].
    **/
    static public inline function isWordChar(_r:StdTypes.Int):Bool {
        final _r = (_r : stdgo.GoInt32);
        return stdgo._internal.regexp.syntax.Syntax_iswordchar.isWordChar(_r);
    }
    static public inline function testCompile(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.regexp.syntax.Syntax_testcompile.testCompile(_t);
    }
    static public inline function benchmarkEmptyOpContext(_b:stdgo._internal.testing.Testing_b.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_b.B>);
        stdgo._internal.regexp.syntax.Syntax_benchmarkemptyopcontext.benchmarkEmptyOpContext(_b);
    }
    static public inline function benchmarkIsWordChar(_b:stdgo._internal.testing.Testing_b.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_b.B>);
        stdgo._internal.regexp.syntax.Syntax_benchmarkiswordchar.benchmarkIsWordChar(_b);
    }
    static public inline function testSimplify(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.regexp.syntax.Syntax_testsimplify.testSimplify(_t);
    }
}
