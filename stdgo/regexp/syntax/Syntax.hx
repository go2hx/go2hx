package stdgo.regexp.syntax;
import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;
var _anyRuneNotNL : Slice<GoInt32> = ((new Slice<GoRune>(((0 : GoInt32)), ((9 : GoInt32)), ((11 : GoInt32)), ((1114111 : GoInt32))) : Slice<GoRune>));
var _anyRune : Slice<GoInt32> = ((new Slice<GoRune>(((0 : GoInt32)), ((1114111 : GoInt32))) : Slice<GoRune>));
var __Op_index_0 : GoArray<GoUInt8> = ((new GoArray<GoUInt8>(
((0 : GoUInt8)),
((7 : GoUInt8)),
((17 : GoUInt8)),
((24 : GoUInt8)),
((33 : GoUInt8)),
((45 : GoUInt8)),
((52 : GoUInt8)),
((61 : GoUInt8)),
((68 : GoUInt8)),
((77 : GoUInt8)),
((84 : GoUInt8)),
((96 : GoUInt8)),
((110 : GoUInt8)),
((117 : GoUInt8)),
((121 : GoUInt8)),
((125 : GoUInt8)),
((130 : GoUInt8)),
((136 : GoUInt8)),
((142 : GoUInt8)),
((151 : GoUInt8))) : GoArray<GoUInt8>));
var _anyTable : Ref<stdgo.unicode.Unicode.RangeTable> = (({ r16 : ((new Slice<stdgo.unicode.Unicode.Range16>((({ lo : ((0 : GoUInt16)), hi : ((65535 : GoUInt16)), stride : ((1 : GoUInt16)) } : stdgo.unicode.Unicode.Range16))) : Slice<stdgo.unicode.Unicode.Range16>)), r32 : ((new Slice<stdgo.unicode.Unicode.Range32>((({ lo : ((65536 : GoUInt32)), hi : ((1114111 : GoUInt32)), stride : ((1 : GoUInt32)) } : stdgo.unicode.Unicode.Range32))) : Slice<stdgo.unicode.Unicode.Range32>)), latinOffset : 0 } : stdgo.unicode.Unicode.RangeTable));
var _code1 : Slice<GoInt32> = ((new Slice<GoRune>(((48 : GoInt32)), ((57 : GoInt32))) : Slice<GoRune>));
var _code2 : Slice<GoInt32> = ((new Slice<GoRune>(((9 : GoInt32)), ((10 : GoInt32)), ((12 : GoInt32)), ((13 : GoInt32)), ((32 : GoInt32)), ((32 : GoInt32))) : Slice<GoRune>));
var _code3 : Slice<GoInt32> = ((new Slice<GoRune>(((48 : GoInt32)), ((57 : GoInt32)), ((65 : GoInt32)), ((90 : GoInt32)), ((95 : GoInt32)), ((95 : GoInt32)), ((97 : GoInt32)), ((122 : GoInt32))) : Slice<GoRune>));
var _perlGroup : GoMap<GoString, T_charGroup> = Go.map("\\d" => (@:invalid_compositelit_null null == null ? null : @:invalid_compositelit_null null.__copy__()), "\\D" => (@:invalid_compositelit_null null == null ? null : @:invalid_compositelit_null null.__copy__()), "\\s" => (@:invalid_compositelit_null null == null ? null : @:invalid_compositelit_null null.__copy__()), "\\S" => (@:invalid_compositelit_null null == null ? null : @:invalid_compositelit_null null.__copy__()), "\\w" => (@:invalid_compositelit_null null == null ? null : @:invalid_compositelit_null null.__copy__()), "\\W" => (@:invalid_compositelit_null null == null ? null : @:invalid_compositelit_null null.__copy__()));
var _code4 : Slice<GoInt32> = ((new Slice<GoRune>(((48 : GoInt32)), ((57 : GoInt32)), ((65 : GoInt32)), ((90 : GoInt32)), ((97 : GoInt32)), ((122 : GoInt32))) : Slice<GoRune>));
var _code5 : Slice<GoInt32> = ((new Slice<GoRune>(((65 : GoInt32)), ((90 : GoInt32)), ((97 : GoInt32)), ((122 : GoInt32))) : Slice<GoRune>));
var _code6 : Slice<GoInt32> = ((new Slice<GoRune>(((0 : GoInt32)), ((127 : GoInt32))) : Slice<GoRune>));
var _code7 : Slice<GoInt32> = ((new Slice<GoRune>(((9 : GoInt32)), ((9 : GoInt32)), ((32 : GoInt32)), ((32 : GoInt32))) : Slice<GoRune>));
var _code8 : Slice<GoInt32> = ((new Slice<GoRune>(((0 : GoInt32)), ((31 : GoInt32)), ((127 : GoInt32)), ((127 : GoInt32))) : Slice<GoRune>));
var _code9 : Slice<GoInt32> = ((new Slice<GoRune>(((48 : GoInt32)), ((57 : GoInt32))) : Slice<GoRune>));
var _code10 : Slice<GoInt32> = ((new Slice<GoRune>(((33 : GoInt32)), ((126 : GoInt32))) : Slice<GoRune>));
var _code11 : Slice<GoInt32> = ((new Slice<GoRune>(((97 : GoInt32)), ((122 : GoInt32))) : Slice<GoRune>));
var _code12 : Slice<GoInt32> = ((new Slice<GoRune>(((32 : GoInt32)), ((126 : GoInt32))) : Slice<GoRune>));
var _code13 : Slice<GoInt32> = ((new Slice<GoRune>(((33 : GoInt32)), ((47 : GoInt32)), ((58 : GoInt32)), ((64 : GoInt32)), ((91 : GoInt32)), ((96 : GoInt32)), ((123 : GoInt32)), ((126 : GoInt32))) : Slice<GoRune>));
var _code14 : Slice<GoInt32> = ((new Slice<GoRune>(((9 : GoInt32)), ((13 : GoInt32)), ((32 : GoInt32)), ((32 : GoInt32))) : Slice<GoRune>));
var _code15 : Slice<GoInt32> = ((new Slice<GoRune>(((65 : GoInt32)), ((90 : GoInt32))) : Slice<GoRune>));
var _code16 : Slice<GoInt32> = ((new Slice<GoRune>(((48 : GoInt32)), ((57 : GoInt32)), ((65 : GoInt32)), ((90 : GoInt32)), ((95 : GoInt32)), ((95 : GoInt32)), ((97 : GoInt32)), ((122 : GoInt32))) : Slice<GoRune>));
var _code17 : Slice<GoInt32> = ((new Slice<GoRune>(((48 : GoInt32)), ((57 : GoInt32)), ((65 : GoInt32)), ((70 : GoInt32)), ((97 : GoInt32)), ((102 : GoInt32))) : Slice<GoRune>));
var _posixGroup : GoMap<GoString, T_charGroup> = Go.map("[:alnum:]" => (@:invalid_compositelit_null null == null ? null : @:invalid_compositelit_null null.__copy__()),
"[:^alnum:]" => (@:invalid_compositelit_null null == null ? null : @:invalid_compositelit_null null.__copy__()),
"[:alpha:]" => (@:invalid_compositelit_null null == null ? null : @:invalid_compositelit_null null.__copy__()),
"[:^alpha:]" => (@:invalid_compositelit_null null == null ? null : @:invalid_compositelit_null null.__copy__()),
"[:ascii:]" => (@:invalid_compositelit_null null == null ? null : @:invalid_compositelit_null null.__copy__()),
"[:^ascii:]" => (@:invalid_compositelit_null null == null ? null : @:invalid_compositelit_null null.__copy__()),
"[:blank:]" => (@:invalid_compositelit_null null == null ? null : @:invalid_compositelit_null null.__copy__()),
"[:^blank:]" => (@:invalid_compositelit_null null == null ? null : @:invalid_compositelit_null null.__copy__()),
"[:cntrl:]" => (@:invalid_compositelit_null null == null ? null : @:invalid_compositelit_null null.__copy__()),
"[:^cntrl:]" => (@:invalid_compositelit_null null == null ? null : @:invalid_compositelit_null null.__copy__()),
"[:digit:]" => (@:invalid_compositelit_null null == null ? null : @:invalid_compositelit_null null.__copy__()),
"[:^digit:]" => (@:invalid_compositelit_null null == null ? null : @:invalid_compositelit_null null.__copy__()),
"[:graph:]" => (@:invalid_compositelit_null null == null ? null : @:invalid_compositelit_null null.__copy__()),
"[:^graph:]" => (@:invalid_compositelit_null null == null ? null : @:invalid_compositelit_null null.__copy__()),
"[:lower:]" => (@:invalid_compositelit_null null == null ? null : @:invalid_compositelit_null null.__copy__()),
"[:^lower:]" => (@:invalid_compositelit_null null == null ? null : @:invalid_compositelit_null null.__copy__()),
"[:print:]" => (@:invalid_compositelit_null null == null ? null : @:invalid_compositelit_null null.__copy__()),
"[:^print:]" => (@:invalid_compositelit_null null == null ? null : @:invalid_compositelit_null null.__copy__()),
"[:punct:]" => (@:invalid_compositelit_null null == null ? null : @:invalid_compositelit_null null.__copy__()),
"[:^punct:]" => (@:invalid_compositelit_null null == null ? null : @:invalid_compositelit_null null.__copy__()),
"[:space:]" => (@:invalid_compositelit_null null == null ? null : @:invalid_compositelit_null null.__copy__()),
"[:^space:]" => (@:invalid_compositelit_null null == null ? null : @:invalid_compositelit_null null.__copy__()),
"[:upper:]" => (@:invalid_compositelit_null null == null ? null : @:invalid_compositelit_null null.__copy__()),
"[:^upper:]" => (@:invalid_compositelit_null null == null ? null : @:invalid_compositelit_null null.__copy__()),
"[:word:]" => (@:invalid_compositelit_null null == null ? null : @:invalid_compositelit_null null.__copy__()),
"[:^word:]" => (@:invalid_compositelit_null null == null ? null : @:invalid_compositelit_null null.__copy__()),
"[:xdigit:]" => (@:invalid_compositelit_null null == null ? null : @:invalid_compositelit_null null.__copy__()),
"[:^xdigit:]" => (@:invalid_compositelit_null null == null ? null : @:invalid_compositelit_null null.__copy__()));
var _instOpNames : Slice<GoString> = ((new Slice<GoString>(
((("InstAlt" : GoString))),
((("InstAltMatch" : GoString))),
((("InstCapture" : GoString))),
((("InstEmptyWidth" : GoString))),
((("InstMatch" : GoString))),
((("InstFail" : GoString))),
((("InstNop" : GoString))),
((("InstRune" : GoString))),
((("InstRune1" : GoString))),
((("InstRuneAny" : GoString))),
((("InstRuneAnyNotNL" : GoString)))) : Slice<GoString>));
@:structInit @:using(stdgo.regexp.syntax.Syntax.T_patchList_static_extension) class T_patchList {
    public var _head : GoUInt32 = ((0 : GoUInt32));
    public var _tail : GoUInt32 = ((0 : GoUInt32));
    public function new(?_head:GoUInt32, ?_tail:GoUInt32) {
        if (_head != null) this._head = _head;
        if (_tail != null) this._tail = _tail;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_patchList(_head, _tail);
    }
}
@:structInit class T_frag {
    public var _i : GoUInt32 = ((0 : GoUInt32));
    public var _out : T_patchList = new T_patchList();
    public var _nullable : Bool = false;
    public function new(?_i:GoUInt32, ?_out:T_patchList, ?_nullable:Bool) {
        if (_i != null) this._i = _i;
        if (_out != null) this._out = _out;
        if (_nullable != null) this._nullable = _nullable;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_frag(_i, _out, _nullable);
    }
}
@:structInit @:using(stdgo.regexp.syntax.Syntax.T_compiler_static_extension) class T_compiler {
    public var _p : Ref<Prog> = null;
    public function new(?_p:Ref<Prog>) {
        if (_p != null) this._p = _p;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_compiler(_p);
    }
}
@:structInit @:using(stdgo.regexp.syntax.Syntax.T_error_static_extension) class T_error {
    public var code : ErrorCode = new ErrorCode();
    public var expr : GoString = (("" : GoString));
    public function new(?code:ErrorCode, ?expr:GoString) {
        if (code != null) this.code = code;
        if (expr != null) this.expr = expr;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_error(code, expr);
    }
}
@:structInit @:using(stdgo.regexp.syntax.Syntax.T_parser_static_extension) class T_parser {
    public var _flags : Flags = new Flags();
    public var _stack : Slice<Ref<Regexp>> = ((null : Slice<Ref<Regexp>>));
    public var _free : Ref<Regexp> = null;
    public var _numCap : GoInt = ((0 : GoInt));
    public var _wholeRegexp : GoString = (("" : GoString));
    public var _tmpClass : Slice<GoInt32> = ((null : Slice<GoInt32>));
    public var _numRegexp : GoInt = ((0 : GoInt));
    public var _height : GoMap<Ref<Regexp>, GoInt> = ((null : GoMap<Ref<Regexp>, GoInt>));
    public function new(?_flags:Flags, ?_stack:Slice<Ref<Regexp>>, ?_free:Ref<Regexp>, ?_numCap:GoInt, ?_wholeRegexp:GoString, ?_tmpClass:Slice<GoInt32>, ?_numRegexp:GoInt, ?_height:GoMap<Ref<Regexp>, GoInt>) {
        if (_flags != null) this._flags = _flags;
        if (_stack != null) this._stack = _stack;
        if (_free != null) this._free = _free;
        if (_numCap != null) this._numCap = _numCap;
        if (_wholeRegexp != null) this._wholeRegexp = _wholeRegexp;
        if (_tmpClass != null) this._tmpClass = _tmpClass;
        if (_numRegexp != null) this._numRegexp = _numRegexp;
        if (_height != null) this._height = _height;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_parser(_flags, _stack, _free, _numCap, _wholeRegexp, _tmpClass, _numRegexp, _height);
    }
}
@:structInit class T_charGroup {
    public var _sign : GoInt = ((0 : GoInt));
    public var _class : Slice<GoInt32> = ((null : Slice<GoInt32>));
    public function new(?_sign:GoInt, ?_class:Slice<GoInt32>) {
        if (_sign != null) this._sign = _sign;
        if (_class != null) this._class = _class;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_charGroup(_sign, _class);
    }
}
@:structInit @:using(stdgo.regexp.syntax.Syntax.T_ranges_static_extension) class T_ranges {
    public var _p : Ref<Slice<GoInt32>> = null;
    public function new(?_p:Ref<Slice<GoInt32>>) {
        if (_p != null) this._p = _p;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_ranges(_p);
    }
}
@:structInit @:using(stdgo.regexp.syntax.Syntax.Prog_static_extension) class Prog {
    public var inst : Slice<Inst> = ((null : Slice<Inst>));
    public var start : GoInt = ((0 : GoInt));
    public var numCap : GoInt = ((0 : GoInt));
    public function new(?inst:Slice<Inst>, ?start:GoInt, ?numCap:GoInt) {
        if (inst != null) this.inst = inst;
        if (start != null) this.start = start;
        if (numCap != null) this.numCap = numCap;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new Prog(inst, start, numCap);
    }
}
@:structInit @:using(stdgo.regexp.syntax.Syntax.Inst_static_extension) class Inst {
    public var op : InstOp = new InstOp();
    public var out : GoUInt32 = ((0 : GoUInt32));
    public var arg : GoUInt32 = ((0 : GoUInt32));
    public var rune : Slice<GoInt32> = ((null : Slice<GoInt32>));
    public function new(?op:InstOp, ?out:GoUInt32, ?arg:GoUInt32, ?rune:Slice<GoInt32>) {
        if (op != null) this.op = op;
        if (out != null) this.out = out;
        if (arg != null) this.arg = arg;
        if (rune != null) this.rune = rune;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new Inst(op, out, arg, rune);
    }
}
@:structInit @:using(stdgo.regexp.syntax.Syntax.Regexp_static_extension) class Regexp {
    public var op : Op = new Op();
    public var flags : Flags = new Flags();
    public var sub : Slice<Ref<Regexp>> = ((null : Slice<Ref<Regexp>>));
    public var sub0 : GoArray<Ref<Regexp>> = new GoArray<Ref<Regexp>>(...[for (i in 0 ... 1) null]);
    public var rune : Slice<GoInt32> = ((null : Slice<GoInt32>));
    public var rune0 : GoArray<GoInt32> = new GoArray<GoInt32>(...[for (i in 0 ... 2) ((0 : GoInt32))]);
    public var min : GoInt = ((0 : GoInt));
    public var max : GoInt = ((0 : GoInt));
    public var cap_ : GoInt = ((0 : GoInt));
    public var name : GoString = (("" : GoString));
    public function new(?op:Op, ?flags:Flags, ?sub:Slice<Ref<Regexp>>, ?sub0:GoArray<Ref<Regexp>>, ?rune:Slice<GoInt32>, ?rune0:GoArray<GoInt32>, ?min:GoInt, ?max:GoInt, ?cap_:GoInt, ?name:GoString) {
        if (op != null) this.op = op;
        if (flags != null) this.flags = flags;
        if (sub != null) this.sub = sub;
        if (sub0 != null) this.sub0 = sub0;
        if (rune != null) this.rune = rune;
        if (rune0 != null) this.rune0 = rune0;
        if (min != null) this.min = min;
        if (max != null) this.max = max;
        if (cap_ != null) this.cap_ = cap_;
        if (name != null) this.name = name;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new Regexp(op, flags, sub, sub0, rune, rune0, min, max, cap_, name);
    }
}
@:named @:using(stdgo.regexp.syntax.Syntax.ErrorCode_static_extension) typedef ErrorCode = GoString;
@:named typedef Flags = GoUInt16;
@:named @:using(stdgo.regexp.syntax.Syntax.InstOp_static_extension) typedef InstOp = GoUInt8;
@:named typedef EmptyOp = GoUInt8;
@:named @:using(stdgo.regexp.syntax.Syntax.Op_static_extension) typedef Op = GoUInt8;
function _makePatchList(_n:GoUInt32):T_patchList {
        return ((new T_patchList(_n, _n) : T_patchList));
    }
function compile(_re:Regexp):{ var _0 : Prog; var _1 : Error; } {
        var _c:T_compiler = new T_compiler();
        _c._init();
        var _f:T_frag = (_c._compile(_re) == null ? null : _c._compile(_re).__copy__());
        _f._out._patch(_c._p, _c._inst(((4 : GoUInt8)))._i);
        _c._p.start = ((_f._i : GoInt));
        return { _0 : _c._p, _1 : ((null : stdgo.Error)) };
    }
function _minFoldRune(_r:GoRune):GoRune {
        if ((_r < ((65 : GoInt32))) || (_r > ((125251 : GoInt32)))) {
            return _r;
        };
        var _min:GoInt32 = _r;
        var _r0:GoInt32 = _r;
        {
            _r = stdgo.unicode.Unicode.simpleFold(_r);
            Go.cfor(_r != _r0, _r = stdgo.unicode.Unicode.simpleFold(_r), {
                if (_min > _r) {
                    _min = _r;
                };
            });
        };
        return _min;
    }
function _repeatIsValid(_re:Regexp, _n:GoInt):Bool {
        if (_re.op == ((17 : GoUInt8))) {
            var _m:GoInt = _re.max;
            if (_m == ((0 : GoInt))) {
                return true;
            };
            if (_m < ((0 : GoInt))) {
                _m = _re.min;
            };
            if (_m > _n) {
                return false;
            };
            if (_m > ((0 : GoInt))) {
                _n = _n / (_m);
            };
        };
        for (_0 => _sub in _re.sub) {
            if (!_repeatIsValid(_sub, _n)) {
                return false;
            };
        };
        return true;
    }
function _cleanAlt(_re:Regexp):Void {
        if (_re.op == ((4 : GoUInt8))) {
            _re.rune = _cleanClass(_re.rune);
            if ((((_re.rune != null ? _re.rune.length : ((0 : GoInt))) == ((2 : GoInt))) && ((_re.rune != null ? _re.rune[((0 : GoInt))] : ((0 : GoInt32))) == ((0 : GoInt32)))) && ((_re.rune != null ? _re.rune[((1 : GoInt))] : ((0 : GoInt32))) == ((1114111 : GoInt32)))) {
                _re.rune = ((null : Slice<GoInt32>));
                _re.op = ((6 : GoUInt8));
                return;
            };
            if ((((((_re.rune != null ? _re.rune.length : ((0 : GoInt))) == ((4 : GoInt))) && ((_re.rune != null ? _re.rune[((0 : GoInt))] : ((0 : GoInt32))) == ((0 : GoInt32)))) && ((_re.rune != null ? _re.rune[((1 : GoInt))] : ((0 : GoInt32))) == ((9 : GoInt32)))) && ((_re.rune != null ? _re.rune[((2 : GoInt))] : ((0 : GoInt32))) == ((11 : GoInt32)))) && ((_re.rune != null ? _re.rune[((3 : GoInt))] : ((0 : GoInt32))) == ((1114111 : GoInt32)))) {
                _re.rune = ((null : Slice<GoInt32>));
                _re.op = ((5 : GoUInt8));
                return;
            };
            if (((_re.rune != null ? _re.rune.cap() : ((0 : GoInt))) - (_re.rune != null ? _re.rune.length : ((0 : GoInt)))) > ((100 : GoInt))) {
                _re.rune = (((_re.rune0.__slice__(0, ((0 : GoInt))) : Slice<GoInt32>)) != null ? ((_re.rune0.__slice__(0, ((0 : GoInt))) : Slice<GoInt32>)).__append__(..._re.rune.__toArray__()) : new Slice<GoInt32>(..._re.rune.__toArray__()));
            };
        };
    }
function _literalRegexp(_s:GoString, _flags:Flags):Regexp {
        var _re = (({ op : ((3 : GoUInt8)), flags : new Flags(), sub : ((null : Slice<Ref<Regexp>>)), sub0 : new GoArray<Ref<Regexp>>(...[for (i in 0 ... 1) null]), rune : ((null : Slice<GoInt32>)), rune0 : new GoArray<GoInt32>(...[for (i in 0 ... 2) ((0 : GoInt32))]), min : 0, max : 0, cap_ : 0, name : "" } : Regexp));
        _re.flags = _flags;
        _re.rune = ((_re.rune0.__slice__(0, ((0 : GoInt))) : Slice<GoInt32>));
        for (_0 => _c in _s) {
            if ((_re.rune != null ? _re.rune.length : ((0 : GoInt))) >= (_re.rune != null ? _re.rune.cap() : ((0 : GoInt)))) {
                _re.rune = ((_s : Slice<GoRune>));
                break;
            };
            _re.rune = (_re.rune != null ? _re.rune.__append__(_c) : new Slice<GoInt32>(_c));
        };
        return _re;
    }
function parse(_s:GoString, _flags:Flags):{ var _0 : Regexp; var _1 : Error; } {
        return _parse(_s, _flags);
    }
