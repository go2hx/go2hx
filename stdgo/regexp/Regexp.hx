package stdgo.regexp;
class T_input_static_extension {
    static public function _context(t:stdgo._internal.regexp.Regexp_T_input.T_input, _pos:StdTypes.Int):T_lazyFlag {
        return stdgo._internal.regexp.Regexp_T_input_static_extension.T_input_static_extension._context(t, _pos);
    }
    static public function _index(t:stdgo._internal.regexp.Regexp_T_input.T_input, _re:Regexp_, _pos:StdTypes.Int):StdTypes.Int {
        return stdgo._internal.regexp.Regexp_T_input_static_extension.T_input_static_extension._index(t, _re, _pos);
    }
    static public function _hasPrefix(t:stdgo._internal.regexp.Regexp_T_input.T_input, _re:Regexp_):Bool {
        return stdgo._internal.regexp.Regexp_T_input_static_extension.T_input_static_extension._hasPrefix(t, _re);
    }
    static public function _canCheckPrefix(t:stdgo._internal.regexp.Regexp_T_input.T_input):Bool {
        return stdgo._internal.regexp.Regexp_T_input_static_extension.T_input_static_extension._canCheckPrefix(t);
    }
    static public function _step(t:stdgo._internal.regexp.Regexp_T_input.T_input, _pos:StdTypes.Int):stdgo.Tuple<StdTypes.Int, StdTypes.Int> {
        return {
            final obj = stdgo._internal.regexp.Regexp_T_input_static_extension.T_input_static_extension._step(t, _pos);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
typedef T_input = stdgo._internal.regexp.Regexp_T_input.T_input;
@:structInit abstract T_stringError(stdgo._internal.regexp.Regexp_T_stringError.T_stringError) from stdgo._internal.regexp.Regexp_T_stringError.T_stringError to stdgo._internal.regexp.Regexp_T_stringError.T_stringError {
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
    public function new(?_re:String, ?_err:String) this = new stdgo._internal.regexp.Regexp_T_stringError.T_stringError(_re, _err);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract ReplaceTest(stdgo._internal.regexp.Regexp_ReplaceTest.ReplaceTest) from stdgo._internal.regexp.Regexp_ReplaceTest.ReplaceTest to stdgo._internal.regexp.Regexp_ReplaceTest.ReplaceTest {
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
    public function new(?_pattern:String, ?_replacement:String, ?_input:String, ?_output:String) this = new stdgo._internal.regexp.Regexp_ReplaceTest.ReplaceTest(_pattern, _replacement, _input, _output);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract ReplaceFuncTest(stdgo._internal.regexp.Regexp_ReplaceFuncTest.ReplaceFuncTest) from stdgo._internal.regexp.Regexp_ReplaceFuncTest.ReplaceFuncTest to stdgo._internal.regexp.Regexp_ReplaceFuncTest.ReplaceFuncTest {
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
    public function new(?_pattern:String, ?_replacement:stdgo.GoString -> stdgo.GoString, ?_input:String, ?_output:String) this = new stdgo._internal.regexp.Regexp_ReplaceFuncTest.ReplaceFuncTest(_pattern, _replacement, _input, _output);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract MetaTest(stdgo._internal.regexp.Regexp_MetaTest.MetaTest) from stdgo._internal.regexp.Regexp_MetaTest.MetaTest to stdgo._internal.regexp.Regexp_MetaTest.MetaTest {
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
    public function new(?_pattern:String, ?_output:String, ?_literal:String, ?_isLiteral:Bool) this = new stdgo._internal.regexp.Regexp_MetaTest.MetaTest(_pattern, _output, _literal, _isLiteral);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract T_subexpIndex(stdgo._internal.regexp.Regexp_T_subexpIndex.T_subexpIndex) from stdgo._internal.regexp.Regexp_T_subexpIndex.T_subexpIndex to stdgo._internal.regexp.Regexp_T_subexpIndex.T_subexpIndex {
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
    public function new(?_name:String, ?_index:StdTypes.Int) this = new stdgo._internal.regexp.Regexp_T_subexpIndex.T_subexpIndex(_name, _index);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract T_subexpCase(stdgo._internal.regexp.Regexp_T_subexpCase.T_subexpCase) from stdgo._internal.regexp.Regexp_T_subexpCase.T_subexpCase to stdgo._internal.regexp.Regexp_T_subexpCase.T_subexpCase {
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
    public var _indices(get, set) : Array<T_subexpIndex>;
    function get__indices():Array<T_subexpIndex> return [for (i in this._indices) i];
    function set__indices(v:Array<T_subexpIndex>):Array<T_subexpIndex> {
        this._indices = ([for (i in v) i] : stdgo.Slice<stdgo._internal.regexp.Regexp_T_subexpIndex.T_subexpIndex>);
        return v;
    }
    public function new(?_input:String, ?_num:StdTypes.Int, ?_names:Array<String>, ?_indices:Array<T_subexpIndex>) this = new stdgo._internal.regexp.Regexp_T_subexpCase.T_subexpCase(_input, _num, ([for (i in _names) i] : stdgo.Slice<stdgo.GoString>), ([for (i in _indices) i] : stdgo.Slice<stdgo._internal.regexp.Regexp_T_subexpIndex.T_subexpIndex>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract T_job(stdgo._internal.regexp.Regexp_T_job.T_job) from stdgo._internal.regexp.Regexp_T_job.T_job to stdgo._internal.regexp.Regexp_T_job.T_job {
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
    public function new(?_pc:std.UInt, ?_arg:Bool, ?_pos:StdTypes.Int) this = new stdgo._internal.regexp.Regexp_T_job.T_job(_pc, _arg, _pos);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.regexp.Regexp.T_bitState_static_extension) abstract T_bitState(stdgo._internal.regexp.Regexp_T_bitState.T_bitState) from stdgo._internal.regexp.Regexp_T_bitState.T_bitState to stdgo._internal.regexp.Regexp_T_bitState.T_bitState {
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
    public var _jobs(get, set) : Array<T_job>;
    function get__jobs():Array<T_job> return [for (i in this._jobs) i];
    function set__jobs(v:Array<T_job>):Array<T_job> {
        this._jobs = ([for (i in v) i] : stdgo.Slice<stdgo._internal.regexp.Regexp_T_job.T_job>);
        return v;
    }
    public var _visited(get, set) : Array<std.UInt>;
    function get__visited():Array<std.UInt> return [for (i in this._visited) i];
    function set__visited(v:Array<std.UInt>):Array<std.UInt> {
        this._visited = ([for (i in v) i] : stdgo.Slice<stdgo.GoUInt32>);
        return v;
    }
    public var _inputs(get, set) : T_inputs;
    function get__inputs():T_inputs return this._inputs;
    function set__inputs(v:T_inputs):T_inputs {
        this._inputs = v;
        return v;
    }
    public function new(?_end:StdTypes.Int, ?_cap:Array<StdTypes.Int>, ?_matchcap:Array<StdTypes.Int>, ?_jobs:Array<T_job>, ?_visited:Array<std.UInt>, ?_inputs:T_inputs) this = new stdgo._internal.regexp.Regexp_T_bitState.T_bitState(_end, ([for (i in _cap) i] : stdgo.Slice<stdgo.GoInt>), ([for (i in _matchcap) i] : stdgo.Slice<stdgo.GoInt>), ([for (i in _jobs) i] : stdgo.Slice<stdgo._internal.regexp.Regexp_T_job.T_job>), ([for (i in _visited) i] : stdgo.Slice<stdgo.GoUInt32>), _inputs);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract T_queue(stdgo._internal.regexp.Regexp_T_queue.T_queue) from stdgo._internal.regexp.Regexp_T_queue.T_queue to stdgo._internal.regexp.Regexp_T_queue.T_queue {
    public var _sparse(get, set) : Array<std.UInt>;
    function get__sparse():Array<std.UInt> return [for (i in this._sparse) i];
    function set__sparse(v:Array<std.UInt>):Array<std.UInt> {
        this._sparse = ([for (i in v) i] : stdgo.Slice<stdgo.GoUInt32>);
        return v;
    }
    public var _dense(get, set) : Array<T_entry>;
    function get__dense():Array<T_entry> return [for (i in this._dense) i];
    function set__dense(v:Array<T_entry>):Array<T_entry> {
        this._dense = ([for (i in v) i] : stdgo.Slice<stdgo._internal.regexp.Regexp_T_entry.T_entry>);
        return v;
    }
    public function new(?_sparse:Array<std.UInt>, ?_dense:Array<T_entry>) this = new stdgo._internal.regexp.Regexp_T_queue.T_queue(([for (i in _sparse) i] : stdgo.Slice<stdgo.GoUInt32>), ([for (i in _dense) i] : stdgo.Slice<stdgo._internal.regexp.Regexp_T_entry.T_entry>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract T_entry(stdgo._internal.regexp.Regexp_T_entry.T_entry) from stdgo._internal.regexp.Regexp_T_entry.T_entry to stdgo._internal.regexp.Regexp_T_entry.T_entry {
    public var _pc(get, set) : std.UInt;
    function get__pc():std.UInt return this._pc;
    function set__pc(v:std.UInt):std.UInt {
        this._pc = v;
        return v;
    }
    public var _t(get, set) : T_thread;
    function get__t():T_thread return this._t;
    function set__t(v:T_thread):T_thread {
        this._t = v;
        return v;
    }
    public function new(?_pc:std.UInt, ?_t:T_thread) this = new stdgo._internal.regexp.Regexp_T_entry.T_entry(_pc, _t);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract T_thread(stdgo._internal.regexp.Regexp_T_thread.T_thread) from stdgo._internal.regexp.Regexp_T_thread.T_thread to stdgo._internal.regexp.Regexp_T_thread.T_thread {
    public var _inst(get, set) : Inst;
    function get__inst():Inst return this._inst;
    function set__inst(v:Inst):Inst {
        this._inst = v;
        return v;
    }
    public var _cap(get, set) : Array<StdTypes.Int>;
    function get__cap():Array<StdTypes.Int> return [for (i in this._cap) i];
    function set__cap(v:Array<StdTypes.Int>):Array<StdTypes.Int> {
        this._cap = ([for (i in v) i] : stdgo.Slice<stdgo.GoInt>);
        return v;
    }
    public function new(?_inst:Inst, ?_cap:Array<StdTypes.Int>) this = new stdgo._internal.regexp.Regexp_T_thread.T_thread(_inst, ([for (i in _cap) i] : stdgo.Slice<stdgo.GoInt>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.regexp.Regexp.T_machine_static_extension) abstract T_machine(stdgo._internal.regexp.Regexp_T_machine.T_machine) from stdgo._internal.regexp.Regexp_T_machine.T_machine to stdgo._internal.regexp.Regexp_T_machine.T_machine {
    public var _re(get, set) : Regexp_;
    function get__re():Regexp_ return this._re;
    function set__re(v:Regexp_):Regexp_ {
        this._re = v;
        return v;
    }
    public var _p(get, set) : Prog;
    function get__p():Prog return this._p;
    function set__p(v:Prog):Prog {
        this._p = v;
        return v;
    }
    public var _q0(get, set) : T_queue;
    function get__q0():T_queue return this._q0;
    function set__q0(v:T_queue):T_queue {
        this._q0 = v;
        return v;
    }
    public var _q1(get, set) : T_queue;
    function get__q1():T_queue return this._q1;
    function set__q1(v:T_queue):T_queue {
        this._q1 = v;
        return v;
    }
    public var _pool(get, set) : Array<T_thread>;
    function get__pool():Array<T_thread> return [for (i in this._pool) i];
    function set__pool(v:Array<T_thread>):Array<T_thread> {
        this._pool = ([for (i in v) i] : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.Regexp_T_thread.T_thread>>);
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
    public var _inputs(get, set) : T_inputs;
    function get__inputs():T_inputs return this._inputs;
    function set__inputs(v:T_inputs):T_inputs {
        this._inputs = v;
        return v;
    }
    public function new(?_re:Regexp_, ?_p:Prog, ?_q0:T_queue, ?_q1:T_queue, ?_pool:Array<T_thread>, ?_matched:Bool, ?_matchcap:Array<StdTypes.Int>, ?_inputs:T_inputs) this = new stdgo._internal.regexp.Regexp_T_machine.T_machine(_re, _p, _q0, _q1, ([for (i in _pool) i] : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.Regexp_T_thread.T_thread>>), _matched, ([for (i in _matchcap) i] : stdgo.Slice<stdgo.GoInt>), _inputs);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.regexp.Regexp.T_inputs_static_extension) abstract T_inputs(stdgo._internal.regexp.Regexp_T_inputs.T_inputs) from stdgo._internal.regexp.Regexp_T_inputs.T_inputs to stdgo._internal.regexp.Regexp_T_inputs.T_inputs {
    public var _bytes(get, set) : T_inputBytes;
    function get__bytes():T_inputBytes return this._bytes;
    function set__bytes(v:T_inputBytes):T_inputBytes {
        this._bytes = v;
        return v;
    }
    public var _string(get, set) : T_inputString;
    function get__string():T_inputString return this._string;
    function set__string(v:T_inputString):T_inputString {
        this._string = v;
        return v;
    }
    public var _reader(get, set) : T_inputReader;
    function get__reader():T_inputReader return this._reader;
    function set__reader(v:T_inputReader):T_inputReader {
        this._reader = v;
        return v;
    }
    public function new(?_bytes:T_inputBytes, ?_string:T_inputString, ?_reader:T_inputReader) this = new stdgo._internal.regexp.Regexp_T_inputs.T_inputs(_bytes, _string, _reader);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract T_onePassMachine(stdgo._internal.regexp.Regexp_T_onePassMachine.T_onePassMachine) from stdgo._internal.regexp.Regexp_T_onePassMachine.T_onePassMachine to stdgo._internal.regexp.Regexp_T_onePassMachine.T_onePassMachine {
    public var _inputs(get, set) : T_inputs;
    function get__inputs():T_inputs return this._inputs;
    function set__inputs(v:T_inputs):T_inputs {
        this._inputs = v;
        return v;
    }
    public var _matchcap(get, set) : Array<StdTypes.Int>;
    function get__matchcap():Array<StdTypes.Int> return [for (i in this._matchcap) i];
    function set__matchcap(v:Array<StdTypes.Int>):Array<StdTypes.Int> {
        this._matchcap = ([for (i in v) i] : stdgo.Slice<stdgo.GoInt>);
        return v;
    }
    public function new(?_inputs:T_inputs, ?_matchcap:Array<StdTypes.Int>) this = new stdgo._internal.regexp.Regexp_T_onePassMachine.T_onePassMachine(_inputs, ([for (i in _matchcap) i] : stdgo.Slice<stdgo.GoInt>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.regexp.Regexp.FindTest_static_extension) abstract FindTest(stdgo._internal.regexp.Regexp_FindTest.FindTest) from stdgo._internal.regexp.Regexp_FindTest.FindTest to stdgo._internal.regexp.Regexp_FindTest.FindTest {
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
    public function new(?_pat:String, ?_text:String, ?_matches:Array<Array<StdTypes.Int>>) this = new stdgo._internal.regexp.Regexp_FindTest.FindTest(_pat, _text, ([for (i in _matches) ([for (i in i) i] : stdgo.Slice<stdgo.GoInt>)] : stdgo.Slice<stdgo.Slice<stdgo.GoInt>>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract T_onePassProg(stdgo._internal.regexp.Regexp_T_onePassProg.T_onePassProg) from stdgo._internal.regexp.Regexp_T_onePassProg.T_onePassProg to stdgo._internal.regexp.Regexp_T_onePassProg.T_onePassProg {
    public var inst(get, set) : Array<T_onePassInst>;
    function get_inst():Array<T_onePassInst> return [for (i in this.inst) i];
    function set_inst(v:Array<T_onePassInst>):Array<T_onePassInst> {
        this.inst = ([for (i in v) i] : stdgo.Slice<stdgo._internal.regexp.Regexp_T_onePassInst.T_onePassInst>);
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
    public function new(?inst:Array<T_onePassInst>, ?start:StdTypes.Int, ?numCap:StdTypes.Int) this = new stdgo._internal.regexp.Regexp_T_onePassProg.T_onePassProg(([for (i in inst) i] : stdgo.Slice<stdgo._internal.regexp.Regexp_T_onePassInst.T_onePassInst>), start, numCap);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.regexp.Regexp.T_onePassInst_static_extension) abstract T_onePassInst(stdgo._internal.regexp.Regexp_T_onePassInst.T_onePassInst) from stdgo._internal.regexp.Regexp_T_onePassInst.T_onePassInst to stdgo._internal.regexp.Regexp_T_onePassInst.T_onePassInst {
    public var inst(get, set) : Inst;
    function get_inst():Inst return this.inst;
    function set_inst(v:Inst):Inst {
        this.inst = v;
        return v;
    }
    public var next(get, set) : Array<std.UInt>;
    function get_next():Array<std.UInt> return [for (i in this.next) i];
    function set_next(v:Array<std.UInt>):Array<std.UInt> {
        this.next = ([for (i in v) i] : stdgo.Slice<stdgo.GoUInt32>);
        return v;
    }
    public function new(?inst:Inst, ?next:Array<std.UInt>) this = new stdgo._internal.regexp.Regexp_T_onePassInst.T_onePassInst(inst, ([for (i in next) i] : stdgo.Slice<stdgo.GoUInt32>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.regexp.Regexp.T_queueOnePass_static_extension) abstract T_queueOnePass(stdgo._internal.regexp.Regexp_T_queueOnePass.T_queueOnePass) from stdgo._internal.regexp.Regexp_T_queueOnePass.T_queueOnePass to stdgo._internal.regexp.Regexp_T_queueOnePass.T_queueOnePass {
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
    public function new(?_sparse:Array<std.UInt>, ?_dense:Array<std.UInt>, ?_size:std.UInt, ?_nextIndex:std.UInt) this = new stdgo._internal.regexp.Regexp_T_queueOnePass.T_queueOnePass(([for (i in _sparse) i] : stdgo.Slice<stdgo.GoUInt32>), ([for (i in _dense) i] : stdgo.Slice<stdgo.GoUInt32>), _size, _nextIndex);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.regexp.Regexp.Regexp_static_extension) abstract Regexp_(stdgo._internal.regexp.Regexp_Regexp.Regexp) from stdgo._internal.regexp.Regexp_Regexp.Regexp to stdgo._internal.regexp.Regexp_Regexp.Regexp {
    public var _expr(get, set) : String;
    function get__expr():String return this._expr;
    function set__expr(v:String):String {
        this._expr = v;
        return v;
    }
    public var _prog(get, set) : Prog;
    function get__prog():Prog return this._prog;
    function set__prog(v:Prog):Prog {
        this._prog = v;
        return v;
    }
    public var _onepass(get, set) : T_onePassProg;
    function get__onepass():T_onePassProg return this._onepass;
    function set__onepass(v:T_onePassProg):T_onePassProg {
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
    public var _cond(get, set) : EmptyOp;
    function get__cond():EmptyOp return this._cond;
    function set__cond(v:EmptyOp):EmptyOp {
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
    public function new(?_expr:String, ?_prog:Prog, ?_onepass:T_onePassProg, ?_numSubexp:StdTypes.Int, ?_maxBitStateLen:StdTypes.Int, ?_subexpNames:Array<String>, ?_prefix:String, ?_prefixBytes:Array<std.UInt>, ?_prefixRune:StdTypes.Int, ?_prefixEnd:std.UInt, ?_mpool:StdTypes.Int, ?_matchcap:StdTypes.Int, ?_prefixComplete:Bool, ?_cond:EmptyOp, ?_minInputLen:StdTypes.Int, ?_longest:Bool) this = new stdgo._internal.regexp.Regexp_Regexp.Regexp(
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
@:structInit @:using(stdgo.regexp.Regexp.T_inputString_static_extension) abstract T_inputString(stdgo._internal.regexp.Regexp_T_inputString.T_inputString) from stdgo._internal.regexp.Regexp_T_inputString.T_inputString to stdgo._internal.regexp.Regexp_T_inputString.T_inputString {
    public var _str(get, set) : String;
    function get__str():String return this._str;
    function set__str(v:String):String {
        this._str = v;
        return v;
    }
    public function new(?_str:String) this = new stdgo._internal.regexp.Regexp_T_inputString.T_inputString(_str);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.regexp.Regexp.T_inputBytes_static_extension) abstract T_inputBytes(stdgo._internal.regexp.Regexp_T_inputBytes.T_inputBytes) from stdgo._internal.regexp.Regexp_T_inputBytes.T_inputBytes to stdgo._internal.regexp.Regexp_T_inputBytes.T_inputBytes {
    public var _str(get, set) : Array<std.UInt>;
    function get__str():Array<std.UInt> return [for (i in this._str) i];
    function set__str(v:Array<std.UInt>):Array<std.UInt> {
        this._str = ([for (i in v) i] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public function new(?_str:Array<std.UInt>) this = new stdgo._internal.regexp.Regexp_T_inputBytes.T_inputBytes(([for (i in _str) i] : stdgo.Slice<stdgo.GoUInt8>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.regexp.Regexp.T_inputReader_static_extension) abstract T_inputReader(stdgo._internal.regexp.Regexp_T_inputReader.T_inputReader) from stdgo._internal.regexp.Regexp_T_inputReader.T_inputReader to stdgo._internal.regexp.Regexp_T_inputReader.T_inputReader {
    public var _r(get, set) : stdgo._internal.io.Io_RuneReader.RuneReader;
    function get__r():stdgo._internal.io.Io_RuneReader.RuneReader return this._r;
    function set__r(v:stdgo._internal.io.Io_RuneReader.RuneReader):stdgo._internal.io.Io_RuneReader.RuneReader {
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
    public function new(?_r:stdgo._internal.io.Io_RuneReader.RuneReader, ?_atEOT:Bool, ?_pos:StdTypes.Int) this = new stdgo._internal.regexp.Regexp_T_inputReader.T_inputReader(_r, _atEOT, _pos);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
class T__struct_0_static_extension {

}
typedef T__struct_0 = stdgo._internal.regexp.Regexp_T__struct_0.T__struct_0;
class T__struct_1_static_extension {

}
typedef T__struct_1 = stdgo._internal.regexp.Regexp_T__struct_1.T__struct_1;
class T__struct_2_static_extension {

}
typedef T__struct_2 = stdgo._internal.regexp.Regexp_T__struct_2.T__struct_2;
class T__struct_3_static_extension {

}
typedef T__struct_3 = stdgo._internal.regexp.Regexp_T__struct_3.T__struct_3;
class T__struct_4_static_extension {

}
typedef T__struct_4 = stdgo._internal.regexp.Regexp_T__struct_4.T__struct_4;
class T__struct_5_static_extension {

}
typedef T__struct_5 = stdgo._internal.regexp.Regexp_T__struct_5.T__struct_5;
class T__struct_6_static_extension {

}
typedef T__struct_6 = stdgo._internal.regexp.Regexp_T__struct_6.T__struct_6;
class T__struct_7_static_extension {

}
typedef T__struct_7 = stdgo._internal.regexp.Regexp_T__struct_7.T__struct_7;
typedef T_lazyFlag = stdgo._internal.regexp.Regexp_T_lazyFlag.T_lazyFlag;
typedef T_runeSlice = stdgo._internal.regexp.Regexp_T_runeSlice.T_runeSlice;
class T_bitState_static_extension {
    static public function _push(_b:T_bitState, _re:Regexp_, _pc:std.UInt, _pos:StdTypes.Int, _arg:Bool):Void {
        stdgo._internal.regexp.Regexp_T_bitState_static_extension.T_bitState_static_extension._push(_b, _re, _pc, _pos, _arg);
    }
    static public function _shouldVisit(_b:T_bitState, _pc:std.UInt, _pos:StdTypes.Int):Bool {
        return stdgo._internal.regexp.Regexp_T_bitState_static_extension.T_bitState_static_extension._shouldVisit(_b, _pc, _pos);
    }
    static public function _reset(_b:T_bitState, _prog:Prog, _end:StdTypes.Int, _ncap:StdTypes.Int):Void {
        stdgo._internal.regexp.Regexp_T_bitState_static_extension.T_bitState_static_extension._reset(_b, _prog, _end, _ncap);
    }
}
class T_machine_static_extension {
    static public function _add(_m:T_machine, _q:T_queue, _pc:std.UInt, _pos:StdTypes.Int, _cap:Array<StdTypes.Int>, _cond:stdgo.Pointer<T_lazyFlag>, _t:T_thread):T_thread {
        final _cap = ([for (i in _cap) i] : stdgo.Slice<stdgo.GoInt>);
        return stdgo._internal.regexp.Regexp_T_machine_static_extension.T_machine_static_extension._add(_m, _q, _pc, _pos, _cap, _cond, _t);
    }
    static public function _step(_m:T_machine, _runq:T_queue, _nextq:T_queue, _pos:StdTypes.Int, _nextPos:StdTypes.Int, _c:StdTypes.Int, _nextCond:stdgo.Pointer<T_lazyFlag>):Void {
        stdgo._internal.regexp.Regexp_T_machine_static_extension.T_machine_static_extension._step(_m, _runq, _nextq, _pos, _nextPos, _c, _nextCond);
    }
    static public function _clear(_m:T_machine, _q:T_queue):Void {
        stdgo._internal.regexp.Regexp_T_machine_static_extension.T_machine_static_extension._clear(_m, _q);
    }
    static public function _match(_m:T_machine, _i:T_input, _pos:StdTypes.Int):Bool {
        return stdgo._internal.regexp.Regexp_T_machine_static_extension.T_machine_static_extension._match(_m, _i, _pos);
    }
    static public function _alloc(_m:T_machine, _i:Inst):T_thread {
        return stdgo._internal.regexp.Regexp_T_machine_static_extension.T_machine_static_extension._alloc(_m, _i);
    }
    static public function _init(_m:T_machine, _ncap:StdTypes.Int):Void {
        stdgo._internal.regexp.Regexp_T_machine_static_extension.T_machine_static_extension._init(_m, _ncap);
    }
}
class T_inputs_static_extension {
    static public function _init(_i:T_inputs, _r:stdgo._internal.io.Io_RuneReader.RuneReader, _b:Array<std.UInt>, _s:String):stdgo.Tuple<T_input, StdTypes.Int> {
        final _b = ([for (i in _b) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.regexp.Regexp_T_inputs_static_extension.T_inputs_static_extension._init(_i, _r, _b, _s);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _clear(_i:T_inputs):Void {
        stdgo._internal.regexp.Regexp_T_inputs_static_extension.T_inputs_static_extension._clear(_i);
    }
    static public function _newReader(_i:T_inputs, _r:stdgo._internal.io.Io_RuneReader.RuneReader):T_input {
        return stdgo._internal.regexp.Regexp_T_inputs_static_extension.T_inputs_static_extension._newReader(_i, _r);
    }
    static public function _newString(_i:T_inputs, _s:String):T_input {
        return stdgo._internal.regexp.Regexp_T_inputs_static_extension.T_inputs_static_extension._newString(_i, _s);
    }
    static public function _newBytes(_i:T_inputs, _b:Array<std.UInt>):T_input {
        final _b = ([for (i in _b) i] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.regexp.Regexp_T_inputs_static_extension.T_inputs_static_extension._newBytes(_i, _b);
    }
}
class FindTest_static_extension {
    static public function string(_t:FindTest):String {
        return stdgo._internal.regexp.Regexp_FindTest_static_extension.FindTest_static_extension.string(_t);
    }
}
class T_onePassInst_static_extension {
    public static function _op(__self__:stdgo._internal.regexp.Regexp_T_onePassInst.T_onePassInst):InstOp {
        return stdgo._internal.regexp.Regexp_T_onePassInst_static_extension.T_onePassInst_static_extension._op(__self__);
    }
    public static function string(__self__:stdgo._internal.regexp.Regexp_T_onePassInst.T_onePassInst):String {
        return stdgo._internal.regexp.Regexp_T_onePassInst_static_extension.T_onePassInst_static_extension.string(__self__);
    }
    public static function matchRunePos(__self__:stdgo._internal.regexp.Regexp_T_onePassInst.T_onePassInst, _nameOff:StdTypes.Int):StdTypes.Int {
        return stdgo._internal.regexp.Regexp_T_onePassInst_static_extension.T_onePassInst_static_extension.matchRunePos(__self__, _nameOff);
    }
    public static function matchRune(__self__:stdgo._internal.regexp.Regexp_T_onePassInst.T_onePassInst, _nameOff:StdTypes.Int):Bool {
        return stdgo._internal.regexp.Regexp_T_onePassInst_static_extension.T_onePassInst_static_extension.matchRune(__self__, _nameOff);
    }
    public static function matchEmptyWidth(__self__:stdgo._internal.regexp.Regexp_T_onePassInst.T_onePassInst, _old:StdTypes.Int, _new:StdTypes.Int):Bool {
        return stdgo._internal.regexp.Regexp_T_onePassInst_static_extension.T_onePassInst_static_extension.matchEmptyWidth(__self__, _old, _new);
    }
}
class T_queueOnePass_static_extension {
    static public function _insertNew(_q:T_queueOnePass, _u:std.UInt):Void {
        stdgo._internal.regexp.Regexp_T_queueOnePass_static_extension.T_queueOnePass_static_extension._insertNew(_q, _u);
    }
    static public function _insert(_q:T_queueOnePass, _u:std.UInt):Void {
        stdgo._internal.regexp.Regexp_T_queueOnePass_static_extension.T_queueOnePass_static_extension._insert(_q, _u);
    }
    static public function _contains(_q:T_queueOnePass, _u:std.UInt):Bool {
        return stdgo._internal.regexp.Regexp_T_queueOnePass_static_extension.T_queueOnePass_static_extension._contains(_q, _u);
    }
    static public function _clear(_q:T_queueOnePass):Void {
        stdgo._internal.regexp.Regexp_T_queueOnePass_static_extension.T_queueOnePass_static_extension._clear(_q);
    }
    static public function _next(_q:T_queueOnePass):std.UInt {
        return stdgo._internal.regexp.Regexp_T_queueOnePass_static_extension.T_queueOnePass_static_extension._next(_q);
    }
    static public function _empty(_q:T_queueOnePass):Bool {
        return stdgo._internal.regexp.Regexp_T_queueOnePass_static_extension.T_queueOnePass_static_extension._empty(_q);
    }
}
class Regexp_static_extension {
    static public function unmarshalText(_re:Regexp_, _text:Array<std.UInt>):stdgo.Error {
        final _text = ([for (i in _text) i] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.regexp.Regexp_Regexp_static_extension.Regexp_static_extension.unmarshalText(_re, _text);
    }
    static public function marshalText(_re:Regexp_):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        return {
            final obj = stdgo._internal.regexp.Regexp_Regexp_static_extension.Regexp_static_extension.marshalText(_re);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function split(_re:Regexp_, _s:String, _n:StdTypes.Int):Array<String> {
        return [for (i in stdgo._internal.regexp.Regexp_Regexp_static_extension.Regexp_static_extension.split(_re, _s, _n)) i];
    }
    static public function findAllStringSubmatchIndex(_re:Regexp_, _s:String, _n:StdTypes.Int):Array<Array<StdTypes.Int>> {
        return [for (i in stdgo._internal.regexp.Regexp_Regexp_static_extension.Regexp_static_extension.findAllStringSubmatchIndex(_re, _s, _n)) [for (i in i) i]];
    }
    static public function findAllStringSubmatch(_re:Regexp_, _s:String, _n:StdTypes.Int):Array<Array<String>> {
        return [for (i in stdgo._internal.regexp.Regexp_Regexp_static_extension.Regexp_static_extension.findAllStringSubmatch(_re, _s, _n)) [for (i in i) i]];
    }
    static public function findAllSubmatchIndex(_re:Regexp_, _b:Array<std.UInt>, _n:StdTypes.Int):Array<Array<StdTypes.Int>> {
        final _b = ([for (i in _b) i] : stdgo.Slice<stdgo.GoUInt8>);
        return [for (i in stdgo._internal.regexp.Regexp_Regexp_static_extension.Regexp_static_extension.findAllSubmatchIndex(_re, _b, _n)) [for (i in i) i]];
    }
    static public function findAllSubmatch(_re:Regexp_, _b:Array<std.UInt>, _n:StdTypes.Int):Array<Array<Array<std.UInt>>> {
        final _b = ([for (i in _b) i] : stdgo.Slice<stdgo.GoUInt8>);
        return [for (i in stdgo._internal.regexp.Regexp_Regexp_static_extension.Regexp_static_extension.findAllSubmatch(_re, _b, _n)) [for (i in i) [for (i in i) i]]];
    }
    static public function findAllStringIndex(_re:Regexp_, _s:String, _n:StdTypes.Int):Array<Array<StdTypes.Int>> {
        return [for (i in stdgo._internal.regexp.Regexp_Regexp_static_extension.Regexp_static_extension.findAllStringIndex(_re, _s, _n)) [for (i in i) i]];
    }
    static public function findAllString(_re:Regexp_, _s:String, _n:StdTypes.Int):Array<String> {
        return [for (i in stdgo._internal.regexp.Regexp_Regexp_static_extension.Regexp_static_extension.findAllString(_re, _s, _n)) i];
    }
    static public function findAllIndex(_re:Regexp_, _b:Array<std.UInt>, _n:StdTypes.Int):Array<Array<StdTypes.Int>> {
        final _b = ([for (i in _b) i] : stdgo.Slice<stdgo.GoUInt8>);
        return [for (i in stdgo._internal.regexp.Regexp_Regexp_static_extension.Regexp_static_extension.findAllIndex(_re, _b, _n)) [for (i in i) i]];
    }
    static public function findAll(_re:Regexp_, _b:Array<std.UInt>, _n:StdTypes.Int):Array<Array<std.UInt>> {
        final _b = ([for (i in _b) i] : stdgo.Slice<stdgo.GoUInt8>);
        return [for (i in stdgo._internal.regexp.Regexp_Regexp_static_extension.Regexp_static_extension.findAll(_re, _b, _n)) [for (i in i) i]];
    }
    static public function findReaderSubmatchIndex(_re:Regexp_, _r:stdgo._internal.io.Io_RuneReader.RuneReader):Array<StdTypes.Int> {
        return [for (i in stdgo._internal.regexp.Regexp_Regexp_static_extension.Regexp_static_extension.findReaderSubmatchIndex(_re, _r)) i];
    }
    static public function findStringSubmatchIndex(_re:Regexp_, _s:String):Array<StdTypes.Int> {
        return [for (i in stdgo._internal.regexp.Regexp_Regexp_static_extension.Regexp_static_extension.findStringSubmatchIndex(_re, _s)) i];
    }
    static public function findStringSubmatch(_re:Regexp_, _s:String):Array<String> {
        return [for (i in stdgo._internal.regexp.Regexp_Regexp_static_extension.Regexp_static_extension.findStringSubmatch(_re, _s)) i];
    }
    static public function findSubmatchIndex(_re:Regexp_, _b:Array<std.UInt>):Array<StdTypes.Int> {
        final _b = ([for (i in _b) i] : stdgo.Slice<stdgo.GoUInt8>);
        return [for (i in stdgo._internal.regexp.Regexp_Regexp_static_extension.Regexp_static_extension.findSubmatchIndex(_re, _b)) i];
    }
    static public function _expand(_re:Regexp_, _dst:Array<std.UInt>, _template:String, _bsrc:Array<std.UInt>, _src:String, _match:Array<StdTypes.Int>):Array<std.UInt> {
        final _dst = ([for (i in _dst) i] : stdgo.Slice<stdgo.GoUInt8>);
        final _bsrc = ([for (i in _bsrc) i] : stdgo.Slice<stdgo.GoUInt8>);
        final _match = ([for (i in _match) i] : stdgo.Slice<stdgo.GoInt>);
        return [for (i in stdgo._internal.regexp.Regexp_Regexp_static_extension.Regexp_static_extension._expand(_re, _dst, _template, _bsrc, _src, _match)) i];
    }
    static public function expandString(_re:Regexp_, _dst:Array<std.UInt>, _template:String, _src:String, _match:Array<StdTypes.Int>):Array<std.UInt> {
        final _dst = ([for (i in _dst) i] : stdgo.Slice<stdgo.GoUInt8>);
        final _match = ([for (i in _match) i] : stdgo.Slice<stdgo.GoInt>);
        return [for (i in stdgo._internal.regexp.Regexp_Regexp_static_extension.Regexp_static_extension.expandString(_re, _dst, _template, _src, _match)) i];
    }
    static public function expand(_re:Regexp_, _dst:Array<std.UInt>, _template:Array<std.UInt>, _src:Array<std.UInt>, _match:Array<StdTypes.Int>):Array<std.UInt> {
        final _dst = ([for (i in _dst) i] : stdgo.Slice<stdgo.GoUInt8>);
        final _template = ([for (i in _template) i] : stdgo.Slice<stdgo.GoUInt8>);
        final _src = ([for (i in _src) i] : stdgo.Slice<stdgo.GoUInt8>);
        final _match = ([for (i in _match) i] : stdgo.Slice<stdgo.GoInt>);
        return [for (i in stdgo._internal.regexp.Regexp_Regexp_static_extension.Regexp_static_extension.expand(_re, _dst, _template, _src, _match)) i];
    }
    static public function findSubmatch(_re:Regexp_, _b:Array<std.UInt>):Array<Array<std.UInt>> {
        final _b = ([for (i in _b) i] : stdgo.Slice<stdgo.GoUInt8>);
        return [for (i in stdgo._internal.regexp.Regexp_Regexp_static_extension.Regexp_static_extension.findSubmatch(_re, _b)) [for (i in i) i]];
    }
    static public function findReaderIndex(_re:Regexp_, _r:stdgo._internal.io.Io_RuneReader.RuneReader):Array<StdTypes.Int> {
        return [for (i in stdgo._internal.regexp.Regexp_Regexp_static_extension.Regexp_static_extension.findReaderIndex(_re, _r)) i];
    }
    static public function findStringIndex(_re:Regexp_, _s:String):Array<StdTypes.Int> {
        return [for (i in stdgo._internal.regexp.Regexp_Regexp_static_extension.Regexp_static_extension.findStringIndex(_re, _s)) i];
    }
    static public function findString(_re:Regexp_, _s:String):String {
        return stdgo._internal.regexp.Regexp_Regexp_static_extension.Regexp_static_extension.findString(_re, _s);
    }
    static public function findIndex(_re:Regexp_, _b:Array<std.UInt>):Array<StdTypes.Int> {
        final _b = ([for (i in _b) i] : stdgo.Slice<stdgo.GoUInt8>);
        return [for (i in stdgo._internal.regexp.Regexp_Regexp_static_extension.Regexp_static_extension.findIndex(_re, _b)) i];
    }
    static public function find(_re:Regexp_, _b:Array<std.UInt>):Array<std.UInt> {
        final _b = ([for (i in _b) i] : stdgo.Slice<stdgo.GoUInt8>);
        return [for (i in stdgo._internal.regexp.Regexp_Regexp_static_extension.Regexp_static_extension.find(_re, _b)) i];
    }
    static public function _allMatches(_re:Regexp_, _s:String, _b:Array<std.UInt>, _n:StdTypes.Int, _deliver:stdgo.Slice<stdgo.GoInt> -> Void):Void {
        final _b = ([for (i in _b) i] : stdgo.Slice<stdgo.GoUInt8>);
        final _deliver = _deliver;
        stdgo._internal.regexp.Regexp_Regexp_static_extension.Regexp_static_extension._allMatches(_re, _s, _b, _n, _deliver);
    }
    static public function _pad(_re:Regexp_, _a:Array<StdTypes.Int>):Array<StdTypes.Int> {
        final _a = ([for (i in _a) i] : stdgo.Slice<stdgo.GoInt>);
        return [for (i in stdgo._internal.regexp.Regexp_Regexp_static_extension.Regexp_static_extension._pad(_re, _a)) i];
    }
    static public function replaceAllFunc(_re:Regexp_, _src:Array<std.UInt>, _repl:stdgo.Slice<stdgo.GoUInt8> -> stdgo.Slice<stdgo.GoUInt8>):Array<std.UInt> {
        final _src = ([for (i in _src) i] : stdgo.Slice<stdgo.GoUInt8>);
        final _repl = _repl;
        return [for (i in stdgo._internal.regexp.Regexp_Regexp_static_extension.Regexp_static_extension.replaceAllFunc(_re, _src, _repl)) i];
    }
    static public function replaceAllLiteral(_re:Regexp_, _src:Array<std.UInt>, _repl:Array<std.UInt>):Array<std.UInt> {
        final _src = ([for (i in _src) i] : stdgo.Slice<stdgo.GoUInt8>);
        final _repl = ([for (i in _repl) i] : stdgo.Slice<stdgo.GoUInt8>);
        return [for (i in stdgo._internal.regexp.Regexp_Regexp_static_extension.Regexp_static_extension.replaceAllLiteral(_re, _src, _repl)) i];
    }
    static public function replaceAll(_re:Regexp_, _src:Array<std.UInt>, _repl:Array<std.UInt>):Array<std.UInt> {
        final _src = ([for (i in _src) i] : stdgo.Slice<stdgo.GoUInt8>);
        final _repl = ([for (i in _repl) i] : stdgo.Slice<stdgo.GoUInt8>);
        return [for (i in stdgo._internal.regexp.Regexp_Regexp_static_extension.Regexp_static_extension.replaceAll(_re, _src, _repl)) i];
    }
    static public function _replaceAll(_re:Regexp_, _bsrc:Array<std.UInt>, _src:String, _nmatch:StdTypes.Int, _repl:(stdgo.Slice<stdgo.GoUInt8>, stdgo.Slice<stdgo.GoInt>) -> stdgo.Slice<stdgo.GoUInt8>):Array<std.UInt> {
        final _bsrc = ([for (i in _bsrc) i] : stdgo.Slice<stdgo.GoUInt8>);
        final _repl = _repl;
        return [for (i in stdgo._internal.regexp.Regexp_Regexp_static_extension.Regexp_static_extension._replaceAll(_re, _bsrc, _src, _nmatch, _repl)) i];
    }
    static public function replaceAllStringFunc(_re:Regexp_, _src:String, _repl:stdgo.GoString -> stdgo.GoString):String {
        final _repl = _repl;
        return stdgo._internal.regexp.Regexp_Regexp_static_extension.Regexp_static_extension.replaceAllStringFunc(_re, _src, _repl);
    }
    static public function replaceAllLiteralString(_re:Regexp_, _src:String, _repl:String):String {
        return stdgo._internal.regexp.Regexp_Regexp_static_extension.Regexp_static_extension.replaceAllLiteralString(_re, _src, _repl);
    }
    static public function replaceAllString(_re:Regexp_, _src:String, _repl:String):String {
        return stdgo._internal.regexp.Regexp_Regexp_static_extension.Regexp_static_extension.replaceAllString(_re, _src, _repl);
    }
    static public function match(_re:Regexp_, _b:Array<std.UInt>):Bool {
        final _b = ([for (i in _b) i] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.regexp.Regexp_Regexp_static_extension.Regexp_static_extension.match(_re, _b);
    }
    static public function matchString(_re:Regexp_, _s:String):Bool {
        return stdgo._internal.regexp.Regexp_Regexp_static_extension.Regexp_static_extension.matchString(_re, _s);
    }
    static public function matchReader(_re:Regexp_, _r:stdgo._internal.io.Io_RuneReader.RuneReader):Bool {
        return stdgo._internal.regexp.Regexp_Regexp_static_extension.Regexp_static_extension.matchReader(_re, _r);
    }
    static public function literalPrefix(_re:Regexp_):stdgo.Tuple<String, Bool> {
        return {
            final obj = stdgo._internal.regexp.Regexp_Regexp_static_extension.Regexp_static_extension.literalPrefix(_re);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function subexpIndex(_re:Regexp_, _name:String):StdTypes.Int {
        return stdgo._internal.regexp.Regexp_Regexp_static_extension.Regexp_static_extension.subexpIndex(_re, _name);
    }
    static public function subexpNames(_re:Regexp_):Array<String> {
        return [for (i in stdgo._internal.regexp.Regexp_Regexp_static_extension.Regexp_static_extension.subexpNames(_re)) i];
    }
    static public function numSubexp(_re:Regexp_):StdTypes.Int {
        return stdgo._internal.regexp.Regexp_Regexp_static_extension.Regexp_static_extension.numSubexp(_re);
    }
    static public function _put(_re:Regexp_, _m:T_machine):Void {
        stdgo._internal.regexp.Regexp_Regexp_static_extension.Regexp_static_extension._put(_re, _m);
    }
    static public function _get(_re:Regexp_):T_machine {
        return stdgo._internal.regexp.Regexp_Regexp_static_extension.Regexp_static_extension._get(_re);
    }
    static public function longest(_re:Regexp_):Void {
        stdgo._internal.regexp.Regexp_Regexp_static_extension.Regexp_static_extension.longest(_re);
    }
    static public function copy(_re:Regexp_):Regexp_ {
        return stdgo._internal.regexp.Regexp_Regexp_static_extension.Regexp_static_extension.copy(_re);
    }
    static public function string(_re:Regexp_):String {
        return stdgo._internal.regexp.Regexp_Regexp_static_extension.Regexp_static_extension.string(_re);
    }
    static public function _doExecute(_re:Regexp_, _r:stdgo._internal.io.Io_RuneReader.RuneReader, _b:Array<std.UInt>, _s:String, _pos:StdTypes.Int, _ncap:StdTypes.Int, _dstCap:Array<StdTypes.Int>):Array<StdTypes.Int> {
        final _b = ([for (i in _b) i] : stdgo.Slice<stdgo.GoUInt8>);
        final _dstCap = ([for (i in _dstCap) i] : stdgo.Slice<stdgo.GoInt>);
        return [for (i in stdgo._internal.regexp.Regexp_Regexp_static_extension.Regexp_static_extension._doExecute(_re, _r, _b, _s, _pos, _ncap, _dstCap)) i];
    }
    static public function _doMatch(_re:Regexp_, _r:stdgo._internal.io.Io_RuneReader.RuneReader, _b:Array<std.UInt>, _s:String):Bool {
        final _b = ([for (i in _b) i] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.regexp.Regexp_Regexp_static_extension.Regexp_static_extension._doMatch(_re, _r, _b, _s);
    }
    static public function _doOnePass(_re:Regexp_, _ir:stdgo._internal.io.Io_RuneReader.RuneReader, _ib:Array<std.UInt>, _is:String, _pos:StdTypes.Int, _ncap:StdTypes.Int, _dstCap:Array<StdTypes.Int>):Array<StdTypes.Int> {
        final _ib = ([for (i in _ib) i] : stdgo.Slice<stdgo.GoUInt8>);
        final _dstCap = ([for (i in _dstCap) i] : stdgo.Slice<stdgo.GoInt>);
        return [for (i in stdgo._internal.regexp.Regexp_Regexp_static_extension.Regexp_static_extension._doOnePass(_re, _ir, _ib, _is, _pos, _ncap, _dstCap)) i];
    }
    static public function _backtrack(_re:Regexp_, _ib:Array<std.UInt>, _is:String, _pos:StdTypes.Int, _ncap:StdTypes.Int, _dstCap:Array<StdTypes.Int>):Array<StdTypes.Int> {
        final _ib = ([for (i in _ib) i] : stdgo.Slice<stdgo.GoUInt8>);
        final _dstCap = ([for (i in _dstCap) i] : stdgo.Slice<stdgo.GoInt>);
        return [for (i in stdgo._internal.regexp.Regexp_Regexp_static_extension.Regexp_static_extension._backtrack(_re, _ib, _is, _pos, _ncap, _dstCap)) i];
    }
    static public function _tryBacktrack(_re:Regexp_, _b:T_bitState, _i:T_input, _pc:std.UInt, _pos:StdTypes.Int):Bool {
        return stdgo._internal.regexp.Regexp_Regexp_static_extension.Regexp_static_extension._tryBacktrack(_re, _b, _i, _pc, _pos);
    }
}
class T_inputString_static_extension {
    static public function _context(_i:T_inputString, _pos:StdTypes.Int):T_lazyFlag {
        return stdgo._internal.regexp.Regexp_T_inputString_static_extension.T_inputString_static_extension._context(_i, _pos);
    }
    static public function _index(_i:T_inputString, _re:Regexp_, _pos:StdTypes.Int):StdTypes.Int {
        return stdgo._internal.regexp.Regexp_T_inputString_static_extension.T_inputString_static_extension._index(_i, _re, _pos);
    }
    static public function _hasPrefix(_i:T_inputString, _re:Regexp_):Bool {
        return stdgo._internal.regexp.Regexp_T_inputString_static_extension.T_inputString_static_extension._hasPrefix(_i, _re);
    }
    static public function _canCheckPrefix(_i:T_inputString):Bool {
        return stdgo._internal.regexp.Regexp_T_inputString_static_extension.T_inputString_static_extension._canCheckPrefix(_i);
    }
    static public function _step(_i:T_inputString, _pos:StdTypes.Int):stdgo.Tuple<StdTypes.Int, StdTypes.Int> {
        return {
            final obj = stdgo._internal.regexp.Regexp_T_inputString_static_extension.T_inputString_static_extension._step(_i, _pos);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
class T_inputBytes_static_extension {
    static public function _context(_i:T_inputBytes, _pos:StdTypes.Int):T_lazyFlag {
        return stdgo._internal.regexp.Regexp_T_inputBytes_static_extension.T_inputBytes_static_extension._context(_i, _pos);
    }
    static public function _index(_i:T_inputBytes, _re:Regexp_, _pos:StdTypes.Int):StdTypes.Int {
        return stdgo._internal.regexp.Regexp_T_inputBytes_static_extension.T_inputBytes_static_extension._index(_i, _re, _pos);
    }
    static public function _hasPrefix(_i:T_inputBytes, _re:Regexp_):Bool {
        return stdgo._internal.regexp.Regexp_T_inputBytes_static_extension.T_inputBytes_static_extension._hasPrefix(_i, _re);
    }
    static public function _canCheckPrefix(_i:T_inputBytes):Bool {
        return stdgo._internal.regexp.Regexp_T_inputBytes_static_extension.T_inputBytes_static_extension._canCheckPrefix(_i);
    }
    static public function _step(_i:T_inputBytes, _pos:StdTypes.Int):stdgo.Tuple<StdTypes.Int, StdTypes.Int> {
        return {
            final obj = stdgo._internal.regexp.Regexp_T_inputBytes_static_extension.T_inputBytes_static_extension._step(_i, _pos);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
class T_inputReader_static_extension {
    static public function _context(_i:T_inputReader, _pos:StdTypes.Int):T_lazyFlag {
        return stdgo._internal.regexp.Regexp_T_inputReader_static_extension.T_inputReader_static_extension._context(_i, _pos);
    }
    static public function _index(_i:T_inputReader, _re:Regexp_, _pos:StdTypes.Int):StdTypes.Int {
        return stdgo._internal.regexp.Regexp_T_inputReader_static_extension.T_inputReader_static_extension._index(_i, _re, _pos);
    }
    static public function _hasPrefix(_i:T_inputReader, _re:Regexp_):Bool {
        return stdgo._internal.regexp.Regexp_T_inputReader_static_extension.T_inputReader_static_extension._hasPrefix(_i, _re);
    }
    static public function _canCheckPrefix(_i:T_inputReader):Bool {
        return stdgo._internal.regexp.Regexp_T_inputReader_static_extension.T_inputReader_static_extension._canCheckPrefix(_i);
    }
    static public function _step(_i:T_inputReader, _pos:StdTypes.Int):stdgo.Tuple<StdTypes.Int, StdTypes.Int> {
        return {
            final obj = stdgo._internal.regexp.Regexp_T_inputReader_static_extension.T_inputReader_static_extension._step(_i, _pos);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
class T_lazyFlag_static_extension {
    static public function _match(_f:T_lazyFlag, _op:EmptyOp):Bool {
        return stdgo._internal.regexp.Regexp_T_lazyFlag_static_extension.T_lazyFlag_static_extension._match(_f, _op);
    }
}
class T_runeSlice_static_extension {
    static public function swap(_p:T_runeSlice, _i:StdTypes.Int, _j:StdTypes.Int):Void {
        stdgo._internal.regexp.Regexp_T_runeSlice_static_extension.T_runeSlice_static_extension.swap(_p, _i, _j);
    }
    static public function less(_p:T_runeSlice, _i:StdTypes.Int, _j:StdTypes.Int):Bool {
        return stdgo._internal.regexp.Regexp_T_runeSlice_static_extension.T_runeSlice_static_extension.less(_p, _i, _j);
    }
    static public function len(_p:T_runeSlice):StdTypes.Int {
        return stdgo._internal.regexp.Regexp_T_runeSlice_static_extension.T_runeSlice_static_extension.len(_p);
    }
}
/**
    /|*{
    	f_5010644, err_5010647 = os.Open(file)
    	if err_5010647 != nil {
    		gotoNext = 5010683
    		_ = gotoNext == 5010683
    		t.Error(err_5010647)
    		return
    		gotoNext = 5010713
    	} else {
    		gotoNext = 5010713
    	}
    	_ = gotoNext == 5010713
    	defer f_5010644.Close()
    	b_5010730 = bufio.NewReader(f_5010644)
    	lineno_5010755 = 0
    	lastRegexp_5010768 = ""
    	gotoNext = 5010785
    	_ = gotoNext == 5010785
    	_ = 0
    	ReadingBreak = false
    	gotoNext = 5010795
    	_ = gotoNext == 5010795
    	if !ReadingBreak {
    		gotoNext = 5010799
    		_ = gotoNext == 5010799
    		lineno_5010755++
    		line_5010814, err_5010820 = b_5010730.ReadString(10)
    		if err_5010820 != nil {
    			gotoNext = 5010862
    			_ = gotoNext == 5010862
    			if err_5010820 != io.EOF {
    				gotoNext = 5010884
    				_ = gotoNext == 5010884
    				t.Errorf("%s:%d: %v", file, lineno_5010755, err_5010820)
    				gotoNext = 5010939
    			} else {
    				gotoNext = 5010939
    			}
    			_ = gotoNext == 5010939
    			ReadingBreak = true
    			gotoNext = 5010795
    			gotoNext = 5011280
    		} else {
    			gotoNext = 5011280
    		}
    		_ = gotoNext == 5011280
    		if line_5010814[0] == 35 || line_5010814[0] == 10 {
    			gotoNext = 5011317
    			_ = gotoNext == 5011317
    			gotoNext = 5010795
    			gotoNext = 5011345
    		} else {
    			gotoNext = 5011345
    		}
    		_ = gotoNext == 5011345
    		line_5010814 = line_5010814[:len(line_5010814)-1]
    		field_5011373 = notab.FindAllString(line_5010814, -1)
    		if 0 < len(field_5011373) {
    			gotoNext = 5011579
    			_ = gotoNext == 5011579
    			i_5011418, f_5011421 = 0, field_5011373[0]
    			gotoNext = 5011580
    			_ = gotoNext == 5011580
    			if i_5011418 < len(field_5011373) {
    				gotoNext = 5011438
    				_ = gotoNext == 5011438
    				f_5011421 = field_5011373[i_5011418]
    				if f_5011421 == "NULL" {
    					gotoNext = 5011458
    					_ = gotoNext == 5011458
    					field_5011373[i_5011418] = ""
    					gotoNext = 5011486
    				} else {
    					gotoNext = 5011486
    				}
    				_ = gotoNext == 5011486
    				if f_5011421 == "NIL" {
    					gotoNext = 5011500
    					_ = gotoNext == 5011500
    					t.Logf("%s:%d: skip: %s", file, lineno_5010755, line_5010814)
    					gotoNext = 5010795
    					gotoNext = 5011418
    				} else {
    					gotoNext = 5011418
    				}
    				_ = gotoNext == 5011418
    				i_5011418++
    				gotoNext = 5011580
    			} else {
    				gotoNext = 5011584
    			}
    			gotoNext = 5011584
    		} else {
    			gotoNext = 5011584
    		}
    		_ = gotoNext == 5011584
    		if len(field_5011373) == 0 {
    			gotoNext = 5011603
    			_ = gotoNext == 5011603
    			gotoNext = 5010795
    			gotoNext = 5014357
    		} else {
    			gotoNext = 5014357
    		}
    		_ = gotoNext == 5014357
    		flag_5014357 = field_5011373[0]
    		_ = 0
    		gotoNext = 5014376
    		_ = gotoNext == 5014376
    		switch flag_5014357[0] {
    		case 63, 38, 124, 59, 123, 125:
    			gotoNext = 5014395
    			_ = gotoNext == 5014395
    			flag_5014357 = flag_5014357[1:]
    			if flag_5014357 == "" {
    				gotoNext = 5014533
    				_ = gotoNext == 5014533
    				gotoNext = 5010795
    				gotoNext = 5014902
    			} else {
    				gotoNext = 5014902
    			}
    			gotoNext = 5014902
    		case 58:
    			gotoNext = 5014563
    			_ = gotoNext == 5014563
    			if _, flag_5014357, ok_5014580 = strings.Cut(flag_5014357[1:], ":"); !ok_5014580 {
    				gotoNext = 5014640
    				_ = gotoNext == 5014640
    				t.Logf("skip: %s", line_5010814)
    				gotoNext = 5010795
    				gotoNext = 5014902
    			} else {
    				gotoNext = 5014902
    			}
    			gotoNext = 5014902
    		case 67, 78, 84, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57:
    			gotoNext = 5014699
    			_ = gotoNext == 5014699
    			t.Logf("skip: %s", line_5010814)
    			gotoNext = 5010795
    			gotoNext = 5014902
    		default:
    			gotoNext = 5014902
    		}
    		_ = gotoNext == 5014902
    		if len(field_5011373) < 4 {
    			gotoNext = 5014920
    			_ = gotoNext == 5014920
    			t.Errorf("%s:%d: too few fields: %s", file, lineno_5010755, line_5010814)
    			gotoNext = 5010795
    			gotoNext = 5015053
    		} else {
    			gotoNext = 5015053
    		}
    		_ = gotoNext == 5015053
    		if strings.Contains(flag_5014357, "$") {
    			gotoNext = 5015084
    			_ = gotoNext == 5015084
    			f_5015089 = "\"" + field_5011373[1] + "\""
    			if field_5011373[1], err_5010820 = strconv.Unquote(f_5015089); err_5010820 != nil {
    				gotoNext = 5015168
    				_ = gotoNext == 5015168
    				t.Errorf("%s:%d: cannot unquote %s", file, lineno_5010755, f_5015089)
    				gotoNext = 5015236
    			} else {
    				gotoNext = 5015236
    			}
    			_ = gotoNext == 5015236
    			f_5015089 = "\"" + field_5011373[2] + "\""
    			if field_5011373[2], err_5010820 = strconv.Unquote(f_5015089); err_5010820 != nil {
    				gotoNext = 5015314
    				_ = gotoNext == 5015314
    				t.Errorf("%s:%d: cannot unquote %s", file, lineno_5010755, f_5015089)
    				gotoNext = 5015503
    			} else {
    				gotoNext = 5015503
    			}
    			gotoNext = 5015503
    		} else {
    			gotoNext = 5015503
    		}
    		_ = gotoNext == 5015503
    		if field_5011373[1] == "SAME" {
    			gotoNext = 5015525
    			_ = gotoNext == 5015525
    			field_5011373[1] = lastRegexp_5010768
    			gotoNext = 5015558
    		} else {
    			gotoNext = 5015558
    		}
    		_ = gotoNext == 5015558
    		lastRegexp_5010768 = field_5011373[1]
    		text_5015620 = field_5011373[2]
    		ok_5015676, shouldCompile_5015680, shouldMatch_5015695, pos_5015708 = parseFowlerResult(field_5011373[3])
    		if !ok_5015676 {
    			gotoNext = 5015752
    			_ = gotoNext == 5015752
    			t.Errorf("%s:%d: cannot parse result %#q", file, lineno_5010755, field_5011373[3])
    			gotoNext = 5010795
    			gotoNext = 5015908
    		} else {
    			gotoNext = 5015908
    		}
    		_ = gotoNext == 5015908
    		gotoNext = 5015908
    		_ = gotoNext == 5015908
    		keys_5015994 = []int{}
    		values_5015994 = []rune{}
    		for key, value := range flag_5014357 {
    			keys_5015994 = append(keys_5015994, key)
    			values_5015994 = append(values_5015994, value)
    		}
    		if 0 < len(keys_5015994) {
    			gotoNext = 5017273
    			_ = gotoNext == 5017273
    			i_5016006 = 0
    			gotoNext = 5017274
    			_ = gotoNext == 5017274
    			if i_5016006 < len(keys_5015994) {
    				gotoNext = 5016017
    				_ = gotoNext == 5016017
    				c_5016001 = values_5015994[i_5016006]
    				_ = keys_5015994[i_5016006]
    				pattern_5016022 = field_5011373[1]
    				syn_5016045 = 4
    				_ = 0
    				gotoNext = 5016085
    				_ = gotoNext == 5016085
    				switch c_5016001 {
    				default:
    					gotoNext = 5016099
    					_ = gotoNext == 5016099
    					i_5016006++
    					gotoNext = 5017274
    					gotoNext = 5016253
    				case 69:
    					gotoNext = 5016132
    					_ = gotoNext == 5016132
    					gotoNext = 5016253
    				case 76:
    					gotoNext = 5016186
    					_ = gotoNext == 5016186
    					pattern_5016022 = QuoteMeta(pattern_5016022)
    					gotoNext = 5016253
    				}
    				_ = gotoNext == 5016253
    				keys_5016253 = []int{}
    				values_5016253 = []rune{}
    				for key, value := range flag_5014357 {
    					keys_5016253 = append(keys_5016253, key)
    					values_5016253 = append(values_5016253, value)
    				}
    				if 0 < len(keys_5016253) {
    					gotoNext = 5016343
    					_ = gotoNext == 5016343
    					i_5016265 = 0
    					gotoNext = 5016344
    					_ = gotoNext == 5016344
    					if i_5016265 < len(keys_5016253) {
    						gotoNext = 5016276
    						_ = gotoNext == 5016276
    						c_5016260 = values_5016253[i_5016265]
    						_ = keys_5016253[i_5016265]
    						_ = 0
    						gotoNext = 5016282
    						_ = gotoNext == 5016282
    						switch c_5016260 {
    						case 105:
    							gotoNext = 5016297
    							_ = gotoNext == 5016297
    							syn_5016045 |= 1
    							gotoNext = 5016265
    						default:
    							gotoNext = 5016265
    						}
    						_ = gotoNext == 5016265
    						i_5016265++
    						gotoNext = 5016344
    					} else {
    						gotoNext = 5016350
    					}
    					gotoNext = 5016350
    				} else {
    					gotoNext = 5016350
    				}
    				_ = gotoNext == 5016350
    				re_5016350, err_5016354 = compile(pattern_5016022, syn_5016045, true)
    				if err_5016354 != nil {
    					gotoNext = 5016406
    					_ = gotoNext == 5016406
    					if shouldCompile_5015680 {
    						gotoNext = 5016429
    						_ = gotoNext == 5016429
    						t.Errorf("%s:%d: %#q did not compile", file, lineno_5010755, pattern_5016022)
    						gotoNext = 5016508
    					} else {
    						gotoNext = 5016508
    					}
    					_ = gotoNext == 5016508
    					i_5016006++
    					gotoNext = 5017274
    					gotoNext = 5016533
    				} else {
    					gotoNext = 5016533
    				}
    				_ = gotoNext == 5016533
    				if !shouldCompile_5015680 {
    					gotoNext = 5016551
    					_ = gotoNext == 5016551
    					t.Errorf("%s:%d: %#q should not compile", file, lineno_5010755, pattern_5016022)
    					i_5016006++
    					gotoNext = 5017274
    					gotoNext = 5016651
    				} else {
    					gotoNext = 5016651
    				}
    				_ = gotoNext == 5016651
    				match_5016651 = re_5016350.MatchString(text_5015620)
    				if match_5016651 != shouldMatch_5015695 {
    					gotoNext = 5016708
    					_ = gotoNext == 5016708
    					t.Errorf("%s:%d: %#q.Match(%#q) = %v, want %v", file, lineno_5010755, pattern_5016022, text_5015620, match_5016651, shouldMatch_5015695)
    					i_5016006++
    					gotoNext = 5017274
    					gotoNext = 5016840
    				} else {
    					gotoNext = 5016840
    				}
    				_ = gotoNext == 5016840
    				have_5016840 = re_5016350.FindStringSubmatchIndex(text_5015620)
    				if (len(have_5016840) > 0) != match_5016651 {
    					gotoNext = 5016912
    					_ = gotoNext == 5016912
    					t.Errorf("%s:%d: %#q.Match(%#q) = %v, but %#q.FindSubmatchIndex(%#q) = %v", file, lineno_5010755, pattern_5016022, text_5015620, match_5016651, pattern_5016022, text_5015620, have_5016840)
    					i_5016006++
    					gotoNext = 5017274
    					gotoNext = 5017080
    				} else {
    					gotoNext = 5017080
    				}
    				_ = gotoNext == 5017080
    				if len(have_5016840) > len(pos_5015708) {
    					gotoNext = 5017104
    					_ = gotoNext == 5017104
    					have_5016840 = have_5016840[:len(pos_5015708)]
    					gotoNext = 5017141
    				} else {
    					gotoNext = 5017141
    				}
    				_ = gotoNext == 5017141
    				if !same(have_5016840, pos_5015708) {
    					gotoNext = 5017161
    					_ = gotoNext == 5017161
    					t.Errorf("%s:%d: %#q.FindSubmatchIndex(%#q) = %v, want %v", file, lineno_5010755, pattern_5016022, text_5015620, have_5016840, pos_5015708)
    					gotoNext = 5016006
    				} else {
    					gotoNext = 5016006
    				}
    				_ = gotoNext == 5016006
    				i_5016006++
    				gotoNext = 5017274
    			} else {
    				gotoNext = 5017279
    			}
    			gotoNext = 5017279
    		} else {
    			gotoNext = 5017279
    		}
    		gotoNext = 5010795
    	} else {
    		gotoNext = 5017279
    	}
    	_ = gotoNext == 5017279
    	gotoNext = -1
    }*|/
**/
class Regexp {
    static public function testGoodCompile(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        stdgo._internal.regexp.Regexp_testGoodCompile.testGoodCompile(_t);
    }
    static public function testBadCompile(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        stdgo._internal.regexp.Regexp_testBadCompile.testBadCompile(_t);
    }
    static public function testMatch(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        stdgo._internal.regexp.Regexp_testMatch.testMatch(_t);
    }
    static public function testMatchFunction(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        stdgo._internal.regexp.Regexp_testMatchFunction.testMatchFunction(_t);
    }
    static public function testCopyMatch(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        stdgo._internal.regexp.Regexp_testCopyMatch.testCopyMatch(_t);
    }
    static public function testReplaceAll(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        stdgo._internal.regexp.Regexp_testReplaceAll.testReplaceAll(_t);
    }
    static public function testReplaceAllLiteral(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        stdgo._internal.regexp.Regexp_testReplaceAllLiteral.testReplaceAllLiteral(_t);
    }
    static public function testReplaceAllFunc(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        stdgo._internal.regexp.Regexp_testReplaceAllFunc.testReplaceAllFunc(_t);
    }
    static public function testQuoteMeta(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        stdgo._internal.regexp.Regexp_testQuoteMeta.testQuoteMeta(_t);
    }
    static public function testLiteralPrefix(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        stdgo._internal.regexp.Regexp_testLiteralPrefix.testLiteralPrefix(_t);
    }
    static public function testSubexp(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        stdgo._internal.regexp.Regexp_testSubexp.testSubexp(_t);
    }
    static public function testSplit(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        stdgo._internal.regexp.Regexp_testSplit.testSplit(_t);
    }
    /**
        The following sequence of Match calls used to panic. See issue #12980.
    **/
    static public function testParseAndCompile(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        stdgo._internal.regexp.Regexp_testParseAndCompile.testParseAndCompile(_t);
    }
    /**
        Check that one-pass cutoff does trigger.
    **/
    static public function testOnePassCutoff(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        stdgo._internal.regexp.Regexp_testOnePassCutoff.testOnePassCutoff(_t);
    }
    /**
        Check that the same machine can be used with the standard matcher
        and then the backtracker when there are no captures.
    **/
    static public function testSwitchBacktrack(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        stdgo._internal.regexp.Regexp_testSwitchBacktrack.testSwitchBacktrack(_t);
    }
    static public function benchmarkFind(_b:stdgo._internal.testing.Testing_B.B):Void {
        stdgo._internal.regexp.Regexp_benchmarkFind.benchmarkFind(_b);
    }
    static public function benchmarkFindAllNoMatches(_b:stdgo._internal.testing.Testing_B.B):Void {
        stdgo._internal.regexp.Regexp_benchmarkFindAllNoMatches.benchmarkFindAllNoMatches(_b);
    }
    static public function benchmarkFindString(_b:stdgo._internal.testing.Testing_B.B):Void {
        stdgo._internal.regexp.Regexp_benchmarkFindString.benchmarkFindString(_b);
    }
    static public function benchmarkFindSubmatch(_b:stdgo._internal.testing.Testing_B.B):Void {
        stdgo._internal.regexp.Regexp_benchmarkFindSubmatch.benchmarkFindSubmatch(_b);
    }
    static public function benchmarkFindStringSubmatch(_b:stdgo._internal.testing.Testing_B.B):Void {
        stdgo._internal.regexp.Regexp_benchmarkFindStringSubmatch.benchmarkFindStringSubmatch(_b);
    }
    static public function benchmarkLiteral(_b:stdgo._internal.testing.Testing_B.B):Void {
        stdgo._internal.regexp.Regexp_benchmarkLiteral.benchmarkLiteral(_b);
    }
    static public function benchmarkNotLiteral(_b:stdgo._internal.testing.Testing_B.B):Void {
        stdgo._internal.regexp.Regexp_benchmarkNotLiteral.benchmarkNotLiteral(_b);
    }
    static public function benchmarkMatchClass(_b:stdgo._internal.testing.Testing_B.B):Void {
        stdgo._internal.regexp.Regexp_benchmarkMatchClass.benchmarkMatchClass(_b);
    }
    static public function benchmarkMatchClass_InRange(_b:stdgo._internal.testing.Testing_B.B):Void {
        stdgo._internal.regexp.Regexp_benchmarkMatchClass_InRange.benchmarkMatchClass_InRange(_b);
    }
    static public function benchmarkReplaceAll(_b:stdgo._internal.testing.Testing_B.B):Void {
        stdgo._internal.regexp.Regexp_benchmarkReplaceAll.benchmarkReplaceAll(_b);
    }
    static public function benchmarkAnchoredLiteralShortNonMatch(_b:stdgo._internal.testing.Testing_B.B):Void {
        stdgo._internal.regexp.Regexp_benchmarkAnchoredLiteralShortNonMatch.benchmarkAnchoredLiteralShortNonMatch(_b);
    }
    static public function benchmarkAnchoredLiteralLongNonMatch(_b:stdgo._internal.testing.Testing_B.B):Void {
        stdgo._internal.regexp.Regexp_benchmarkAnchoredLiteralLongNonMatch.benchmarkAnchoredLiteralLongNonMatch(_b);
    }
    static public function benchmarkAnchoredShortMatch(_b:stdgo._internal.testing.Testing_B.B):Void {
        stdgo._internal.regexp.Regexp_benchmarkAnchoredShortMatch.benchmarkAnchoredShortMatch(_b);
    }
    static public function benchmarkAnchoredLongMatch(_b:stdgo._internal.testing.Testing_B.B):Void {
        stdgo._internal.regexp.Regexp_benchmarkAnchoredLongMatch.benchmarkAnchoredLongMatch(_b);
    }
    static public function benchmarkOnePassShortA(_b:stdgo._internal.testing.Testing_B.B):Void {
        stdgo._internal.regexp.Regexp_benchmarkOnePassShortA.benchmarkOnePassShortA(_b);
    }
    static public function benchmarkNotOnePassShortA(_b:stdgo._internal.testing.Testing_B.B):Void {
        stdgo._internal.regexp.Regexp_benchmarkNotOnePassShortA.benchmarkNotOnePassShortA(_b);
    }
    static public function benchmarkOnePassShortB(_b:stdgo._internal.testing.Testing_B.B):Void {
        stdgo._internal.regexp.Regexp_benchmarkOnePassShortB.benchmarkOnePassShortB(_b);
    }
    static public function benchmarkNotOnePassShortB(_b:stdgo._internal.testing.Testing_B.B):Void {
        stdgo._internal.regexp.Regexp_benchmarkNotOnePassShortB.benchmarkNotOnePassShortB(_b);
    }
    static public function benchmarkOnePassLongPrefix(_b:stdgo._internal.testing.Testing_B.B):Void {
        stdgo._internal.regexp.Regexp_benchmarkOnePassLongPrefix.benchmarkOnePassLongPrefix(_b);
    }
    static public function benchmarkOnePassLongNotPrefix(_b:stdgo._internal.testing.Testing_B.B):Void {
        stdgo._internal.regexp.Regexp_benchmarkOnePassLongNotPrefix.benchmarkOnePassLongNotPrefix(_b);
    }
    static public function benchmarkMatchParallelShared(_b:stdgo._internal.testing.Testing_B.B):Void {
        stdgo._internal.regexp.Regexp_benchmarkMatchParallelShared.benchmarkMatchParallelShared(_b);
    }
    static public function benchmarkMatchParallelCopied(_b:stdgo._internal.testing.Testing_B.B):Void {
        stdgo._internal.regexp.Regexp_benchmarkMatchParallelCopied.benchmarkMatchParallelCopied(_b);
    }
    static public function benchmarkQuoteMetaAll(_b:stdgo._internal.testing.Testing_B.B):Void {
        stdgo._internal.regexp.Regexp_benchmarkQuoteMetaAll.benchmarkQuoteMetaAll(_b);
    }
    static public function benchmarkQuoteMetaNone(_b:stdgo._internal.testing.Testing_B.B):Void {
        stdgo._internal.regexp.Regexp_benchmarkQuoteMetaNone.benchmarkQuoteMetaNone(_b);
    }
    static public function benchmarkCompile(_b:stdgo._internal.testing.Testing_B.B):Void {
        stdgo._internal.regexp.Regexp_benchmarkCompile.benchmarkCompile(_b);
    }
    static public function testDeepEqual(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        stdgo._internal.regexp.Regexp_testDeepEqual.testDeepEqual(_t);
    }
    static public function testMinInputLen(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        stdgo._internal.regexp.Regexp_testMinInputLen.testMinInputLen(_t);
    }
    static public function testUnmarshalText(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        stdgo._internal.regexp.Regexp_testUnmarshalText.testUnmarshalText(_t);
    }
    /**
        This test is excluded when running under the race detector because
        it is a very expensive test and takes too long.
    **/
    static public function testRE2Exhaustive(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        stdgo._internal.regexp.Regexp_testRE2Exhaustive.testRE2Exhaustive(_t);
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
    static public function testRE2Search(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        stdgo._internal.regexp.Regexp_testRE2Search.testRE2Search(_t);
    }
    /**
        TestFowler runs this package's regexp API against the
        POSIX regular expression tests collected by Glenn Fowler
        at http://www2.research.att.com/~astopen/testregex/testregex.html.
    **/
    static public function testFowler(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        stdgo._internal.regexp.Regexp_testFowler.testFowler(_t);
    }
    static public function benchmarkMatch(_b:stdgo._internal.testing.Testing_B.B):Void {
        stdgo._internal.regexp.Regexp_benchmarkMatch.benchmarkMatch(_b);
    }
    static public function benchmarkMatch_onepass_regex(_b:stdgo._internal.testing.Testing_B.B):Void {
        stdgo._internal.regexp.Regexp_benchmarkMatch_onepass_regex.benchmarkMatch_onepass_regex(_b);
    }
    static public function testLongest(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        stdgo._internal.regexp.Regexp_testLongest.testLongest(_t);
    }
    /**
        TestProgramTooLongForBacktrack tests that a regex which is too long
        for the backtracker still executes properly.
    **/
    static public function testProgramTooLongForBacktrack(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        stdgo._internal.regexp.Regexp_testProgramTooLongForBacktrack.testProgramTooLongForBacktrack(_t);
    }
    static public function testFind(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        stdgo._internal.regexp.Regexp_testFind.testFind(_t);
    }
    static public function testFindString(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        stdgo._internal.regexp.Regexp_testFindString.testFindString(_t);
    }
    static public function testFindIndex(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        stdgo._internal.regexp.Regexp_testFindIndex.testFindIndex(_t);
    }
    static public function testFindStringIndex(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        stdgo._internal.regexp.Regexp_testFindStringIndex.testFindStringIndex(_t);
    }
    static public function testFindReaderIndex(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        stdgo._internal.regexp.Regexp_testFindReaderIndex.testFindReaderIndex(_t);
    }
    static public function testFindAll(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        stdgo._internal.regexp.Regexp_testFindAll.testFindAll(_t);
    }
    static public function testFindAllString(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        stdgo._internal.regexp.Regexp_testFindAllString.testFindAllString(_t);
    }
    static public function testFindAllIndex(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        stdgo._internal.regexp.Regexp_testFindAllIndex.testFindAllIndex(_t);
    }
    static public function testFindAllStringIndex(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        stdgo._internal.regexp.Regexp_testFindAllStringIndex.testFindAllStringIndex(_t);
    }
    static public function testFindSubmatch(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        stdgo._internal.regexp.Regexp_testFindSubmatch.testFindSubmatch(_t);
    }
    static public function testFindStringSubmatch(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        stdgo._internal.regexp.Regexp_testFindStringSubmatch.testFindStringSubmatch(_t);
    }
    static public function testFindSubmatchIndex(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        stdgo._internal.regexp.Regexp_testFindSubmatchIndex.testFindSubmatchIndex(_t);
    }
    static public function testFindStringSubmatchIndex(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        stdgo._internal.regexp.Regexp_testFindStringSubmatchIndex.testFindStringSubmatchIndex(_t);
    }
    static public function testFindReaderSubmatchIndex(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        stdgo._internal.regexp.Regexp_testFindReaderSubmatchIndex.testFindReaderSubmatchIndex(_t);
    }
    static public function testFindAllSubmatch(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        stdgo._internal.regexp.Regexp_testFindAllSubmatch.testFindAllSubmatch(_t);
    }
    static public function testFindAllStringSubmatch(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        stdgo._internal.regexp.Regexp_testFindAllStringSubmatch.testFindAllStringSubmatch(_t);
    }
    static public function testFindAllSubmatchIndex(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        stdgo._internal.regexp.Regexp_testFindAllSubmatchIndex.testFindAllSubmatchIndex(_t);
    }
    static public function testFindAllStringSubmatchIndex(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        stdgo._internal.regexp.Regexp_testFindAllStringSubmatchIndex.testFindAllStringSubmatchIndex(_t);
    }
    static public function testMergeRuneSet(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        stdgo._internal.regexp.Regexp_testMergeRuneSet.testMergeRuneSet(_t);
    }
    static public function testCompileOnePass(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        stdgo._internal.regexp.Regexp_testCompileOnePass.testCompileOnePass(_t);
    }
    static public function testRunOnePass(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        stdgo._internal.regexp.Regexp_testRunOnePass.testRunOnePass(_t);
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
    static public function compile(_expr:String):stdgo.Tuple<Regexp_, stdgo.Error> {
        return {
            final obj = stdgo._internal.regexp.Regexp_compile.compile(_expr);
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
    static public function compilePOSIX(_expr:String):stdgo.Tuple<Regexp_, stdgo.Error> {
        return {
            final obj = stdgo._internal.regexp.Regexp_compilePOSIX.compilePOSIX(_expr);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        MustCompile is like Compile but panics if the expression cannot be parsed.
        It simplifies safe initialization of global variables holding compiled regular
        expressions.
    **/
    static public function mustCompile(_str:String):Regexp_ {
        return stdgo._internal.regexp.Regexp_mustCompile.mustCompile(_str);
    }
    /**
        MustCompilePOSIX is like CompilePOSIX but panics if the expression cannot be parsed.
        It simplifies safe initialization of global variables holding compiled regular
        expressions.
    **/
    static public function mustCompilePOSIX(_str:String):Regexp_ {
        return stdgo._internal.regexp.Regexp_mustCompilePOSIX.mustCompilePOSIX(_str);
    }
    /**
        MatchReader reports whether the text returned by the RuneReader
        contains any match of the regular expression pattern.
        More complicated queries need to use Compile and the full Regexp interface.
    **/
    static public function matchReader(_pattern:String, _r:stdgo._internal.io.Io_RuneReader.RuneReader):stdgo.Tuple<Bool, stdgo.Error> {
        return {
            final obj = stdgo._internal.regexp.Regexp_matchReader.matchReader(_pattern, _r);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        MatchString reports whether the string s
        contains any match of the regular expression pattern.
        More complicated queries need to use Compile and the full Regexp interface.
    **/
    static public function matchString(_pattern:String, _s:String):stdgo.Tuple<Bool, stdgo.Error> {
        return {
            final obj = stdgo._internal.regexp.Regexp_matchString.matchString(_pattern, _s);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        Match reports whether the byte slice b
        contains any match of the regular expression pattern.
        More complicated queries need to use Compile and the full Regexp interface.
    **/
    static public function match(_pattern:String, _b:Array<std.UInt>):stdgo.Tuple<Bool, stdgo.Error> {
        final _b = ([for (i in _b) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.regexp.Regexp_match.match(_pattern, _b);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        QuoteMeta returns a string that escapes all regular expression metacharacters
        inside the argument text; the returned string is a regular expression matching
        the literal text.
    **/
    static public function quoteMeta(_s:String):String {
        return stdgo._internal.regexp.Regexp_quoteMeta.quoteMeta(_s);
    }
}
