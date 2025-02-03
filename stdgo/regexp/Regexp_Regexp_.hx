package stdgo.regexp;
@:structInit @:using(stdgo.regexp.Regexp.Regexp_static_extension) abstract Regexp_(stdgo._internal.regexp.Regexp_Regexp.Regexp) from stdgo._internal.regexp.Regexp_Regexp.Regexp to stdgo._internal.regexp.Regexp_Regexp.Regexp {
    public var _expr(get, set) : String;
    function get__expr():String return this._expr;
    function set__expr(v:String):String {
        this._expr = (v : stdgo.GoString);
        return v;
    }
    public var _prog(get, set) : Prog;
    function get__prog():Prog return this._prog;
    function set__prog(v:Prog):Prog {
        this._prog = (v : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Prog.Prog>);
        return v;
    }
    public var _onepass(get, set) : T_onePassProg;
    function get__onepass():T_onePassProg return this._onepass;
    function set__onepass(v:T_onePassProg):T_onePassProg {
        this._onepass = (v : stdgo.Ref<stdgo._internal.regexp.Regexp_T_onePassProg.T_onePassProg>);
        return v;
    }
    public var _numSubexp(get, set) : StdTypes.Int;
    function get__numSubexp():StdTypes.Int return this._numSubexp;
    function set__numSubexp(v:StdTypes.Int):StdTypes.Int {
        this._numSubexp = (v : stdgo.GoInt);
        return v;
    }
    public var _maxBitStateLen(get, set) : StdTypes.Int;
    function get__maxBitStateLen():StdTypes.Int return this._maxBitStateLen;
    function set__maxBitStateLen(v:StdTypes.Int):StdTypes.Int {
        this._maxBitStateLen = (v : stdgo.GoInt);
        return v;
    }
    public var _subexpNames(get, set) : Array<String>;
    function get__subexpNames():Array<String> return [for (i in this._subexpNames) i];
    function set__subexpNames(v:Array<String>):Array<String> {
        this._subexpNames = ([for (i in v) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>);
        return v;
    }
    public var _prefix(get, set) : String;
    function get__prefix():String return this._prefix;
    function set__prefix(v:String):String {
        this._prefix = (v : stdgo.GoString);
        return v;
    }
    public var _prefixBytes(get, set) : Array<std.UInt>;
    function get__prefixBytes():Array<std.UInt> return [for (i in this._prefixBytes) i];
    function set__prefixBytes(v:Array<std.UInt>):Array<std.UInt> {
        this._prefixBytes = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var _prefixRune(get, set) : StdTypes.Int;
    function get__prefixRune():StdTypes.Int return this._prefixRune;
    function set__prefixRune(v:StdTypes.Int):StdTypes.Int {
        this._prefixRune = (v : stdgo.GoInt32);
        return v;
    }
    public var _prefixEnd(get, set) : std.UInt;
    function get__prefixEnd():std.UInt return this._prefixEnd;
    function set__prefixEnd(v:std.UInt):std.UInt {
        this._prefixEnd = (v : stdgo.GoUInt32);
        return v;
    }
    public var _mpool(get, set) : StdTypes.Int;
    function get__mpool():StdTypes.Int return this._mpool;
    function set__mpool(v:StdTypes.Int):StdTypes.Int {
        this._mpool = (v : stdgo.GoInt);
        return v;
    }
    public var _matchcap(get, set) : StdTypes.Int;
    function get__matchcap():StdTypes.Int return this._matchcap;
    function set__matchcap(v:StdTypes.Int):StdTypes.Int {
        this._matchcap = (v : stdgo.GoInt);
        return v;
    }
    public var _prefixComplete(get, set) : Bool;
    function get__prefixComplete():Bool return this._prefixComplete;
    function set__prefixComplete(v:Bool):Bool {
        this._prefixComplete = v;
        return v;
    }
    public var _cond(get, set) : EmptyOp;
    function get__cond():EmptyOp return this._cond;
    function set__cond(v:EmptyOp):EmptyOp {
        this._cond = v;
        return v;
    }
    public var _minInputLen(get, set) : StdTypes.Int;
    function get__minInputLen():StdTypes.Int return this._minInputLen;
    function set__minInputLen(v:StdTypes.Int):StdTypes.Int {
        this._minInputLen = (v : stdgo.GoInt);
        return v;
    }
    public var _longest(get, set) : Bool;
    function get__longest():Bool return this._longest;
    function set__longest(v:Bool):Bool {
        this._longest = v;
        return v;
    }
    public function new(?_expr:String, ?_prog:Prog, ?_onepass:T_onePassProg, ?_numSubexp:StdTypes.Int, ?_maxBitStateLen:StdTypes.Int, ?_subexpNames:Array<String>, ?_prefix:String, ?_prefixBytes:Array<std.UInt>, ?_prefixRune:StdTypes.Int, ?_prefixEnd:std.UInt, ?_mpool:StdTypes.Int, ?_matchcap:StdTypes.Int, ?_prefixComplete:Bool, ?_cond:EmptyOp, ?_minInputLen:StdTypes.Int, ?_longest:Bool) this = new stdgo._internal.regexp.Regexp_Regexp.Regexp(
(_expr : stdgo.GoString),
(_prog : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Prog.Prog>),
(_onepass : stdgo.Ref<stdgo._internal.regexp.Regexp_T_onePassProg.T_onePassProg>),
(_numSubexp : stdgo.GoInt),
(_maxBitStateLen : stdgo.GoInt),
([for (i in _subexpNames) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>),
(_prefix : stdgo.GoString),
([for (i in _prefixBytes) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>),
(_prefixRune : stdgo.GoInt32),
(_prefixEnd : stdgo.GoUInt32),
(_mpool : stdgo.GoInt),
(_matchcap : stdgo.GoInt),
_prefixComplete,
_cond,
(_minInputLen : stdgo.GoInt),
_longest);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