function _parse(_s:GoString, _flags:Flags):{ var _0 : Regexp; var _1 : Error; } {
        return stdgo.internal.Macro.controlFlow({
            var __recover_exception__:AnyInterface = null;
            var __deferstack__:Array<Void -> Void> = [];
            var _0:Regexp = null, _err:Error = ((null : stdgo.Error));
            __deferstack__.unshift(() -> {
                var a = function():Void {
                    {
                        var _r:AnyInterface = Go.toInterface(({
                            final r = __recover_exception__;
                            __recover_exception__ = null;
                            r;
                        }));
                        if (_r == null) {} else if (Go.toInterface(_r) == Go.toInterface(((("regexp/syntax: internal error" : GoString))))) {
                            _err = (({ code : ((("regexp/syntax: internal error" : GoString))), expr : _s } : T_error));
                        };
                    };
                };
                a();
            });
            try {
                if ((_flags & ((2 : GoUInt16))) != ((0 : GoUInt16))) {
                    {
                        var _err:stdgo.Error = _checkUTF8(_s);
                        if (_err != null) {
                            {
                                for (defer in __deferstack__) {
                                    defer();
                                };
                                return { _0 : null, _1 : _err };
                            };
                        };
                    };
                    {
                        for (defer in __deferstack__) {
                            defer();
                        };
                        return { _0 : _literalRegexp(_s, _flags), _1 : ((null : stdgo.Error)) };
                    };
                };
                var _p:T_parser = new T_parser(), _c:GoRune = ((0 : GoInt32)), _op:Op = new Op(), _lastRepeat:GoString = (("" : GoString));
                _p._flags = _flags;
                _p._wholeRegexp = _s;
                var _t:GoString = _s;
                while (_t != ((("" : GoString)))) {
                    var _repeat:GoString = ((("" : GoString)));
                    @:label("BigSwitch") {
                        var __switchIndex__ = -1;
                        while (true) {
                            if ((_t != null ? _t[((0 : GoInt))] : ((0 : GoUInt8))) == ((((("(" : GoString))).code : GoRune))) {
                                if ((((_p._flags & ((64 : GoUInt16))) != ((0 : GoUInt16))) && ((_t != null ? _t.length : ((0 : GoInt))) >= ((2 : GoInt)))) && ((_t != null ? _t[((1 : GoInt))] : ((0 : GoUInt8))) == ((((("?" : GoString))).code : GoRune)))) {
                                    {
                                        {
                                            var __tmp__ = _p._parsePerlFlags(_t);
                                            _t = __tmp__._0;
                                            _err = __tmp__._1;
                                        };
                                        if (_err != null) {
                                            {
                                                for (defer in __deferstack__) {
                                                    defer();
                                                };
                                                return { _0 : null, _1 : _err };
                                            };
                                        };
                                    };
                                    break;
                                };
                                _p._numCap++;
                                _p._op(((128 : GoUInt8))).cap_ = _p._numCap;
                                _t = ((_t.__slice__(((1 : GoInt))) : GoString));
                                break;
                            } else if ((_t != null ? _t[((0 : GoInt))] : ((0 : GoUInt8))) == ((((("|" : GoString))).code : GoRune))) {
                                {
                                    _err = _p._parseVerticalBar();
                                    if (_err != null) {
                                        {
                                            for (defer in __deferstack__) {
                                                defer();
                                            };
                                            return { _0 : null, _1 : _err };
                                        };
                                    };
                                };
                                _t = ((_t.__slice__(((1 : GoInt))) : GoString));
                                break;
                            } else if ((_t != null ? _t[((0 : GoInt))] : ((0 : GoUInt8))) == (((((")" : GoString))).code : GoRune))) {
                                {
                                    _err = _p._parseRightParen();
                                    if (_err != null) {
                                        {
                                            for (defer in __deferstack__) {
                                                defer();
                                            };
                                            return { _0 : null, _1 : _err };
                                        };
                                    };
                                };
                                _t = ((_t.__slice__(((1 : GoInt))) : GoString));
                                break;
                            } else if ((_t != null ? _t[((0 : GoInt))] : ((0 : GoUInt8))) == ((((("^" : GoString))).code : GoRune))) {
                                if ((_p._flags & ((16 : GoUInt16))) != ((0 : GoUInt16))) {
                                    _p._op(((9 : GoUInt8)));
                                } else {
                                    _p._op(((7 : GoUInt8)));
                                };
                                _t = ((_t.__slice__(((1 : GoInt))) : GoString));
                                break;
                            } else if ((_t != null ? _t[((0 : GoInt))] : ((0 : GoUInt8))) == ((((("$$" : GoString))).code : GoRune))) {
                                if ((_p._flags & ((16 : GoUInt16))) != ((0 : GoUInt16))) {
                                    _p._op(((10 : GoUInt8))).flags = _p._op(((10 : GoUInt8))).flags | (((256 : GoUInt16)));
                                } else {
                                    _p._op(((8 : GoUInt8)));
                                };
                                _t = ((_t.__slice__(((1 : GoInt))) : GoString));
                                break;
                            } else if ((_t != null ? _t[((0 : GoInt))] : ((0 : GoUInt8))) == ((((("." : GoString))).code : GoRune))) {
                                if ((_p._flags & ((8 : GoUInt16))) != ((0 : GoUInt16))) {
                                    _p._op(((6 : GoUInt8)));
                                } else {
                                    _p._op(((5 : GoUInt8)));
                                };
                                _t = ((_t.__slice__(((1 : GoInt))) : GoString));
                                break;
                            } else if ((_t != null ? _t[((0 : GoInt))] : ((0 : GoUInt8))) == ((((("[" : GoString))).code : GoRune))) {
                                {
                                    {
                                        var __tmp__ = _p._parseClass(_t);
                                        _t = __tmp__._0;
                                        _err = __tmp__._1;
                                    };
                                    if (_err != null) {
                                        {
                                            for (defer in __deferstack__) {
                                                defer();
                                            };
                                            return { _0 : null, _1 : _err };
                                        };
                                    };
                                };
                                break;
                            } else if ((_t != null ? _t[((0 : GoInt))] : ((0 : GoUInt8))) == ((((("*" : GoString))).code : GoRune)) || (_t != null ? _t[((0 : GoInt))] : ((0 : GoUInt8))) == ((((("+" : GoString))).code : GoRune)) || (_t != null ? _t[((0 : GoInt))] : ((0 : GoUInt8))) == ((((("?" : GoString))).code : GoRune))) {
                                var _before:GoString = _t;
                                if ((_t != null ? _t[((0 : GoInt))] : ((0 : GoUInt8))) == ((((("*" : GoString))).code : GoRune))) {
                                    _op = ((14 : GoUInt8));
                                } else if ((_t != null ? _t[((0 : GoInt))] : ((0 : GoUInt8))) == ((((("+" : GoString))).code : GoRune))) {
                                    _op = ((15 : GoUInt8));
                                } else if ((_t != null ? _t[((0 : GoInt))] : ((0 : GoUInt8))) == ((((("?" : GoString))).code : GoRune))) {
                                    _op = ((16 : GoUInt8));
                                };
                                var _after:GoString = ((_t.__slice__(((1 : GoInt))) : GoString));
                                {
                                    {
                                        var __tmp__ = _p._repeat(_op, ((0 : GoInt)), ((0 : GoInt)), _before, _after, _lastRepeat);
                                        _after = __tmp__._0;
                                        _err = __tmp__._1;
                                    };
                                    if (_err != null) {
                                        {
                                            for (defer in __deferstack__) {
                                                defer();
                                            };
                                            return { _0 : null, _1 : _err };
                                        };
                                    };
                                };
                                _repeat = _before;
                                _t = _after;
                                break;
                            } else if ((_t != null ? _t[((0 : GoInt))] : ((0 : GoUInt8))) == ((((("{" : GoString))).code : GoRune))) {
                                _op = ((17 : GoUInt8));
                                var _before:GoString = _t;
                                var __tmp__ = _p._parseRepeat(_t), _min:GoInt = __tmp__._0, _max:GoInt = __tmp__._1, _after:GoString = __tmp__._2, _ok:Bool = __tmp__._3;
                                if (!_ok) {
                                    _p._literal(((((("{" : GoString))).code : GoRune)));
                                    _t = ((_t.__slice__(((1 : GoInt))) : GoString));
                                    break;
                                };
                                if ((((_min < ((0 : GoInt))) || (_min > ((1000 : GoInt)))) || (_max > ((1000 : GoInt)))) || ((_max >= ((0 : GoInt))) && (_min > _max))) {
                                    {
                                        for (defer in __deferstack__) {
                                            defer();
                                        };
                                        return { _0 : null, _1 : ((new T_error(((("invalid repeat count" : GoString))), ((_before.__slice__(0, (_before != null ? _before.length : ((0 : GoInt))) - (_after != null ? _after.length : ((0 : GoInt)))) : GoString))) : T_error)) };
                                    };
                                };
                                {
                                    {
                                        var __tmp__ = _p._repeat(_op, _min, _max, _before, _after, _lastRepeat);
                                        _after = __tmp__._0;
                                        _err = __tmp__._1;
                                    };
                                    if (_err != null) {
                                        {
                                            for (defer in __deferstack__) {
                                                defer();
                                            };
                                            return { _0 : null, _1 : _err };
                                        };
                                    };
                                };
                                _repeat = _before;
                                _t = _after;
                                break;
                            } else if ((_t != null ? _t[((0 : GoInt))] : ((0 : GoUInt8))) == ((((("\\" : GoString))).code : GoRune))) {
                                if (((_p._flags & ((64 : GoUInt16))) != ((0 : GoUInt16))) && ((_t != null ? _t.length : ((0 : GoInt))) >= ((2 : GoInt)))) {
                                    {
                                        var __switchIndex__ = -1;
                                        while (true) {
                                            if ((_t != null ? _t[((1 : GoInt))] : ((0 : GoUInt8))) == ((((("A" : GoString))).code : GoRune))) {
                                                _p._op(((9 : GoUInt8)));
                                                _t = ((_t.__slice__(((2 : GoInt))) : GoString));
                                                @:break {
                                                    ____exit____ = true;
                                                    ____break____ = true;
                                                    break;
                                                };
                                                break;
                                            } else if ((_t != null ? _t[((1 : GoInt))] : ((0 : GoUInt8))) == ((((("b" : GoString))).code : GoRune))) {
                                                _p._op(((11 : GoUInt8)));
                                                _t = ((_t.__slice__(((2 : GoInt))) : GoString));
                                                @:break {
                                                    ____exit____ = true;
                                                    ____break____ = true;
                                                    break;
                                                };
                                                break;
                                            } else if ((_t != null ? _t[((1 : GoInt))] : ((0 : GoUInt8))) == ((((("B" : GoString))).code : GoRune))) {
                                                _p._op(((12 : GoUInt8)));
                                                _t = ((_t.__slice__(((2 : GoInt))) : GoString));
                                                @:break {
                                                    ____exit____ = true;
                                                    ____break____ = true;
                                                    break;
                                                };
                                                break;
                                            } else if ((_t != null ? _t[((1 : GoInt))] : ((0 : GoUInt8))) == ((((("C" : GoString))).code : GoRune))) {
                                                {
                                                    for (defer in __deferstack__) {
                                                        defer();
                                                    };
                                                    return { _0 : null, _1 : ((new T_error(((("invalid escape sequence" : GoString))), ((_t.__slice__(0, ((2 : GoInt))) : GoString))) : T_error)) };
                                                };
                                                break;
                                            } else if ((_t != null ? _t[((1 : GoInt))] : ((0 : GoUInt8))) == ((((("Q" : GoString))).code : GoRune))) {
                                                var _lit:GoString = (("" : GoString));
                                                {
                                                    var __tmp__ = stdgo.strings.Strings.cut(((_t.__slice__(((2 : GoInt))) : GoString)), "\\E");
                                                    _lit = __tmp__._0;
                                                    _t = __tmp__._1;
                                                };
                                                while (_lit != ((("" : GoString)))) {
                                                    var __tmp__ = _nextRune(_lit), _c:GoInt32 = __tmp__._0, _rest:GoString = __tmp__._1, _err:stdgo.Error = __tmp__._2;
                                                    if (_err != null) {
                                                        {
                                                            for (defer in __deferstack__) {
                                                                defer();
                                                            };
                                                            return { _0 : null, _1 : _err };
                                                        };
                                                    };
                                                    _p._literal(_c);
                                                    _lit = _rest;
                                                };
                                                @:break {
                                                    ____exit____ = true;
                                                    ____break____ = true;
                                                    break;
                                                };
                                                break;
                                            } else if ((_t != null ? _t[((1 : GoInt))] : ((0 : GoUInt8))) == ((((("z" : GoString))).code : GoRune))) {
                                                _p._op(((10 : GoUInt8)));
                                                _t = ((_t.__slice__(((2 : GoInt))) : GoString));
                                                @:break {
                                                    ____exit____ = true;
                                                    ____break____ = true;
                                                    break;
                                                };
                                                break;
                                            };
                                            break;
                                        };
                                    };
                                };
                                var _re = _p._newRegexp(((4 : GoUInt8)));
                                _re.flags = _p._flags;
                                if (((_t != null ? _t.length : ((0 : GoInt))) >= ((2 : GoInt))) && (((_t != null ? _t[((1 : GoInt))] : ((0 : GoUInt8))) == ((((("p" : GoString))).code : GoRune))) || ((_t != null ? _t[((1 : GoInt))] : ((0 : GoUInt8))) == ((((("P" : GoString))).code : GoRune))))) {
                                    var __tmp__ = _p._parseUnicodeClass(_t, ((_re.rune0.__slice__(0, ((0 : GoInt))) : Slice<GoInt32>))), _r:Slice<GoInt32> = __tmp__._0, _rest:GoString = __tmp__._1, _err:stdgo.Error = __tmp__._2;
                                    if (_err != null) {
                                        {
                                            for (defer in __deferstack__) {
                                                defer();
                                            };
                                            return { _0 : null, _1 : _err };
                                        };
                                    };
                                    if (_r != null) {
                                        _re.rune = _r;
                                        _t = _rest;
                                        _p._push(_re);
                                        @:break {
                                            ____exit____ = true;
                                            ____break____ = true;
                                            break;
                                        };
                                    };
                                };
                                {
                                    var __tmp__ = _p._parsePerlClassEscape(_t, ((_re.rune0.__slice__(0, ((0 : GoInt))) : Slice<GoInt32>))), _r:Slice<GoInt32> = __tmp__._0, _rest:GoString = __tmp__._1;
                                    if (_r != null) {
                                        _re.rune = _r;
                                        _t = _rest;
                                        _p._push(_re);
                                        @:break {
                                            ____exit____ = true;
                                            ____break____ = true;
                                            break;
                                        };
                                    };
                                };
                                _p._reuse(_re);
                                {
                                    {
                                        var __tmp__ = _p._parseEscape(_t);
                                        _c = __tmp__._0;
                                        _t = __tmp__._1;
                                        _err = __tmp__._2;
                                    };
                                    if (_err != null) {
                                        {
                                            for (defer in __deferstack__) {
                                                defer();
                                            };
                                            return { _0 : null, _1 : _err };
                                        };
                                    };
                                };
                                _p._literal(_c);
                                break;
                            };
                            break;
                        };
                    };
                    _lastRepeat = _repeat;
                };
                _p._concat();
                if (_p._swapVerticalBar()) {
                    _p._stack = ((_p._stack.__slice__(0, (_p._stack != null ? _p._stack.length : ((0 : GoInt))) - ((1 : GoInt))) : Slice<Ref<Regexp>>));
                };
                _p._alternate();
                var _n:GoInt = (_p._stack != null ? _p._stack.length : ((0 : GoInt)));
                if (_n != ((1 : GoInt))) {
                    {
                        for (defer in __deferstack__) {
                            defer();
                        };
                        return { _0 : null, _1 : ((new T_error(((("missing closing )" : GoString))), _s) : T_error)) };
                    };
                };
                {
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return { _0 : (_p._stack != null ? _p._stack[((0 : GoInt))] : null), _1 : ((null : stdgo.Error)) };
                };
                for (defer in __deferstack__) {
                    defer();
                };
            } catch(__exception__) {
                if (!(__exception__.native is AnyInterfaceData)) throw __exception__;
                __recover_exception__ = __exception__.native;
                {
                    for (defer in __deferstack__) {
                        defer();
                    };
                    if (__recover_exception__ != null) throw __recover_exception__;
                    return { _0 : _0, _1 : _err };
                };
            };
        });
    }
function _isValidCaptureName(_name:GoString):Bool {
        if (_name == ((("" : GoString)))) {
            return false;
        };
        for (_0 => _c in _name) {
            if ((_c != ((((("_" : GoString))).code : GoRune))) && !_isalnum(_c)) {
                return false;
            };
        };
        return true;
    }
function _isCharClass(_re:Regexp):Bool {
        return ((((_re.op == ((3 : GoUInt8))) && ((_re.rune != null ? _re.rune.length : ((0 : GoInt))) == ((1 : GoInt)))) || (_re.op == ((4 : GoUInt8)))) || (_re.op == ((5 : GoUInt8)))) || (_re.op == ((6 : GoUInt8)));
    }
function _matchRune(_re:Regexp, _r:GoRune):Bool {
        if (_re.op == ((3 : GoUInt8))) {
            return ((_re.rune != null ? _re.rune.length : ((0 : GoInt))) == ((1 : GoInt))) && ((_re.rune != null ? _re.rune[((0 : GoInt))] : ((0 : GoInt32))) == _r);
        } else if (_re.op == ((4 : GoUInt8))) {
            {
                var _i:GoInt = ((0 : GoInt));
                Go.cfor(_i < (_re.rune != null ? _re.rune.length : ((0 : GoInt))), _i = _i + (((2 : GoInt))), {
                    if (((_re.rune != null ? _re.rune[_i] : ((0 : GoInt32))) <= _r) && (_r <= (_re.rune != null ? _re.rune[_i + ((1 : GoInt))] : ((0 : GoInt32))))) {
                        return true;
                    };
                });
            };
            return false;
        } else if (_re.op == ((5 : GoUInt8))) {
            return _r != ((((("\n" : GoString))).code : GoRune));
        } else if (_re.op == ((6 : GoUInt8))) {
            return true;
        };
        return false;
    }
function _mergeCharClass(_dst:Regexp, _src:Regexp):Void {
        {
            var __switchIndex__ = -1;
            while (true) {
                if (_dst.op == ((6 : GoUInt8))) {
                    break;
                } else if (_dst.op == ((5 : GoUInt8))) {
                    if (_matchRune(_src, ((((("\n" : GoString))).code : GoRune)))) {
                        _dst.op = ((6 : GoUInt8));
                    };
                    break;
                } else if (_dst.op == ((4 : GoUInt8))) {
                    if (_src.op == ((3 : GoUInt8))) {
                        _dst.rune = _appendLiteral(_dst.rune, (_src.rune != null ? _src.rune[((0 : GoInt))] : ((0 : GoInt32))), _src.flags);
                    } else {
                        _dst.rune = _appendClass(_dst.rune, _src.rune);
                    };
                    break;
                } else if (_dst.op == ((3 : GoUInt8))) {
                    if (((_src.rune != null ? _src.rune[((0 : GoInt))] : ((0 : GoInt32))) == (_dst.rune != null ? _dst.rune[((0 : GoInt))] : ((0 : GoInt32)))) && (_src.flags == _dst.flags)) {
                        break;
                    };
                    _dst.op = ((4 : GoUInt8));
                    _dst.rune = _appendLiteral(((_dst.rune.__slice__(0, ((0 : GoInt))) : Slice<GoInt32>)), (_dst.rune != null ? _dst.rune[((0 : GoInt))] : ((0 : GoInt32))), _dst.flags);
                    _dst.rune = _appendLiteral(_dst.rune, (_src.rune != null ? _src.rune[((0 : GoInt))] : ((0 : GoInt32))), _src.flags);
                    break;
                };
                break;
            };
        };
    }
function _unicodeTable(_name:GoString):{ var _0 : stdgo.unicode.Unicode.RangeTable; var _1 : stdgo.unicode.Unicode.RangeTable; } {
        if (_name == ((("Any" : GoString)))) {
            return { _0 : _anyTable, _1 : _anyTable };
        };
        {
            var _t = (stdgo.unicode.Unicode.categories != null ? stdgo.unicode.Unicode.categories[_name] : null);
            if (_t != null) {
                return { _0 : _t, _1 : (stdgo.unicode.Unicode.foldCategory != null ? stdgo.unicode.Unicode.foldCategory[_name] : null) };
            };
        };
        {
            var _t = (stdgo.unicode.Unicode.scripts != null ? stdgo.unicode.Unicode.scripts[_name] : null);
            if (_t != null) {
                return { _0 : _t, _1 : (stdgo.unicode.Unicode.foldScript != null ? stdgo.unicode.Unicode.foldScript[_name] : null) };
            };
        };
        return { _0 : null, _1 : null };
    }
function _cleanClass(_rp:Slice<GoRune>):Slice<GoRune> {
        stdgo.sort.Sort.sort(((new T_ranges(_rp) : T_ranges)));
        var _r = _rp;
        if ((_r != null ? _r.length : ((0 : GoInt))) < ((2 : GoInt))) {
            return _r;
        };
        var _w:GoInt = ((2 : GoInt));
        {
            var _i:GoInt = ((2 : GoInt));
            Go.cfor(_i < (_r != null ? _r.length : ((0 : GoInt))), _i = _i + (((2 : GoInt))), {
                var _lo:GoInt32 = (_r != null ? _r[_i] : ((0 : GoInt32))), _hi:GoInt32 = (_r != null ? _r[_i + ((1 : GoInt))] : ((0 : GoInt32)));
                if (_lo <= ((_r != null ? _r[_w - ((1 : GoInt))] : ((0 : GoInt32))) + ((1 : GoInt32)))) {
                    if (_hi > (_r != null ? _r[_w - ((1 : GoInt))] : ((0 : GoInt32)))) {
                        if (_r != null) _r[_w - ((1 : GoInt))] = _hi;
                    };
                    continue;
                };
                if (_r != null) _r[_w] = _lo;
                if (_r != null) _r[_w + ((1 : GoInt))] = _hi;
                _w = _w + (((2 : GoInt)));
            });
        };
        return ((_r.__slice__(0, _w) : Slice<GoInt32>));
    }
function _appendLiteral(_r:Slice<GoRune>, _x:GoRune, _flags:Flags):Slice<GoRune> {
        if ((_flags & ((1 : GoUInt16))) != ((0 : GoUInt16))) {
            return _appendFoldedRange(_r, _x, _x);
        };
        return _appendRange(_r, _x, _x);
    }
function _appendRange(_r:Slice<GoRune>, _lo:GoRune, _hi:GoRune):Slice<GoRune> {
        var _n:GoInt = (_r != null ? _r.length : ((0 : GoInt)));
        {
            var _i:GoInt = ((2 : GoInt));
            Go.cfor(_i <= ((4 : GoInt)), _i = _i + (((2 : GoInt))), {
                if (_n >= _i) {
                    var _rlo:GoInt32 = (_r != null ? _r[_n - _i] : ((0 : GoInt32))), _rhi:GoInt32 = (_r != null ? _r[(_n - _i) + ((1 : GoInt))] : ((0 : GoInt32)));
                    if ((_lo <= (_rhi + ((1 : GoInt32)))) && (_rlo <= (_hi + ((1 : GoInt32))))) {
                        if (_lo < _rlo) {
                            if (_r != null) _r[_n - _i] = _lo;
                        };
                        if (_hi > _rhi) {
                            if (_r != null) _r[(_n - _i) + ((1 : GoInt))] = _hi;
                        };
                        return _r;
                    };
                };
            });
        };
        return (_r != null ? _r.__append__(_lo, _hi) : new Slice<GoInt32>(_lo, _hi));
    }
