package stdgo;
/**
    Package regexp implements regular expression search.
    
    The syntax of the regular expressions accepted is the same
    general syntax used by Perl, Python, and other languages.
    More precisely, it is the syntax accepted by RE2 and described at
    https://golang.org/s/re2syntax, except for \C.
    For an overview of the syntax, run
    
    	go doc regexp/syntax
    
    The regexp implementation provided by this package is
    guaranteed to run in time linear in the size of the input.
    (This is a property not guaranteed by most open source
    implementations of regular expressions.) For more information
    about this property, see
    
    	https://swtch.com/~rsc/regexp/regexp1.html
    
    or any book about automata theory.
    
    All characters are UTF-8-encoded code points.
    Following utf8.DecodeRune, each byte of an invalid UTF-8 sequence
    is treated as if it encoded utf8.RuneError (U+FFFD).
    
    There are 16 methods of Regexp that match a regular expression and identify
    the matched text. Their names are matched by this regular expression:
    
    	Find(All)?(String)?(Submatch)?(Index)?
    
    If 'All' is present, the routine matches successive non-overlapping
    matches of the entire expression. Empty matches abutting a preceding
    match are ignored. The return value is a slice containing the successive
    return values of the corresponding non-'All' routine. These routines take
    an extra integer argument, n. If n >= 0, the function returns at most n
    matches/submatches; otherwise, it returns all of them.
    
    If 'String' is present, the argument is a string; otherwise it is a slice
    of bytes; return values are adjusted as appropriate.
    
    If 'Submatch' is present, the return value is a slice identifying the
    successive submatches of the expression. Submatches are matches of
    parenthesized subexpressions (also known as capturing groups) within the
    regular expression, numbered from left to right in order of opening
    parenthesis. Submatch 0 is the match of the entire expression, submatch 1 is
    the match of the first parenthesized subexpression, and so on.
    
    If 'Index' is present, matches and submatches are identified by byte index
    pairs within the input string: result[2*n:2*n+2] identifies the indexes of
    the nth submatch. The pair for n==0 identifies the match of the entire
    expression. If 'Index' is not present, the match is identified by the text
    of the match/submatch. If an index is negative or text is nil, it means that
    subexpression did not match any string in the input. For 'String' versions
    an empty string means either no match or an empty match.
    
    There is also a subset of the methods that can be applied to text read
    from a RuneReader:
    
    	MatchReader, FindReaderIndex, FindReaderSubmatchIndex
    
    This set may grow. Note that regular expression matches may need to
    examine text beyond the text returned by a match, so the methods that
    match text from a RuneReader may read arbitrarily far into the input
    before returning.
    
    (There are a few other methods that do not match this pattern.)
**/
private var __go2hxdoc__package : Bool;
typedef T_input = stdgo._internal.regexp.Regexp.T_input;
abstract T_stringError(stdgo._internal.regexp.Regexp.T_stringError) from stdgo._internal.regexp.Regexp.T_stringError to stdgo._internal.regexp.Regexp.T_stringError {
    public var _re(get, set) : String;
    function get__re():String return this._re;
    function set__re(v:String):String {
        this._re = v;
        return v;
    }
    public var _err(get, set) : String;
    function get__err():String return this._err;
    function set__err(v:String):String {
        this._err = v;
        return v;
    }
    public function new(?_re:String, ?_err:String) this = new stdgo._internal.regexp.Regexp.T_stringError(_re, _err);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
abstract ReplaceTest(stdgo._internal.regexp.Regexp.ReplaceTest) from stdgo._internal.regexp.Regexp.ReplaceTest to stdgo._internal.regexp.Regexp.ReplaceTest {
    public var _pattern(get, set) : String;
    function get__pattern():String return this._pattern;
    function set__pattern(v:String):String {
        this._pattern = v;
        return v;
    }
    public var _replacement(get, set) : String;
    function get__replacement():String return this._replacement;
    function set__replacement(v:String):String {
        this._replacement = v;
        return v;
    }
    public var _input(get, set) : String;
    function get__input():String return this._input;
    function set__input(v:String):String {
        this._input = v;
        return v;
    }
    public var _output(get, set) : String;
    function get__output():String return this._output;
    function set__output(v:String):String {
        this._output = v;
        return v;
    }
    public function new(?_pattern:String, ?_replacement:String, ?_input:String, ?_output:String) this = new stdgo._internal.regexp.Regexp.ReplaceTest(_pattern, _replacement, _input, _output);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
abstract ReplaceFuncTest(stdgo._internal.regexp.Regexp.ReplaceFuncTest) from stdgo._internal.regexp.Regexp.ReplaceFuncTest to stdgo._internal.regexp.Regexp.ReplaceFuncTest {
    public var _pattern(get, set) : String;
    function get__pattern():String return this._pattern;
    function set__pattern(v:String):String {
        this._pattern = v;
        return v;
    }
    public var _replacement(get, set) : stdgo.GoString -> stdgo.GoString;
    function get__replacement():stdgo.GoString -> stdgo.GoString return _0 -> this._replacement(_0);
    function set__replacement(v:stdgo.GoString -> stdgo.GoString):stdgo.GoString -> stdgo.GoString {
        this._replacement = v;
        return v;
    }
    public var _input(get, set) : String;
    function get__input():String return this._input;
    function set__input(v:String):String {
        this._input = v;
        return v;
    }
    public var _output(get, set) : String;
    function get__output():String return this._output;
    function set__output(v:String):String {
        this._output = v;
        return v;
    }
    public function new(?_pattern:String, ?_replacement:stdgo.GoString -> stdgo.GoString, ?_input:String, ?_output:String) this = new stdgo._internal.regexp.Regexp.ReplaceFuncTest(_pattern, _replacement, _input, _output);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
abstract MetaTest(stdgo._internal.regexp.Regexp.MetaTest) from stdgo._internal.regexp.Regexp.MetaTest to stdgo._internal.regexp.Regexp.MetaTest {
    public var _pattern(get, set) : String;
    function get__pattern():String return this._pattern;
    function set__pattern(v:String):String {
        this._pattern = v;
        return v;
    }
    public var _output(get, set) : String;
    function get__output():String return this._output;
    function set__output(v:String):String {
        this._output = v;
        return v;
    }
    public var _literal(get, set) : String;
    function get__literal():String return this._literal;
    function set__literal(v:String):String {
        this._literal = v;
        return v;
    }
    public var _isLiteral(get, set) : Bool;
    function get__isLiteral():Bool return this._isLiteral;
    function set__isLiteral(v:Bool):Bool {
        this._isLiteral = v;
        return v;
    }
    public function new(?_pattern:String, ?_output:String, ?_literal:String, ?_isLiteral:Bool) this = new stdgo._internal.regexp.Regexp.MetaTest(_pattern, _output, _literal, _isLiteral);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
abstract T_subexpIndex(stdgo._internal.regexp.Regexp.T_subexpIndex) from stdgo._internal.regexp.Regexp.T_subexpIndex to stdgo._internal.regexp.Regexp.T_subexpIndex {
    public var _name(get, set) : String;
    function get__name():String return this._name;
    function set__name(v:String):String {
        this._name = v;
        return v;
    }
    public var _index(get, set) : StdTypes.Int;
    function get__index():StdTypes.Int return this._index;
    function set__index(v:StdTypes.Int):StdTypes.Int {
        this._index = v;
        return v;
    }
    public function new(?_name:String, ?_index:StdTypes.Int) this = new stdgo._internal.regexp.Regexp.T_subexpIndex(_name, _index);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
abstract T_subexpCase(stdgo._internal.regexp.Regexp.T_subexpCase) from stdgo._internal.regexp.Regexp.T_subexpCase to stdgo._internal.regexp.Regexp.T_subexpCase {
    public var _input(get, set) : String;
    function get__input():String return this._input;
    function set__input(v:String):String {
        this._input = v;
        return v;
    }
    public var _num(get, set) : StdTypes.Int;
    function get__num():StdTypes.Int return this._num;
    function set__num(v:StdTypes.Int):StdTypes.Int {
        this._num = v;
        return v;
    }
    public var _names(get, set) : Array<String>;
    function get__names():Array<String> return [for (i in this._names) i];
    function set__names(v:Array<String>):Array<String> {
        this._names = ([for (i in v) i] : stdgo.Slice<stdgo.GoString>);
        return v;
    }
    public var _indices(get, set) : Array<stdgo._internal.regexp.Regexp.T_subexpIndex>;
    function get__indices():Array<stdgo._internal.regexp.Regexp.T_subexpIndex> return [for (i in this._indices) i];
    function set__indices(v:Array<stdgo._internal.regexp.Regexp.T_subexpIndex>):Array<stdgo._internal.regexp.Regexp.T_subexpIndex> {
        this._indices = ([for (i in v) i] : stdgo.Slice<stdgo._internal.regexp.Regexp.T_subexpIndex>);
        return v;
    }
    public function new(?_input:String, ?_num:StdTypes.Int, ?_names:Array<String>, ?_indices:Array<stdgo._internal.regexp.Regexp.T_subexpIndex>) this = new stdgo._internal.regexp.Regexp.T_subexpCase(_input, _num, ([for (i in _names) i] : stdgo.Slice<stdgo.GoString>), ([for (i in _indices) i] : stdgo.Slice<stdgo._internal.regexp.Regexp.T_subexpIndex>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
abstract T_job(stdgo._internal.regexp.Regexp.T_job) from stdgo._internal.regexp.Regexp.T_job to stdgo._internal.regexp.Regexp.T_job {
    public var _pc(get, set) : std.UInt;
    function get__pc():std.UInt return this._pc;
    function set__pc(v:std.UInt):std.UInt {
        this._pc = v;
        return v;
    }
    public var _arg(get, set) : Bool;
    function get__arg():Bool return this._arg;
    function set__arg(v:Bool):Bool {
        this._arg = v;
        return v;
    }
    public var _pos(get, set) : StdTypes.Int;
    function get__pos():StdTypes.Int return this._pos;
    function set__pos(v:StdTypes.Int):StdTypes.Int {
        this._pos = v;
        return v;
    }
    public function new(?_pc:std.UInt, ?_arg:Bool, ?_pos:StdTypes.Int) this = new stdgo._internal.regexp.Regexp.T_job(_pc, _arg, _pos);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
abstract T_bitState(stdgo._internal.regexp.Regexp.T_bitState) from stdgo._internal.regexp.Regexp.T_bitState to stdgo._internal.regexp.Regexp.T_bitState {
    public var _end(get, set) : StdTypes.Int;
    function get__end():StdTypes.Int return this._end;
    function set__end(v:StdTypes.Int):StdTypes.Int {
        this._end = v;
        return v;
    }
    public var _cap(get, set) : Array<StdTypes.Int>;
    function get__cap():Array<StdTypes.Int> return [for (i in this._cap) i];
    function set__cap(v:Array<StdTypes.Int>):Array<StdTypes.Int> {
        this._cap = ([for (i in v) i] : stdgo.Slice<stdgo.GoInt>);
        return v;
    }
    public var _matchcap(get, set) : Array<StdTypes.Int>;
    function get__matchcap():Array<StdTypes.Int> return [for (i in this._matchcap) i];
    function set__matchcap(v:Array<StdTypes.Int>):Array<StdTypes.Int> {
        this._matchcap = ([for (i in v) i] : stdgo.Slice<stdgo.GoInt>);
        return v;
    }
    public var _jobs(get, set) : Array<stdgo._internal.regexp.Regexp.T_job>;
    function get__jobs():Array<stdgo._internal.regexp.Regexp.T_job> return [for (i in this._jobs) i];
    function set__jobs(v:Array<stdgo._internal.regexp.Regexp.T_job>):Array<stdgo._internal.regexp.Regexp.T_job> {
        this._jobs = ([for (i in v) i] : stdgo.Slice<stdgo._internal.regexp.Regexp.T_job>);
        return v;
    }
    public var _visited(get, set) : Array<std.UInt>;
    function get__visited():Array<std.UInt> return [for (i in this._visited) i];
    function set__visited(v:Array<std.UInt>):Array<std.UInt> {
        this._visited = ([for (i in v) i] : stdgo.Slice<stdgo.GoUInt32>);
        return v;
    }
    public var _inputs(get, set) : stdgo._internal.regexp.Regexp.T_inputs;
    function get__inputs():stdgo._internal.regexp.Regexp.T_inputs return this._inputs;
    function set__inputs(v:stdgo._internal.regexp.Regexp.T_inputs):stdgo._internal.regexp.Regexp.T_inputs {
        this._inputs = v;
        return v;
    }
    public function new(?_end:StdTypes.Int, ?_cap:Array<StdTypes.Int>, ?_matchcap:Array<StdTypes.Int>, ?_jobs:Array<stdgo._internal.regexp.Regexp.T_job>, ?_visited:Array<std.UInt>, ?_inputs:stdgo._internal.regexp.Regexp.T_inputs) this = new stdgo._internal.regexp.Regexp.T_bitState(_end, ([for (i in _cap) i] : stdgo.Slice<stdgo.GoInt>), ([for (i in _matchcap) i] : stdgo.Slice<stdgo.GoInt>), ([for (i in _jobs) i] : stdgo.Slice<stdgo._internal.regexp.Regexp.T_job>), ([for (i in _visited) i] : stdgo.Slice<stdgo.GoUInt32>), _inputs);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
abstract T_queue(stdgo._internal.regexp.Regexp.T_queue) from stdgo._internal.regexp.Regexp.T_queue to stdgo._internal.regexp.Regexp.T_queue {
    public var _sparse(get, set) : Array<std.UInt>;
    function get__sparse():Array<std.UInt> return [for (i in this._sparse) i];
    function set__sparse(v:Array<std.UInt>):Array<std.UInt> {
        this._sparse = ([for (i in v) i] : stdgo.Slice<stdgo.GoUInt32>);
        return v;
    }
    public var _dense(get, set) : Array<stdgo._internal.regexp.Regexp.T_entry>;
    function get__dense():Array<stdgo._internal.regexp.Regexp.T_entry> return [for (i in this._dense) i];
    function set__dense(v:Array<stdgo._internal.regexp.Regexp.T_entry>):Array<stdgo._internal.regexp.Regexp.T_entry> {
        this._dense = ([for (i in v) i] : stdgo.Slice<stdgo._internal.regexp.Regexp.T_entry>);
        return v;
    }
    public function new(?_sparse:Array<std.UInt>, ?_dense:Array<stdgo._internal.regexp.Regexp.T_entry>) this = new stdgo._internal.regexp.Regexp.T_queue(([for (i in _sparse) i] : stdgo.Slice<stdgo.GoUInt32>), ([for (i in _dense) i] : stdgo.Slice<stdgo._internal.regexp.Regexp.T_entry>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
abstract T_entry(stdgo._internal.regexp.Regexp.T_entry) from stdgo._internal.regexp.Regexp.T_entry to stdgo._internal.regexp.Regexp.T_entry {
    public var _pc(get, set) : std.UInt;
    function get__pc():std.UInt return this._pc;
    function set__pc(v:std.UInt):std.UInt {
        this._pc = v;
        return v;
    }
    public var _t(get, set) : stdgo._internal.regexp.Regexp.T_thread;
    function get__t():stdgo._internal.regexp.Regexp.T_thread return this._t;
    function set__t(v:stdgo._internal.regexp.Regexp.T_thread):stdgo._internal.regexp.Regexp.T_thread {
        this._t = v;
        return v;
    }
    public function new(?_pc:std.UInt, ?_t:stdgo._internal.regexp.Regexp.T_thread) this = new stdgo._internal.regexp.Regexp.T_entry(_pc, _t);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
abstract T_thread(stdgo._internal.regexp.Regexp.T_thread) from stdgo._internal.regexp.Regexp.T_thread to stdgo._internal.regexp.Regexp.T_thread {
    public var _inst(get, set) : stdgo._internal.regexp.syntax.Syntax.Inst;
    function get__inst():stdgo._internal.regexp.syntax.Syntax.Inst return this._inst;
    function set__inst(v:stdgo._internal.regexp.syntax.Syntax.Inst):stdgo._internal.regexp.syntax.Syntax.Inst {
        this._inst = v;
        return v;
    }
    public var _cap(get, set) : Array<StdTypes.Int>;
    function get__cap():Array<StdTypes.Int> return [for (i in this._cap) i];
    function set__cap(v:Array<StdTypes.Int>):Array<StdTypes.Int> {
        this._cap = ([for (i in v) i] : stdgo.Slice<stdgo.GoInt>);
        return v;
    }
    public function new(?_inst:stdgo._internal.regexp.syntax.Syntax.Inst, ?_cap:Array<StdTypes.Int>) this = new stdgo._internal.regexp.Regexp.T_thread(_inst, ([for (i in _cap) i] : stdgo.Slice<stdgo.GoInt>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
abstract T_machine(stdgo._internal.regexp.Regexp.T_machine) from stdgo._internal.regexp.Regexp.T_machine to stdgo._internal.regexp.Regexp.T_machine {
    public var _re(get, set) : stdgo._internal.regexp.Regexp.Regexp;
    function get__re():stdgo._internal.regexp.Regexp.Regexp return this._re;
    function set__re(v:stdgo._internal.regexp.Regexp.Regexp):stdgo._internal.regexp.Regexp.Regexp {
        this._re = v;
        return v;
    }
    public var _p(get, set) : stdgo._internal.regexp.syntax.Syntax.Prog;
    function get__p():stdgo._internal.regexp.syntax.Syntax.Prog return this._p;
    function set__p(v:stdgo._internal.regexp.syntax.Syntax.Prog):stdgo._internal.regexp.syntax.Syntax.Prog {
        this._p = v;
        return v;
    }
    public var _q0(get, set) : stdgo._internal.regexp.Regexp.T_queue;
    function get__q0():stdgo._internal.regexp.Regexp.T_queue return this._q0;
    function set__q0(v:stdgo._internal.regexp.Regexp.T_queue):stdgo._internal.regexp.Regexp.T_queue {
        this._q0 = v;
        return v;
    }
    public var _q1(get, set) : stdgo._internal.regexp.Regexp.T_queue;
    function get__q1():stdgo._internal.regexp.Regexp.T_queue return this._q1;
    function set__q1(v:stdgo._internal.regexp.Regexp.T_queue):stdgo._internal.regexp.Regexp.T_queue {
        this._q1 = v;
        return v;
    }
    public var _pool(get, set) : Array<stdgo._internal.regexp.Regexp.T_thread>;
    function get__pool():Array<stdgo._internal.regexp.Regexp.T_thread> return [for (i in this._pool) i];
    function set__pool(v:Array<stdgo._internal.regexp.Regexp.T_thread>):Array<stdgo._internal.regexp.Regexp.T_thread> {
        this._pool = ([for (i in v) i] : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.Regexp.T_thread>>);
        return v;
    }
    public var _matched(get, set) : Bool;
    function get__matched():Bool return this._matched;
    function set__matched(v:Bool):Bool {
        this._matched = v;
        return v;
    }
    public var _matchcap(get, set) : Array<StdTypes.Int>;
    function get__matchcap():Array<StdTypes.Int> return [for (i in this._matchcap) i];
    function set__matchcap(v:Array<StdTypes.Int>):Array<StdTypes.Int> {
        this._matchcap = ([for (i in v) i] : stdgo.Slice<stdgo.GoInt>);
        return v;
    }
    public var _inputs(get, set) : stdgo._internal.regexp.Regexp.T_inputs;
    function get__inputs():stdgo._internal.regexp.Regexp.T_inputs return this._inputs;
    function set__inputs(v:stdgo._internal.regexp.Regexp.T_inputs):stdgo._internal.regexp.Regexp.T_inputs {
        this._inputs = v;
        return v;
    }
    public function new(?_re:stdgo._internal.regexp.Regexp.Regexp, ?_p:stdgo._internal.regexp.syntax.Syntax.Prog, ?_q0:stdgo._internal.regexp.Regexp.T_queue, ?_q1:stdgo._internal.regexp.Regexp.T_queue, ?_pool:Array<stdgo._internal.regexp.Regexp.T_thread>, ?_matched:Bool, ?_matchcap:Array<StdTypes.Int>, ?_inputs:stdgo._internal.regexp.Regexp.T_inputs) this = new stdgo._internal.regexp.Regexp.T_machine(_re, _p, _q0, _q1, ([for (i in _pool) i] : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.Regexp.T_thread>>), _matched, ([for (i in _matchcap) i] : stdgo.Slice<stdgo.GoInt>), _inputs);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
abstract T_inputs(stdgo._internal.regexp.Regexp.T_inputs) from stdgo._internal.regexp.Regexp.T_inputs to stdgo._internal.regexp.Regexp.T_inputs {
    public var _bytes(get, set) : stdgo._internal.regexp.Regexp.T_inputBytes;
    function get__bytes():stdgo._internal.regexp.Regexp.T_inputBytes return this._bytes;
    function set__bytes(v:stdgo._internal.regexp.Regexp.T_inputBytes):stdgo._internal.regexp.Regexp.T_inputBytes {
        this._bytes = v;
        return v;
    }
    public var _string(get, set) : stdgo._internal.regexp.Regexp.T_inputString;
    function get__string():stdgo._internal.regexp.Regexp.T_inputString return this._string;
    function set__string(v:stdgo._internal.regexp.Regexp.T_inputString):stdgo._internal.regexp.Regexp.T_inputString {
        this._string = v;
        return v;
    }
    public var _reader(get, set) : stdgo._internal.regexp.Regexp.T_inputReader;
    function get__reader():stdgo._internal.regexp.Regexp.T_inputReader return this._reader;
    function set__reader(v:stdgo._internal.regexp.Regexp.T_inputReader):stdgo._internal.regexp.Regexp.T_inputReader {
        this._reader = v;
        return v;
    }
    public function new(?_bytes:stdgo._internal.regexp.Regexp.T_inputBytes, ?_string:stdgo._internal.regexp.Regexp.T_inputString, ?_reader:stdgo._internal.regexp.Regexp.T_inputReader) this = new stdgo._internal.regexp.Regexp.T_inputs(_bytes, _string, _reader);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
abstract T_onePassMachine(stdgo._internal.regexp.Regexp.T_onePassMachine) from stdgo._internal.regexp.Regexp.T_onePassMachine to stdgo._internal.regexp.Regexp.T_onePassMachine {
    public var _inputs(get, set) : stdgo._internal.regexp.Regexp.T_inputs;
    function get__inputs():stdgo._internal.regexp.Regexp.T_inputs return this._inputs;
    function set__inputs(v:stdgo._internal.regexp.Regexp.T_inputs):stdgo._internal.regexp.Regexp.T_inputs {
        this._inputs = v;
        return v;
    }
    public var _matchcap(get, set) : Array<StdTypes.Int>;
    function get__matchcap():Array<StdTypes.Int> return [for (i in this._matchcap) i];
    function set__matchcap(v:Array<StdTypes.Int>):Array<StdTypes.Int> {
        this._matchcap = ([for (i in v) i] : stdgo.Slice<stdgo.GoInt>);
        return v;
    }
    public function new(?_inputs:stdgo._internal.regexp.Regexp.T_inputs, ?_matchcap:Array<StdTypes.Int>) this = new stdgo._internal.regexp.Regexp.T_onePassMachine(_inputs, ([for (i in _matchcap) i] : stdgo.Slice<stdgo.GoInt>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
abstract FindTest(stdgo._internal.regexp.Regexp.FindTest) from stdgo._internal.regexp.Regexp.FindTest to stdgo._internal.regexp.Regexp.FindTest {
    public var _pat(get, set) : String;
    function get__pat():String return this._pat;
    function set__pat(v:String):String {
        this._pat = v;
        return v;
    }
    public var _text(get, set) : String;
    function get__text():String return this._text;
    function set__text(v:String):String {
        this._text = v;
        return v;
    }
    public var _matches(get, set) : Array<Array<StdTypes.Int>>;
    function get__matches():Array<Array<StdTypes.Int>> return [for (i in this._matches) [for (i in i) i]];
    function set__matches(v:Array<Array<StdTypes.Int>>):Array<Array<StdTypes.Int>> {
        this._matches = ([for (i in v) ([for (i in i) i] : stdgo.Slice<stdgo.GoInt>)] : stdgo.Slice<stdgo.Slice<stdgo.GoInt>>);
        return v;
    }
    public function new(?_pat:String, ?_text:String, ?_matches:Array<Array<StdTypes.Int>>) this = new stdgo._internal.regexp.Regexp.FindTest(_pat, _text, ([for (i in _matches) ([for (i in i) i] : stdgo.Slice<stdgo.GoInt>)] : stdgo.Slice<stdgo.Slice<stdgo.GoInt>>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
abstract T_onePassProg(stdgo._internal.regexp.Regexp.T_onePassProg) from stdgo._internal.regexp.Regexp.T_onePassProg to stdgo._internal.regexp.Regexp.T_onePassProg {
    public var inst(get, set) : Array<stdgo._internal.regexp.Regexp.T_onePassInst>;
    function get_inst():Array<stdgo._internal.regexp.Regexp.T_onePassInst> return [for (i in this.inst) i];
    function set_inst(v:Array<stdgo._internal.regexp.Regexp.T_onePassInst>):Array<stdgo._internal.regexp.Regexp.T_onePassInst> {
        this.inst = ([for (i in v) i] : stdgo.Slice<stdgo._internal.regexp.Regexp.T_onePassInst>);
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
    public function new(?inst:Array<stdgo._internal.regexp.Regexp.T_onePassInst>, ?start:StdTypes.Int, ?numCap:StdTypes.Int) this = new stdgo._internal.regexp.Regexp.T_onePassProg(([for (i in inst) i] : stdgo.Slice<stdgo._internal.regexp.Regexp.T_onePassInst>), start, numCap);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
abstract T_onePassInst(stdgo._internal.regexp.Regexp.T_onePassInst) from stdgo._internal.regexp.Regexp.T_onePassInst to stdgo._internal.regexp.Regexp.T_onePassInst {
    public var inst(get, set) : stdgo._internal.regexp.syntax.Syntax.Inst;
    function get_inst():stdgo._internal.regexp.syntax.Syntax.Inst return this.inst;
    function set_inst(v:stdgo._internal.regexp.syntax.Syntax.Inst):stdgo._internal.regexp.syntax.Syntax.Inst {
        this.inst = v;
        return v;
    }
    public var next(get, set) : Array<std.UInt>;
    function get_next():Array<std.UInt> return [for (i in this.next) i];
    function set_next(v:Array<std.UInt>):Array<std.UInt> {
        this.next = ([for (i in v) i] : stdgo.Slice<stdgo.GoUInt32>);
        return v;
    }
    public function new(?inst:stdgo._internal.regexp.syntax.Syntax.Inst, ?next:Array<std.UInt>) this = new stdgo._internal.regexp.Regexp.T_onePassInst(inst, ([for (i in next) i] : stdgo.Slice<stdgo.GoUInt32>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
abstract T_queueOnePass(stdgo._internal.regexp.Regexp.T_queueOnePass) from stdgo._internal.regexp.Regexp.T_queueOnePass to stdgo._internal.regexp.Regexp.T_queueOnePass {
    public var _sparse(get, set) : Array<std.UInt>;
    function get__sparse():Array<std.UInt> return [for (i in this._sparse) i];
    function set__sparse(v:Array<std.UInt>):Array<std.UInt> {
        this._sparse = ([for (i in v) i] : stdgo.Slice<stdgo.GoUInt32>);
        return v;
    }
    public var _dense(get, set) : Array<std.UInt>;
    function get__dense():Array<std.UInt> return [for (i in this._dense) i];
    function set__dense(v:Array<std.UInt>):Array<std.UInt> {
        this._dense = ([for (i in v) i] : stdgo.Slice<stdgo.GoUInt32>);
        return v;
    }
    public var _size(get, set) : std.UInt;
    function get__size():std.UInt return this._size;
    function set__size(v:std.UInt):std.UInt {
        this._size = v;
        return v;
    }
    public var _nextIndex(get, set) : std.UInt;
    function get__nextIndex():std.UInt return this._nextIndex;
    function set__nextIndex(v:std.UInt):std.UInt {
        this._nextIndex = v;
        return v;
    }
    public function new(?_sparse:Array<std.UInt>, ?_dense:Array<std.UInt>, ?_size:std.UInt, ?_nextIndex:std.UInt) this = new stdgo._internal.regexp.Regexp.T_queueOnePass(([for (i in _sparse) i] : stdgo.Slice<stdgo.GoUInt32>), ([for (i in _dense) i] : stdgo.Slice<stdgo.GoUInt32>), _size, _nextIndex);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
abstract Regexp_(stdgo._internal.regexp.Regexp.Regexp) from stdgo._internal.regexp.Regexp.Regexp to stdgo._internal.regexp.Regexp.Regexp {
    public var _expr(get, set) : String;
    function get__expr():String return this._expr;
    function set__expr(v:String):String {
        this._expr = v;
        return v;
    }
    public var _prog(get, set) : stdgo._internal.regexp.syntax.Syntax.Prog;
    function get__prog():stdgo._internal.regexp.syntax.Syntax.Prog return this._prog;
    function set__prog(v:stdgo._internal.regexp.syntax.Syntax.Prog):stdgo._internal.regexp.syntax.Syntax.Prog {
        this._prog = v;
        return v;
    }
    public var _onepass(get, set) : stdgo._internal.regexp.Regexp.T_onePassProg;
    function get__onepass():stdgo._internal.regexp.Regexp.T_onePassProg return this._onepass;
    function set__onepass(v:stdgo._internal.regexp.Regexp.T_onePassProg):stdgo._internal.regexp.Regexp.T_onePassProg {
        this._onepass = v;
        return v;
    }
    public var _numSubexp(get, set) : StdTypes.Int;
    function get__numSubexp():StdTypes.Int return this._numSubexp;
    function set__numSubexp(v:StdTypes.Int):StdTypes.Int {
        this._numSubexp = v;
        return v;
    }
    public var _maxBitStateLen(get, set) : StdTypes.Int;
    function get__maxBitStateLen():StdTypes.Int return this._maxBitStateLen;
    function set__maxBitStateLen(v:StdTypes.Int):StdTypes.Int {
        this._maxBitStateLen = v;
        return v;
    }
    public var _subexpNames(get, set) : Array<String>;
    function get__subexpNames():Array<String> return [for (i in this._subexpNames) i];
    function set__subexpNames(v:Array<String>):Array<String> {
        this._subexpNames = ([for (i in v) i] : stdgo.Slice<stdgo.GoString>);
        return v;
    }
    public var _prefix(get, set) : String;
    function get__prefix():String return this._prefix;
    function set__prefix(v:String):String {
        this._prefix = v;
        return v;
    }
    public var _prefixBytes(get, set) : Array<std.UInt>;
    function get__prefixBytes():Array<std.UInt> return [for (i in this._prefixBytes) i];
    function set__prefixBytes(v:Array<std.UInt>):Array<std.UInt> {
        this._prefixBytes = ([for (i in v) i] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var _prefixRune(get, set) : StdTypes.Int;
    function get__prefixRune():StdTypes.Int return this._prefixRune;
    function set__prefixRune(v:StdTypes.Int):StdTypes.Int {
        this._prefixRune = v;
        return v;
    }
    public var _prefixEnd(get, set) : std.UInt;
    function get__prefixEnd():std.UInt return this._prefixEnd;
    function set__prefixEnd(v:std.UInt):std.UInt {
        this._prefixEnd = v;
        return v;
    }
    public var _mpool(get, set) : StdTypes.Int;
    function get__mpool():StdTypes.Int return this._mpool;
    function set__mpool(v:StdTypes.Int):StdTypes.Int {
        this._mpool = v;
        return v;
    }
    public var _matchcap(get, set) : StdTypes.Int;
    function get__matchcap():StdTypes.Int return this._matchcap;
    function set__matchcap(v:StdTypes.Int):StdTypes.Int {
        this._matchcap = v;
        return v;
    }
    public var _prefixComplete(get, set) : Bool;
    function get__prefixComplete():Bool return this._prefixComplete;
    function set__prefixComplete(v:Bool):Bool {
        this._prefixComplete = v;
        return v;
    }
    public var _cond(get, set) : stdgo._internal.regexp.syntax.Syntax.EmptyOp;
    function get__cond():stdgo._internal.regexp.syntax.Syntax.EmptyOp return this._cond;
    function set__cond(v:stdgo._internal.regexp.syntax.Syntax.EmptyOp):stdgo._internal.regexp.syntax.Syntax.EmptyOp {
        this._cond = v;
        return v;
    }
    public var _minInputLen(get, set) : StdTypes.Int;
    function get__minInputLen():StdTypes.Int return this._minInputLen;
    function set__minInputLen(v:StdTypes.Int):StdTypes.Int {
        this._minInputLen = v;
        return v;
    }
    public var _longest(get, set) : Bool;
    function get__longest():Bool return this._longest;
    function set__longest(v:Bool):Bool {
        this._longest = v;
        return v;
    }
    public function new(?_expr:String, ?_prog:stdgo._internal.regexp.syntax.Syntax.Prog, ?_onepass:stdgo._internal.regexp.Regexp.T_onePassProg, ?_numSubexp:StdTypes.Int, ?_maxBitStateLen:StdTypes.Int, ?_subexpNames:Array<String>, ?_prefix:String, ?_prefixBytes:Array<std.UInt>, ?_prefixRune:StdTypes.Int, ?_prefixEnd:std.UInt, ?_mpool:StdTypes.Int, ?_matchcap:StdTypes.Int, ?_prefixComplete:Bool, ?_cond:stdgo._internal.regexp.syntax.Syntax.EmptyOp, ?_minInputLen:StdTypes.Int, ?_longest:Bool) this = new stdgo._internal.regexp.Regexp.Regexp(
_expr,
_prog,
_onepass,
_numSubexp,
_maxBitStateLen,
([for (i in _subexpNames) i] : stdgo.Slice<stdgo.GoString>),
_prefix,
([for (i in _prefixBytes) i] : stdgo.Slice<stdgo.GoUInt8>),
_prefixRune,
_prefixEnd,
_mpool,
_matchcap,
_prefixComplete,
_cond,
_minInputLen,
_longest);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
abstract T_inputString(stdgo._internal.regexp.Regexp.T_inputString) from stdgo._internal.regexp.Regexp.T_inputString to stdgo._internal.regexp.Regexp.T_inputString {
    public var _str(get, set) : String;
    function get__str():String return this._str;
    function set__str(v:String):String {
        this._str = v;
        return v;
    }
    public function new(?_str:String) this = new stdgo._internal.regexp.Regexp.T_inputString(_str);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
abstract T_inputBytes(stdgo._internal.regexp.Regexp.T_inputBytes) from stdgo._internal.regexp.Regexp.T_inputBytes to stdgo._internal.regexp.Regexp.T_inputBytes {
    public var _str(get, set) : Array<std.UInt>;
    function get__str():Array<std.UInt> return [for (i in this._str) i];
    function set__str(v:Array<std.UInt>):Array<std.UInt> {
        this._str = ([for (i in v) i] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public function new(?_str:Array<std.UInt>) this = new stdgo._internal.regexp.Regexp.T_inputBytes(([for (i in _str) i] : stdgo.Slice<stdgo.GoUInt8>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
abstract T_inputReader(stdgo._internal.regexp.Regexp.T_inputReader) from stdgo._internal.regexp.Regexp.T_inputReader to stdgo._internal.regexp.Regexp.T_inputReader {
    public var _r(get, set) : stdgo._internal.io.Io.RuneReader;
    function get__r():stdgo._internal.io.Io.RuneReader return this._r;
    function set__r(v:stdgo._internal.io.Io.RuneReader):stdgo._internal.io.Io.RuneReader {
        this._r = v;
        return v;
    }
    public var _atEOT(get, set) : Bool;
    function get__atEOT():Bool return this._atEOT;
    function set__atEOT(v:Bool):Bool {
        this._atEOT = v;
        return v;
    }
    public var _pos(get, set) : StdTypes.Int;
    function get__pos():StdTypes.Int return this._pos;
    function set__pos(v:StdTypes.Int):StdTypes.Int {
        this._pos = v;
        return v;
    }
    public function new(?_r:stdgo._internal.io.Io.RuneReader, ?_atEOT:Bool, ?_pos:StdTypes.Int) this = new stdgo._internal.regexp.Regexp.T_inputReader(_r, _atEOT, _pos);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
typedef T__struct_0 = stdgo._internal.regexp.Regexp.T__struct_0;
typedef T__struct_1 = stdgo._internal.regexp.Regexp.T__struct_1;
typedef T__struct_2 = stdgo._internal.regexp.Regexp.T__struct_2;
typedef T__struct_3 = stdgo._internal.regexp.Regexp.T__struct_3;
typedef T__struct_4 = stdgo._internal.regexp.Regexp.T__struct_4;
typedef T__struct_5 = stdgo._internal.regexp.Regexp.T__struct_5;
typedef T__struct_6 = stdgo._internal.regexp.Regexp.T__struct_6;
typedef T__struct_7 = stdgo._internal.regexp.Regexp.T__struct_7;
typedef T_lazyFlag = stdgo._internal.regexp.Regexp.T_lazyFlag;
typedef T_runeSlice = stdgo._internal.regexp.Regexp.T_runeSlice;
class Regexp {
    static public function testGoodCompile(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.regexp.Regexp.testGoodCompile(t);
    }
    static public function testBadCompile(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.regexp.Regexp.testBadCompile(t);
    }
    static public function testMatch(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.regexp.Regexp.testMatch(t);
    }
    static public function testMatchFunction(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.regexp.Regexp.testMatchFunction(t);
    }
    static public function testCopyMatch(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.regexp.Regexp.testCopyMatch(t);
    }
    static public function testReplaceAll(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.regexp.Regexp.testReplaceAll(t);
    }
    static public function testReplaceAllLiteral(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.regexp.Regexp.testReplaceAllLiteral(t);
    }
    static public function testReplaceAllFunc(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.regexp.Regexp.testReplaceAllFunc(t);
    }
    static public function testQuoteMeta(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.regexp.Regexp.testQuoteMeta(t);
    }
    static public function testLiteralPrefix(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.regexp.Regexp.testLiteralPrefix(t);
    }
    static public function testSubexp(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.regexp.Regexp.testSubexp(t);
    }
    static public function testSplit(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.regexp.Regexp.testSplit(t);
    }
    /**
        The following sequence of Match calls used to panic. See issue #12980.
    **/
    static public function testParseAndCompile(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.regexp.Regexp.testParseAndCompile(t);
    }
    /**
        Check that one-pass cutoff does trigger.
    **/
    static public function testOnePassCutoff(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.regexp.Regexp.testOnePassCutoff(t);
    }
    /**
        Check that the same machine can be used with the standard matcher
        and then the backtracker when there are no captures.
    **/
    static public function testSwitchBacktrack(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.regexp.Regexp.testSwitchBacktrack(t);
    }
    static public function benchmarkFind(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.regexp.Regexp.benchmarkFind(b);
    }
    static public function benchmarkFindAllNoMatches(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.regexp.Regexp.benchmarkFindAllNoMatches(b);
    }
    static public function benchmarkFindString(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.regexp.Regexp.benchmarkFindString(b);
    }
    static public function benchmarkFindSubmatch(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.regexp.Regexp.benchmarkFindSubmatch(b);
    }
    static public function benchmarkFindStringSubmatch(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.regexp.Regexp.benchmarkFindStringSubmatch(b);
    }
    static public function benchmarkLiteral(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.regexp.Regexp.benchmarkLiteral(b);
    }
    static public function benchmarkNotLiteral(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.regexp.Regexp.benchmarkNotLiteral(b);
    }
    static public function benchmarkMatchClass(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.regexp.Regexp.benchmarkMatchClass(b);
    }
    static public function benchmarkMatchClass_InRange(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.regexp.Regexp.benchmarkMatchClass_InRange(b);
    }
    static public function benchmarkReplaceAll(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.regexp.Regexp.benchmarkReplaceAll(b);
    }
    static public function benchmarkAnchoredLiteralShortNonMatch(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.regexp.Regexp.benchmarkAnchoredLiteralShortNonMatch(b);
    }
    static public function benchmarkAnchoredLiteralLongNonMatch(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.regexp.Regexp.benchmarkAnchoredLiteralLongNonMatch(b);
    }
    static public function benchmarkAnchoredShortMatch(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.regexp.Regexp.benchmarkAnchoredShortMatch(b);
    }
    static public function benchmarkAnchoredLongMatch(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.regexp.Regexp.benchmarkAnchoredLongMatch(b);
    }
    static public function benchmarkOnePassShortA(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.regexp.Regexp.benchmarkOnePassShortA(b);
    }
    static public function benchmarkNotOnePassShortA(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.regexp.Regexp.benchmarkNotOnePassShortA(b);
    }
    static public function benchmarkOnePassShortB(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.regexp.Regexp.benchmarkOnePassShortB(b);
    }
    static public function benchmarkNotOnePassShortB(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.regexp.Regexp.benchmarkNotOnePassShortB(b);
    }
    static public function benchmarkOnePassLongPrefix(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.regexp.Regexp.benchmarkOnePassLongPrefix(b);
    }
    static public function benchmarkOnePassLongNotPrefix(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.regexp.Regexp.benchmarkOnePassLongNotPrefix(b);
    }
    static public function benchmarkMatchParallelShared(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.regexp.Regexp.benchmarkMatchParallelShared(b);
    }
    static public function benchmarkMatchParallelCopied(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.regexp.Regexp.benchmarkMatchParallelCopied(b);
    }
    static public function benchmarkQuoteMetaAll(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.regexp.Regexp.benchmarkQuoteMetaAll(b);
    }
    static public function benchmarkQuoteMetaNone(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.regexp.Regexp.benchmarkQuoteMetaNone(b);
    }
    static public function benchmarkCompile(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.regexp.Regexp.benchmarkCompile(b);
    }
    static public function testDeepEqual(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.regexp.Regexp.testDeepEqual(t);
    }
    static public function testMinInputLen(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.regexp.Regexp.testMinInputLen(t);
    }
    static public function testUnmarshalText(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.regexp.Regexp.testUnmarshalText(t);
    }
    /**
        This test is excluded when running under the race detector because
        it is a very expensive test and takes too long.
    **/
    static public function testRE2Exhaustive(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.regexp.Regexp.testRE2Exhaustive(t);
    }
    /**
        TestRE2 tests this package's regexp API against test cases
        considered during RE2's exhaustive tests, which run all possible
        regexps over a given set of atoms and operators, up to a given
        complexity, over all possible strings over a given alphabet,
        up to a given size. Rather than try to link with RE2, we read a
        log file containing the test cases and the expected matches.
        The log file, re2-exhaustive.txt, is generated by running 'make log'
        in the open source RE2 distribution https://github.com/google/re2/.
        
        The test file format is a sequence of stanzas like:
        
        	strings
        	"abc"
        	"123x"
        	regexps
        	"[a-z]+"
        	0-3;0-3
        	-;-
        	"([0-9])([0-9])([0-9])"
        	-;-
        	-;0-3 0-1 1-2 2-3
        
        The stanza begins by defining a set of strings, quoted
        using Go double-quote syntax, one per line. Then the
        regexps section gives a sequence of regexps to run on
        the strings. In the block that follows a regexp, each line
        gives the semicolon-separated match results of running
        the regexp on the corresponding string.
        Each match result is either a single -, meaning no match, or a
        space-separated sequence of pairs giving the match and
        submatch indices. An unmatched subexpression formats
        its pair as a single - (not illustrated above).  For now
        each regexp run produces two match results, one for a
        “full match” that restricts the regexp to matching the entire
        string or nothing, and one for a “partial match” that gives
        the leftmost first match found in the string.
        
        Lines beginning with # are comments. Lines beginning with
        a capital letter are test names printed during RE2's test suite
        and are echoed into t but otherwise ignored.
        
        At time of writing, re2-exhaustive.txt is 59 MB but compresses to 385 kB,
        so we store re2-exhaustive.txt.bz2 in the repository and decompress it on the fly.
    **/
    static public function testRE2Search(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.regexp.Regexp.testRE2Search(t);
    }
    /**
        TestFowler runs this package's regexp API against the
        POSIX regular expression tests collected by Glenn Fowler
        at http://www2.research.att.com/~astopen/testregex/testregex.html.
    **/
    static public function testFowler(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.regexp.Regexp.testFowler(t);
    }
    static public function benchmarkMatch(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.regexp.Regexp.benchmarkMatch(b);
    }
    static public function benchmarkMatch_onepass_regex(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.regexp.Regexp.benchmarkMatch_onepass_regex(b);
    }
    static public function testLongest(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.regexp.Regexp.testLongest(t);
    }
    /**
        TestProgramTooLongForBacktrack tests that a regex which is too long
        for the backtracker still executes properly.
    **/
    static public function testProgramTooLongForBacktrack(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.regexp.Regexp.testProgramTooLongForBacktrack(t);
    }
    static public function testFind(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.regexp.Regexp.testFind(t);
    }
    static public function testFindString(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.regexp.Regexp.testFindString(t);
    }
    static public function testFindIndex(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.regexp.Regexp.testFindIndex(t);
    }
    static public function testFindStringIndex(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.regexp.Regexp.testFindStringIndex(t);
    }
    static public function testFindReaderIndex(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.regexp.Regexp.testFindReaderIndex(t);
    }
    static public function testFindAll(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.regexp.Regexp.testFindAll(t);
    }
    static public function testFindAllString(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.regexp.Regexp.testFindAllString(t);
    }
    static public function testFindAllIndex(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.regexp.Regexp.testFindAllIndex(t);
    }
    static public function testFindAllStringIndex(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.regexp.Regexp.testFindAllStringIndex(t);
    }
    static public function testFindSubmatch(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.regexp.Regexp.testFindSubmatch(t);
    }
    static public function testFindStringSubmatch(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.regexp.Regexp.testFindStringSubmatch(t);
    }
    static public function testFindSubmatchIndex(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.regexp.Regexp.testFindSubmatchIndex(t);
    }
    static public function testFindStringSubmatchIndex(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.regexp.Regexp.testFindStringSubmatchIndex(t);
    }
    static public function testFindReaderSubmatchIndex(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.regexp.Regexp.testFindReaderSubmatchIndex(t);
    }
    static public function testFindAllSubmatch(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.regexp.Regexp.testFindAllSubmatch(t);
    }
    static public function testFindAllStringSubmatch(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.regexp.Regexp.testFindAllStringSubmatch(t);
    }
    static public function testFindAllSubmatchIndex(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.regexp.Regexp.testFindAllSubmatchIndex(t);
    }
    static public function testFindAllStringSubmatchIndex(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.regexp.Regexp.testFindAllStringSubmatchIndex(t);
    }
    static public function testMergeRuneSet(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.regexp.Regexp.testMergeRuneSet(t);
    }
    static public function testCompileOnePass(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.regexp.Regexp.testCompileOnePass(t);
    }
    static public function testRunOnePass(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.regexp.Regexp.testRunOnePass(t);
    }
    /**
        Compile parses a regular expression and returns, if successful,
        a Regexp object that can be used to match against text.
        
        When matching against text, the regexp returns a match that
        begins as early as possible in the input (leftmost), and among those
        it chooses the one that a backtracking search would have found first.
        This so-called leftmost-first matching is the same semantics
        that Perl, Python, and other implementations use, although this
        package implements it without the expense of backtracking.
        For POSIX leftmost-longest matching, see CompilePOSIX.
    **/
    static public function compile(expr:String):stdgo.Tuple<Regexp, stdgo.Error> {
        return {
            final obj = stdgo._internal.regexp.Regexp.compile(expr);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        CompilePOSIX is like Compile but restricts the regular expression
        to POSIX ERE (egrep) syntax and changes the match semantics to
        leftmost-longest.
        
        That is, when matching against text, the regexp returns a match that
        begins as early as possible in the input (leftmost), and among those
        it chooses a match that is as long as possible.
        This so-called leftmost-longest matching is the same semantics
        that early regular expression implementations used and that POSIX
        specifies.
        
        However, there can be multiple leftmost-longest matches, with different
        submatch choices, and here this package diverges from POSIX.
        Among the possible leftmost-longest matches, this package chooses
        the one that a backtracking search would have found first, while POSIX
        specifies that the match be chosen to maximize the length of the first
        subexpression, then the second, and so on from left to right.
        The POSIX rule is computationally prohibitive and not even well-defined.
        See https://swtch.com/~rsc/regexp/regexp2.html#posix for details.
    **/
    static public function compilePOSIX(expr:String):stdgo.Tuple<Regexp, stdgo.Error> {
        return {
            final obj = stdgo._internal.regexp.Regexp.compilePOSIX(expr);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        MustCompile is like Compile but panics if the expression cannot be parsed.
        It simplifies safe initialization of global variables holding compiled regular
        expressions.
    **/
    static public function mustCompile(str:String):Regexp {
        return stdgo._internal.regexp.Regexp.mustCompile(str);
    }
    /**
        MustCompilePOSIX is like CompilePOSIX but panics if the expression cannot be parsed.
        It simplifies safe initialization of global variables holding compiled regular
        expressions.
    **/
    static public function mustCompilePOSIX(str:String):Regexp {
        return stdgo._internal.regexp.Regexp.mustCompilePOSIX(str);
    }
    /**
        MatchReader reports whether the text returned by the RuneReader
        contains any match of the regular expression pattern.
        More complicated queries need to use Compile and the full Regexp interface.
    **/
    static public function matchReader(pattern:String, r:stdgo._internal.io.Io.RuneReader):stdgo.Tuple<Bool, stdgo.Error> {
        return {
            final obj = stdgo._internal.regexp.Regexp.matchReader(pattern, r);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        MatchString reports whether the string s
        contains any match of the regular expression pattern.
        More complicated queries need to use Compile and the full Regexp interface.
    **/
    static public function matchString(pattern:String, s:String):stdgo.Tuple<Bool, stdgo.Error> {
        return {
            final obj = stdgo._internal.regexp.Regexp.matchString(pattern, s);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        Match reports whether the byte slice b
        contains any match of the regular expression pattern.
        More complicated queries need to use Compile and the full Regexp interface.
    **/
    static public function match(pattern:String, b:Array<StdTypes.Int>):stdgo.Tuple<Bool, stdgo.Error> {
        final b = ([for (i in b) i] : stdgo.Slice<stdgo.GoByte>);
        return {
            final obj = stdgo._internal.regexp.Regexp.match(pattern, b);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        QuoteMeta returns a string that escapes all regular expression metacharacters
        inside the argument text; the returned string is a regular expression matching
        the literal text.
    **/
    static public function quoteMeta(s:String):String {
        return stdgo._internal.regexp.Regexp.quoteMeta(s);
    }
}
