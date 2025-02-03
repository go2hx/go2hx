package stdgo.regexp.syntax;
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
        this._stack = ([for (i in v) (i : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>>);
        return v;
    }
    public var _free(get, set) : Regexp;
    function get__free():Regexp return this._free;
    function set__free(v:Regexp):Regexp {
        this._free = (v : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>);
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
    public var _height(get, set) : stdgo.GoMap<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>, stdgo.GoInt>;
    function get__height():stdgo.GoMap<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>, stdgo.GoInt> return this._height;
    function set__height(v:stdgo.GoMap<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>, stdgo.GoInt>):stdgo.GoMap<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>, stdgo.GoInt> {
        this._height = (v : stdgo.GoMap<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>, stdgo.GoInt>);
        return v;
    }
    public var _size(get, set) : stdgo.GoMap<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>, stdgo.GoInt64>;
    function get__size():stdgo.GoMap<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>, stdgo.GoInt64> return this._size;
    function set__size(v:stdgo.GoMap<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>, stdgo.GoInt64>):stdgo.GoMap<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>, stdgo.GoInt64> {
        this._size = (v : stdgo.GoMap<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>, stdgo.GoInt64>);
        return v;
    }
    public function new(?_flags:Flags, ?_stack:Array<Regexp>, ?_free:Regexp, ?_numCap:StdTypes.Int, ?_wholeRegexp:String, ?_tmpClass:Array<StdTypes.Int>, ?_numRegexp:StdTypes.Int, ?_numRunes:StdTypes.Int, ?_repeats:haxe.Int64, ?_height:stdgo.GoMap<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>, stdgo.GoInt>, ?_size:stdgo.GoMap<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>, stdgo.GoInt64>) this = new stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser(
_flags,
([for (i in _stack) (i : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>>),
(_free : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>),
(_numCap : stdgo.GoInt),
(_wholeRegexp : stdgo.GoString),
([for (i in _tmpClass) (i : stdgo.GoInt32)] : stdgo.Slice<stdgo.GoInt32>),
(_numRegexp : stdgo.GoInt),
(_numRunes : stdgo.GoInt),
(_repeats : stdgo.GoInt64),
(_height : stdgo.GoMap<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>, stdgo.GoInt>),
(_size : stdgo.GoMap<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>, stdgo.GoInt64>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