function _appendFoldedRange(_r:Slice<GoRune>, _lo:GoRune, _hi:GoRune):Slice<GoRune> {
        if ((_lo <= ((65 : GoInt32))) && (_hi >= ((125251 : GoInt32)))) {
            return _appendRange(_r, _lo, _hi);
        };
        if ((_hi < ((65 : GoInt32))) || (_lo > ((125251 : GoInt32)))) {
            return _appendRange(_r, _lo, _hi);
        };
        if (_lo < ((65 : GoInt32))) {
            _r = _appendRange(_r, _lo, ((64 : GoInt32)));
            _lo = ((65 : GoInt32));
        };
        if (_hi > ((125251 : GoInt32))) {
            _r = _appendRange(_r, ((125252 : GoInt32)), _hi);
            _hi = ((125251 : GoInt32));
        };
        {
            var _c:GoInt32 = _lo;
            Go.cfor(_c <= _hi, _c++, {
                _r = _appendRange(_r, _c, _c);
                var _f:GoInt32 = stdgo.unicode.Unicode.simpleFold(_c);
                while (_f != _c) {
                    _r = _appendRange(_r, _f, _f);
                    _f = stdgo.unicode.Unicode.simpleFold(_f);
                };
            });
        };
        return _r;
    }
function _appendClass(_r:Slice<GoRune>, _x:Slice<GoRune>):Slice<GoRune> {
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < (_x != null ? _x.length : ((0 : GoInt))), _i = _i + (((2 : GoInt))), {
                _r = _appendRange(_r, (_x != null ? _x[_i] : ((0 : GoInt32))), (_x != null ? _x[_i + ((1 : GoInt))] : ((0 : GoInt32))));
            });
        };
        return _r;
    }
function _appendFoldedClass(_r:Slice<GoRune>, _x:Slice<GoRune>):Slice<GoRune> {
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < (_x != null ? _x.length : ((0 : GoInt))), _i = _i + (((2 : GoInt))), {
                _r = _appendFoldedRange(_r, (_x != null ? _x[_i] : ((0 : GoInt32))), (_x != null ? _x[_i + ((1 : GoInt))] : ((0 : GoInt32))));
            });
        };
        return _r;
    }
function _appendNegatedClass(_r:Slice<GoRune>, _x:Slice<GoRune>):Slice<GoRune> {
        var _nextLo:GoInt32 = ((((("\u0000" : GoString))).code : GoRune));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < (_x != null ? _x.length : ((0 : GoInt))), _i = _i + (((2 : GoInt))), {
                var _lo:GoInt32 = (_x != null ? _x[_i] : ((0 : GoInt32))), _hi:GoInt32 = (_x != null ? _x[_i + ((1 : GoInt))] : ((0 : GoInt32)));
                if (_nextLo <= (_lo - ((1 : GoInt32)))) {
                    _r = _appendRange(_r, _nextLo, _lo - ((1 : GoInt32)));
                };
                _nextLo = _hi + ((1 : GoInt32));
            });
        };
        if (_nextLo <= ((1114111 : GoInt32))) {
            _r = _appendRange(_r, _nextLo, ((1114111 : GoInt32)));
        };
        return _r;
    }
function _appendTable(_r:Slice<GoRune>, _x:stdgo.unicode.Unicode.RangeTable):Slice<GoRune> {
        for (_0 => _xr in _x.r16) {
            var _lo:GoInt32 = ((_xr.lo : GoRune)), _hi:GoInt32 = ((_xr.hi : GoRune)), _stride:GoInt32 = ((_xr.stride : GoRune));
            if (_stride == ((1 : GoInt32))) {
                _r = _appendRange(_r, _lo, _hi);
                continue;
            };
            {
                var _c:GoInt32 = _lo;
                Go.cfor(_c <= _hi, _c = _c + (_stride), {
                    _r = _appendRange(_r, _c, _c);
                });
            };
        };
        for (_1 => _xr in _x.r32) {
            var _lo:GoInt32 = ((_xr.lo : GoRune)), _hi:GoInt32 = ((_xr.hi : GoRune)), _stride:GoInt32 = ((_xr.stride : GoRune));
            if (_stride == ((1 : GoInt32))) {
                _r = _appendRange(_r, _lo, _hi);
                continue;
            };
            {
                var _c:GoInt32 = _lo;
                Go.cfor(_c <= _hi, _c = _c + (_stride), {
                    _r = _appendRange(_r, _c, _c);
                });
            };
        };
        return _r;
    }
function _appendNegatedTable(_r:Slice<GoRune>, _x:stdgo.unicode.Unicode.RangeTable):Slice<GoRune> {
        var _nextLo:GoInt32 = ((((("\u0000" : GoString))).code : GoRune));
        for (_0 => _xr in _x.r16) {
            var _lo:GoInt32 = ((_xr.lo : GoRune)), _hi:GoInt32 = ((_xr.hi : GoRune)), _stride:GoInt32 = ((_xr.stride : GoRune));
            if (_stride == ((1 : GoInt32))) {
                if (_nextLo <= (_lo - ((1 : GoInt32)))) {
                    _r = _appendRange(_r, _nextLo, _lo - ((1 : GoInt32)));
                };
                _nextLo = _hi + ((1 : GoInt32));
                continue;
            };
            {
                var _c:GoInt32 = _lo;
                Go.cfor(_c <= _hi, _c = _c + (_stride), {
                    if (_nextLo <= (_c - ((1 : GoInt32)))) {
                        _r = _appendRange(_r, _nextLo, _c - ((1 : GoInt32)));
                    };
                    _nextLo = _c + ((1 : GoInt32));
                });
            };
        };
        for (_1 => _xr in _x.r32) {
            var _lo:GoInt32 = ((_xr.lo : GoRune)), _hi:GoInt32 = ((_xr.hi : GoRune)), _stride:GoInt32 = ((_xr.stride : GoRune));
            if (_stride == ((1 : GoInt32))) {
                if (_nextLo <= (_lo - ((1 : GoInt32)))) {
                    _r = _appendRange(_r, _nextLo, _lo - ((1 : GoInt32)));
                };
                _nextLo = _hi + ((1 : GoInt32));
                continue;
            };
            {
                var _c:GoInt32 = _lo;
                Go.cfor(_c <= _hi, _c = _c + (_stride), {
                    if (_nextLo <= (_c - ((1 : GoInt32)))) {
                        _r = _appendRange(_r, _nextLo, _c - ((1 : GoInt32)));
                    };
                    _nextLo = _c + ((1 : GoInt32));
                });
            };
        };
        if (_nextLo <= ((1114111 : GoInt32))) {
            _r = _appendRange(_r, _nextLo, ((1114111 : GoInt32)));
        };
        return _r;
    }
function _negateClass(_r:Slice<GoRune>):Slice<GoRune> {
        var _nextLo:GoInt32 = ((((("\u0000" : GoString))).code : GoRune));
        var _w:GoInt = ((0 : GoInt));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < (_r != null ? _r.length : ((0 : GoInt))), _i = _i + (((2 : GoInt))), {
                var _lo:GoInt32 = (_r != null ? _r[_i] : ((0 : GoInt32))), _hi:GoInt32 = (_r != null ? _r[_i + ((1 : GoInt))] : ((0 : GoInt32)));
                if (_nextLo <= (_lo - ((1 : GoInt32)))) {
                    if (_r != null) _r[_w] = _nextLo;
                    if (_r != null) _r[_w + ((1 : GoInt))] = _lo - ((1 : GoInt32));
                    _w = _w + (((2 : GoInt)));
                };
                _nextLo = _hi + ((1 : GoInt32));
            });
        };
        _r = ((_r.__slice__(0, _w) : Slice<GoInt32>));
        if (_nextLo <= ((1114111 : GoInt32))) {
            _r = (_r != null ? _r.__append__(_nextLo, ((1114111 : GoInt32))) : new Slice<GoInt32>(_nextLo, ((1114111 : GoInt32))));
        };
        return _r;
    }
function _checkUTF8(_s:GoString):Error {
        while (_s != ((("" : GoString)))) {
            var __tmp__ = stdgo.unicode.utf8.Utf8.decodeRuneInString(_s), _rune:GoInt32 = __tmp__._0, _size:GoInt = __tmp__._1;
            if ((_rune == ((65533 : GoInt32))) && (_size == ((1 : GoInt)))) {
                return (({ code : ((("invalid UTF-8" : GoString))), expr : _s } : T_error));
            };
            _s = ((_s.__slice__(_size) : GoString));
        };
        return ((null : stdgo.Error));
    }
function _nextRune(_s:GoString):{ var _0 : GoRune; var _1 : GoString; var _2 : Error; } {
        var _c:GoRune = ((0 : GoInt32)), _t:GoString = (("" : GoString)), _err:Error = ((null : stdgo.Error));
        var __tmp__ = stdgo.unicode.utf8.Utf8.decodeRuneInString(_s), _c:GoInt32 = __tmp__._0, _size:GoInt = __tmp__._1;
        if ((_c == ((65533 : GoInt32))) && (_size == ((1 : GoInt)))) {
            return { _0 : ((0 : GoInt32)), _1 : ((("" : GoString))), _2 : (({ code : ((("invalid UTF-8" : GoString))), expr : _s } : T_error)) };
        };
        return { _0 : _c, _1 : ((_s.__slice__(_size) : GoString)), _2 : ((null : stdgo.Error)) };
    }
function _isalnum(_c:GoRune):Bool {
        return (((((((("0" : GoString))).code : GoRune)) <= _c) && (_c <= ((((("9" : GoString))).code : GoRune)))) || ((((((("A" : GoString))).code : GoRune)) <= _c) && (_c <= ((((("Z" : GoString))).code : GoRune))))) || ((((((("a" : GoString))).code : GoRune)) <= _c) && (_c <= ((((("z" : GoString))).code : GoRune))));
    }
function _unhex(_c:GoRune):GoRune {
        if ((((((("0" : GoString))).code : GoRune)) <= _c) && (_c <= ((((("9" : GoString))).code : GoRune)))) {
            return _c - ((((("0" : GoString))).code : GoRune));
        };
        if ((((((("a" : GoString))).code : GoRune)) <= _c) && (_c <= ((((("f" : GoString))).code : GoRune)))) {
            return (_c - ((((("a" : GoString))).code : GoRune))) + ((10 : GoInt32));
        };
        if ((((((("A" : GoString))).code : GoRune)) <= _c) && (_c <= ((((("F" : GoString))).code : GoRune)))) {
            return (_c - ((((("A" : GoString))).code : GoRune))) + ((10 : GoInt32));
        };
        return ((-1 : GoInt32));
    }
function emptyOpContext(_r1:GoRune, _r2:GoRune):EmptyOp {
        var _op:EmptyOp = ((32 : GoUInt8));
        var _boundary:GoByte = ((0 : GoUInt8));
        if (isWordChar(_r1)) {
            _boundary = ((1 : GoUInt8));
        } else if (_r1 == ((((("\n" : GoString))).code : GoRune))) {
            _op = _op | (((1 : GoUInt8)));
        } else if (_r1 < ((0 : GoInt32))) {
            _op = _op | (((5 : GoUInt8)));
        };
        if (isWordChar(_r2)) {
            _boundary = _boundary ^ (((1 : GoUInt8)));
        } else if (_r2 == ((((("\n" : GoString))).code : GoRune))) {
            _op = _op | (((2 : GoUInt8)));
        } else if (_r2 < ((0 : GoInt32))) {
            _op = _op | (((10 : GoUInt8)));
        };
        if (_boundary != ((0 : GoUInt8))) {
            _op = _op ^ (((48 : GoUInt8)));
        };
        return _op;
    }
function isWordChar(_r:GoRune):Bool {
        return ((((((((("A" : GoString))).code : GoRune)) <= _r) && (_r <= ((((("Z" : GoString))).code : GoRune)))) || ((((((("a" : GoString))).code : GoRune)) <= _r) && (_r <= ((((("z" : GoString))).code : GoRune))))) || ((((((("0" : GoString))).code : GoRune)) <= _r) && (_r <= ((((("9" : GoString))).code : GoRune))))) || (_r == ((((("_" : GoString))).code : GoRune)));
    }
function _bw(_b:stdgo.strings.Strings.Builder, _args:haxe.Rest<GoString>):Void {
        var _args = new Slice<GoString>(..._args);
        for (_0 => _s in _args) {
            _b.writeString(_s);
        };
    }
function _dumpProg(_b:stdgo.strings.Strings.Builder, _p:Prog):Void {
        for (_j => _ in _p.inst) {
            var _i = (_p.inst != null ? _p.inst[_j] : new Inst());
            var _pc:GoString = stdgo.strconv.Strconv.itoa(_j);
            if ((_pc != null ? _pc.length : ((0 : GoInt))) < ((3 : GoInt))) {
                _b.writeString(((((("   " : GoString))).__slice__((_pc != null ? _pc.length : ((0 : GoInt)))) : GoString)));
            };
            if (_j == _p.start) {
                _pc = _pc + (((("*" : GoString))));
            };
            _bw(_b, _pc, ((("\t" : GoString))));
            _dumpInst(_b, _i);
            _bw(_b, ((("\n" : GoString))));
        };
    }
function _u32(_i:GoUInt32):GoString {
        return stdgo.strconv.Strconv.formatUint(((_i : GoUInt64)), ((10 : GoInt)));
    }
function _dumpInst(_b:stdgo.strings.Strings.Builder, _i:Inst):Void {
        if (_i.op == ((0 : GoUInt8))) {
            _bw(_b, ((("alt -> " : GoString))), _u32(_i.out), (((", " : GoString))), _u32(_i.arg));
        } else if (_i.op == ((1 : GoUInt8))) {
            _bw(_b, ((("altmatch -> " : GoString))), _u32(_i.out), (((", " : GoString))), _u32(_i.arg));
        } else if (_i.op == ((2 : GoUInt8))) {
            _bw(_b, ((("cap " : GoString))), _u32(_i.arg), (((" -> " : GoString))), _u32(_i.out));
        } else if (_i.op == ((3 : GoUInt8))) {
            _bw(_b, ((("empty " : GoString))), _u32(_i.arg), (((" -> " : GoString))), _u32(_i.out));
        } else if (_i.op == ((4 : GoUInt8))) {
            _bw(_b, ((("match" : GoString))));
        } else if (_i.op == ((5 : GoUInt8))) {
            _bw(_b, ((("fail" : GoString))));
        } else if (_i.op == ((6 : GoUInt8))) {
            _bw(_b, ((("nop -> " : GoString))), _u32(_i.out));
        } else if (_i.op == ((7 : GoUInt8))) {
            if (_i.rune == null) {
                _bw(_b, ((("rune <nil>" : GoString))));
            };
            _bw(_b, ((("rune " : GoString))), stdgo.strconv.Strconv.quoteToASCII(((_i.rune : GoString))));
            if ((((_i.arg : Flags)) & ((1 : GoUInt16))) != ((0 : GoUInt16))) {
                _bw(_b, ((("/i" : GoString))));
            };
            _bw(_b, (((" -> " : GoString))), _u32(_i.out));
        } else if (_i.op == ((8 : GoUInt8))) {
            _bw(_b, ((("rune1 " : GoString))), stdgo.strconv.Strconv.quoteToASCII(((_i.rune : GoString))), (((" -> " : GoString))), _u32(_i.out));
        } else if (_i.op == ((9 : GoUInt8))) {
            _bw(_b, ((("any -> " : GoString))), _u32(_i.out));
        } else if (_i.op == ((10 : GoUInt8))) {
            _bw(_b, ((("anynotnl -> " : GoString))), _u32(_i.out));
        };
    }
function _writeRegexp(_b:stdgo.strings.Strings.Builder, _re:Regexp):Void {
        if (_re.op == ((1 : GoUInt8))) {
            _b.writeString("[^\\x00-\\x{10FFFF}]");
        } else if (_re.op == ((2 : GoUInt8))) {
            _b.writeString("(?:)");
        } else if (_re.op == ((3 : GoUInt8))) {
            if ((_re.flags & ((1 : GoUInt16))) != ((0 : GoUInt16))) {
                _b.writeString("(?i:");
            };
            for (_0 => _r in _re.rune) {
                _escape(_b, _r, false);
            };
            if ((_re.flags & ((1 : GoUInt16))) != ((0 : GoUInt16))) {
                _b.writeString(")");
            };
        } else if (_re.op == ((4 : GoUInt8))) {
            if (((_re.rune != null ? _re.rune.length : ((0 : GoInt))) % ((2 : GoInt))) != ((0 : GoInt))) {
                _b.writeString("[invalid char class]");
                break;
            };
            _b.writeRune(((((("[" : GoString))).code : GoRune)));
            if ((_re.rune != null ? _re.rune.length : ((0 : GoInt))) == ((0 : GoInt))) {
                _b.writeString("^\\x00-\\x{10FFFF}");
            } else if ((((_re.rune != null ? _re.rune[((0 : GoInt))] : ((0 : GoInt32))) == ((0 : GoInt32))) && ((_re.rune != null ? _re.rune[(_re.rune != null ? _re.rune.length : ((0 : GoInt))) - ((1 : GoInt))] : ((0 : GoInt32))) == ((1114111 : GoInt32)))) && ((_re.rune != null ? _re.rune.length : ((0 : GoInt))) > ((2 : GoInt)))) {
                _b.writeRune(((((("^" : GoString))).code : GoRune)));
                {
                    var _i:GoInt = ((1 : GoInt));
                    Go.cfor(_i < ((_re.rune != null ? _re.rune.length : ((0 : GoInt))) - ((1 : GoInt))), _i = _i + (((2 : GoInt))), {
                        var _lo:GoInt32 = (_re.rune != null ? _re.rune[_i] : ((0 : GoInt32))) + ((1 : GoInt32)), _hi:GoInt32 = (_re.rune != null ? _re.rune[_i + ((1 : GoInt))] : ((0 : GoInt32))) - ((1 : GoInt32));
                        _escape(_b, _lo, _lo == ((((("-" : GoString))).code : GoRune)));
                        if (_lo != _hi) {
                            _b.writeRune(((((("-" : GoString))).code : GoRune)));
                            _escape(_b, _hi, _hi == ((((("-" : GoString))).code : GoRune)));
                        };
                    });
                };
            } else {
                {
                    var _i:GoInt = ((0 : GoInt));
                    Go.cfor(_i < (_re.rune != null ? _re.rune.length : ((0 : GoInt))), _i = _i + (((2 : GoInt))), {
                        var _lo:GoInt32 = (_re.rune != null ? _re.rune[_i] : ((0 : GoInt32))), _hi:GoInt32 = (_re.rune != null ? _re.rune[_i + ((1 : GoInt))] : ((0 : GoInt32)));
                        _escape(_b, _lo, _lo == ((((("-" : GoString))).code : GoRune)));
                        if (_lo != _hi) {
                            _b.writeRune(((((("-" : GoString))).code : GoRune)));
                            _escape(_b, _hi, _hi == ((((("-" : GoString))).code : GoRune)));
                        };
                    });
                };
            };
            _b.writeRune(((((("]" : GoString))).code : GoRune)));
        } else if (_re.op == ((5 : GoUInt8))) {
            _b.writeString("(?-s:.)");
        } else if (_re.op == ((6 : GoUInt8))) {
            _b.writeString("(?s:.)");
        } else if (_re.op == ((7 : GoUInt8))) {
            _b.writeString("(?m:^)");
        } else if (_re.op == ((8 : GoUInt8))) {
            _b.writeString("(?m:$)");
        } else if (_re.op == ((9 : GoUInt8))) {
            _b.writeString("\\A");
        } else if (_re.op == ((10 : GoUInt8))) {
            if ((_re.flags & ((256 : GoUInt16))) != ((0 : GoUInt16))) {
                _b.writeString("(?-m:$)");
            } else {
                _b.writeString("\\z");
            };
        } else if (_re.op == ((11 : GoUInt8))) {
            _b.writeString("\\b");
        } else if (_re.op == ((12 : GoUInt8))) {
            _b.writeString("\\B");
        } else if (_re.op == ((13 : GoUInt8))) {
            if (_re.name != ((("" : GoString)))) {
                _b.writeString("(?P<");
                _b.writeString(_re.name);
                _b.writeRune((((((">" : GoString))).code : GoRune)));
            } else {
                _b.writeRune(((((("(" : GoString))).code : GoRune)));
            };
            if ((_re.sub != null ? _re.sub[((0 : GoInt))] : null).op != ((2 : GoUInt8))) {
                _writeRegexp(_b, (_re.sub != null ? _re.sub[((0 : GoInt))] : null));
            };
            _b.writeRune((((((")" : GoString))).code : GoRune)));
        } else if (_re.op == ((14 : GoUInt8)) || _re.op == ((15 : GoUInt8)) || _re.op == ((16 : GoUInt8)) || _re.op == ((17 : GoUInt8))) {
            {
                var _sub = (_re.sub != null ? _re.sub[((0 : GoInt))] : null);
                if ((_sub.op > ((13 : GoUInt8))) || ((_sub.op == ((3 : GoUInt8))) && ((_sub.rune != null ? _sub.rune.length : ((0 : GoInt))) > ((1 : GoInt))))) {
                    _b.writeString("(?:");
                    _writeRegexp(_b, _sub);
                    _b.writeString(")");
                } else {
                    _writeRegexp(_b, _sub);
                };
            };
            if (_re.op == ((14 : GoUInt8))) {
                _b.writeRune(((((("*" : GoString))).code : GoRune)));
            } else if (_re.op == ((15 : GoUInt8))) {
                _b.writeRune(((((("+" : GoString))).code : GoRune)));
            } else if (_re.op == ((16 : GoUInt8))) {
                _b.writeRune(((((("?" : GoString))).code : GoRune)));
            } else if (_re.op == ((17 : GoUInt8))) {
                _b.writeRune(((((("{" : GoString))).code : GoRune)));
                _b.writeString(stdgo.strconv.Strconv.itoa(_re.min));
                if (_re.max != _re.min) {
                    _b.writeRune(((((("," : GoString))).code : GoRune)));
                    if (_re.max >= ((0 : GoInt))) {
                        _b.writeString(stdgo.strconv.Strconv.itoa(_re.max));
                    };
                };
                _b.writeRune(((((("}" : GoString))).code : GoRune)));
            };
            if ((_re.flags & ((32 : GoUInt16))) != ((0 : GoUInt16))) {
                _b.writeRune(((((("?" : GoString))).code : GoRune)));
            };
        } else if (_re.op == ((18 : GoUInt8))) {
            for (_1 => _sub in _re.sub) {
                if (_sub.op == ((19 : GoUInt8))) {
                    _b.writeString("(?:");
                    _writeRegexp(_b, _sub);
                    _b.writeString(")");
                } else {
                    _writeRegexp(_b, _sub);
                };
            };
        } else if (_re.op == ((19 : GoUInt8))) {
            for (_i => _sub in _re.sub) {
                if (_i > ((0 : GoInt))) {
                    _b.writeRune(((((("|" : GoString))).code : GoRune)));
                };
                _writeRegexp(_b, _sub);
            };
        };
    }
function _escape(_b:stdgo.strings.Strings.Builder, _r:GoRune, _force:Bool):Void {
        if (stdgo.unicode.Unicode.isPrint(_r)) {
            if (stdgo.strings.Strings.containsRune(((("\\.+*?()|[]{}^$$" : GoString))), _r) || _force) {
                _b.writeRune(((((("\\" : GoString))).code : GoRune)));
            };
            _b.writeRune(_r);
            return;
        };
        {
            var __switchIndex__ = -1;
            while (true) {
                if (_r == ((((("\x07" : GoString))).code : GoRune))) {
                    _b.writeString("\\a");
                    break;
                } else if (_r == ((((("\x0C" : GoString))).code : GoRune))) {
                    _b.writeString("\\f");
                    break;
                } else if (_r == ((((("\n" : GoString))).code : GoRune))) {
                    _b.writeString("\\n");
                    break;
                } else if (_r == ((((("\r" : GoString))).code : GoRune))) {
                    _b.writeString("\\r");
                    break;
                } else if (_r == ((((("\t" : GoString))).code : GoRune))) {
                    _b.writeString("\\t");
                    break;
                } else if (_r == ((((("\x0B" : GoString))).code : GoRune))) {
                    _b.writeString("\\v");
                    break;
                } else {
                    if (_r < ((256 : GoInt32))) {
                        _b.writeString("\\x");
                        var _s:GoString = stdgo.strconv.Strconv.formatInt(((_r : GoInt64)), ((16 : GoInt)));
                        if ((_s != null ? _s.length : ((0 : GoInt))) == ((1 : GoInt))) {
                            _b.writeRune(((((("0" : GoString))).code : GoRune)));
                        };
                        _b.writeString(_s);
                        break;
                    };
                    _b.writeString("\\x{");
                    _b.writeString(stdgo.strconv.Strconv.formatInt(((_r : GoInt64)), ((16 : GoInt))));
                    _b.writeString("}");
                };
                break;
            };
        };
    }
function _simplify1(_op:Op, _flags:Flags, _sub:Regexp, _re:Regexp):Regexp {
        if (_sub.op == ((2 : GoUInt8))) {
            return _sub;
        };
        if ((_op == _sub.op) && ((_flags & ((32 : GoUInt16))) == (_sub.flags & ((32 : GoUInt16))))) {
            return _sub;
        };
        if ((((_re != null) && (_re.op == _op)) && ((_re.flags & ((32 : GoUInt16))) == (_flags & ((32 : GoUInt16))))) && (_sub == (_re.sub != null ? _re.sub[((0 : GoInt))] : null))) {
            return _re;
        };
        _re = (({ op : _op, flags : _flags, sub : ((null : Slice<Ref<Regexp>>)), sub0 : new GoArray<Ref<Regexp>>(...[for (i in 0 ... 1) null]), rune : ((null : Slice<GoInt32>)), rune0 : new GoArray<GoInt32>(...[for (i in 0 ... 2) ((0 : GoInt32))]), min : 0, max : 0, cap_ : 0, name : "" } : Regexp));
        _re.sub = (((_re.sub0.__slice__(0, ((0 : GoInt))) : Slice<Ref<Regexp>>)) != null ? ((_re.sub0.__slice__(0, ((0 : GoInt))) : Slice<Ref<Regexp>>)).__append__(_sub) : new Slice<Ref<Regexp>>(_sub));
        return _re;
    }
@:keep class T_patchList_static_extension {
    @:keep
    public static function _append( _l1:T_patchList, _p:Prog, _l2:T_patchList):T_patchList {
        if (_l1._head == ((0 : GoUInt32))) {
            return (_l2 == null ? null : _l2.__copy__());
        };
        if (_l2._head == ((0 : GoUInt32))) {
            return (_l1 == null ? null : _l1.__copy__());
        };
        var _i = (_p.inst != null ? _p.inst[_l1._tail >> ((1 : GoUnTypedInt))] : new Inst());
        if ((_l1._tail & ((1 : GoUInt32))) == ((0 : GoUInt32))) {
            _i.out = _l2._head;
        } else {
            _i.arg = _l2._head;
        };
        return ((new T_patchList(_l1._head, _l2._tail) : T_patchList));
    }
    @:keep
    public static function _patch( _l:T_patchList, _p:Prog, _val:GoUInt32):Void {
        var _head:GoUInt32 = _l._head;
        while (_head != ((0 : GoUInt32))) {
            var _i = (_p.inst != null ? _p.inst[_head >> ((1 : GoUnTypedInt))] : new Inst());
            if ((_head & ((1 : GoUInt32))) == ((0 : GoUInt32))) {
                _head = _i.out;
                _i.out = _val;
            } else {
                _head = _i.arg;
                _i.arg = _val;
            };
        };
    }
}
@:keep class T_compiler_static_extension {
    @:keep
    public static function _rune( _c:T_compiler, _r:Slice<GoRune>, _flags:Flags):T_frag {
        var _f:T_frag = (_c._inst(((7 : GoUInt8))) == null ? null : _c._inst(((7 : GoUInt8))).__copy__());
        _f._nullable = false;
        var _i = (_c._p.inst != null ? _c._p.inst[_f._i] : new Inst());
        _i.rune = _r;
        _flags = _flags & (((1 : GoUInt16)));
        if (((_r != null ? _r.length : ((0 : GoInt))) != ((1 : GoInt))) || (stdgo.unicode.Unicode.simpleFold((_r != null ? _r[((0 : GoInt))] : ((0 : GoInt32)))) == (_r != null ? _r[((0 : GoInt))] : ((0 : GoInt32))))) {
            _flags = _flags & ((((1 : GoUInt16))) ^ ((-1 : GoUnTypedInt)));
        };
        _i.arg = ((_flags : GoUInt32));
        _f._out = (_makePatchList(_f._i << ((1 : GoUnTypedInt))) == null ? null : _makePatchList(_f._i << ((1 : GoUnTypedInt))).__copy__());
        if (((_flags & ((1 : GoUInt16))) == ((0 : GoUInt16))) && (((_r != null ? _r.length : ((0 : GoInt))) == ((1 : GoInt))) || (((_r != null ? _r.length : ((0 : GoInt))) == ((2 : GoInt))) && ((_r != null ? _r[((0 : GoInt))] : ((0 : GoInt32))) == (_r != null ? _r[((1 : GoInt))] : ((0 : GoInt32))))))) {
            _i.op = ((8 : GoUInt8));
        } else if ((((_r != null ? _r.length : ((0 : GoInt))) == ((2 : GoInt))) && ((_r != null ? _r[((0 : GoInt))] : ((0 : GoInt32))) == ((0 : GoInt32)))) && ((_r != null ? _r[((1 : GoInt))] : ((0 : GoInt32))) == ((1114111 : GoInt32)))) {
            _i.op = ((9 : GoUInt8));
        } else if ((((((_r != null ? _r.length : ((0 : GoInt))) == ((4 : GoInt))) && ((_r != null ? _r[((0 : GoInt))] : ((0 : GoInt32))) == ((0 : GoInt32)))) && ((_r != null ? _r[((1 : GoInt))] : ((0 : GoInt32))) == ((9 : GoInt32)))) && ((_r != null ? _r[((2 : GoInt))] : ((0 : GoInt32))) == ((11 : GoInt32)))) && ((_r != null ? _r[((3 : GoInt))] : ((0 : GoInt32))) == ((1114111 : GoInt32)))) {
            _i.op = ((10 : GoUInt8));
        };
        return (_f == null ? null : _f.__copy__());
    }
    @:keep
    public static function _empty( _c:T_compiler, _op:EmptyOp):T_frag {
        var _f:T_frag = (_c._inst(((3 : GoUInt8))) == null ? null : _c._inst(((3 : GoUInt8))).__copy__());
        (_c._p.inst != null ? _c._p.inst[_f._i] : new Inst()).arg = ((_op : GoUInt32));
        _f._out = (_makePatchList(_f._i << ((1 : GoUnTypedInt))) == null ? null : _makePatchList(_f._i << ((1 : GoUnTypedInt))).__copy__());
        return (_f == null ? null : _f.__copy__());
    }
    @:keep
    public static function _plus( _c:T_compiler, _f1:T_frag, _nongreedy:Bool):T_frag {
        return ((new T_frag(_f1._i, (_c._loop((_f1 == null ? null : _f1.__copy__()), _nongreedy)._out == null ? null : _c._loop((_f1 == null ? null : _f1.__copy__()), _nongreedy)._out.__copy__()), _f1._nullable) : T_frag));
    }
    @:keep
    public static function _star( _c:T_compiler, _f1:T_frag, _nongreedy:Bool):T_frag {
        if (_f1._nullable) {
            return (_c._quest((_c._plus((_f1 == null ? null : _f1.__copy__()), _nongreedy) == null ? null : _c._plus((_f1 == null ? null : _f1.__copy__()), _nongreedy).__copy__()), _nongreedy) == null ? null : _c._quest((_c._plus((_f1 == null ? null : _f1.__copy__()), _nongreedy) == null ? null : _c._plus((_f1 == null ? null : _f1.__copy__()), _nongreedy).__copy__()), _nongreedy).__copy__());
        };
        return (_c._loop((_f1 == null ? null : _f1.__copy__()), _nongreedy) == null ? null : _c._loop((_f1 == null ? null : _f1.__copy__()), _nongreedy).__copy__());
    }
    @:keep
    public static function _loop( _c:T_compiler, _f1:T_frag, _nongreedy:Bool):T_frag {
        var _f:T_frag = (_c._inst(((0 : GoUInt8))) == null ? null : _c._inst(((0 : GoUInt8))).__copy__());
        var _i = (_c._p.inst != null ? _c._p.inst[_f._i] : new Inst());
        if (_nongreedy) {
            _i.arg = _f1._i;
            _f._out = (_makePatchList(_f._i << ((1 : GoUnTypedInt))) == null ? null : _makePatchList(_f._i << ((1 : GoUnTypedInt))).__copy__());
        } else {
            _i.out = _f1._i;
            _f._out = (_makePatchList((_f._i << ((1 : GoUnTypedInt))) | ((1 : GoUInt32))) == null ? null : _makePatchList((_f._i << ((1 : GoUnTypedInt))) | ((1 : GoUInt32))).__copy__());
        };
        _f1._out._patch(_c._p, _f._i);
        return (_f == null ? null : _f.__copy__());
    }
    @:keep
    public static function _quest( _c:T_compiler, _f1:T_frag, _nongreedy:Bool):T_frag {
        var _f:T_frag = (_c._inst(((0 : GoUInt8))) == null ? null : _c._inst(((0 : GoUInt8))).__copy__());
        var _i = (_c._p.inst != null ? _c._p.inst[_f._i] : new Inst());
        if (_nongreedy) {
            _i.arg = _f1._i;
            _f._out = (_makePatchList(_f._i << ((1 : GoUnTypedInt))) == null ? null : _makePatchList(_f._i << ((1 : GoUnTypedInt))).__copy__());
        } else {
            _i.out = _f1._i;
            _f._out = (_makePatchList((_f._i << ((1 : GoUnTypedInt))) | ((1 : GoUInt32))) == null ? null : _makePatchList((_f._i << ((1 : GoUnTypedInt))) | ((1 : GoUInt32))).__copy__());
        };
        _f._out = (_f._out._append(_c._p, (_f1._out == null ? null : _f1._out.__copy__())) == null ? null : _f._out._append(_c._p, (_f1._out == null ? null : _f1._out.__copy__())).__copy__());
        return (_f == null ? null : _f.__copy__());
    }
    @:keep
    public static function _alt( _c:T_compiler, _f1:T_frag, _f2:T_frag):T_frag {
        if (_f1._i == ((0 : GoUInt32))) {
            return (_f2 == null ? null : _f2.__copy__());
        };
        if (_f2._i == ((0 : GoUInt32))) {
            return (_f1 == null ? null : _f1.__copy__());
        };
        var _f:T_frag = (_c._inst(((0 : GoUInt8))) == null ? null : _c._inst(((0 : GoUInt8))).__copy__());
        var _i = (_c._p.inst != null ? _c._p.inst[_f._i] : new Inst());
        _i.out = _f1._i;
        _i.arg = _f2._i;
        _f._out = (_f1._out._append(_c._p, (_f2._out == null ? null : _f2._out.__copy__())) == null ? null : _f1._out._append(_c._p, (_f2._out == null ? null : _f2._out.__copy__())).__copy__());
        _f._nullable = _f1._nullable || _f2._nullable;
        return (_f == null ? null : _f.__copy__());
    }
    @:keep
    public static function _cat( _c:T_compiler, _f1:T_frag, _f2:T_frag):T_frag {
        if ((_f1._i == ((0 : GoUInt32))) || (_f2._i == ((0 : GoUInt32)))) {
            return ((new T_frag() : T_frag));
        };
        _f1._out._patch(_c._p, _f2._i);
        return ((new T_frag(_f1._i, (_f2._out == null ? null : _f2._out.__copy__()), _f1._nullable && _f2._nullable) : T_frag));
    }
    @:keep
    public static function _cap( _c:T_compiler, _arg:GoUInt32):T_frag {
        var _f:T_frag = (_c._inst(((2 : GoUInt8))) == null ? null : _c._inst(((2 : GoUInt8))).__copy__());
        _f._out = (_makePatchList(_f._i << ((1 : GoUnTypedInt))) == null ? null : _makePatchList(_f._i << ((1 : GoUnTypedInt))).__copy__());
        (_c._p.inst != null ? _c._p.inst[_f._i] : new Inst()).arg = _arg;
        if (_c._p.numCap < (((_arg : GoInt)) + ((1 : GoInt)))) {
            _c._p.numCap = ((_arg : GoInt)) + ((1 : GoInt));
        };
        return (_f == null ? null : _f.__copy__());
    }
    @:keep
    public static function _fail( _c:T_compiler):T_frag {
        return ((new T_frag() : T_frag));
    }
    @:keep
    public static function _nop( _c:T_compiler):T_frag {
        var _f:T_frag = (_c._inst(((6 : GoUInt8))) == null ? null : _c._inst(((6 : GoUInt8))).__copy__());
        _f._out = (_makePatchList(_f._i << ((1 : GoUnTypedInt))) == null ? null : _makePatchList(_f._i << ((1 : GoUnTypedInt))).__copy__());
        return (_f == null ? null : _f.__copy__());
    }
    @:keep
    public static function _inst( _c:T_compiler, _op:InstOp):T_frag {
        var _f:T_frag = (({ _i : (((_c._p.inst != null ? _c._p.inst.length : ((0 : GoInt))) : GoUInt32)), _nullable : true, _out : new T_patchList() } : T_frag));
        _c._p.inst = (_c._p.inst != null ? _c._p.inst.__append__((({ op : _op, out : 0, arg : 0, rune : ((null : Slice<GoInt32>)) } : Inst))) : new Slice<Inst>((({ op : _op, out : 0, arg : 0, rune : ((null : Slice<GoInt32>)) } : Inst))));
        return (_f == null ? null : _f.__copy__());
    }
    @:keep
    public static function _compile( _c:T_compiler, _re:Regexp):T_frag {
        if (_re.op == ((1 : GoUInt8))) {
            return (_c._fail() == null ? null : _c._fail().__copy__());
        } else if (_re.op == ((2 : GoUInt8))) {
            return (_c._nop() == null ? null : _c._nop().__copy__());
        } else if (_re.op == ((3 : GoUInt8))) {
            if ((_re.rune != null ? _re.rune.length : ((0 : GoInt))) == ((0 : GoInt))) {
                return (_c._nop() == null ? null : _c._nop().__copy__());
            };
            var _f:T_frag = new T_frag();
            for (_j => _ in _re.rune) {
                var _f1:T_frag = (_c._rune(((_re.rune.__slice__(_j, _j + ((1 : GoInt))) : Slice<GoInt32>)), _re.flags) == null ? null : _c._rune(((_re.rune.__slice__(_j, _j + ((1 : GoInt))) : Slice<GoInt32>)), _re.flags).__copy__());
                if (_j == ((0 : GoInt))) {
                    _f = (_f1 == null ? null : _f1.__copy__());
                } else {
                    _f = (_c._cat((_f == null ? null : _f.__copy__()), (_f1 == null ? null : _f1.__copy__())) == null ? null : _c._cat((_f == null ? null : _f.__copy__()), (_f1 == null ? null : _f1.__copy__())).__copy__());
                };
            };
            return (_f == null ? null : _f.__copy__());
        } else if (_re.op == ((4 : GoUInt8))) {
            return (_c._rune(_re.rune, _re.flags) == null ? null : _c._rune(_re.rune, _re.flags).__copy__());
        } else if (_re.op == ((5 : GoUInt8))) {
            return (_c._rune(_anyRuneNotNL, ((0 : GoUInt16))) == null ? null : _c._rune(_anyRuneNotNL, ((0 : GoUInt16))).__copy__());
        } else if (_re.op == ((6 : GoUInt8))) {
            return (_c._rune(_anyRune, ((0 : GoUInt16))) == null ? null : _c._rune(_anyRune, ((0 : GoUInt16))).__copy__());
        } else if (_re.op == ((7 : GoUInt8))) {
            return (_c._empty(((1 : GoUInt8))) == null ? null : _c._empty(((1 : GoUInt8))).__copy__());
        } else if (_re.op == ((8 : GoUInt8))) {
            return (_c._empty(((2 : GoUInt8))) == null ? null : _c._empty(((2 : GoUInt8))).__copy__());
        } else if (_re.op == ((9 : GoUInt8))) {
            return (_c._empty(((4 : GoUInt8))) == null ? null : _c._empty(((4 : GoUInt8))).__copy__());
        } else if (_re.op == ((10 : GoUInt8))) {
            return (_c._empty(((8 : GoUInt8))) == null ? null : _c._empty(((8 : GoUInt8))).__copy__());
        } else if (_re.op == ((11 : GoUInt8))) {
            return (_c._empty(((16 : GoUInt8))) == null ? null : _c._empty(((16 : GoUInt8))).__copy__());
        } else if (_re.op == ((12 : GoUInt8))) {
            return (_c._empty(((32 : GoUInt8))) == null ? null : _c._empty(((32 : GoUInt8))).__copy__());
        } else if (_re.op == ((13 : GoUInt8))) {
            var _bra:T_frag = (_c._cap((((_re.cap_ << ((1 : GoUnTypedInt))) : GoUInt32))) == null ? null : _c._cap((((_re.cap_ << ((1 : GoUnTypedInt))) : GoUInt32))).__copy__());
            var _sub:T_frag = (_c._compile((_re.sub != null ? _re.sub[((0 : GoInt))] : null)) == null ? null : _c._compile((_re.sub != null ? _re.sub[((0 : GoInt))] : null)).__copy__());
            var _ket:T_frag = (_c._cap(((((_re.cap_ << ((1 : GoUnTypedInt))) | ((1 : GoInt))) : GoUInt32))) == null ? null : _c._cap(((((_re.cap_ << ((1 : GoUnTypedInt))) | ((1 : GoInt))) : GoUInt32))).__copy__());
            return (_c._cat((_c._cat((_bra == null ? null : _bra.__copy__()), (_sub == null ? null : _sub.__copy__())) == null ? null : _c._cat((_bra == null ? null : _bra.__copy__()), (_sub == null ? null : _sub.__copy__())).__copy__()), (_ket == null ? null : _ket.__copy__())) == null ? null : _c._cat((_c._cat((_bra == null ? null : _bra.__copy__()), (_sub == null ? null : _sub.__copy__())) == null ? null : _c._cat((_bra == null ? null : _bra.__copy__()), (_sub == null ? null : _sub.__copy__())).__copy__()), (_ket == null ? null : _ket.__copy__())).__copy__());
        } else if (_re.op == ((14 : GoUInt8))) {
            return (_c._star((_c._compile((_re.sub != null ? _re.sub[((0 : GoInt))] : null)) == null ? null : _c._compile((_re.sub != null ? _re.sub[((0 : GoInt))] : null)).__copy__()), (_re.flags & ((32 : GoUInt16))) != ((0 : GoUInt16))) == null ? null : _c._star((_c._compile((_re.sub != null ? _re.sub[((0 : GoInt))] : null)) == null ? null : _c._compile((_re.sub != null ? _re.sub[((0 : GoInt))] : null)).__copy__()), (_re.flags & ((32 : GoUInt16))) != ((0 : GoUInt16))).__copy__());
        } else if (_re.op == ((15 : GoUInt8))) {
            return (_c._plus((_c._compile((_re.sub != null ? _re.sub[((0 : GoInt))] : null)) == null ? null : _c._compile((_re.sub != null ? _re.sub[((0 : GoInt))] : null)).__copy__()), (_re.flags & ((32 : GoUInt16))) != ((0 : GoUInt16))) == null ? null : _c._plus((_c._compile((_re.sub != null ? _re.sub[((0 : GoInt))] : null)) == null ? null : _c._compile((_re.sub != null ? _re.sub[((0 : GoInt))] : null)).__copy__()), (_re.flags & ((32 : GoUInt16))) != ((0 : GoUInt16))).__copy__());
        } else if (_re.op == ((16 : GoUInt8))) {
            return (_c._quest((_c._compile((_re.sub != null ? _re.sub[((0 : GoInt))] : null)) == null ? null : _c._compile((_re.sub != null ? _re.sub[((0 : GoInt))] : null)).__copy__()), (_re.flags & ((32 : GoUInt16))) != ((0 : GoUInt16))) == null ? null : _c._quest((_c._compile((_re.sub != null ? _re.sub[((0 : GoInt))] : null)) == null ? null : _c._compile((_re.sub != null ? _re.sub[((0 : GoInt))] : null)).__copy__()), (_re.flags & ((32 : GoUInt16))) != ((0 : GoUInt16))).__copy__());
        } else if (_re.op == ((18 : GoUInt8))) {
            if ((_re.sub != null ? _re.sub.length : ((0 : GoInt))) == ((0 : GoInt))) {
                return (_c._nop() == null ? null : _c._nop().__copy__());
            };
            var _f:T_frag = new T_frag();
            for (_i => _sub in _re.sub) {
                if (_i == ((0 : GoInt))) {
                    _f = (_c._compile(_sub) == null ? null : _c._compile(_sub).__copy__());
                } else {
                    _f = (_c._cat((_f == null ? null : _f.__copy__()), (_c._compile(_sub) == null ? null : _c._compile(_sub).__copy__())) == null ? null : _c._cat((_f == null ? null : _f.__copy__()), (_c._compile(_sub) == null ? null : _c._compile(_sub).__copy__())).__copy__());
                };
            };
            return (_f == null ? null : _f.__copy__());
        } else if (_re.op == ((19 : GoUInt8))) {
            var _f:T_frag = new T_frag();
            for (_0 => _sub in _re.sub) {
                _f = (_c._alt((_f == null ? null : _f.__copy__()), (_c._compile(_sub) == null ? null : _c._compile(_sub).__copy__())) == null ? null : _c._alt((_f == null ? null : _f.__copy__()), (_c._compile(_sub) == null ? null : _c._compile(_sub).__copy__())).__copy__());
            };
            return (_f == null ? null : _f.__copy__());
        };
        throw Go.toInterface(((("regexp: unhandled case in compile" : GoString))));
    }
    @:keep
    public static function _init( _c:T_compiler):Void {
        _c._p = new Prog();
        _c._p.numCap = ((2 : GoInt));
        _c._inst(((5 : GoUInt8)));
    }
}
@:keep class T_error_static_extension {
    @:keep
    public static function error( _e:T_error):GoString {
        return (((((("error parsing regexp: " : GoString))) + ((_e.code.toString() : GoString))) + (((": `" : GoString)))) + _e.expr) + ((("`" : GoString)));
    }
}
@:keep class T_parser_static_extension {
    @:keep
    public static function _parseClass( _p:T_parser, _s:GoString):{ var _0 : GoString; var _1 : Error; } {
        var _rest:GoString = (("" : GoString)), _err:Error = ((null : stdgo.Error));
        var _t:GoString = ((_s.__slice__(((1 : GoInt))) : GoString));
        var _re = _p._newRegexp(((4 : GoUInt8)));
        _re.flags = _p._flags;
        _re.rune = ((_re.rune0.__slice__(0, ((0 : GoInt))) : Slice<GoInt32>));
        var _sign:GoInt = ((1 : GoInt));
        if ((_t != ((("" : GoString)))) && ((_t != null ? _t[((0 : GoInt))] : ((0 : GoUInt8))) == ((((("^" : GoString))).code : GoRune)))) {
            _sign = ((-1 : GoInt));
            _t = ((_t.__slice__(((1 : GoInt))) : GoString));
            if ((_p._flags & ((4 : GoUInt16))) == ((0 : GoUInt16))) {
                _re.rune = (_re.rune != null ? _re.rune.__append__(((((("\n" : GoString))).code : GoRune)), ((((("\n" : GoString))).code : GoRune))) : new Slice<GoInt32>(((((("\n" : GoString))).code : GoRune)), ((((("\n" : GoString))).code : GoRune))));
            };
        };
        var _class = _re.rune;
        var _first:Bool = true;
        while (((_t == ((("" : GoString)))) || ((_t != null ? _t[((0 : GoInt))] : ((0 : GoUInt8))) != ((((("]" : GoString))).code : GoRune)))) || _first) {
            if (((((_t != ((("" : GoString)))) && ((_t != null ? _t[((0 : GoInt))] : ((0 : GoUInt8))) == ((((("-" : GoString))).code : GoRune)))) && ((_p._flags & ((64 : GoUInt16))) == ((0 : GoUInt16)))) && !_first) && (((_t != null ? _t.length : ((0 : GoInt))) == ((1 : GoInt))) || ((_t != null ? _t[((1 : GoInt))] : ((0 : GoUInt8))) != ((((("]" : GoString))).code : GoRune))))) {
                var __tmp__ = stdgo.unicode.utf8.Utf8.decodeRuneInString(((_t.__slice__(((1 : GoInt))) : GoString))), _0:GoInt32 = __tmp__._0, _size:GoInt = __tmp__._1;
                return { _0 : ((("" : GoString))), _1 : (({ code : ((("invalid character class range" : GoString))), expr : ((_t.__slice__(0, ((1 : GoInt)) + _size) : GoString)) } : T_error)) };
            };
            _first = false;
            if ((((_t != null ? _t.length : ((0 : GoInt))) > ((2 : GoInt))) && ((_t != null ? _t[((0 : GoInt))] : ((0 : GoUInt8))) == ((((("[" : GoString))).code : GoRune)))) && ((_t != null ? _t[((1 : GoInt))] : ((0 : GoUInt8))) == (((((":" : GoString))).code : GoRune)))) {
                var __tmp__ = _p._parseNamedClass(_t, _class), _nclass:Slice<GoInt32> = __tmp__._0, _nt:GoString = __tmp__._1, _err:stdgo.Error = __tmp__._2;
                if (_err != null) {
                    return { _0 : ((("" : GoString))), _1 : _err };
                };
                if (_nclass != null) {
                    {
                        final __tmp__0 = _nclass;
                        final __tmp__1 = _nt;
                        _class = __tmp__0;
                        _t = __tmp__1;
                    };
                    continue;
                };
            };
            var __tmp__ = _p._parseUnicodeClass(_t, _class), _nclass:Slice<GoInt32> = __tmp__._0, _nt:GoString = __tmp__._1, _err:stdgo.Error = __tmp__._2;
            if (_err != null) {
                return { _0 : ((("" : GoString))), _1 : _err };
            };
            if (_nclass != null) {
                {
                    final __tmp__0 = _nclass;
                    final __tmp__1 = _nt;
                    _class = __tmp__0;
                    _t = __tmp__1;
                };
                continue;
            };
            {
                var __tmp__ = _p._parsePerlClassEscape(_t, _class), _nclass:Slice<GoInt32> = __tmp__._0, _nt:GoString = __tmp__._1;
                if (_nclass != null) {
                    {
                        final __tmp__0 = _nclass;
                        final __tmp__1 = _nt;
                        _class = __tmp__0;
                        _t = __tmp__1;
                    };
                    continue;
                };
            };
            var _rng:GoString = _t;
            var _lo:GoRune = ((0 : GoInt32)), _hi:GoRune = ((0 : GoInt32));
            {
                {
                    var __tmp__ = _p._parseClassChar(_t, _s);
                    _lo = __tmp__._0;
                    _t = __tmp__._1;
                    _err = __tmp__._2;
                };
                if (_err != null) {
                    return { _0 : ((("" : GoString))), _1 : _err };
                };
            };
            _hi = _lo;
            if ((((_t != null ? _t.length : ((0 : GoInt))) >= ((2 : GoInt))) && ((_t != null ? _t[((0 : GoInt))] : ((0 : GoUInt8))) == ((((("-" : GoString))).code : GoRune)))) && ((_t != null ? _t[((1 : GoInt))] : ((0 : GoUInt8))) != ((((("]" : GoString))).code : GoRune)))) {
                _t = ((_t.__slice__(((1 : GoInt))) : GoString));
                {
                    {
                        var __tmp__ = _p._parseClassChar(_t, _s);
                        _hi = __tmp__._0;
                        _t = __tmp__._1;
                        _err = __tmp__._2;
                    };
                    if (_err != null) {
                        return { _0 : ((("" : GoString))), _1 : _err };
                    };
                };
                if (_hi < _lo) {
                    _rng = ((_rng.__slice__(0, (_rng != null ? _rng.length : ((0 : GoInt))) - (_t != null ? _t.length : ((0 : GoInt)))) : GoString));
                    return { _0 : ((("" : GoString))), _1 : (({ code : ((("invalid character class range" : GoString))), expr : _rng } : T_error)) };
                };
            };
            if ((_p._flags & ((1 : GoUInt16))) == ((0 : GoUInt16))) {
                _class = _appendRange(_class, _lo, _hi);
            } else {
                _class = _appendFoldedRange(_class, _lo, _hi);
            };
        };
        _t = ((_t.__slice__(((1 : GoInt))) : GoString));
        _re.rune = _class;
        _class = _cleanClass(_re.rune);
        if (_sign < ((0 : GoInt))) {
            _class = _negateClass(_class);
        };
        _re.rune = _class;
        _p._push(_re);
        return { _0 : _t, _1 : ((null : stdgo.Error)) };
    }
    @:keep
    public static function _parseUnicodeClass( _p:T_parser, _s:GoString, _r:Slice<GoRune>):{ var _0 : Slice<GoRune>; var _1 : GoString; var _2 : Error; } {
        var _out:Slice<GoRune> = ((null : Slice<GoInt32>)), _rest:GoString = (("" : GoString)), _err:Error = ((null : stdgo.Error));
        if (((((_p._flags & ((128 : GoUInt16))) == ((0 : GoUInt16))) || ((_s != null ? _s.length : ((0 : GoInt))) < ((2 : GoInt)))) || ((_s != null ? _s[((0 : GoInt))] : ((0 : GoUInt8))) != ((((("\\" : GoString))).code : GoRune)))) || (((_s != null ? _s[((1 : GoInt))] : ((0 : GoUInt8))) != ((((("p" : GoString))).code : GoRune))) && ((_s != null ? _s[((1 : GoInt))] : ((0 : GoUInt8))) != ((((("P" : GoString))).code : GoRune))))) {
            return { _0 : _out, _1 : _rest, _2 : _err };
        };
        var _sign:GoInt = ((1 : GoInt));
        if ((_s != null ? _s[((1 : GoInt))] : ((0 : GoUInt8))) == ((((("P" : GoString))).code : GoRune))) {
            _sign = ((-1 : GoInt));
        };
        var _t:GoString = ((_s.__slice__(((2 : GoInt))) : GoString));
        var __tmp__ = _nextRune(_t), _c:GoInt32 = __tmp__._0, _t:GoString = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        if (_err != null) {
            return { _0 : _out, _1 : _rest, _2 : _err };
        };
        var _seq:GoString = (("" : GoString)), _name:GoString = (("" : GoString));
        if (_c != ((((("{" : GoString))).code : GoRune))) {
            _seq = ((_s.__slice__(0, (_s != null ? _s.length : ((0 : GoInt))) - (_t != null ? _t.length : ((0 : GoInt)))) : GoString));
            _name = ((_seq.__slice__(((2 : GoInt))) : GoString));
        } else {
            var _end:GoInt = stdgo.strings.Strings.indexRune(_s, ((((("}" : GoString))).code : GoRune)));
            if (_end < ((0 : GoInt))) {
                {
                    _err = _checkUTF8(_s);
                    if (_err != null) {
                        return { _0 : _out, _1 : _rest, _2 : _err };
                    };
                };
                return { _0 : ((null : Slice<GoInt32>)), _1 : ((("" : GoString))), _2 : ((new T_error(((("invalid character class range" : GoString))), _s) : T_error)) };
            };
            {
                final __tmp__0 = ((_s.__slice__(0, _end + ((1 : GoInt))) : GoString));
                final __tmp__1 = ((_s.__slice__(_end + ((1 : GoInt))) : GoString));
                _seq = __tmp__0;
                _t = __tmp__1;
            };
            _name = ((_s.__slice__(((3 : GoInt)), _end) : GoString));
            {
                _err = _checkUTF8(_name);
                if (_err != null) {
                    return { _0 : _out, _1 : _rest, _2 : _err };
                };
            };
        };
        if ((_name != ((("" : GoString)))) && ((_name != null ? _name[((0 : GoInt))] : ((0 : GoUInt8))) == ((((("^" : GoString))).code : GoRune)))) {
            _sign = -_sign;
            _name = ((_name.__slice__(((1 : GoInt))) : GoString));
        };
        var __tmp__ = _unicodeTable(_name), _tab:Ref<stdgo.unicode.Unicode.RangeTable> = __tmp__._0, _fold:Ref<stdgo.unicode.Unicode.RangeTable> = __tmp__._1;
        if (_tab == null) {
            return { _0 : ((null : Slice<GoInt32>)), _1 : ((("" : GoString))), _2 : ((new T_error(((("invalid character class range" : GoString))), _seq) : T_error)) };
        };
        if (((_p._flags & ((1 : GoUInt16))) == ((0 : GoUInt16))) || (_fold == null)) {
            if (_sign > ((0 : GoInt))) {
                _r = _appendTable(_r, _tab);
            } else {
                _r = _appendNegatedTable(_r, _tab);
            };
        } else {
            var _tmp = ((_p._tmpClass.__slice__(0, ((0 : GoInt))) : Slice<GoInt32>));
            _tmp = _appendTable(_tmp, _tab);
            _tmp = _appendTable(_tmp, _fold);
            _p._tmpClass = _tmp;
            _tmp = _cleanClass(_p._tmpClass);
            if (_sign > ((0 : GoInt))) {
                _r = _appendClass(_r, _tmp);
            } else {
                _r = _appendNegatedClass(_r, _tmp);
            };
        };
        return { _0 : _r, _1 : _t, _2 : ((null : stdgo.Error)) };
    }
    @:keep
    public static function _appendGroup( _p:T_parser, _r:Slice<GoRune>, _g:T_charGroup):Slice<GoRune> {
        if ((_p._flags & ((1 : GoUInt16))) == ((0 : GoUInt16))) {
            if (_g._sign < ((0 : GoInt))) {
                _r = _appendNegatedClass(_r, _g._class);
            } else {
                _r = _appendClass(_r, _g._class);
            };
        } else {
            var _tmp = ((_p._tmpClass.__slice__(0, ((0 : GoInt))) : Slice<GoInt32>));
            _tmp = _appendFoldedClass(_tmp, _g._class);
            _p._tmpClass = _tmp;
            _tmp = _cleanClass(_p._tmpClass);
            if (_g._sign < ((0 : GoInt))) {
                _r = _appendNegatedClass(_r, _tmp);
            } else {
                _r = _appendClass(_r, _tmp);
            };
        };
        return _r;
    }
    @:keep
    public static function _parseNamedClass( _p:T_parser, _s:GoString, _r:Slice<GoRune>):{ var _0 : Slice<GoRune>; var _1 : GoString; var _2 : Error; } {
        var _out:Slice<GoRune> = ((null : Slice<GoInt32>)), _rest:GoString = (("" : GoString)), _err:Error = ((null : stdgo.Error));
        if ((((_s != null ? _s.length : ((0 : GoInt))) < ((2 : GoInt))) || ((_s != null ? _s[((0 : GoInt))] : ((0 : GoUInt8))) != ((((("[" : GoString))).code : GoRune)))) || ((_s != null ? _s[((1 : GoInt))] : ((0 : GoUInt8))) != (((((":" : GoString))).code : GoRune)))) {
            return { _0 : _out, _1 : _rest, _2 : _err };
        };
        var _i:GoInt = stdgo.strings.Strings.index(((_s.__slice__(((2 : GoInt))) : GoString)), (((":]" : GoString))));
        if (_i < ((0 : GoInt))) {
            return { _0 : _out, _1 : _rest, _2 : _err };
        };
        _i = _i + (((2 : GoInt)));
        var _name:GoString = ((_s.__slice__(((0 : GoInt)), _i + ((2 : GoInt))) : GoString)), _s:GoString = ((_s.__slice__(_i + ((2 : GoInt))) : GoString));
        var _g:T_charGroup = ((_posixGroup != null ? _posixGroup[_name] : new T_charGroup()) == null ? null : (_posixGroup != null ? _posixGroup[_name] : new T_charGroup()).__copy__());
        if (_g._sign == ((0 : GoInt))) {
            return { _0 : ((null : Slice<GoInt32>)), _1 : ((("" : GoString))), _2 : ((new T_error(((("invalid character class range" : GoString))), _name) : T_error)) };
        };
        return { _0 : _p._appendGroup(_r, (_g == null ? null : _g.__copy__())), _1 : _s, _2 : ((null : stdgo.Error)) };
    }
    @:keep
    public static function _parsePerlClassEscape( _p:T_parser, _s:GoString, _r:Slice<GoRune>):{ var _0 : Slice<GoRune>; var _1 : GoString; } {
        var _out:Slice<GoRune> = ((null : Slice<GoInt32>)), _rest:GoString = (("" : GoString));
        if ((((_p._flags & ((64 : GoUInt16))) == ((0 : GoUInt16))) || ((_s != null ? _s.length : ((0 : GoInt))) < ((2 : GoInt)))) || ((_s != null ? _s[((0 : GoInt))] : ((0 : GoUInt8))) != ((((("\\" : GoString))).code : GoRune)))) {
            return { _0 : _out, _1 : _rest };
        };
        var _g:T_charGroup = ((_perlGroup != null ? _perlGroup[((_s.__slice__(((0 : GoInt)), ((2 : GoInt))) : GoString))] : new T_charGroup()) == null ? null : (_perlGroup != null ? _perlGroup[((_s.__slice__(((0 : GoInt)), ((2 : GoInt))) : GoString))] : new T_charGroup()).__copy__());
        if (_g._sign == ((0 : GoInt))) {
            return { _0 : _out, _1 : _rest };
        };
        return { _0 : _p._appendGroup(_r, (_g == null ? null : _g.__copy__())), _1 : ((_s.__slice__(((2 : GoInt))) : GoString)) };
    }
    @:keep
    public static function _parseClassChar( _p:T_parser, _s:GoString, _wholeClass:GoString):{ var _0 : GoRune; var _1 : GoString; var _2 : Error; } {
        var _r:GoRune = ((0 : GoInt32)), _rest:GoString = (("" : GoString)), _err:Error = ((null : stdgo.Error));
        if (_s == ((("" : GoString)))) {
            return { _0 : ((0 : GoInt32)), _1 : ((("" : GoString))), _2 : (({ code : ((("missing closing ]" : GoString))), expr : _wholeClass } : T_error)) };
        };
        if ((_s != null ? _s[((0 : GoInt))] : ((0 : GoUInt8))) == ((((("\\" : GoString))).code : GoRune))) {
            return _p._parseEscape(_s);
        };
        return _nextRune(_s);
    }
    @:keep
    public static function _parseEscape( _p:T_parser, _s:GoString):{ var _0 : GoRune; var _1 : GoString; var _2 : Error; } {
        return stdgo.internal.Macro.controlFlow({
            var _r:GoRune = ((0 : GoInt32)), _rest:GoString = (("" : GoString)), _err:Error = ((null : stdgo.Error));
            var _t:GoString = ((_s.__slice__(((1 : GoInt))) : GoString));
            if (_t == ((("" : GoString)))) {
                return { _0 : ((0 : GoInt32)), _1 : ((("" : GoString))), _2 : ((new T_error(((("trailing backslash at end of expression" : GoString))), ((("" : GoString)))) : T_error)) };
            };
            var __tmp__ = _nextRune(_t), _c:GoInt32 = __tmp__._0, _t:GoString = __tmp__._1, _err:stdgo.Error = __tmp__._2;
            if (_err != null) {
                return { _0 : ((0 : GoInt32)), _1 : ((("" : GoString))), _2 : _err };
            };
            @:label("Switch") {
                var __switchIndex__ = -1;
                while (true) {
                    if (__switchIndex__ == 1 || (__switchIndex__ == -1 && _c == ((((("1" : GoString))).code : GoRune)) || _c == ((((("2" : GoString))).code : GoRune)) || _c == ((((("3" : GoString))).code : GoRune)) || _c == ((((("4" : GoString))).code : GoRune)) || _c == ((((("5" : GoString))).code : GoRune)) || _c == ((((("6" : GoString))).code : GoRune)) || _c == ((((("7" : GoString))).code : GoRune)))) {
                        if (((_t == ((("" : GoString)))) || ((_t != null ? _t[((0 : GoInt))] : ((0 : GoUInt8))) < ((((("0" : GoString))).code : GoRune)))) || ((_t != null ? _t[((0 : GoInt))] : ((0 : GoUInt8))) > ((((("7" : GoString))).code : GoRune)))) {
                            break;
                        };
                        @:fallthrough {
                            __switchIndex__ = 2;
                            continue;
                        };
                        break;
                    } else if (__switchIndex__ == 2 || (__switchIndex__ == -1 && _c == ((((("0" : GoString))).code : GoRune)))) {
                        _r = _c - ((((("0" : GoString))).code : GoRune));
                        {
                            var _i:GoInt = ((1 : GoInt));
                            Go.cfor(_i < ((3 : GoInt)), _i++, {
                                if (((_t == ((("" : GoString)))) || ((_t != null ? _t[((0 : GoInt))] : ((0 : GoUInt8))) < ((((("0" : GoString))).code : GoRune)))) || ((_t != null ? _t[((0 : GoInt))] : ((0 : GoUInt8))) > ((((("7" : GoString))).code : GoRune)))) {
                                    break;
                                };
                                _r = ((_r * ((8 : GoInt32))) + (((_t != null ? _t[((0 : GoInt))] : ((0 : GoUInt8))) : GoRune))) - ((((("0" : GoString))).code : GoRune));
                                _t = ((_t.__slice__(((1 : GoInt))) : GoString));
                            });
                        };
                        return { _0 : _r, _1 : _t, _2 : ((null : stdgo.Error)) };
                        break;
                        break;
                    } else if (__switchIndex__ == 3 || (__switchIndex__ == -1 && _c == ((((("x" : GoString))).code : GoRune)))) {
                        if (_t == ((("" : GoString)))) {
                            break;
                        };
                        {
                            {
                                var __tmp__ = _nextRune(_t);
                                _c = __tmp__._0;
                                _t = __tmp__._1;
                                _err = __tmp__._2;
                            };
                            if (_err != null) {
                                return { _0 : ((0 : GoInt32)), _1 : ((("" : GoString))), _2 : _err };
                            };
                        };
                        if (_c == ((((("{" : GoString))).code : GoRune))) {
                            var _nhex:GoInt = ((0 : GoInt));
                            _r = ((0 : GoInt32));
                            while (true) {
                                if (_t == ((("" : GoString)))) {
                                    @:break {
                                        ____exit____ = true;
                                        ____break____ = true;
                                        break;
                                    };
                                };
                                {
                                    {
                                        var __tmp__ = _nextRune(_t);
                                        _c = __tmp__._0;
                                        _t = __tmp__._1;
                                        _err = __tmp__._2;
                                    };
                                    if (_err != null) {
                                        return { _0 : ((0 : GoInt32)), _1 : ((("" : GoString))), _2 : _err };
                                    };
                                };
                                if (_c == ((((("}" : GoString))).code : GoRune))) {
                                    break;
                                };
                                var _v:GoInt32 = _unhex(_c);
                                if (_v < ((0 : GoInt32))) {
                                    @:break {
                                        ____exit____ = true;
                                        ____break____ = true;
                                        break;
                                    };
                                };
                                _r = (_r * ((16 : GoInt32))) + _v;
                                if (_r > ((1114111 : GoInt32))) {
                                    @:break {
                                        ____exit____ = true;
                                        ____break____ = true;
                                        break;
                                    };
                                };
                                _nhex++;
                            };
                            if (_nhex == ((0 : GoInt))) {
                                @:break {
                                    ____exit____ = true;
                                    ____break____ = true;
                                    break;
                                };
                            };
                            return { _0 : _r, _1 : _t, _2 : ((null : stdgo.Error)) };
                        };
                        var _x:GoInt32 = _unhex(_c);
                        {
                            {
                                var __tmp__ = _nextRune(_t);
                                _c = __tmp__._0;
                                _t = __tmp__._1;
                                _err = __tmp__._2;
                            };
                            if (_err != null) {
                                return { _0 : ((0 : GoInt32)), _1 : ((("" : GoString))), _2 : _err };
                            };
                        };
                        var _y:GoInt32 = _unhex(_c);
                        if ((_x < ((0 : GoInt32))) || (_y < ((0 : GoInt32)))) {
                            break;
                        };
                        return { _0 : (_x * ((16 : GoInt32))) + _y, _1 : _t, _2 : ((null : stdgo.Error)) };
                        break;
                        break;
                    } else if (__switchIndex__ == 4 || (__switchIndex__ == -1 && _c == ((((("a" : GoString))).code : GoRune)))) {
                        return { _0 : ((((("\x07" : GoString))).code : GoRune)), _1 : _t, _2 : _err };
                        break;
                        break;
                    } else if (__switchIndex__ == 5 || (__switchIndex__ == -1 && _c == ((((("f" : GoString))).code : GoRune)))) {
                        return { _0 : ((((("\x0C" : GoString))).code : GoRune)), _1 : _t, _2 : _err };
                        break;
                        break;
                    } else if (__switchIndex__ == 6 || (__switchIndex__ == -1 && _c == ((((("n" : GoString))).code : GoRune)))) {
                        return { _0 : ((((("\n" : GoString))).code : GoRune)), _1 : _t, _2 : _err };
                        break;
                        break;
                    } else if (__switchIndex__ == 7 || (__switchIndex__ == -1 && _c == ((((("r" : GoString))).code : GoRune)))) {
                        return { _0 : ((((("\r" : GoString))).code : GoRune)), _1 : _t, _2 : _err };
                        break;
                        break;
                    } else if (__switchIndex__ == 8 || (__switchIndex__ == -1 && _c == ((((("t" : GoString))).code : GoRune)))) {
                        return { _0 : ((((("\t" : GoString))).code : GoRune)), _1 : _t, _2 : _err };
                        break;
                        break;
                    } else if (__switchIndex__ == 9 || (__switchIndex__ == -1 && _c == ((((("v" : GoString))).code : GoRune)))) {
                        return { _0 : ((((("\x0B" : GoString))).code : GoRune)), _1 : _t, _2 : _err };
                        break;
                        break;
                    };
                    break;
                };
            };
            return { _0 : ((0 : GoInt32)), _1 : ((("" : GoString))), _2 : ((new T_error(((("invalid escape sequence" : GoString))), ((_s.__slice__(0, (_s != null ? _s.length : ((0 : GoInt))) - (_t != null ? _t.length : ((0 : GoInt)))) : GoString))) : T_error)) };
        });
    }
    @:keep
    public static function _parseRightParen( _p:T_parser):Error {
        _p._concat();
        if (_p._swapVerticalBar()) {
            _p._stack = ((_p._stack.__slice__(0, (_p._stack != null ? _p._stack.length : ((0 : GoInt))) - ((1 : GoInt))) : Slice<Ref<Regexp>>));
        };
        _p._alternate();
        var _n:GoInt = (_p._stack != null ? _p._stack.length : ((0 : GoInt)));
        if (_n < ((2 : GoInt))) {
            return ((new T_error(((("unexpected )" : GoString))), _p._wholeRegexp) : T_error));
        };
        var _re1 = (_p._stack != null ? _p._stack[_n - ((1 : GoInt))] : null);
        var _re2 = (_p._stack != null ? _p._stack[_n - ((2 : GoInt))] : null);
        _p._stack = ((_p._stack.__slice__(0, _n - ((2 : GoInt))) : Slice<Ref<Regexp>>));
        if (_re2.op != ((128 : GoUInt8))) {
            return ((new T_error(((("unexpected )" : GoString))), _p._wholeRegexp) : T_error));
        };
        _p._flags = _re2.flags;
        if (_re2.cap_ == ((0 : GoInt))) {
            _p._push(_re1);
        } else {
            _re2.op = ((13 : GoUInt8));
            _re2.sub = ((_re2.sub0.__slice__(0, ((1 : GoInt))) : Slice<Ref<Regexp>>));
            if (_re2.sub != null) _re2.sub[((0 : GoInt))] = _re1;
            _p._push(_re2);
        };
        return ((null : stdgo.Error));
    }
    @:keep
    public static function _swapVerticalBar( _p:T_parser):Bool {
        var _n:GoInt = (_p._stack != null ? _p._stack.length : ((0 : GoInt)));
        if ((((_n >= ((3 : GoInt))) && ((_p._stack != null ? _p._stack[_n - ((2 : GoInt))] : null).op == ((129 : GoUInt8)))) && _isCharClass((_p._stack != null ? _p._stack[_n - ((1 : GoInt))] : null))) && _isCharClass((_p._stack != null ? _p._stack[_n - ((3 : GoInt))] : null))) {
            var _re1 = (_p._stack != null ? _p._stack[_n - ((1 : GoInt))] : null);
            var _re3 = (_p._stack != null ? _p._stack[_n - ((3 : GoInt))] : null);
            if (_re1.op > _re3.op) {
                {
                    final __tmp__0 = _re3;
                    final __tmp__1 = _re1;
                    _re1 = __tmp__0;
                    _re3 = __tmp__1;
                };
                if (_p._stack != null) _p._stack[_n - ((3 : GoInt))] = _re3;
            };
            _mergeCharClass(_re3, _re1);
            _p._reuse(_re1);
            _p._stack = ((_p._stack.__slice__(0, _n - ((1 : GoInt))) : Slice<Ref<Regexp>>));
            return true;
        };
        if (_n >= ((2 : GoInt))) {
            var _re1 = (_p._stack != null ? _p._stack[_n - ((1 : GoInt))] : null);
            var _re2 = (_p._stack != null ? _p._stack[_n - ((2 : GoInt))] : null);
            if (_re2.op == ((129 : GoUInt8))) {
                if (_n >= ((3 : GoInt))) {
                    _cleanAlt((_p._stack != null ? _p._stack[_n - ((3 : GoInt))] : null));
                };
                if (_p._stack != null) _p._stack[_n - ((2 : GoInt))] = _re1;
                if (_p._stack != null) _p._stack[_n - ((1 : GoInt))] = _re2;
                return true;
            };
        };
        return false;
    }
    @:keep
    public static function _parseVerticalBar( _p:T_parser):Error {
        _p._concat();
        if (!_p._swapVerticalBar()) {
            _p._op(((129 : GoUInt8)));
        };
        return ((null : stdgo.Error));
    }
    @:keep
    public static function _parseInt( _p:T_parser, _s:GoString):{ var _0 : GoInt; var _1 : GoString; var _2 : Bool; } {
        var _n:GoInt = ((0 : GoInt)), _rest:GoString = (("" : GoString)), _ok:Bool = false;
        if (((_s == ((("" : GoString)))) || ((_s != null ? _s[((0 : GoInt))] : ((0 : GoUInt8))) < ((((("0" : GoString))).code : GoRune)))) || (((((("9" : GoString))).code : GoRune)) < (_s != null ? _s[((0 : GoInt))] : ((0 : GoUInt8))))) {
            return { _0 : _n, _1 : _rest, _2 : _ok };
        };
        if (((((_s != null ? _s.length : ((0 : GoInt))) >= ((2 : GoInt))) && ((_s != null ? _s[((0 : GoInt))] : ((0 : GoUInt8))) == ((((("0" : GoString))).code : GoRune)))) && (((((("0" : GoString))).code : GoRune)) <= (_s != null ? _s[((1 : GoInt))] : ((0 : GoUInt8))))) && ((_s != null ? _s[((1 : GoInt))] : ((0 : GoUInt8))) <= ((((("9" : GoString))).code : GoRune)))) {
            return { _0 : _n, _1 : _rest, _2 : _ok };
        };
        var _t:GoString = _s;
        while (((_s != ((("" : GoString)))) && (((((("0" : GoString))).code : GoRune)) <= (_s != null ? _s[((0 : GoInt))] : ((0 : GoUInt8))))) && ((_s != null ? _s[((0 : GoInt))] : ((0 : GoUInt8))) <= ((((("9" : GoString))).code : GoRune)))) {
            _s = ((_s.__slice__(((1 : GoInt))) : GoString));
        };
        _rest = _s;
        _ok = true;
        _t = ((_t.__slice__(0, (_t != null ? _t.length : ((0 : GoInt))) - (_s != null ? _s.length : ((0 : GoInt)))) : GoString));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < (_t != null ? _t.length : ((0 : GoInt))), _i++, {
                if (_n >= ((1e+08 : GoInt))) {
                    _n = ((-1 : GoInt));
                    break;
                };
                _n = ((_n * ((10 : GoInt))) + (((_t != null ? _t[_i] : ((0 : GoUInt8))) : GoInt))) - ((((("0" : GoString))).code : GoRune));
            });
        };
        return { _0 : _n, _1 : _rest, _2 : _ok };
    }
    @:keep
    public static function _parsePerlFlags( _p:T_parser, _s:GoString):{ var _0 : GoString; var _1 : Error; } {
        return stdgo.internal.Macro.controlFlow({
            var _rest:GoString = (("" : GoString)), _err:Error = ((null : stdgo.Error));
            var _t:GoString = _s;
            if ((((_t != null ? _t.length : ((0 : GoInt))) > ((4 : GoInt))) && ((_t != null ? _t[((2 : GoInt))] : ((0 : GoUInt8))) == ((((("P" : GoString))).code : GoRune)))) && ((_t != null ? _t[((3 : GoInt))] : ((0 : GoUInt8))) == ((((("<" : GoString))).code : GoRune)))) {
                var _end:GoInt = stdgo.strings.Strings.indexRune(_t, (((((">" : GoString))).code : GoRune)));
                if (_end < ((0 : GoInt))) {
                    {
                        _err = _checkUTF8(_t);
                        if (_err != null) {
                            return { _0 : ((("" : GoString))), _1 : _err };
                        };
                    };
                    return { _0 : ((("" : GoString))), _1 : ((new T_error(((("invalid named capture" : GoString))), _s) : T_error)) };
                };
                var _capture:GoString = ((_t.__slice__(0, _end + ((1 : GoInt))) : GoString));
                var _name:GoString = ((_t.__slice__(((4 : GoInt)), _end) : GoString));
                {
                    _err = _checkUTF8(_name);
                    if (_err != null) {
                        return { _0 : ((("" : GoString))), _1 : _err };
                    };
                };
                if (!_isValidCaptureName(_name)) {
                    return { _0 : ((("" : GoString))), _1 : ((new T_error(((("invalid named capture" : GoString))), _capture) : T_error)) };
                };
                _p._numCap++;
                var _re = _p._op(((128 : GoUInt8)));
                _re.cap_ = _p._numCap;
                _re.name = _name;
                return { _0 : ((_t.__slice__(_end + ((1 : GoInt))) : GoString)), _1 : ((null : stdgo.Error)) };
            };
            var _c:GoRune = ((0 : GoInt32));
            _t = ((_t.__slice__(((2 : GoInt))) : GoString));
            var _flags:Flags = _p._flags;
            var _sign:GoInt = ((1 : GoInt));
            var _sawFlag:Bool = false;
            @:label("Loop") while (_t != ((("" : GoString)))) {
                {
                    {
                        var __tmp__ = _nextRune(_t);
                        _c = __tmp__._0;
                        _t = __tmp__._1;
                        _err = __tmp__._2;
                    };
                    if (_err != null) {
                        return { _0 : ((("" : GoString))), _1 : _err };
                    };
                };
                {
                    var __switchIndex__ = -1;
                    while (true) {
                        if (_c == ((((("i" : GoString))).code : GoRune))) {
                            _flags = _flags | (((1 : GoUInt16)));
                            _sawFlag = true;
                            break;
                        } else if (_c == ((((("m" : GoString))).code : GoRune))) {
                            _flags = _flags & ((((16 : GoUInt16))) ^ ((-1 : GoUnTypedInt)));
                            _sawFlag = true;
                            break;
                        } else if (_c == ((((("s" : GoString))).code : GoRune))) {
                            _flags = _flags | (((8 : GoUInt16)));
                            _sawFlag = true;
                            break;
                        } else if (_c == ((((("U" : GoString))).code : GoRune))) {
                            _flags = _flags | (((32 : GoUInt16)));
                            _sawFlag = true;
                            break;
                        } else if (_c == ((((("-" : GoString))).code : GoRune))) {
                            if (_sign < ((0 : GoInt))) {
                                @:break {
                                    ____exit____ = true;
                                    ____break____ = true;
                                    break;
                                };
                            };
                            _sign = ((-1 : GoInt));
                            _flags = (-1 ^ _flags);
                            _sawFlag = false;
                            break;
                        } else if (_c == (((((":" : GoString))).code : GoRune)) || _c == (((((")" : GoString))).code : GoRune))) {
                            if (_sign < ((0 : GoInt))) {
                                if (!_sawFlag) {
                                    @:break {
                                        ____exit____ = true;
                                        ____break____ = true;
                                        break;
                                    };
                                };
                                _flags = (-1 ^ _flags);
                            };
                            if (_c == (((((":" : GoString))).code : GoRune))) {
                                _p._op(((128 : GoUInt8)));
                            };
                            _p._flags = _flags;
                            return { _0 : _t, _1 : ((null : stdgo.Error)) };
                            break;
                        };
                        break;
                    };
                };
            };
            return { _0 : ((("" : GoString))), _1 : ((new T_error(((("invalid or unsupported Perl syntax" : GoString))), ((_s.__slice__(0, (_s != null ? _s.length : ((0 : GoInt))) - (_t != null ? _t.length : ((0 : GoInt)))) : GoString))) : T_error)) };
        });
    }
    @:keep
    public static function _parseRepeat( _p:T_parser, _s:GoString):{ var _0 : GoInt; var _1 : GoInt; var _2 : GoString; var _3 : Bool; } {
        var _min:GoInt = ((0 : GoInt)), _max:GoInt = ((0 : GoInt)), _rest:GoString = (("" : GoString)), _ok:Bool = false;
        if ((_s == ((("" : GoString)))) || ((_s != null ? _s[((0 : GoInt))] : ((0 : GoUInt8))) != ((((("{" : GoString))).code : GoRune)))) {
            return { _0 : _min, _1 : _max, _2 : _rest, _3 : _ok };
        };
        _s = ((_s.__slice__(((1 : GoInt))) : GoString));
        var _ok1:Bool = false;
        {
            {
                var __tmp__ = _p._parseInt(_s);
                _min = __tmp__._0;
                _s = __tmp__._1;
                _ok1 = __tmp__._2;
            };
            if (!_ok1) {
                return { _0 : _min, _1 : _max, _2 : _rest, _3 : _ok };
            };
        };
        if (_s == ((("" : GoString)))) {
            return { _0 : _min, _1 : _max, _2 : _rest, _3 : _ok };
        };
        if ((_s != null ? _s[((0 : GoInt))] : ((0 : GoUInt8))) != ((((("," : GoString))).code : GoRune))) {
            _max = _min;
        } else {
            _s = ((_s.__slice__(((1 : GoInt))) : GoString));
            if (_s == ((("" : GoString)))) {
                return { _0 : _min, _1 : _max, _2 : _rest, _3 : _ok };
            };
            if ((_s != null ? _s[((0 : GoInt))] : ((0 : GoUInt8))) == ((((("}" : GoString))).code : GoRune))) {
                _max = ((-1 : GoInt));
            } else {
                {
                    var __tmp__ = _p._parseInt(_s);
                    _max = __tmp__._0;
                    _s = __tmp__._1;
                    _ok1 = __tmp__._2;
                };
                if (!_ok1) {
                    return { _0 : _min, _1 : _max, _2 : _rest, _3 : _ok };
                } else if (_max < ((0 : GoInt))) {
                    _min = ((-1 : GoInt));
                };
            };
        };
        if ((_s == ((("" : GoString)))) || ((_s != null ? _s[((0 : GoInt))] : ((0 : GoUInt8))) != ((((("}" : GoString))).code : GoRune)))) {
            return { _0 : _min, _1 : _max, _2 : _rest, _3 : _ok };
        };
        _rest = ((_s.__slice__(((1 : GoInt))) : GoString));
        _ok = true;
        return { _0 : _min, _1 : _max, _2 : _rest, _3 : _ok };
    }
    @:keep
    public static function _removeLeadingRegexp( _p:T_parser, _re:Regexp, _reuse:Bool):Regexp {
        if ((_re.op == ((18 : GoUInt8))) && ((_re.sub != null ? _re.sub.length : ((0 : GoInt))) > ((0 : GoInt)))) {
            if (_reuse) {
                _p._reuse((_re.sub != null ? _re.sub[((0 : GoInt))] : null));
            };
            _re.sub = ((_re.sub.__slice__(0, Go.copySlice(_re.sub, ((_re.sub.__slice__(((1 : GoInt))) : Slice<Ref<Regexp>>)))) : Slice<Ref<Regexp>>));
            if ((_re.sub != null ? _re.sub.length : ((0 : GoInt))) == ((0 : GoInt))) {
                _re.op = ((2 : GoUInt8));
                _re.sub = ((null : Slice<Ref<Regexp>>));
            } else if ((_re.sub != null ? _re.sub.length : ((0 : GoInt))) == ((1 : GoInt))) {
                var _old = _re;
                _re = (_re.sub != null ? _re.sub[((0 : GoInt))] : null);
                _p._reuse(_old);
            };
            return _re;
        };
        if (_reuse) {
            _p._reuse(_re);
        };
        return _p._newRegexp(((2 : GoUInt8)));
    }
    @:keep
    public static function _leadingRegexp( _p:T_parser, _re:Regexp):Regexp {
        if (_re.op == ((2 : GoUInt8))) {
            return null;
        };
        if ((_re.op == ((18 : GoUInt8))) && ((_re.sub != null ? _re.sub.length : ((0 : GoInt))) > ((0 : GoInt)))) {
            var _sub = (_re.sub != null ? _re.sub[((0 : GoInt))] : null);
            if (_sub.op == ((2 : GoUInt8))) {
                return null;
            };
            return _sub;
        };
        return _re;
    }
    @:keep
    public static function _removeLeadingString( _p:T_parser, _re:Regexp, _n:GoInt):Regexp {
        if ((_re.op == ((18 : GoUInt8))) && ((_re.sub != null ? _re.sub.length : ((0 : GoInt))) > ((0 : GoInt)))) {
            var _sub = (_re.sub != null ? _re.sub[((0 : GoInt))] : null);
            _sub = _p._removeLeadingString(_sub, _n);
            if (_re.sub != null) _re.sub[((0 : GoInt))] = _sub;
            if (_sub.op == ((2 : GoUInt8))) {
                _p._reuse(_sub);
                if ((_re.sub != null ? _re.sub.length : ((0 : GoInt))) == ((0 : GoInt)) || (_re.sub != null ? _re.sub.length : ((0 : GoInt))) == ((1 : GoInt))) {
                    _re.op = ((2 : GoUInt8));
                    _re.sub = ((null : Slice<Ref<Regexp>>));
                } else if ((_re.sub != null ? _re.sub.length : ((0 : GoInt))) == ((2 : GoInt))) {
                    var _old = _re;
                    _re = (_re.sub != null ? _re.sub[((1 : GoInt))] : null);
                    _p._reuse(_old);
                } else {
                    Go.copySlice(_re.sub, ((_re.sub.__slice__(((1 : GoInt))) : Slice<Ref<Regexp>>)));
                    _re.sub = ((_re.sub.__slice__(0, (_re.sub != null ? _re.sub.length : ((0 : GoInt))) - ((1 : GoInt))) : Slice<Ref<Regexp>>));
                };
            };
            return _re;
        };
        if (_re.op == ((3 : GoUInt8))) {
            _re.rune = ((_re.rune.__slice__(0, Go.copySlice(_re.rune, ((_re.rune.__slice__(_n) : Slice<GoInt32>)))) : Slice<GoInt32>));
            if ((_re.rune != null ? _re.rune.length : ((0 : GoInt))) == ((0 : GoInt))) {
                _re.op = ((2 : GoUInt8));
            };
        };
        return _re;
    }
    @:keep
    public static function _leadingString( _p:T_parser, _re:Regexp):{ var _0 : Slice<GoRune>; var _1 : Flags; } {
        if ((_re.op == ((18 : GoUInt8))) && ((_re.sub != null ? _re.sub.length : ((0 : GoInt))) > ((0 : GoInt)))) {
            _re = (_re.sub != null ? _re.sub[((0 : GoInt))] : null);
        };
        if (_re.op != ((3 : GoUInt8))) {
            return { _0 : ((null : Slice<GoInt32>)), _1 : ((0 : GoUInt16)) };
        };
        return { _0 : _re.rune, _1 : _re.flags & ((1 : GoUInt16)) };
    }
    @:keep
    public static function _factor( _p:T_parser, _sub:Slice<Regexp>):Slice<Regexp> {
        if ((_sub != null ? _sub.length : ((0 : GoInt))) < ((2 : GoInt))) {
            return _sub;
        };
        var _str:Slice<GoRune> = ((null : Slice<GoInt32>));
        var _strflags:Flags = new Flags();
        var _start:GoInt = ((0 : GoInt));
        var _out = ((_sub.__slice__(0, ((0 : GoInt))) : Slice<Ref<Regexp>>));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i <= (_sub != null ? _sub.length : ((0 : GoInt))), _i++, {
                var _istr:Slice<GoRune> = ((null : Slice<GoInt32>));
                var _iflags:Flags = new Flags();
                if (_i < (_sub != null ? _sub.length : ((0 : GoInt)))) {
                    {
                        var __tmp__ = _p._leadingString((_sub != null ? _sub[_i] : null));
                        _istr = __tmp__._0;
                        _iflags = __tmp__._1;
                    };
                    if (_iflags == _strflags) {
                        var _same:GoInt = ((0 : GoInt));
                        while (((_same < (_str != null ? _str.length : ((0 : GoInt)))) && (_same < (_istr != null ? _istr.length : ((0 : GoInt))))) && ((_str != null ? _str[_same] : ((0 : GoInt32))) == (_istr != null ? _istr[_same] : ((0 : GoInt32))))) {
                            _same++;
                        };
                        if (_same > ((0 : GoInt))) {
                            _str = ((_str.__slice__(0, _same) : Slice<GoInt32>));
                            continue;
                        };
                    };
                };
                if (_i == _start) {} else if (_i == (_start + ((1 : GoInt)))) {
                    _out = (_out != null ? _out.__append__((_sub != null ? _sub[_start] : null)) : new Slice<Ref<Regexp>>((_sub != null ? _sub[_start] : null)));
                } else {
                    var _prefix = _p._newRegexp(((3 : GoUInt8)));
                    _prefix.flags = _strflags;
                    _prefix.rune = (((_prefix.rune.__slice__(0, ((0 : GoInt))) : Slice<GoInt32>)) != null ? ((_prefix.rune.__slice__(0, ((0 : GoInt))) : Slice<GoInt32>)).__append__(..._str.__toArray__()) : new Slice<GoInt32>(..._str.__toArray__()));
                    {
                        var _j:GoInt = _start;
                        Go.cfor(_j < _i, _j++, {
                            if (_sub != null) _sub[_j] = _p._removeLeadingString((_sub != null ? _sub[_j] : null), (_str != null ? _str.length : ((0 : GoInt))));
                        });
                    };
                    var _suffix = _p._collapse(((_sub.__slice__(_start, _i) : Slice<Ref<Regexp>>)), ((19 : GoUInt8)));
                    var _re = _p._newRegexp(((18 : GoUInt8)));
                    _re.sub = (((_re.sub.__slice__(0, ((0 : GoInt))) : Slice<Ref<Regexp>>)) != null ? ((_re.sub.__slice__(0, ((0 : GoInt))) : Slice<Ref<Regexp>>)).__append__(_prefix, _suffix) : new Slice<Ref<Regexp>>(_prefix, _suffix));
                    _out = (_out != null ? _out.__append__(_re) : new Slice<Ref<Regexp>>(_re));
                };
                _start = _i;
                _str = _istr;
                _strflags = _iflags;
            });
        };
        _sub = _out;
        _start = ((0 : GoInt));
        _out = ((_sub.__slice__(0, ((0 : GoInt))) : Slice<Ref<Regexp>>));
        var _first:Regexp = null;
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i <= (_sub != null ? _sub.length : ((0 : GoInt))), _i++, {
                var _ifirst:Regexp = null;
                if (_i < (_sub != null ? _sub.length : ((0 : GoInt)))) {
                    _ifirst = _p._leadingRegexp((_sub != null ? _sub[_i] : null));
                    if (((_first != null) && _first.equal(_ifirst)) && (_isCharClass(_first) || (((_first.op == ((17 : GoUInt8))) && (_first.min == _first.max)) && _isCharClass((_first.sub != null ? _first.sub[((0 : GoInt))] : null))))) {
                        continue;
                    };
                };
                if (_i == _start) {} else if (_i == (_start + ((1 : GoInt)))) {
                    _out = (_out != null ? _out.__append__((_sub != null ? _sub[_start] : null)) : new Slice<Ref<Regexp>>((_sub != null ? _sub[_start] : null)));
                } else {
                    var _prefix = _first;
                    {
                        var _j:GoInt = _start;
                        Go.cfor(_j < _i, _j++, {
                            var _reuse:Bool = _j != _start;
                            if (_sub != null) _sub[_j] = _p._removeLeadingRegexp((_sub != null ? _sub[_j] : null), _reuse);
                        });
                    };
                    var _suffix = _p._collapse(((_sub.__slice__(_start, _i) : Slice<Ref<Regexp>>)), ((19 : GoUInt8)));
                    var _re = _p._newRegexp(((18 : GoUInt8)));
                    _re.sub = (((_re.sub.__slice__(0, ((0 : GoInt))) : Slice<Ref<Regexp>>)) != null ? ((_re.sub.__slice__(0, ((0 : GoInt))) : Slice<Ref<Regexp>>)).__append__(_prefix, _suffix) : new Slice<Ref<Regexp>>(_prefix, _suffix));
                    _out = (_out != null ? _out.__append__(_re) : new Slice<Ref<Regexp>>(_re));
                };
                _start = _i;
                _first = _ifirst;
            });
        };
        _sub = _out;
        _start = ((0 : GoInt));
        _out = ((_sub.__slice__(0, ((0 : GoInt))) : Slice<Ref<Regexp>>));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i <= (_sub != null ? _sub.length : ((0 : GoInt))), _i++, {
                if ((_i < (_sub != null ? _sub.length : ((0 : GoInt)))) && _isCharClass((_sub != null ? _sub[_i] : null))) {
                    continue;
                };
                if (_i == _start) {} else if (_i == (_start + ((1 : GoInt)))) {
                    _out = (_out != null ? _out.__append__((_sub != null ? _sub[_start] : null)) : new Slice<Ref<Regexp>>((_sub != null ? _sub[_start] : null)));
                } else {
                    var _max:GoInt = _start;
                    {
                        var _j:GoInt = _start + ((1 : GoInt));
                        Go.cfor(_j < _i, _j++, {
                            if (((_sub != null ? _sub[_max] : null).op < (_sub != null ? _sub[_j] : null).op) || (((_sub != null ? _sub[_max] : null).op == (_sub != null ? _sub[_j] : null).op) && (((_sub != null ? _sub[_max] : null).rune != null ? (_sub != null ? _sub[_max] : null).rune.length : ((0 : GoInt))) < ((_sub != null ? _sub[_j] : null).rune != null ? (_sub != null ? _sub[_j] : null).rune.length : ((0 : GoInt)))))) {
                                _max = _j;
                            };
                        });
                    };
                    {
                        final __tmp__0 = (_sub != null ? _sub[_max] : null);
                        final __tmp__1 = (_sub != null ? _sub[_start] : null);
                        if (_sub != null) _sub[_start] = __tmp__0;
                        if (_sub != null) _sub[_max] = __tmp__1;
                    };
                    {
                        var _j:GoInt = _start + ((1 : GoInt));
                        Go.cfor(_j < _i, _j++, {
                            _mergeCharClass((_sub != null ? _sub[_start] : null), (_sub != null ? _sub[_j] : null));
                            _p._reuse((_sub != null ? _sub[_j] : null));
                        });
                    };
                    _cleanAlt((_sub != null ? _sub[_start] : null));
                    _out = (_out != null ? _out.__append__((_sub != null ? _sub[_start] : null)) : new Slice<Ref<Regexp>>((_sub != null ? _sub[_start] : null)));
                };
                if (_i < (_sub != null ? _sub.length : ((0 : GoInt)))) {
                    _out = (_out != null ? _out.__append__((_sub != null ? _sub[_i] : null)) : new Slice<Ref<Regexp>>((_sub != null ? _sub[_i] : null)));
                };
                _start = _i + ((1 : GoInt));
            });
        };
        _sub = _out;
        _start = ((0 : GoInt));
        _out = ((_sub.__slice__(0, ((0 : GoInt))) : Slice<Ref<Regexp>>));
        for (_i => _ in _sub) {
            if ((((_i + ((1 : GoInt))) < (_sub != null ? _sub.length : ((0 : GoInt)))) && ((_sub != null ? _sub[_i] : null).op == ((2 : GoUInt8)))) && ((_sub != null ? _sub[_i + ((1 : GoInt))] : null).op == ((2 : GoUInt8)))) {
                continue;
            };
            _out = (_out != null ? _out.__append__((_sub != null ? _sub[_i] : null)) : new Slice<Ref<Regexp>>((_sub != null ? _sub[_i] : null)));
        };
        _sub = _out;
        return _sub;
    }
    @:keep
    public static function _collapse( _p:T_parser, _subs:Slice<Regexp>, _op:Op):Regexp {
        if ((_subs != null ? _subs.length : ((0 : GoInt))) == ((1 : GoInt))) {
            return (_subs != null ? _subs[((0 : GoInt))] : null);
        };
        var _re = _p._newRegexp(_op);
        _re.sub = ((_re.sub0.__slice__(0, ((0 : GoInt))) : Slice<Ref<Regexp>>));
        for (_0 => _sub in _subs) {
            if (_sub.op == _op) {
                _re.sub = (_re.sub != null ? _re.sub.__append__(..._sub.sub.__toArray__()) : new Slice<Ref<Regexp>>(..._sub.sub.__toArray__()));
                _p._reuse(_sub);
            } else {
                _re.sub = (_re.sub != null ? _re.sub.__append__(_sub) : new Slice<Ref<Regexp>>(_sub));
            };
        };
        if (_op == ((19 : GoUInt8))) {
            _re.sub = _p._factor(_re.sub);
            if ((_re.sub != null ? _re.sub.length : ((0 : GoInt))) == ((1 : GoInt))) {
                var _old = _re;
                _re = (_re.sub != null ? _re.sub[((0 : GoInt))] : null);
                _p._reuse(_old);
            };
        };
        return _re;
    }
    @:keep
    public static function _alternate( _p:T_parser):Regexp {
        var _i:GoInt = (_p._stack != null ? _p._stack.length : ((0 : GoInt)));
        while ((_i > ((0 : GoInt))) && ((_p._stack != null ? _p._stack[_i - ((1 : GoInt))] : null).op < ((128 : GoUInt8)))) {
            _i--;
        };
        var _subs = ((_p._stack.__slice__(_i) : Slice<Ref<Regexp>>));
        _p._stack = ((_p._stack.__slice__(0, _i) : Slice<Ref<Regexp>>));
        if ((_subs != null ? _subs.length : ((0 : GoInt))) > ((0 : GoInt))) {
            _cleanAlt((_subs != null ? _subs[(_subs != null ? _subs.length : ((0 : GoInt))) - ((1 : GoInt))] : null));
        };
        if ((_subs != null ? _subs.length : ((0 : GoInt))) == ((0 : GoInt))) {
            return _p._push(_p._newRegexp(((1 : GoUInt8))));
        };
        return _p._push(_p._collapse(_subs, ((19 : GoUInt8))));
    }
    @:keep
    public static function _concat( _p:T_parser):Regexp {
        _p._maybeConcat(((-1 : GoInt32)), ((0 : GoUInt16)));
        var _i:GoInt = (_p._stack != null ? _p._stack.length : ((0 : GoInt)));
        while ((_i > ((0 : GoInt))) && ((_p._stack != null ? _p._stack[_i - ((1 : GoInt))] : null).op < ((128 : GoUInt8)))) {
            _i--;
        };
        var _subs = ((_p._stack.__slice__(_i) : Slice<Ref<Regexp>>));
        _p._stack = ((_p._stack.__slice__(0, _i) : Slice<Ref<Regexp>>));
        if ((_subs != null ? _subs.length : ((0 : GoInt))) == ((0 : GoInt))) {
            return _p._push(_p._newRegexp(((2 : GoUInt8))));
        };
        return _p._push(_p._collapse(_subs, ((18 : GoUInt8))));
    }
    @:keep
    public static function _repeat( _p:T_parser, _op:Op, _min:GoInt, _max:GoInt, _before:GoString, _after:GoString, _lastRepeat:GoString):{ var _0 : GoString; var _1 : Error; } {
        var _flags:Flags = _p._flags;
        if ((_p._flags & ((64 : GoUInt16))) != ((0 : GoUInt16))) {
            if (((_after != null ? _after.length : ((0 : GoInt))) > ((0 : GoInt))) && ((_after != null ? _after[((0 : GoInt))] : ((0 : GoUInt8))) == ((((("?" : GoString))).code : GoRune)))) {
                _after = ((_after.__slice__(((1 : GoInt))) : GoString));
                _flags = _flags ^ (((32 : GoUInt16)));
            };
            if (_lastRepeat != ((("" : GoString)))) {
                return { _0 : ((("" : GoString))), _1 : ((new T_error(((("invalid nested repetition operator" : GoString))), ((_lastRepeat.__slice__(0, (_lastRepeat != null ? _lastRepeat.length : ((0 : GoInt))) - (_after != null ? _after.length : ((0 : GoInt)))) : GoString))) : T_error)) };
            };
        };
        var _n:GoInt = (_p._stack != null ? _p._stack.length : ((0 : GoInt)));
        if (_n == ((0 : GoInt))) {
            return { _0 : ((("" : GoString))), _1 : ((new T_error(((("missing argument to repetition operator" : GoString))), ((_before.__slice__(0, (_before != null ? _before.length : ((0 : GoInt))) - (_after != null ? _after.length : ((0 : GoInt)))) : GoString))) : T_error)) };
        };
        var _sub = (_p._stack != null ? _p._stack[_n - ((1 : GoInt))] : null);
        if (_sub.op >= ((128 : GoUInt8))) {
            return { _0 : ((("" : GoString))), _1 : ((new T_error(((("missing argument to repetition operator" : GoString))), ((_before.__slice__(0, (_before != null ? _before.length : ((0 : GoInt))) - (_after != null ? _after.length : ((0 : GoInt)))) : GoString))) : T_error)) };
        };
        var _re = _p._newRegexp(_op);
        _re.min = _min;
        _re.max = _max;
        _re.flags = _flags;
        _re.sub = ((_re.sub0.__slice__(0, ((1 : GoInt))) : Slice<Ref<Regexp>>));
        if (_re.sub != null) _re.sub[((0 : GoInt))] = _sub;
        if (_p._stack != null) _p._stack[_n - ((1 : GoInt))] = _re;
        _p._checkHeight(_re);
        if (((_op == ((17 : GoUInt8))) && ((_min >= ((2 : GoInt))) || (_max >= ((2 : GoInt))))) && !_repeatIsValid(_re, ((1000 : GoInt)))) {
            return { _0 : ((("" : GoString))), _1 : ((new T_error(((("invalid repeat count" : GoString))), ((_before.__slice__(0, (_before != null ? _before.length : ((0 : GoInt))) - (_after != null ? _after.length : ((0 : GoInt)))) : GoString))) : T_error)) };
        };
        return { _0 : _after, _1 : ((null : stdgo.Error)) };
    }
    @:keep
    public static function _op( _p:T_parser, _op:Op):Regexp {
        var _re = _p._newRegexp(_op);
        _re.flags = _p._flags;
        return _p._push(_re);
    }
    @:keep
    public static function _literal( _p:T_parser, _r:GoRune):Void {
        var _re = _p._newRegexp(((3 : GoUInt8)));
        _re.flags = _p._flags;
        if ((_p._flags & ((1 : GoUInt16))) != ((0 : GoUInt16))) {
            _r = _minFoldRune(_r);
        };
        if (_re.rune0 != null) _re.rune0[((0 : GoInt))] = _r;
        _re.rune = ((_re.rune0.__slice__(0, ((1 : GoInt))) : Slice<GoInt32>));
        _p._push(_re);
    }
    @:keep
    public static function _maybeConcat( _p:T_parser, _r:GoRune, _flags:Flags):Bool {
        var _n:GoInt = (_p._stack != null ? _p._stack.length : ((0 : GoInt)));
        if (_n < ((2 : GoInt))) {
            return false;
        };
        var _re1 = (_p._stack != null ? _p._stack[_n - ((1 : GoInt))] : null);
        var _re2 = (_p._stack != null ? _p._stack[_n - ((2 : GoInt))] : null);
        if (((_re1.op != ((3 : GoUInt8))) || (_re2.op != ((3 : GoUInt8)))) || ((_re1.flags & ((1 : GoUInt16))) != (_re2.flags & ((1 : GoUInt16))))) {
            return false;
        };
        _re2.rune = (_re2.rune != null ? _re2.rune.__append__(..._re1.rune.__toArray__()) : new Slice<GoInt32>(..._re1.rune.__toArray__()));
        if (_r >= ((0 : GoInt32))) {
            _re1.rune = ((_re1.rune0.__slice__(0, ((1 : GoInt))) : Slice<GoInt32>));
            if (_re1.rune != null) _re1.rune[((0 : GoInt))] = _r;
            _re1.flags = _flags;
            return true;
        };
        _p._stack = ((_p._stack.__slice__(0, _n - ((1 : GoInt))) : Slice<Ref<Regexp>>));
        _p._reuse(_re1);
        return false;
    }
    @:keep
    public static function _push( _p:T_parser, _re:Regexp):Regexp {
        if (((_re.op == ((4 : GoUInt8))) && ((_re.rune != null ? _re.rune.length : ((0 : GoInt))) == ((2 : GoInt)))) && ((_re.rune != null ? _re.rune[((0 : GoInt))] : ((0 : GoInt32))) == (_re.rune != null ? _re.rune[((1 : GoInt))] : ((0 : GoInt32))))) {
            if (_p._maybeConcat((_re.rune != null ? _re.rune[((0 : GoInt))] : ((0 : GoInt32))), _p._flags & (((1 : GoUInt16)) ^ ((-1 : GoUnTypedInt))))) {
                return null;
            };
            _re.op = ((3 : GoUInt8));
            _re.rune = ((_re.rune.__slice__(0, ((1 : GoInt))) : Slice<GoInt32>));
            _re.flags = _p._flags & (((1 : GoUInt16)) ^ ((-1 : GoUnTypedInt)));
        } else if (((((((_re.op == ((4 : GoUInt8))) && ((_re.rune != null ? _re.rune.length : ((0 : GoInt))) == ((4 : GoInt)))) && ((_re.rune != null ? _re.rune[((0 : GoInt))] : ((0 : GoInt32))) == (_re.rune != null ? _re.rune[((1 : GoInt))] : ((0 : GoInt32))))) && ((_re.rune != null ? _re.rune[((2 : GoInt))] : ((0 : GoInt32))) == (_re.rune != null ? _re.rune[((3 : GoInt))] : ((0 : GoInt32))))) && (stdgo.unicode.Unicode.simpleFold((_re.rune != null ? _re.rune[((0 : GoInt))] : ((0 : GoInt32)))) == (_re.rune != null ? _re.rune[((2 : GoInt))] : ((0 : GoInt32))))) && (stdgo.unicode.Unicode.simpleFold((_re.rune != null ? _re.rune[((2 : GoInt))] : ((0 : GoInt32)))) == (_re.rune != null ? _re.rune[((0 : GoInt))] : ((0 : GoInt32))))) || (((((_re.op == ((4 : GoUInt8))) && ((_re.rune != null ? _re.rune.length : ((0 : GoInt))) == ((2 : GoInt)))) && (((_re.rune != null ? _re.rune[((0 : GoInt))] : ((0 : GoInt32))) + ((1 : GoInt32))) == (_re.rune != null ? _re.rune[((1 : GoInt))] : ((0 : GoInt32))))) && (stdgo.unicode.Unicode.simpleFold((_re.rune != null ? _re.rune[((0 : GoInt))] : ((0 : GoInt32)))) == (_re.rune != null ? _re.rune[((1 : GoInt))] : ((0 : GoInt32))))) && (stdgo.unicode.Unicode.simpleFold((_re.rune != null ? _re.rune[((1 : GoInt))] : ((0 : GoInt32)))) == (_re.rune != null ? _re.rune[((0 : GoInt))] : ((0 : GoInt32)))))) {
            if (_p._maybeConcat((_re.rune != null ? _re.rune[((0 : GoInt))] : ((0 : GoInt32))), _p._flags | ((1 : GoUInt16)))) {
                return null;
            };
            _re.op = ((3 : GoUInt8));
            _re.rune = ((_re.rune.__slice__(0, ((1 : GoInt))) : Slice<GoInt32>));
            _re.flags = _p._flags | ((1 : GoUInt16));
        } else {
            _p._maybeConcat(((-1 : GoInt32)), ((0 : GoUInt16)));
        };
        _p._stack = (_p._stack != null ? _p._stack.__append__(_re) : new Slice<Ref<Regexp>>(_re));
        _p._checkHeight(_re);
        return _re;
    }
    @:keep
    public static function _calcHeight( _p:T_parser, _re:Regexp, _force:Bool):GoInt {
        if (!_force) {
            {
                var __tmp__ = (_p._height != null && _p._height.__exists__(_re) ? { value : _p._height[_re], ok : true } : { value : ((0 : GoInt)), ok : false }), _h:GoInt = __tmp__.value, _ok:Bool = __tmp__.ok;
                if (_ok) {
                    return _h;
                };
            };
        };
        var _h:GoInt = ((1 : GoInt));
        for (_0 => _sub in _re.sub) {
            var _hsub:GoInt = _p._calcHeight(_sub, false);
            if (_h < (((1 : GoInt)) + _hsub)) {
                _h = ((1 : GoInt)) + _hsub;
            };
        };
        if (_p._height != null) _p._height[_re] = _h;
        return _h;
    }
    @:keep
    public static function _checkHeight( _p:T_parser, _re:Regexp):Void {
        if (_p._numRegexp < ((1000 : GoInt))) {
            return;
        };
        if (_p._height == null) {
            _p._height = ((new GoObjectMap<Ref<Regexp>, GoInt>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.refType(stdgo.reflect.Reflect.GoType.named("Regexp", [], stdgo.reflect.Reflect.GoType.named("Regexp", [], stdgo.reflect.Reflect.GoType.structType([{ name : "op", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("Op", [], stdgo.reflect.Reflect.GoType.basic(uint8_kind)) }, { name : "flags", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("Flags", [], stdgo.reflect.Reflect.GoType.basic(uint16_kind)) }, { name : "sub", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.refType(stdgo.reflect.Reflect.GoType.named("Regexp", [], stdgo.reflect.Reflect.GoType.structType([{ name : "op", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("Op", [], stdgo.reflect.Reflect.GoType.basic(uint8_kind)) }, { name : "flags", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("Flags", [], stdgo.reflect.Reflect.GoType.basic(uint16_kind)) }, { name : "sub", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.refType(stdgo.reflect.Reflect.GoType.named("Regexp", [], stdgo.reflect.Reflect.GoType.invalidType))) }, { name : "sub0", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.arrayType(stdgo.reflect.Reflect.GoType.refType(stdgo.reflect.Reflect.GoType.named("Regexp", [], stdgo.reflect.Reflect.GoType.invalidType)), 1) }, { name : "rune", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(int32_kind)) }, { name : "rune0", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.arrayType(stdgo.reflect.Reflect.GoType.basic(int32_kind), 2) }, { name : "min", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) }, { name : "max", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) }, { name : "cap_", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) }, { name : "name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }])))) }, { name : "sub0", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.arrayType(stdgo.reflect.Reflect.GoType.refType(stdgo.reflect.Reflect.GoType.named("Regexp", [], stdgo.reflect.Reflect.GoType.structType([{ name : "op", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("Op", [], stdgo.reflect.Reflect.GoType.basic(uint8_kind)) }, { name : "flags", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("Flags", [], stdgo.reflect.Reflect.GoType.basic(uint16_kind)) }, { name : "sub", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.refType(stdgo.reflect.Reflect.GoType.named("Regexp", [], stdgo.reflect.Reflect.GoType.invalidType))) }, { name : "sub0", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.arrayType(stdgo.reflect.Reflect.GoType.refType(stdgo.reflect.Reflect.GoType.named("Regexp", [], stdgo.reflect.Reflect.GoType.invalidType)), 1) }, { name : "rune", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(int32_kind)) }, { name : "rune0", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.arrayType(stdgo.reflect.Reflect.GoType.basic(int32_kind), 2) }, { name : "min", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) }, { name : "max", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) }, { name : "cap_", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) }, { name : "name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }]))), 1) }, { name : "rune", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(int32_kind)) }, { name : "rune0", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.arrayType(stdgo.reflect.Reflect.GoType.basic(int32_kind), 2) }, { name : "min", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) }, { name : "max", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) }, { name : "cap_", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) }, { name : "name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }])))), stdgo.reflect.Reflect.GoType.basic(int_kind)))) : GoMap<Ref<Regexp>, GoInt>));
            for (_0 => _re in _p._stack) {
                _p._checkHeight(_re);
            };
        };
        if (_p._calcHeight(_re, true) > ((1000 : GoInt))) {
            throw Go.toInterface(((("regexp/syntax: internal error" : GoString))));
        };
    }
    @:keep
    public static function _reuse( _p:T_parser, _re:Regexp):Void {
        if (_p._height != null) {
            if (_p._height != null) _p._height.__remove__(_re);
        };
        if (_re.sub0 != null) _re.sub0[((0 : GoInt))] = _p._free;
        _p._free = _re;
    }
    @:keep
    public static function _newRegexp( _p:T_parser, _op:Op):Regexp {
        var _re = _p._free;
        if (_re != null) {
            _p._free = (_re.sub0 != null ? _re.sub0[((0 : GoInt))] : null);
            {
                var __tmp__ = ((new Regexp() : Regexp));
                _re.op = __tmp__.op;
                _re.flags = __tmp__.flags;
                _re.sub = __tmp__.sub;
                _re.sub0 = __tmp__.sub0;
                _re.rune = __tmp__.rune;
                _re.rune0 = __tmp__.rune0;
                _re.min = __tmp__.min;
                _re.max = __tmp__.max;
                _re.cap_ = __tmp__.cap_;
                _re.name = __tmp__.name;
            };
        } else {
            _re = new Regexp();
            _p._numRegexp++;
        };
        _re.op = _op;
        return _re;
    }
}
@:keep class T_ranges_static_extension {
    @:keep
    public static function swap( _ra:T_ranges, _i:GoInt, _j:GoInt):Void {
        var _p = _ra._p;
        _i = _i * (((2 : GoInt)));
        _j = _j * (((2 : GoInt)));
        {
            final __tmp__0 = (_p != null ? _p[_j] : ((0 : GoInt32)));
            final __tmp__1 = (_p != null ? _p[_j + ((1 : GoInt))] : ((0 : GoInt32)));
            final __tmp__2 = (_p != null ? _p[_i] : ((0 : GoInt32)));
            final __tmp__3 = (_p != null ? _p[_i + ((1 : GoInt))] : ((0 : GoInt32)));
            if (_p != null) _p[_i] = __tmp__0;
            if (_p != null) _p[_i + ((1 : GoInt))] = __tmp__1;
            if (_p != null) _p[_j] = __tmp__2;
            if (_p != null) _p[_j + ((1 : GoInt))] = __tmp__3;
        };
    }
    @:keep
    public static function len( _ra:T_ranges):GoInt {
        return (_ra._p != null ? _ra._p.length : ((0 : GoInt))) / ((2 : GoInt));
    }
    @:keep
    public static function less( _ra:T_ranges, _i:GoInt, _j:GoInt):Bool {
        var _p = _ra._p;
        _i = _i * (((2 : GoInt)));
        _j = _j * (((2 : GoInt)));
        return ((_p != null ? _p[_i] : ((0 : GoInt32))) < (_p != null ? _p[_j] : ((0 : GoInt32)))) || (((_p != null ? _p[_i] : ((0 : GoInt32))) == (_p != null ? _p[_j] : ((0 : GoInt32)))) && ((_p != null ? _p[_i + ((1 : GoInt))] : ((0 : GoInt32))) > (_p != null ? _p[_j + ((1 : GoInt))] : ((0 : GoInt32)))));
    }
}
@:keep class Prog_static_extension {
    @:keep
    public static function startCond( _p:Prog):EmptyOp {
        return stdgo.internal.Macro.controlFlow({
            var _flag:EmptyOp = new EmptyOp();
            var _pc:GoUInt32 = ((_p.start : GoUInt32));
            var _i = (_p.inst != null ? _p.inst[_pc] : new Inst());
            @:label("Loop") while (true) {
                {
                    var __switchIndex__ = -1;
                    while (true) {
                        if (_i.op == ((3 : GoUInt8))) {
                            _flag = _flag | (((_i.arg : EmptyOp)));
                            break;
                        } else if (_i.op == ((5 : GoUInt8))) {
                            return ((255 : GoUInt8));
                            break;
                        } else if (_i.op == ((2 : GoUInt8)) || _i.op == ((6 : GoUInt8))) {
                            break;
                        } else {
                            @:break {
                                ____exit____ = true;
                                ____break____ = true;
                                break;
                            };
                        };
                        break;
                    };
                };
                _pc = _i.out;
                _i = (_p.inst != null ? _p.inst[_pc] : new Inst());
            };
            return _flag;
        });
    }
    @:keep
    public static function prefix( _p:Prog):{ var _0 : GoString; var _1 : Bool; } {
        var _prefix:GoString = (("" : GoString)), _complete:Bool = false;
        var _i = _p._skipNop(((_p.start : GoUInt32)));
        if ((_i._op() != ((7 : GoUInt8))) || ((_i.rune != null ? _i.rune.length : ((0 : GoInt))) != ((1 : GoInt)))) {
            return { _0 : ((("" : GoString))), _1 : _i.op == ((4 : GoUInt8)) };
        };
        var _buf:stdgo.strings.Strings.Builder = new stdgo.strings.Strings.Builder();
        while ((((_i._op() == ((7 : GoUInt8))) && ((_i.rune != null ? _i.rune.length : ((0 : GoInt))) == ((1 : GoInt)))) && ((((_i.arg : Flags)) & ((1 : GoUInt16))) == ((0 : GoUInt16)))) && ((_i.rune != null ? _i.rune[((0 : GoInt))] : ((0 : GoInt32))) != ((65533 : GoInt32)))) {
            _buf.writeRune((_i.rune != null ? _i.rune[((0 : GoInt))] : ((0 : GoInt32))));
            _i = _p._skipNop(_i.out);
        };
        return { _0 : ((_buf.toString() : GoString)), _1 : _i.op == ((4 : GoUInt8)) };
    }
    @:keep
    public static function _skipNop( _p:Prog, _pc:GoUInt32):Inst {
        var _i = (_p.inst != null ? _p.inst[_pc] : new Inst());
        while ((_i.op == ((6 : GoUInt8))) || (_i.op == ((2 : GoUInt8)))) {
            _i = (_p.inst != null ? _p.inst[_i.out] : new Inst());
        };
        return _i;
    }
    @:keep
    public static function toString( _p:Prog):GoString {
        var _b:stdgo.strings.Strings.Builder = new stdgo.strings.Strings.Builder();
        _dumpProg(_b, _p);
        return ((_b.toString() : GoString));
    }
}
@:keep class Inst_static_extension {
    @:keep
    public static function toString( _i:Inst):GoString {
        var _b:stdgo.strings.Strings.Builder = new stdgo.strings.Strings.Builder();
        _dumpInst(_b, _i);
        return ((_b.toString() : GoString));
    }
    @:keep
    public static function matchEmptyWidth( _i:Inst, _before:GoRune, _after:GoRune):Bool {
        if (((_i.arg : EmptyOp)) == ((1 : GoUInt8))) {
            return (_before == ((((("\n" : GoString))).code : GoRune))) || (_before == ((-1 : GoInt32)));
        } else if (((_i.arg : EmptyOp)) == ((2 : GoUInt8))) {
            return (_after == ((((("\n" : GoString))).code : GoRune))) || (_after == ((-1 : GoInt32)));
        } else if (((_i.arg : EmptyOp)) == ((4 : GoUInt8))) {
            return _before == ((-1 : GoInt32));
        } else if (((_i.arg : EmptyOp)) == ((8 : GoUInt8))) {
            return _after == ((-1 : GoInt32));
        } else if (((_i.arg : EmptyOp)) == ((16 : GoUInt8))) {
            return isWordChar(_before) != isWordChar(_after);
        } else if (((_i.arg : EmptyOp)) == ((32 : GoUInt8))) {
            return isWordChar(_before) == isWordChar(_after);
        };
        throw Go.toInterface(((("unknown empty width arg" : GoString))));
    }
    @:keep
    public static function matchRunePos( _i:Inst, _r:GoRune):GoInt {
        var _rune = _i.rune;
        if ((_rune != null ? _rune.length : ((0 : GoInt))) == ((0 : GoInt))) {
            return ((-1 : GoInt));
        } else if ((_rune != null ? _rune.length : ((0 : GoInt))) == ((1 : GoInt))) {
            var _r0:GoInt32 = (_rune != null ? _rune[((0 : GoInt))] : ((0 : GoInt32)));
            if (_r == _r0) {
                return ((0 : GoInt));
            };
            if ((((_i.arg : Flags)) & ((1 : GoUInt16))) != ((0 : GoUInt16))) {
                {
                    var _r1:GoInt32 = stdgo.unicode.Unicode.simpleFold(_r0);
                    Go.cfor(_r1 != _r0, _r1 = stdgo.unicode.Unicode.simpleFold(_r1), {
                        if (_r == _r1) {
                            return ((0 : GoInt));
                        };
                    });
                };
            };
            return ((-1 : GoInt));
        } else if ((_rune != null ? _rune.length : ((0 : GoInt))) == ((2 : GoInt))) {
            if ((_r >= (_rune != null ? _rune[((0 : GoInt))] : ((0 : GoInt32)))) && (_r <= (_rune != null ? _rune[((1 : GoInt))] : ((0 : GoInt32))))) {
                return ((0 : GoInt));
            };
            return ((-1 : GoInt));
        } else if ((_rune != null ? _rune.length : ((0 : GoInt))) == ((4 : GoInt)) || (_rune != null ? _rune.length : ((0 : GoInt))) == ((6 : GoInt)) || (_rune != null ? _rune.length : ((0 : GoInt))) == ((8 : GoInt))) {
            {
                var _j:GoInt = ((0 : GoInt));
                Go.cfor(_j < (_rune != null ? _rune.length : ((0 : GoInt))), _j = _j + (((2 : GoInt))), {
                    if (_r < (_rune != null ? _rune[_j] : ((0 : GoInt32)))) {
                        return ((-1 : GoInt));
                    };
                    if (_r <= (_rune != null ? _rune[_j + ((1 : GoInt))] : ((0 : GoInt32)))) {
                        return _j / ((2 : GoInt));
                    };
                });
            };
            return ((-1 : GoInt));
        };
        var _lo:GoInt = ((0 : GoInt));
        var _hi:GoInt = (_rune != null ? _rune.length : ((0 : GoInt))) / ((2 : GoInt));
        while (_lo < _hi) {
            var _m:GoInt = _lo + ((_hi - _lo) / ((2 : GoInt)));
            {
                var _c:GoInt32 = (_rune != null ? _rune[((2 : GoInt)) * _m] : ((0 : GoInt32)));
                if (_c <= _r) {
                    if (_r <= (_rune != null ? _rune[(((2 : GoInt)) * _m) + ((1 : GoInt))] : ((0 : GoInt32)))) {
                        return _m;
                    };
                    _lo = _m + ((1 : GoInt));
                } else {
                    _hi = _m;
                };
            };
        };
        return ((-1 : GoInt));
    }
    @:keep
    public static function matchRune( _i:Inst, _r:GoRune):Bool {
        return _i.matchRunePos(_r) != ((-1 : GoInt));
    }
    @:keep
    public static function _op( _i:Inst):InstOp {
        var _op:InstOp = _i.op;
        if (_op == ((8 : GoUInt8)) || _op == ((9 : GoUInt8)) || _op == ((10 : GoUInt8))) {
            _op = ((7 : GoUInt8));
        };
        return _op;
    }
}
@:keep class Regexp_static_extension {
    @:keep
    public static function simplify( _re:Regexp):Regexp {
        if (_re == null) {
            return null;
        };
        if (_re.op == ((13 : GoUInt8)) || _re.op == ((18 : GoUInt8)) || _re.op == ((19 : GoUInt8))) {
            var _nre = _re;
            for (_i => _sub in _re.sub) {
                var _nsub = _sub.simplify();
                if ((_nre == _re) && (_nsub != _sub)) {
                    _nre = new Regexp();
                    {
                        var __tmp__ = (_re == null ? null : _re.__copy__());
                        _nre.op = __tmp__.op;
                        _nre.flags = __tmp__.flags;
                        _nre.sub = __tmp__.sub;
                        _nre.sub0 = __tmp__.sub0;
                        _nre.rune = __tmp__.rune;
                        _nre.rune0 = __tmp__.rune0;
                        _nre.min = __tmp__.min;
                        _nre.max = __tmp__.max;
                        _nre.cap_ = __tmp__.cap_;
                        _nre.name = __tmp__.name;
                    };
                    _nre.rune = ((null : Slice<GoInt32>));
                    _nre.sub = (((_nre.sub0.__slice__(0, ((0 : GoInt))) : Slice<Ref<Regexp>>)) != null ? ((_nre.sub0.__slice__(0, ((0 : GoInt))) : Slice<Ref<Regexp>>)).__append__(...((_re.sub.__slice__(0, _i) : Slice<Ref<Regexp>>)).__toArray__()) : new Slice<Ref<Regexp>>(...((_re.sub.__slice__(0, _i) : Slice<Ref<Regexp>>)).__toArray__()));
                };
                if (_nre != _re) {
                    _nre.sub = (_nre.sub != null ? _nre.sub.__append__(_nsub) : new Slice<Ref<Regexp>>(_nsub));
                };
            };
            return _nre;
        } else if (_re.op == ((14 : GoUInt8)) || _re.op == ((15 : GoUInt8)) || _re.op == ((16 : GoUInt8))) {
            var _sub = (_re.sub != null ? _re.sub[((0 : GoInt))] : null).simplify();
            return _simplify1(_re.op, _re.flags, _sub, _re);
        } else if (_re.op == ((17 : GoUInt8))) {
            if ((_re.min == ((0 : GoInt))) && (_re.max == ((0 : GoInt)))) {
                return (({ op : ((2 : GoUInt8)), flags : new Flags(), sub : ((null : Slice<Ref<Regexp>>)), sub0 : new GoArray<Ref<Regexp>>(...[for (i in 0 ... 1) null]), rune : ((null : Slice<GoInt32>)), rune0 : new GoArray<GoInt32>(...[for (i in 0 ... 2) ((0 : GoInt32))]), min : 0, max : 0, cap_ : 0, name : "" } : Regexp));
            };
            var _sub = (_re.sub != null ? _re.sub[((0 : GoInt))] : null).simplify();
            if (_re.max == ((-1 : GoInt))) {
                if (_re.min == ((0 : GoInt))) {
                    return _simplify1(((14 : GoUInt8)), _re.flags, _sub, null);
                };
                if (_re.min == ((1 : GoInt))) {
                    return _simplify1(((15 : GoUInt8)), _re.flags, _sub, null);
                };
                var _nre = (({ op : ((18 : GoUInt8)), flags : new Flags(), sub : ((null : Slice<Ref<Regexp>>)), sub0 : new GoArray<Ref<Regexp>>(...[for (i in 0 ... 1) null]), rune : ((null : Slice<GoInt32>)), rune0 : new GoArray<GoInt32>(...[for (i in 0 ... 2) ((0 : GoInt32))]), min : 0, max : 0, cap_ : 0, name : "" } : Regexp));
                _nre.sub = ((_nre.sub0.__slice__(0, ((0 : GoInt))) : Slice<Ref<Regexp>>));
                {
                    var _i:GoInt = ((0 : GoInt));
                    Go.cfor(_i < (_re.min - ((1 : GoInt))), _i++, {
                        _nre.sub = (_nre.sub != null ? _nre.sub.__append__(_sub) : new Slice<Ref<Regexp>>(_sub));
                    });
                };
                _nre.sub = (_nre.sub != null ? _nre.sub.__append__(_simplify1(((15 : GoUInt8)), _re.flags, _sub, null)) : new Slice<Ref<Regexp>>(_simplify1(((15 : GoUInt8)), _re.flags, _sub, null)));
                return _nre;
            };
            if ((_re.min == ((1 : GoInt))) && (_re.max == ((1 : GoInt)))) {
                return _sub;
            };
            var _prefix:Regexp = null;
            if (_re.min > ((0 : GoInt))) {
                _prefix = (({ op : ((18 : GoUInt8)), flags : new Flags(), sub : ((null : Slice<Ref<Regexp>>)), sub0 : new GoArray<Ref<Regexp>>(...[for (i in 0 ... 1) null]), rune : ((null : Slice<GoInt32>)), rune0 : new GoArray<GoInt32>(...[for (i in 0 ... 2) ((0 : GoInt32))]), min : 0, max : 0, cap_ : 0, name : "" } : Regexp));
                _prefix.sub = ((_prefix.sub0.__slice__(0, ((0 : GoInt))) : Slice<Ref<Regexp>>));
                {
                    var _i:GoInt = ((0 : GoInt));
                    Go.cfor(_i < _re.min, _i++, {
                        _prefix.sub = (_prefix.sub != null ? _prefix.sub.__append__(_sub) : new Slice<Ref<Regexp>>(_sub));
                    });
                };
            };
            if (_re.max > _re.min) {
                var _suffix = _simplify1(((16 : GoUInt8)), _re.flags, _sub, null);
                {
                    var _i:GoInt = _re.min + ((1 : GoInt));
                    Go.cfor(_i < _re.max, _i++, {
                        var _nre2 = (({ op : ((18 : GoUInt8)), flags : new Flags(), sub : ((null : Slice<Ref<Regexp>>)), sub0 : new GoArray<Ref<Regexp>>(...[for (i in 0 ... 1) null]), rune : ((null : Slice<GoInt32>)), rune0 : new GoArray<GoInt32>(...[for (i in 0 ... 2) ((0 : GoInt32))]), min : 0, max : 0, cap_ : 0, name : "" } : Regexp));
                        _nre2.sub = (((_nre2.sub0.__slice__(0, ((0 : GoInt))) : Slice<Ref<Regexp>>)) != null ? ((_nre2.sub0.__slice__(0, ((0 : GoInt))) : Slice<Ref<Regexp>>)).__append__(_sub, _suffix) : new Slice<Ref<Regexp>>(_sub, _suffix));
                        _suffix = _simplify1(((16 : GoUInt8)), _re.flags, _nre2, null);
                    });
                };
                if (_prefix == null) {
                    return _suffix;
                };
                _prefix.sub = (_prefix.sub != null ? _prefix.sub.__append__(_suffix) : new Slice<Ref<Regexp>>(_suffix));
            };
            if (_prefix != null) {
                return _prefix;
            };
            return (({ op : ((1 : GoUInt8)), flags : new Flags(), sub : ((null : Slice<Ref<Regexp>>)), sub0 : new GoArray<Ref<Regexp>>(...[for (i in 0 ... 1) null]), rune : ((null : Slice<GoInt32>)), rune0 : new GoArray<GoInt32>(...[for (i in 0 ... 2) ((0 : GoInt32))]), min : 0, max : 0, cap_ : 0, name : "" } : Regexp));
        };
        return _re;
    }
    @:keep
    public static function _capNames( _re:Regexp, _names:Slice<GoString>):Void {
        if (_re.op == ((13 : GoUInt8))) {
            if (_names != null) _names[_re.cap_] = _re.name;
        };
        for (_0 => _sub in _re.sub) {
            _sub._capNames(_names);
        };
    }
    @:keep
    public static function capNames( _re:Regexp):Slice<GoString> {
        var _names = new Slice<GoString>(...[for (i in 0 ... ((_re.maxCap() + ((1 : GoInt)) : GoInt)).toBasic()) (("" : GoString))]);
        _re._capNames(_names);
        return _names;
    }
    @:keep
    public static function maxCap( _re:Regexp):GoInt {
        var _m:GoInt = ((0 : GoInt));
        if (_re.op == ((13 : GoUInt8))) {
            _m = _re.cap_;
        };
        for (_0 => _sub in _re.sub) {
            {
                var _n:GoInt = _sub.maxCap();
                if (_m < _n) {
                    _m = _n;
                };
            };
        };
        return _m;
    }
    @:keep
    public static function toString( _re:Regexp):GoString {
        var _b:stdgo.strings.Strings.Builder = new stdgo.strings.Strings.Builder();
        _writeRegexp(_b, _re);
        return ((_b.toString() : GoString));
    }
    @:keep
    public static function equal( _x:Regexp, _y:Regexp):Bool {
        if ((_x == null) || (_y == null)) {
            return _x == _y;
        };
        if (_x.op != _y.op) {
            return false;
        };
        if (_x.op == ((10 : GoUInt8))) {
            if ((_x.flags & ((256 : GoUInt16))) != (_y.flags & ((256 : GoUInt16)))) {
                return false;
            };
        } else if (_x.op == ((3 : GoUInt8)) || _x.op == ((4 : GoUInt8))) {
            if ((_x.rune != null ? _x.rune.length : ((0 : GoInt))) != (_y.rune != null ? _y.rune.length : ((0 : GoInt)))) {
                return false;
            };
            for (_i => _r in _x.rune) {
                if (_r != (_y.rune != null ? _y.rune[_i] : ((0 : GoInt32)))) {
                    return false;
                };
            };
        } else if (_x.op == ((19 : GoUInt8)) || _x.op == ((18 : GoUInt8))) {
            if ((_x.sub != null ? _x.sub.length : ((0 : GoInt))) != (_y.sub != null ? _y.sub.length : ((0 : GoInt)))) {
                return false;
            };
            for (_i => _sub in _x.sub) {
                if (!_sub.equal((_y.sub != null ? _y.sub[_i] : null))) {
                    return false;
                };
            };
        } else if (_x.op == ((14 : GoUInt8)) || _x.op == ((15 : GoUInt8)) || _x.op == ((16 : GoUInt8))) {
            if (((_x.flags & ((32 : GoUInt16))) != (_y.flags & ((32 : GoUInt16)))) || !(_x.sub != null ? _x.sub[((0 : GoInt))] : null).equal((_y.sub != null ? _y.sub[((0 : GoInt))] : null))) {
                return false;
            };
        } else if (_x.op == ((17 : GoUInt8))) {
            if (((((_x.flags & ((32 : GoUInt16))) != (_y.flags & ((32 : GoUInt16)))) || (_x.min != _y.min)) || (_x.max != _y.max)) || !(_x.sub != null ? _x.sub[((0 : GoInt))] : null).equal((_y.sub != null ? _y.sub[((0 : GoInt))] : null))) {
                return false;
            };
        } else if (_x.op == ((13 : GoUInt8))) {
            if (((_x.cap_ != _y.cap_) || (_x.name != _y.name)) || !(_x.sub != null ? _x.sub[((0 : GoInt))] : null).equal((_y.sub != null ? _y.sub[((0 : GoInt))] : null))) {
                return false;
            };
        };
        return true;
    }
}
@:keep class ErrorCode_static_extension {
    @:keep
    public static function toString( _e:ErrorCode):GoString {
        return ((_e : GoString));
    }
}
@:keep class InstOp_static_extension {
    @:keep
    public static function toString( _i:InstOp):GoString {
        if (((_i : GoUInt)) >= (((_instOpNames != null ? _instOpNames.length : ((0 : GoInt))) : GoUInt))) {
            return ((("" : GoString)));
        };
        return (_instOpNames != null ? _instOpNames[_i] : (("" : GoString)));
    }
}
@:keep class Op_static_extension {
    @:keep
    public static function toString( _i:Op):GoString {
        if ((((1 : GoUInt8)) <= _i) && (_i <= ((19 : GoUInt8)))) {
            _i = _i - (((1 : GoUInt8)));
            return ((((("NoMatchEmptyMatchLiteralCharClassAnyCharNotNLAnyCharBeginLineEndLineBeginTextEndTextWordBoundaryNoWordBoundaryCaptureStarPlusQuestRepeatConcatAlternate" : GoString))).__slice__((__Op_index_0 != null ? __Op_index_0[_i] : ((0 : GoUInt8))), (__Op_index_0 != null ? __Op_index_0[_i + ((1 : GoUInt8))] : ((0 : GoUInt8)))) : GoString));
        } else if (_i == ((128 : GoUInt8))) {
            return ((("opPseudo" : GoString)));
        } else {
            return (((("Op(" : GoString))) + stdgo.strconv.Strconv.formatInt(((_i : GoInt64)), ((10 : GoInt)))) + (((")" : GoString)));
        };
    }
}
