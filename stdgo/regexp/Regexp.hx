package stdgo.regexp;
@:dox(hide) class T_input_static_extension {
    static public function _context(t:stdgo._internal.regexp.Regexp_t_input.T_input, _pos:StdTypes.Int):T_lazyFlag {
        final _pos = (_pos : stdgo.GoInt);
        return stdgo._internal.regexp.Regexp_t_input_static_extension.T_input_static_extension._context(t, _pos);
    }
    static public function _index(t:stdgo._internal.regexp.Regexp_t_input.T_input, _re:Regexp_, _pos:StdTypes.Int):StdTypes.Int {
        final _re = (_re : stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>);
        final _pos = (_pos : stdgo.GoInt);
        return stdgo._internal.regexp.Regexp_t_input_static_extension.T_input_static_extension._index(t, _re, _pos);
    }
    static public function _hasPrefix(t:stdgo._internal.regexp.Regexp_t_input.T_input, _re:Regexp_):Bool {
        final _re = (_re : stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>);
        return stdgo._internal.regexp.Regexp_t_input_static_extension.T_input_static_extension._hasPrefix(t, _re);
    }
    static public function _canCheckPrefix(t:stdgo._internal.regexp.Regexp_t_input.T_input):Bool {
        return stdgo._internal.regexp.Regexp_t_input_static_extension.T_input_static_extension._canCheckPrefix(t);
    }
    static public function _step(t:stdgo._internal.regexp.Regexp_t_input.T_input, _pos:StdTypes.Int):stdgo.Tuple<StdTypes.Int, StdTypes.Int> {
        final _pos = (_pos : stdgo.GoInt);
        return {
            final obj = stdgo._internal.regexp.Regexp_t_input_static_extension.T_input_static_extension._step(t, _pos);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
@:interface @:dox(hide) @:forward abstract T_input(stdgo._internal.regexp.Regexp_t_input.T_input) from stdgo._internal.regexp.Regexp_t_input.T_input to stdgo._internal.regexp.Regexp_t_input.T_input {
    @:from
    static function fromHaxeInterface(x:{ function _step(_pos:StdTypes.Int):stdgo.Tuple<StdTypes.Int, StdTypes.Int>; function _canCheckPrefix():Bool; function _hasPrefix(_re:Regexp_):Bool; function _index(_re:Regexp_, _pos:StdTypes.Int):StdTypes.Int; function _context(_pos:StdTypes.Int):T_lazyFlag; }):T_input {
        var __f__:Void -> stdgo.AnyInterface = null;
        final y:T_input = { _step : _0 -> x._step(_0), _canCheckPrefix : () -> x._canCheckPrefix(), _hasPrefix : _0 -> x._hasPrefix(_0), _index : (_0, _1) -> x._index(_0, _1), _context : _0 -> x._context(_0), __underlying__ : () -> __f__() };
        __f__ = () -> stdgo.Go.toInterface(y);
        return y;
    }
}
@:structInit @:using(stdgo.regexp.Regexp.T_stringError_static_extension) @:dox(hide) abstract T_stringError(stdgo._internal.regexp.Regexp_t_stringerror.T_stringError) from stdgo._internal.regexp.Regexp_t_stringerror.T_stringError to stdgo._internal.regexp.Regexp_t_stringerror.T_stringError {
    public var _re(get, set) : String;
    function get__re():String return this._re;
    function set__re(v:String):String {
        this._re = (v : stdgo.GoString);
        return v;
    }
    public var _err(get, set) : String;
    function get__err():String return this._err;
    function set__err(v:String):String {
        this._err = (v : stdgo.GoString);
        return v;
    }
    public function new(?_re:String, ?_err:String) this = new stdgo._internal.regexp.Regexp_t_stringerror.T_stringError((_re : stdgo.GoString), (_err : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.regexp.Regexp.ReplaceTest_static_extension) abstract ReplaceTest(stdgo._internal.regexp.Regexp_replacetest.ReplaceTest) from stdgo._internal.regexp.Regexp_replacetest.ReplaceTest to stdgo._internal.regexp.Regexp_replacetest.ReplaceTest {
    public var _pattern(get, set) : String;
    function get__pattern():String return this._pattern;
    function set__pattern(v:String):String {
        this._pattern = (v : stdgo.GoString);
        return v;
    }
    public var _replacement(get, set) : String;
    function get__replacement():String return this._replacement;
    function set__replacement(v:String):String {
        this._replacement = (v : stdgo.GoString);
        return v;
    }
    public var _input(get, set) : String;
    function get__input():String return this._input;
    function set__input(v:String):String {
        this._input = (v : stdgo.GoString);
        return v;
    }
    public var _output(get, set) : String;
    function get__output():String return this._output;
    function set__output(v:String):String {
        this._output = (v : stdgo.GoString);
        return v;
    }
    public function new(?_pattern:String, ?_replacement:String, ?_input:String, ?_output:String) this = new stdgo._internal.regexp.Regexp_replacetest.ReplaceTest((_pattern : stdgo.GoString), (_replacement : stdgo.GoString), (_input : stdgo.GoString), (_output : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.regexp.Regexp.ReplaceFuncTest_static_extension) abstract ReplaceFuncTest(stdgo._internal.regexp.Regexp_replacefunctest.ReplaceFuncTest) from stdgo._internal.regexp.Regexp_replacefunctest.ReplaceFuncTest to stdgo._internal.regexp.Regexp_replacefunctest.ReplaceFuncTest {
    public var _pattern(get, set) : String;
    function get__pattern():String return this._pattern;
    function set__pattern(v:String):String {
        this._pattern = (v : stdgo.GoString);
        return v;
    }
    public var _replacement(get, set) : String -> String;
    function get__replacement():String -> String return _0 -> this._replacement(_0);
    function set__replacement(v:String -> String):String -> String {
        this._replacement = v;
        return v;
    }
    public var _input(get, set) : String;
    function get__input():String return this._input;
    function set__input(v:String):String {
        this._input = (v : stdgo.GoString);
        return v;
    }
    public var _output(get, set) : String;
    function get__output():String return this._output;
    function set__output(v:String):String {
        this._output = (v : stdgo.GoString);
        return v;
    }
    public function new(?_pattern:String, ?_replacement:String -> String, ?_input:String, ?_output:String) this = new stdgo._internal.regexp.Regexp_replacefunctest.ReplaceFuncTest((_pattern : stdgo.GoString), _replacement, (_input : stdgo.GoString), (_output : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.regexp.Regexp.MetaTest_static_extension) abstract MetaTest(stdgo._internal.regexp.Regexp_metatest.MetaTest) from stdgo._internal.regexp.Regexp_metatest.MetaTest to stdgo._internal.regexp.Regexp_metatest.MetaTest {
    public var _pattern(get, set) : String;
    function get__pattern():String return this._pattern;
    function set__pattern(v:String):String {
        this._pattern = (v : stdgo.GoString);
        return v;
    }
    public var _output(get, set) : String;
    function get__output():String return this._output;
    function set__output(v:String):String {
        this._output = (v : stdgo.GoString);
        return v;
    }
    public var _literal(get, set) : String;
    function get__literal():String return this._literal;
    function set__literal(v:String):String {
        this._literal = (v : stdgo.GoString);
        return v;
    }
    public var _isLiteral(get, set) : Bool;
    function get__isLiteral():Bool return this._isLiteral;
    function set__isLiteral(v:Bool):Bool {
        this._isLiteral = v;
        return v;
    }
    public function new(?_pattern:String, ?_output:String, ?_literal:String, ?_isLiteral:Bool) this = new stdgo._internal.regexp.Regexp_metatest.MetaTest((_pattern : stdgo.GoString), (_output : stdgo.GoString), (_literal : stdgo.GoString), _isLiteral);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.regexp.Regexp.T_subexpIndex_static_extension) @:dox(hide) abstract T_subexpIndex(stdgo._internal.regexp.Regexp_t_subexpindex.T_subexpIndex) from stdgo._internal.regexp.Regexp_t_subexpindex.T_subexpIndex to stdgo._internal.regexp.Regexp_t_subexpindex.T_subexpIndex {
    public var _name(get, set) : String;
    function get__name():String return this._name;
    function set__name(v:String):String {
        this._name = (v : stdgo.GoString);
        return v;
    }
    public var _index(get, set) : StdTypes.Int;
    function get__index():StdTypes.Int return this._index;
    function set__index(v:StdTypes.Int):StdTypes.Int {
        this._index = (v : stdgo.GoInt);
        return v;
    }
    public function new(?_name:String, ?_index:StdTypes.Int) this = new stdgo._internal.regexp.Regexp_t_subexpindex.T_subexpIndex((_name : stdgo.GoString), (_index : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.regexp.Regexp.T_subexpCase_static_extension) @:dox(hide) abstract T_subexpCase(stdgo._internal.regexp.Regexp_t_subexpcase.T_subexpCase) from stdgo._internal.regexp.Regexp_t_subexpcase.T_subexpCase to stdgo._internal.regexp.Regexp_t_subexpcase.T_subexpCase {
    public var _input(get, set) : String;
    function get__input():String return this._input;
    function set__input(v:String):String {
        this._input = (v : stdgo.GoString);
        return v;
    }
    public var _num(get, set) : StdTypes.Int;
    function get__num():StdTypes.Int return this._num;
    function set__num(v:StdTypes.Int):StdTypes.Int {
        this._num = (v : stdgo.GoInt);
        return v;
    }
    public var _names(get, set) : Array<String>;
    function get__names():Array<String> return [for (i in this._names) i];
    function set__names(v:Array<String>):Array<String> {
        this._names = ([for (i in v) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>);
        return v;
    }
    public var _indices(get, set) : Array<T_subexpIndex>;
    function get__indices():Array<T_subexpIndex> return [for (i in this._indices) i];
    function set__indices(v:Array<T_subexpIndex>):Array<T_subexpIndex> {
        this._indices = ([for (i in v) i] : stdgo.Slice<stdgo._internal.regexp.Regexp_t_subexpindex.T_subexpIndex>);
        return v;
    }
    public function new(?_input:String, ?_num:StdTypes.Int, ?_names:Array<String>, ?_indices:Array<T_subexpIndex>) this = new stdgo._internal.regexp.Regexp_t_subexpcase.T_subexpCase((_input : stdgo.GoString), (_num : stdgo.GoInt), ([for (i in _names) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>), ([for (i in _indices) i] : stdgo.Slice<stdgo._internal.regexp.Regexp_t_subexpindex.T_subexpIndex>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.regexp.Regexp.T_job_static_extension) @:dox(hide) abstract T_job(stdgo._internal.regexp.Regexp_t_job.T_job) from stdgo._internal.regexp.Regexp_t_job.T_job to stdgo._internal.regexp.Regexp_t_job.T_job {
    public var _pc(get, set) : std.UInt;
    function get__pc():std.UInt return this._pc;
    function set__pc(v:std.UInt):std.UInt {
        this._pc = (v : stdgo.GoUInt32);
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
        this._pos = (v : stdgo.GoInt);
        return v;
    }
    public function new(?_pc:std.UInt, ?_arg:Bool, ?_pos:StdTypes.Int) this = new stdgo._internal.regexp.Regexp_t_job.T_job((_pc : stdgo.GoUInt32), _arg, (_pos : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.regexp.Regexp.T_bitState_static_extension) @:dox(hide) abstract T_bitState(stdgo._internal.regexp.Regexp_t_bitstate.T_bitState) from stdgo._internal.regexp.Regexp_t_bitstate.T_bitState to stdgo._internal.regexp.Regexp_t_bitstate.T_bitState {
    public var _end(get, set) : StdTypes.Int;
    function get__end():StdTypes.Int return this._end;
    function set__end(v:StdTypes.Int):StdTypes.Int {
        this._end = (v : stdgo.GoInt);
        return v;
    }
    public var _cap(get, set) : Array<StdTypes.Int>;
    function get__cap():Array<StdTypes.Int> return [for (i in this._cap) i];
    function set__cap(v:Array<StdTypes.Int>):Array<StdTypes.Int> {
        this._cap = ([for (i in v) (i : stdgo.GoInt)] : stdgo.Slice<stdgo.GoInt>);
        return v;
    }
    public var _matchcap(get, set) : Array<StdTypes.Int>;
    function get__matchcap():Array<StdTypes.Int> return [for (i in this._matchcap) i];
    function set__matchcap(v:Array<StdTypes.Int>):Array<StdTypes.Int> {
        this._matchcap = ([for (i in v) (i : stdgo.GoInt)] : stdgo.Slice<stdgo.GoInt>);
        return v;
    }
    public var _jobs(get, set) : Array<T_job>;
    function get__jobs():Array<T_job> return [for (i in this._jobs) i];
    function set__jobs(v:Array<T_job>):Array<T_job> {
        this._jobs = ([for (i in v) i] : stdgo.Slice<stdgo._internal.regexp.Regexp_t_job.T_job>);
        return v;
    }
    public var _visited(get, set) : Array<std.UInt>;
    function get__visited():Array<std.UInt> return [for (i in this._visited) i];
    function set__visited(v:Array<std.UInt>):Array<std.UInt> {
        this._visited = ([for (i in v) (i : stdgo.GoUInt32)] : stdgo.Slice<stdgo.GoUInt32>);
        return v;
    }
    public var _inputs(get, set) : T_inputs;
    function get__inputs():T_inputs return this._inputs;
    function set__inputs(v:T_inputs):T_inputs {
        this._inputs = v;
        return v;
    }
    public function new(?_end:StdTypes.Int, ?_cap:Array<StdTypes.Int>, ?_matchcap:Array<StdTypes.Int>, ?_jobs:Array<T_job>, ?_visited:Array<std.UInt>, ?_inputs:T_inputs) this = new stdgo._internal.regexp.Regexp_t_bitstate.T_bitState((_end : stdgo.GoInt), ([for (i in _cap) (i : stdgo.GoInt)] : stdgo.Slice<stdgo.GoInt>), ([for (i in _matchcap) (i : stdgo.GoInt)] : stdgo.Slice<stdgo.GoInt>), ([for (i in _jobs) i] : stdgo.Slice<stdgo._internal.regexp.Regexp_t_job.T_job>), ([for (i in _visited) (i : stdgo.GoUInt32)] : stdgo.Slice<stdgo.GoUInt32>), _inputs);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.regexp.Regexp.T_queue_static_extension) @:dox(hide) abstract T_queue(stdgo._internal.regexp.Regexp_t_queue.T_queue) from stdgo._internal.regexp.Regexp_t_queue.T_queue to stdgo._internal.regexp.Regexp_t_queue.T_queue {
    public var _sparse(get, set) : Array<std.UInt>;
    function get__sparse():Array<std.UInt> return [for (i in this._sparse) i];
    function set__sparse(v:Array<std.UInt>):Array<std.UInt> {
        this._sparse = ([for (i in v) (i : stdgo.GoUInt32)] : stdgo.Slice<stdgo.GoUInt32>);
        return v;
    }
    public var _dense(get, set) : Array<T_entry>;
    function get__dense():Array<T_entry> return [for (i in this._dense) i];
    function set__dense(v:Array<T_entry>):Array<T_entry> {
        this._dense = ([for (i in v) i] : stdgo.Slice<stdgo._internal.regexp.Regexp_t_entry.T_entry>);
        return v;
    }
    public function new(?_sparse:Array<std.UInt>, ?_dense:Array<T_entry>) this = new stdgo._internal.regexp.Regexp_t_queue.T_queue(([for (i in _sparse) (i : stdgo.GoUInt32)] : stdgo.Slice<stdgo.GoUInt32>), ([for (i in _dense) i] : stdgo.Slice<stdgo._internal.regexp.Regexp_t_entry.T_entry>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.regexp.Regexp.T_entry_static_extension) @:dox(hide) abstract T_entry(stdgo._internal.regexp.Regexp_t_entry.T_entry) from stdgo._internal.regexp.Regexp_t_entry.T_entry to stdgo._internal.regexp.Regexp_t_entry.T_entry {
    public var _pc(get, set) : std.UInt;
    function get__pc():std.UInt return this._pc;
    function set__pc(v:std.UInt):std.UInt {
        this._pc = (v : stdgo.GoUInt32);
        return v;
    }
    public var _t(get, set) : T_thread;
    function get__t():T_thread return this._t;
    function set__t(v:T_thread):T_thread {
        this._t = (v : stdgo.Ref<stdgo._internal.regexp.Regexp_t_thread.T_thread>);
        return v;
    }
    public function new(?_pc:std.UInt, ?_t:T_thread) this = new stdgo._internal.regexp.Regexp_t_entry.T_entry((_pc : stdgo.GoUInt32), (_t : stdgo.Ref<stdgo._internal.regexp.Regexp_t_thread.T_thread>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.regexp.Regexp.T_thread_static_extension) @:dox(hide) abstract T_thread(stdgo._internal.regexp.Regexp_t_thread.T_thread) from stdgo._internal.regexp.Regexp_t_thread.T_thread to stdgo._internal.regexp.Regexp_t_thread.T_thread {
    public var _inst(get, set) : stdgo._internal.regexp.syntax.Syntax_inst.Inst;
    function get__inst():stdgo._internal.regexp.syntax.Syntax_inst.Inst return this._inst;
    function set__inst(v:stdgo._internal.regexp.syntax.Syntax_inst.Inst):stdgo._internal.regexp.syntax.Syntax_inst.Inst {
        this._inst = (v : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_inst.Inst>);
        return v;
    }
    public var _cap(get, set) : Array<StdTypes.Int>;
    function get__cap():Array<StdTypes.Int> return [for (i in this._cap) i];
    function set__cap(v:Array<StdTypes.Int>):Array<StdTypes.Int> {
        this._cap = ([for (i in v) (i : stdgo.GoInt)] : stdgo.Slice<stdgo.GoInt>);
        return v;
    }
    public function new(?_inst:stdgo._internal.regexp.syntax.Syntax_inst.Inst, ?_cap:Array<StdTypes.Int>) this = new stdgo._internal.regexp.Regexp_t_thread.T_thread((_inst : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_inst.Inst>), ([for (i in _cap) (i : stdgo.GoInt)] : stdgo.Slice<stdgo.GoInt>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.regexp.Regexp.T_machine_static_extension) @:dox(hide) abstract T_machine(stdgo._internal.regexp.Regexp_t_machine.T_machine) from stdgo._internal.regexp.Regexp_t_machine.T_machine to stdgo._internal.regexp.Regexp_t_machine.T_machine {
    public var _re(get, set) : Regexp_;
    function get__re():Regexp_ return this._re;
    function set__re(v:Regexp_):Regexp_ {
        this._re = (v : stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>);
        return v;
    }
    public var _p(get, set) : stdgo._internal.regexp.syntax.Syntax_prog.Prog;
    function get__p():stdgo._internal.regexp.syntax.Syntax_prog.Prog return this._p;
    function set__p(v:stdgo._internal.regexp.syntax.Syntax_prog.Prog):stdgo._internal.regexp.syntax.Syntax_prog.Prog {
        this._p = (v : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_prog.Prog>);
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
        this._pool = ([for (i in v) (i : stdgo.Ref<stdgo._internal.regexp.Regexp_t_thread.T_thread>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.Regexp_t_thread.T_thread>>);
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
        this._matchcap = ([for (i in v) (i : stdgo.GoInt)] : stdgo.Slice<stdgo.GoInt>);
        return v;
    }
    public var _inputs(get, set) : T_inputs;
    function get__inputs():T_inputs return this._inputs;
    function set__inputs(v:T_inputs):T_inputs {
        this._inputs = v;
        return v;
    }
    public function new(?_re:Regexp_, ?_p:stdgo._internal.regexp.syntax.Syntax_prog.Prog, ?_q0:T_queue, ?_q1:T_queue, ?_pool:Array<T_thread>, ?_matched:Bool, ?_matchcap:Array<StdTypes.Int>, ?_inputs:T_inputs) this = new stdgo._internal.regexp.Regexp_t_machine.T_machine((_re : stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>), (_p : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_prog.Prog>), _q0, _q1, ([for (i in _pool) (i : stdgo.Ref<stdgo._internal.regexp.Regexp_t_thread.T_thread>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.Regexp_t_thread.T_thread>>), _matched, ([for (i in _matchcap) (i : stdgo.GoInt)] : stdgo.Slice<stdgo.GoInt>), _inputs);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.regexp.Regexp.T_inputs_static_extension) @:dox(hide) abstract T_inputs(stdgo._internal.regexp.Regexp_t_inputs.T_inputs) from stdgo._internal.regexp.Regexp_t_inputs.T_inputs to stdgo._internal.regexp.Regexp_t_inputs.T_inputs {
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
    public function new(?_bytes:T_inputBytes, ?_string:T_inputString, ?_reader:T_inputReader) this = new stdgo._internal.regexp.Regexp_t_inputs.T_inputs(_bytes, _string, _reader);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.regexp.Regexp.T_onePassMachine_static_extension) @:dox(hide) abstract T_onePassMachine(stdgo._internal.regexp.Regexp_t_onepassmachine.T_onePassMachine) from stdgo._internal.regexp.Regexp_t_onepassmachine.T_onePassMachine to stdgo._internal.regexp.Regexp_t_onepassmachine.T_onePassMachine {
    public var _inputs(get, set) : T_inputs;
    function get__inputs():T_inputs return this._inputs;
    function set__inputs(v:T_inputs):T_inputs {
        this._inputs = v;
        return v;
    }
    public var _matchcap(get, set) : Array<StdTypes.Int>;
    function get__matchcap():Array<StdTypes.Int> return [for (i in this._matchcap) i];
    function set__matchcap(v:Array<StdTypes.Int>):Array<StdTypes.Int> {
        this._matchcap = ([for (i in v) (i : stdgo.GoInt)] : stdgo.Slice<stdgo.GoInt>);
        return v;
    }
    public function new(?_inputs:T_inputs, ?_matchcap:Array<StdTypes.Int>) this = new stdgo._internal.regexp.Regexp_t_onepassmachine.T_onePassMachine(_inputs, ([for (i in _matchcap) (i : stdgo.GoInt)] : stdgo.Slice<stdgo.GoInt>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.regexp.Regexp.FindTest_static_extension) abstract FindTest(stdgo._internal.regexp.Regexp_findtest.FindTest) from stdgo._internal.regexp.Regexp_findtest.FindTest to stdgo._internal.regexp.Regexp_findtest.FindTest {
    public var _pat(get, set) : String;
    function get__pat():String return this._pat;
    function set__pat(v:String):String {
        this._pat = (v : stdgo.GoString);
        return v;
    }
    public var _text(get, set) : String;
    function get__text():String return this._text;
    function set__text(v:String):String {
        this._text = (v : stdgo.GoString);
        return v;
    }
    public var _matches(get, set) : Array<Array<StdTypes.Int>>;
    function get__matches():Array<Array<StdTypes.Int>> return [for (i in this._matches) [for (i in i) i]];
    function set__matches(v:Array<Array<StdTypes.Int>>):Array<Array<StdTypes.Int>> {
        this._matches = ([for (i in v) ([for (i in i) (i : stdgo.GoInt)] : stdgo.Slice<stdgo.GoInt>)] : stdgo.Slice<stdgo.Slice<stdgo.GoInt>>);
        return v;
    }
    public function new(?_pat:String, ?_text:String, ?_matches:Array<Array<StdTypes.Int>>) this = new stdgo._internal.regexp.Regexp_findtest.FindTest((_pat : stdgo.GoString), (_text : stdgo.GoString), ([for (i in _matches) ([for (i in i) (i : stdgo.GoInt)] : stdgo.Slice<stdgo.GoInt>)] : stdgo.Slice<stdgo.Slice<stdgo.GoInt>>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.regexp.Regexp.T_onePassProg_static_extension) @:dox(hide) abstract T_onePassProg(stdgo._internal.regexp.Regexp_t_onepassprog.T_onePassProg) from stdgo._internal.regexp.Regexp_t_onepassprog.T_onePassProg to stdgo._internal.regexp.Regexp_t_onepassprog.T_onePassProg {
    public var inst(get, set) : Array<T_onePassInst>;
    function get_inst():Array<T_onePassInst> return [for (i in this.inst) i];
    function set_inst(v:Array<T_onePassInst>):Array<T_onePassInst> {
        this.inst = ([for (i in v) i] : stdgo.Slice<stdgo._internal.regexp.Regexp_t_onepassinst.T_onePassInst>);
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
    public function new(?inst:Array<T_onePassInst>, ?start:StdTypes.Int, ?numCap:StdTypes.Int) this = new stdgo._internal.regexp.Regexp_t_onepassprog.T_onePassProg(([for (i in inst) i] : stdgo.Slice<stdgo._internal.regexp.Regexp_t_onepassinst.T_onePassInst>), (start : stdgo.GoInt), (numCap : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.regexp.Regexp.T_onePassInst_static_extension) @:dox(hide) abstract T_onePassInst(stdgo._internal.regexp.Regexp_t_onepassinst.T_onePassInst) from stdgo._internal.regexp.Regexp_t_onepassinst.T_onePassInst to stdgo._internal.regexp.Regexp_t_onepassinst.T_onePassInst {
    public var inst(get, set) : stdgo._internal.regexp.syntax.Syntax_inst.Inst;
    function get_inst():stdgo._internal.regexp.syntax.Syntax_inst.Inst return this.inst;
    function set_inst(v:stdgo._internal.regexp.syntax.Syntax_inst.Inst):stdgo._internal.regexp.syntax.Syntax_inst.Inst {
        this.inst = v;
        return v;
    }
    public var next(get, set) : Array<std.UInt>;
    function get_next():Array<std.UInt> return [for (i in this.next) i];
    function set_next(v:Array<std.UInt>):Array<std.UInt> {
        this.next = ([for (i in v) (i : stdgo.GoUInt32)] : stdgo.Slice<stdgo.GoUInt32>);
        return v;
    }
    public function new(?inst:stdgo._internal.regexp.syntax.Syntax_inst.Inst, ?next:Array<std.UInt>) this = new stdgo._internal.regexp.Regexp_t_onepassinst.T_onePassInst(inst, ([for (i in next) (i : stdgo.GoUInt32)] : stdgo.Slice<stdgo.GoUInt32>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.regexp.Regexp.T_queueOnePass_static_extension) @:dox(hide) abstract T_queueOnePass(stdgo._internal.regexp.Regexp_t_queueonepass.T_queueOnePass) from stdgo._internal.regexp.Regexp_t_queueonepass.T_queueOnePass to stdgo._internal.regexp.Regexp_t_queueonepass.T_queueOnePass {
    public var _sparse(get, set) : Array<std.UInt>;
    function get__sparse():Array<std.UInt> return [for (i in this._sparse) i];
    function set__sparse(v:Array<std.UInt>):Array<std.UInt> {
        this._sparse = ([for (i in v) (i : stdgo.GoUInt32)] : stdgo.Slice<stdgo.GoUInt32>);
        return v;
    }
    public var _dense(get, set) : Array<std.UInt>;
    function get__dense():Array<std.UInt> return [for (i in this._dense) i];
    function set__dense(v:Array<std.UInt>):Array<std.UInt> {
        this._dense = ([for (i in v) (i : stdgo.GoUInt32)] : stdgo.Slice<stdgo.GoUInt32>);
        return v;
    }
    public var _size(get, set) : std.UInt;
    function get__size():std.UInt return this._size;
    function set__size(v:std.UInt):std.UInt {
        this._size = (v : stdgo.GoUInt32);
        return v;
    }
    public var _nextIndex(get, set) : std.UInt;
    function get__nextIndex():std.UInt return this._nextIndex;
    function set__nextIndex(v:std.UInt):std.UInt {
        this._nextIndex = (v : stdgo.GoUInt32);
        return v;
    }
    public function new(?_sparse:Array<std.UInt>, ?_dense:Array<std.UInt>, ?_size:std.UInt, ?_nextIndex:std.UInt) this = new stdgo._internal.regexp.Regexp_t_queueonepass.T_queueOnePass(([for (i in _sparse) (i : stdgo.GoUInt32)] : stdgo.Slice<stdgo.GoUInt32>), ([for (i in _dense) (i : stdgo.GoUInt32)] : stdgo.Slice<stdgo.GoUInt32>), (_size : stdgo.GoUInt32), (_nextIndex : stdgo.GoUInt32));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.regexp.Regexp.Regexp_static_extension) abstract Regexp_(stdgo._internal.regexp.Regexp_regexp.Regexp) from stdgo._internal.regexp.Regexp_regexp.Regexp to stdgo._internal.regexp.Regexp_regexp.Regexp {
    public var _expr(get, set) : String;
    function get__expr():String return this._expr;
    function set__expr(v:String):String {
        this._expr = (v : stdgo.GoString);
        return v;
    }
    public var _prog(get, set) : stdgo._internal.regexp.syntax.Syntax_prog.Prog;
    function get__prog():stdgo._internal.regexp.syntax.Syntax_prog.Prog return this._prog;
    function set__prog(v:stdgo._internal.regexp.syntax.Syntax_prog.Prog):stdgo._internal.regexp.syntax.Syntax_prog.Prog {
        this._prog = (v : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_prog.Prog>);
        return v;
    }
    public var _onepass(get, set) : T_onePassProg;
    function get__onepass():T_onePassProg return this._onepass;
    function set__onepass(v:T_onePassProg):T_onePassProg {
        this._onepass = (v : stdgo.Ref<stdgo._internal.regexp.Regexp_t_onepassprog.T_onePassProg>);
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
    public var _cond(get, set) : stdgo._internal.regexp.syntax.Syntax_emptyop.EmptyOp;
    function get__cond():stdgo._internal.regexp.syntax.Syntax_emptyop.EmptyOp return this._cond;
    function set__cond(v:stdgo._internal.regexp.syntax.Syntax_emptyop.EmptyOp):stdgo._internal.regexp.syntax.Syntax_emptyop.EmptyOp {
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
    public function new(?_expr:String, ?_prog:stdgo._internal.regexp.syntax.Syntax_prog.Prog, ?_onepass:T_onePassProg, ?_numSubexp:StdTypes.Int, ?_maxBitStateLen:StdTypes.Int, ?_subexpNames:Array<String>, ?_prefix:String, ?_prefixBytes:Array<std.UInt>, ?_prefixRune:StdTypes.Int, ?_prefixEnd:std.UInt, ?_mpool:StdTypes.Int, ?_matchcap:StdTypes.Int, ?_prefixComplete:Bool, ?_cond:stdgo._internal.regexp.syntax.Syntax_emptyop.EmptyOp, ?_minInputLen:StdTypes.Int, ?_longest:Bool) this = new stdgo._internal.regexp.Regexp_regexp.Regexp(
(_expr : stdgo.GoString),
(_prog : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_prog.Prog>),
(_onepass : stdgo.Ref<stdgo._internal.regexp.Regexp_t_onepassprog.T_onePassProg>),
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
@:structInit @:using(stdgo.regexp.Regexp.T_inputString_static_extension) @:dox(hide) abstract T_inputString(stdgo._internal.regexp.Regexp_t_inputstring.T_inputString) from stdgo._internal.regexp.Regexp_t_inputstring.T_inputString to stdgo._internal.regexp.Regexp_t_inputstring.T_inputString {
    public var _str(get, set) : String;
    function get__str():String return this._str;
    function set__str(v:String):String {
        this._str = (v : stdgo.GoString);
        return v;
    }
    public function new(?_str:String) this = new stdgo._internal.regexp.Regexp_t_inputstring.T_inputString((_str : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.regexp.Regexp.T_inputBytes_static_extension) @:dox(hide) abstract T_inputBytes(stdgo._internal.regexp.Regexp_t_inputbytes.T_inputBytes) from stdgo._internal.regexp.Regexp_t_inputbytes.T_inputBytes to stdgo._internal.regexp.Regexp_t_inputbytes.T_inputBytes {
    public var _str(get, set) : Array<std.UInt>;
    function get__str():Array<std.UInt> return [for (i in this._str) i];
    function set__str(v:Array<std.UInt>):Array<std.UInt> {
        this._str = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public function new(?_str:Array<std.UInt>) this = new stdgo._internal.regexp.Regexp_t_inputbytes.T_inputBytes(([for (i in _str) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.regexp.Regexp.T_inputReader_static_extension) @:dox(hide) abstract T_inputReader(stdgo._internal.regexp.Regexp_t_inputreader.T_inputReader) from stdgo._internal.regexp.Regexp_t_inputreader.T_inputReader to stdgo._internal.regexp.Regexp_t_inputreader.T_inputReader {
    public var _r(get, set) : stdgo._internal.io.Io_runereader.RuneReader;
    function get__r():stdgo._internal.io.Io_runereader.RuneReader return this._r;
    function set__r(v:stdgo._internal.io.Io_runereader.RuneReader):stdgo._internal.io.Io_runereader.RuneReader {
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
        this._pos = (v : stdgo.GoInt);
        return v;
    }
    public function new(?_r:stdgo._internal.io.Io_runereader.RuneReader, ?_atEOT:Bool, ?_pos:StdTypes.Int) this = new stdgo._internal.regexp.Regexp_t_inputreader.T_inputReader(_r, _atEOT, (_pos : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:dox(hide) typedef T__struct_0Pointer = stdgo._internal.regexp.Regexp_t__struct_0pointer.T__struct_0Pointer;
@:dox(hide) class T__struct_0_static_extension {

}
@:dox(hide) typedef T__struct_0 = stdgo._internal.regexp.Regexp_t__struct_0.T__struct_0;
@:dox(hide) typedef T__struct_1Pointer = stdgo._internal.regexp.Regexp_t__struct_1pointer.T__struct_1Pointer;
@:dox(hide) class T__struct_1_static_extension {

}
@:dox(hide) typedef T__struct_1 = stdgo._internal.regexp.Regexp_t__struct_1.T__struct_1;
@:dox(hide) typedef T__struct_2Pointer = stdgo._internal.regexp.Regexp_t__struct_2pointer.T__struct_2Pointer;
@:dox(hide) class T__struct_2_static_extension {

}
@:dox(hide) typedef T__struct_2 = stdgo._internal.regexp.Regexp_t__struct_2.T__struct_2;
@:dox(hide) typedef T__struct_3Pointer = stdgo._internal.regexp.Regexp_t__struct_3pointer.T__struct_3Pointer;
@:dox(hide) class T__struct_3_static_extension {

}
@:dox(hide) typedef T__struct_3 = stdgo._internal.regexp.Regexp_t__struct_3.T__struct_3;
@:dox(hide) typedef T__struct_4Pointer = stdgo._internal.regexp.Regexp_t__struct_4pointer.T__struct_4Pointer;
@:dox(hide) class T__struct_4_static_extension {

}
@:dox(hide) typedef T__struct_4 = stdgo._internal.regexp.Regexp_t__struct_4.T__struct_4;
@:dox(hide) typedef T__struct_5Pointer = stdgo._internal.regexp.Regexp_t__struct_5pointer.T__struct_5Pointer;
@:dox(hide) class T__struct_5_static_extension {

}
@:dox(hide) typedef T__struct_5 = stdgo._internal.regexp.Regexp_t__struct_5.T__struct_5;
@:dox(hide) typedef T__struct_6Pointer = stdgo._internal.regexp.Regexp_t__struct_6pointer.T__struct_6Pointer;
@:dox(hide) class T__struct_6_static_extension {

}
@:dox(hide) typedef T__struct_6 = stdgo._internal.regexp.Regexp_t__struct_6.T__struct_6;
@:dox(hide) typedef T__struct_7Pointer = stdgo._internal.regexp.Regexp_t__struct_7pointer.T__struct_7Pointer;
@:dox(hide) class T__struct_7_static_extension {

}
@:dox(hide) typedef T__struct_7 = stdgo._internal.regexp.Regexp_t__struct_7.T__struct_7;
@:dox(hide) typedef T_lazyFlag = stdgo._internal.regexp.Regexp_t_lazyflag.T_lazyFlag;
@:dox(hide) typedef T_runeSlice = stdgo._internal.regexp.Regexp_t_runeslice.T_runeSlice;
@:dox(hide) typedef T_stringErrorPointer = stdgo._internal.regexp.Regexp_t_stringerrorpointer.T_stringErrorPointer;
@:dox(hide) class T_stringError_static_extension {

}
typedef ReplaceTestPointer = stdgo._internal.regexp.Regexp_replacetestpointer.ReplaceTestPointer;
class ReplaceTest_static_extension {

}
typedef ReplaceFuncTestPointer = stdgo._internal.regexp.Regexp_replacefunctestpointer.ReplaceFuncTestPointer;
class ReplaceFuncTest_static_extension {

}
typedef MetaTestPointer = stdgo._internal.regexp.Regexp_metatestpointer.MetaTestPointer;
class MetaTest_static_extension {

}
@:dox(hide) typedef T_subexpIndexPointer = stdgo._internal.regexp.Regexp_t_subexpindexpointer.T_subexpIndexPointer;
@:dox(hide) class T_subexpIndex_static_extension {

}
@:dox(hide) typedef T_subexpCasePointer = stdgo._internal.regexp.Regexp_t_subexpcasepointer.T_subexpCasePointer;
@:dox(hide) class T_subexpCase_static_extension {

}
@:dox(hide) typedef T_jobPointer = stdgo._internal.regexp.Regexp_t_jobpointer.T_jobPointer;
@:dox(hide) class T_job_static_extension {

}
@:dox(hide) typedef T_bitStatePointer = stdgo._internal.regexp.Regexp_t_bitstatepointer.T_bitStatePointer;
@:dox(hide) class T_bitState_static_extension {
    static public function _push(_b:T_bitState, _re:Regexp_, _pc:std.UInt, _pos:StdTypes.Int, _arg:Bool):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.regexp.Regexp_t_bitstate.T_bitState>);
        final _re = (_re : stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>);
        final _pc = (_pc : stdgo.GoUInt32);
        final _pos = (_pos : stdgo.GoInt);
        stdgo._internal.regexp.Regexp_t_bitstate_static_extension.T_bitState_static_extension._push(_b, _re, _pc, _pos, _arg);
    }
    static public function _shouldVisit(_b:T_bitState, _pc:std.UInt, _pos:StdTypes.Int):Bool {
        final _b = (_b : stdgo.Ref<stdgo._internal.regexp.Regexp_t_bitstate.T_bitState>);
        final _pc = (_pc : stdgo.GoUInt32);
        final _pos = (_pos : stdgo.GoInt);
        return stdgo._internal.regexp.Regexp_t_bitstate_static_extension.T_bitState_static_extension._shouldVisit(_b, _pc, _pos);
    }
    static public function _reset(_b:T_bitState, _prog:stdgo._internal.regexp.syntax.Syntax_prog.Prog, _end:StdTypes.Int, _ncap:StdTypes.Int):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.regexp.Regexp_t_bitstate.T_bitState>);
        final _prog = (_prog : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_prog.Prog>);
        final _end = (_end : stdgo.GoInt);
        final _ncap = (_ncap : stdgo.GoInt);
        stdgo._internal.regexp.Regexp_t_bitstate_static_extension.T_bitState_static_extension._reset(_b, _prog, _end, _ncap);
    }
}
@:dox(hide) typedef T_queuePointer = stdgo._internal.regexp.Regexp_t_queuepointer.T_queuePointer;
@:dox(hide) class T_queue_static_extension {

}
@:dox(hide) typedef T_entryPointer = stdgo._internal.regexp.Regexp_t_entrypointer.T_entryPointer;
@:dox(hide) class T_entry_static_extension {

}
@:dox(hide) typedef T_threadPointer = stdgo._internal.regexp.Regexp_t_threadpointer.T_threadPointer;
@:dox(hide) class T_thread_static_extension {

}
@:dox(hide) typedef T_machinePointer = stdgo._internal.regexp.Regexp_t_machinepointer.T_machinePointer;
@:dox(hide) class T_machine_static_extension {
    static public function _add(_m:T_machine, _q:T_queue, _pc:std.UInt, _pos:StdTypes.Int, _cap:Array<StdTypes.Int>, _cond:stdgo.Pointer<T_lazyFlag>, _t:T_thread):T_thread {
        final _m = (_m : stdgo.Ref<stdgo._internal.regexp.Regexp_t_machine.T_machine>);
        final _q = (_q : stdgo.Ref<stdgo._internal.regexp.Regexp_t_queue.T_queue>);
        final _pc = (_pc : stdgo.GoUInt32);
        final _pos = (_pos : stdgo.GoInt);
        final _cap = ([for (i in _cap) (i : stdgo.GoInt)] : stdgo.Slice<stdgo.GoInt>);
        final _t = (_t : stdgo.Ref<stdgo._internal.regexp.Regexp_t_thread.T_thread>);
        return stdgo._internal.regexp.Regexp_t_machine_static_extension.T_machine_static_extension._add(_m, _q, _pc, _pos, _cap, _cond, _t);
    }
    static public function _step(_m:T_machine, _runq:T_queue, _nextq:T_queue, _pos:StdTypes.Int, _nextPos:StdTypes.Int, _c:StdTypes.Int, _nextCond:stdgo.Pointer<T_lazyFlag>):Void {
        final _m = (_m : stdgo.Ref<stdgo._internal.regexp.Regexp_t_machine.T_machine>);
        final _runq = (_runq : stdgo.Ref<stdgo._internal.regexp.Regexp_t_queue.T_queue>);
        final _nextq = (_nextq : stdgo.Ref<stdgo._internal.regexp.Regexp_t_queue.T_queue>);
        final _pos = (_pos : stdgo.GoInt);
        final _nextPos = (_nextPos : stdgo.GoInt);
        final _c = (_c : stdgo.GoInt32);
        stdgo._internal.regexp.Regexp_t_machine_static_extension.T_machine_static_extension._step(_m, _runq, _nextq, _pos, _nextPos, _c, _nextCond);
    }
    static public function _clear(_m:T_machine, _q:T_queue):Void {
        final _m = (_m : stdgo.Ref<stdgo._internal.regexp.Regexp_t_machine.T_machine>);
        final _q = (_q : stdgo.Ref<stdgo._internal.regexp.Regexp_t_queue.T_queue>);
        stdgo._internal.regexp.Regexp_t_machine_static_extension.T_machine_static_extension._clear(_m, _q);
    }
    static public function _match(_m:T_machine, _i:T_input, _pos:StdTypes.Int):Bool {
        final _m = (_m : stdgo.Ref<stdgo._internal.regexp.Regexp_t_machine.T_machine>);
        final _pos = (_pos : stdgo.GoInt);
        return stdgo._internal.regexp.Regexp_t_machine_static_extension.T_machine_static_extension._match(_m, _i, _pos);
    }
    static public function _alloc(_m:T_machine, _i:stdgo._internal.regexp.syntax.Syntax_inst.Inst):T_thread {
        final _m = (_m : stdgo.Ref<stdgo._internal.regexp.Regexp_t_machine.T_machine>);
        final _i = (_i : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_inst.Inst>);
        return stdgo._internal.regexp.Regexp_t_machine_static_extension.T_machine_static_extension._alloc(_m, _i);
    }
    static public function _init(_m:T_machine, _ncap:StdTypes.Int):Void {
        final _m = (_m : stdgo.Ref<stdgo._internal.regexp.Regexp_t_machine.T_machine>);
        final _ncap = (_ncap : stdgo.GoInt);
        stdgo._internal.regexp.Regexp_t_machine_static_extension.T_machine_static_extension._init(_m, _ncap);
    }
}
@:dox(hide) typedef T_inputsPointer = stdgo._internal.regexp.Regexp_t_inputspointer.T_inputsPointer;
@:dox(hide) class T_inputs_static_extension {
    static public function _init(_i:T_inputs, _r:stdgo._internal.io.Io_runereader.RuneReader, _b:Array<std.UInt>, _s:String):stdgo.Tuple<T_input, StdTypes.Int> {
        final _i = (_i : stdgo.Ref<stdgo._internal.regexp.Regexp_t_inputs.T_inputs>);
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _s = (_s : stdgo.GoString);
        return {
            final obj = stdgo._internal.regexp.Regexp_t_inputs_static_extension.T_inputs_static_extension._init(_i, _r, _b, _s);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _clear(_i:T_inputs):Void {
        final _i = (_i : stdgo.Ref<stdgo._internal.regexp.Regexp_t_inputs.T_inputs>);
        stdgo._internal.regexp.Regexp_t_inputs_static_extension.T_inputs_static_extension._clear(_i);
    }
    static public function _newReader(_i:T_inputs, _r:stdgo._internal.io.Io_runereader.RuneReader):T_input {
        final _i = (_i : stdgo.Ref<stdgo._internal.regexp.Regexp_t_inputs.T_inputs>);
        return stdgo._internal.regexp.Regexp_t_inputs_static_extension.T_inputs_static_extension._newReader(_i, _r);
    }
    static public function _newString(_i:T_inputs, _s:String):T_input {
        final _i = (_i : stdgo.Ref<stdgo._internal.regexp.Regexp_t_inputs.T_inputs>);
        final _s = (_s : stdgo.GoString);
        return stdgo._internal.regexp.Regexp_t_inputs_static_extension.T_inputs_static_extension._newString(_i, _s);
    }
    static public function _newBytes(_i:T_inputs, _b:Array<std.UInt>):T_input {
        final _i = (_i : stdgo.Ref<stdgo._internal.regexp.Regexp_t_inputs.T_inputs>);
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.regexp.Regexp_t_inputs_static_extension.T_inputs_static_extension._newBytes(_i, _b);
    }
}
@:dox(hide) typedef T_onePassMachinePointer = stdgo._internal.regexp.Regexp_t_onepassmachinepointer.T_onePassMachinePointer;
@:dox(hide) class T_onePassMachine_static_extension {

}
typedef FindTestPointer = stdgo._internal.regexp.Regexp_findtestpointer.FindTestPointer;
class FindTest_static_extension {
    static public function string(_t:FindTest):String {
        return stdgo._internal.regexp.Regexp_findtest_static_extension.FindTest_static_extension.string(_t);
    }
}
@:dox(hide) typedef T_onePassProgPointer = stdgo._internal.regexp.Regexp_t_onepassprogpointer.T_onePassProgPointer;
@:dox(hide) class T_onePassProg_static_extension {

}
@:dox(hide) typedef T_onePassInstPointer = stdgo._internal.regexp.Regexp_t_onepassinstpointer.T_onePassInstPointer;
@:dox(hide) class T_onePassInst_static_extension {
    public static function _op(__self__:stdgo._internal.regexp.Regexp_t_onepassinst.T_onePassInst):stdgo._internal.regexp.syntax.Syntax_instop.InstOp {
        return stdgo._internal.regexp.Regexp_t_onepassinst_static_extension.T_onePassInst_static_extension._op(__self__);
    }
    public static function string(__self__:stdgo._internal.regexp.Regexp_t_onepassinst.T_onePassInst):String {
        return stdgo._internal.regexp.Regexp_t_onepassinst_static_extension.T_onePassInst_static_extension.string(__self__);
    }
    public static function matchRunePos(__self__:stdgo._internal.regexp.Regexp_t_onepassinst.T_onePassInst, _0:StdTypes.Int):StdTypes.Int {
        final _0 = (_0 : stdgo.GoInt32);
        return stdgo._internal.regexp.Regexp_t_onepassinst_static_extension.T_onePassInst_static_extension.matchRunePos(__self__, _0);
    }
    public static function matchRune(__self__:stdgo._internal.regexp.Regexp_t_onepassinst.T_onePassInst, _0:StdTypes.Int):Bool {
        final _0 = (_0 : stdgo.GoInt32);
        return stdgo._internal.regexp.Regexp_t_onepassinst_static_extension.T_onePassInst_static_extension.matchRune(__self__, _0);
    }
    public static function matchEmptyWidth(__self__:stdgo._internal.regexp.Regexp_t_onepassinst.T_onePassInst, _0:StdTypes.Int, _1:StdTypes.Int):Bool {
        final _0 = (_0 : stdgo.GoInt32);
        final _1 = (_1 : stdgo.GoInt32);
        return stdgo._internal.regexp.Regexp_t_onepassinst_static_extension.T_onePassInst_static_extension.matchEmptyWidth(__self__, _0, _1);
    }
}
@:dox(hide) typedef T_queueOnePassPointer = stdgo._internal.regexp.Regexp_t_queueonepasspointer.T_queueOnePassPointer;
@:dox(hide) class T_queueOnePass_static_extension {
    static public function _insertNew(_q:T_queueOnePass, _u:std.UInt):Void {
        final _q = (_q : stdgo.Ref<stdgo._internal.regexp.Regexp_t_queueonepass.T_queueOnePass>);
        final _u = (_u : stdgo.GoUInt32);
        stdgo._internal.regexp.Regexp_t_queueonepass_static_extension.T_queueOnePass_static_extension._insertNew(_q, _u);
    }
    static public function _insert(_q:T_queueOnePass, _u:std.UInt):Void {
        final _q = (_q : stdgo.Ref<stdgo._internal.regexp.Regexp_t_queueonepass.T_queueOnePass>);
        final _u = (_u : stdgo.GoUInt32);
        stdgo._internal.regexp.Regexp_t_queueonepass_static_extension.T_queueOnePass_static_extension._insert(_q, _u);
    }
    static public function _contains(_q:T_queueOnePass, _u:std.UInt):Bool {
        final _q = (_q : stdgo.Ref<stdgo._internal.regexp.Regexp_t_queueonepass.T_queueOnePass>);
        final _u = (_u : stdgo.GoUInt32);
        return stdgo._internal.regexp.Regexp_t_queueonepass_static_extension.T_queueOnePass_static_extension._contains(_q, _u);
    }
    static public function _clear(_q:T_queueOnePass):Void {
        final _q = (_q : stdgo.Ref<stdgo._internal.regexp.Regexp_t_queueonepass.T_queueOnePass>);
        stdgo._internal.regexp.Regexp_t_queueonepass_static_extension.T_queueOnePass_static_extension._clear(_q);
    }
    static public function _next(_q:T_queueOnePass):std.UInt {
        final _q = (_q : stdgo.Ref<stdgo._internal.regexp.Regexp_t_queueonepass.T_queueOnePass>);
        return stdgo._internal.regexp.Regexp_t_queueonepass_static_extension.T_queueOnePass_static_extension._next(_q);
    }
    static public function _empty(_q:T_queueOnePass):Bool {
        final _q = (_q : stdgo.Ref<stdgo._internal.regexp.Regexp_t_queueonepass.T_queueOnePass>);
        return stdgo._internal.regexp.Regexp_t_queueonepass_static_extension.T_queueOnePass_static_extension._empty(_q);
    }
}
typedef RegexpPointer = stdgo._internal.regexp.Regexp_regexppointer.RegexpPointer;
class Regexp_static_extension {
    static public function unmarshalText(_re:Regexp_, _text:Array<std.UInt>):stdgo.Error {
        final _re = (_re : stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>);
        final _text = ([for (i in _text) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.regexp.Regexp_regexp_static_extension.Regexp_static_extension.unmarshalText(_re, _text);
    }
    static public function marshalText(_re:Regexp_):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _re = (_re : stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>);
        return {
            final obj = stdgo._internal.regexp.Regexp_regexp_static_extension.Regexp_static_extension.marshalText(_re);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function split(_re:Regexp_, _s:String, _n:StdTypes.Int):Array<String> {
        final _re = (_re : stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>);
        final _s = (_s : stdgo.GoString);
        final _n = (_n : stdgo.GoInt);
        return [for (i in stdgo._internal.regexp.Regexp_regexp_static_extension.Regexp_static_extension.split(_re, _s, _n)) i];
    }
    static public function findAllStringSubmatchIndex(_re:Regexp_, _s:String, _n:StdTypes.Int):Array<Array<StdTypes.Int>> {
        final _re = (_re : stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>);
        final _s = (_s : stdgo.GoString);
        final _n = (_n : stdgo.GoInt);
        return [for (i in stdgo._internal.regexp.Regexp_regexp_static_extension.Regexp_static_extension.findAllStringSubmatchIndex(_re, _s, _n)) [for (i in i) i]];
    }
    static public function findAllStringSubmatch(_re:Regexp_, _s:String, _n:StdTypes.Int):Array<Array<String>> {
        final _re = (_re : stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>);
        final _s = (_s : stdgo.GoString);
        final _n = (_n : stdgo.GoInt);
        return [for (i in stdgo._internal.regexp.Regexp_regexp_static_extension.Regexp_static_extension.findAllStringSubmatch(_re, _s, _n)) [for (i in i) i]];
    }
    static public function findAllSubmatchIndex(_re:Regexp_, _b:Array<std.UInt>, _n:StdTypes.Int):Array<Array<StdTypes.Int>> {
        final _re = (_re : stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>);
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _n = (_n : stdgo.GoInt);
        return [for (i in stdgo._internal.regexp.Regexp_regexp_static_extension.Regexp_static_extension.findAllSubmatchIndex(_re, _b, _n)) [for (i in i) i]];
    }
    static public function findAllSubmatch(_re:Regexp_, _b:Array<std.UInt>, _n:StdTypes.Int):Array<Array<Array<std.UInt>>> {
        final _re = (_re : stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>);
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _n = (_n : stdgo.GoInt);
        return [for (i in stdgo._internal.regexp.Regexp_regexp_static_extension.Regexp_static_extension.findAllSubmatch(_re, _b, _n)) [for (i in i) [for (i in i) i]]];
    }
    static public function findAllStringIndex(_re:Regexp_, _s:String, _n:StdTypes.Int):Array<Array<StdTypes.Int>> {
        final _re = (_re : stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>);
        final _s = (_s : stdgo.GoString);
        final _n = (_n : stdgo.GoInt);
        return [for (i in stdgo._internal.regexp.Regexp_regexp_static_extension.Regexp_static_extension.findAllStringIndex(_re, _s, _n)) [for (i in i) i]];
    }
    static public function findAllString(_re:Regexp_, _s:String, _n:StdTypes.Int):Array<String> {
        final _re = (_re : stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>);
        final _s = (_s : stdgo.GoString);
        final _n = (_n : stdgo.GoInt);
        return [for (i in stdgo._internal.regexp.Regexp_regexp_static_extension.Regexp_static_extension.findAllString(_re, _s, _n)) i];
    }
    static public function findAllIndex(_re:Regexp_, _b:Array<std.UInt>, _n:StdTypes.Int):Array<Array<StdTypes.Int>> {
        final _re = (_re : stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>);
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _n = (_n : stdgo.GoInt);
        return [for (i in stdgo._internal.regexp.Regexp_regexp_static_extension.Regexp_static_extension.findAllIndex(_re, _b, _n)) [for (i in i) i]];
    }
    static public function findAll(_re:Regexp_, _b:Array<std.UInt>, _n:StdTypes.Int):Array<Array<std.UInt>> {
        final _re = (_re : stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>);
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _n = (_n : stdgo.GoInt);
        return [for (i in stdgo._internal.regexp.Regexp_regexp_static_extension.Regexp_static_extension.findAll(_re, _b, _n)) [for (i in i) i]];
    }
    static public function findReaderSubmatchIndex(_re:Regexp_, _r:stdgo._internal.io.Io_runereader.RuneReader):Array<StdTypes.Int> {
        final _re = (_re : stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>);
        return [for (i in stdgo._internal.regexp.Regexp_regexp_static_extension.Regexp_static_extension.findReaderSubmatchIndex(_re, _r)) i];
    }
    static public function findStringSubmatchIndex(_re:Regexp_, _s:String):Array<StdTypes.Int> {
        final _re = (_re : stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>);
        final _s = (_s : stdgo.GoString);
        return [for (i in stdgo._internal.regexp.Regexp_regexp_static_extension.Regexp_static_extension.findStringSubmatchIndex(_re, _s)) i];
    }
    static public function findStringSubmatch(_re:Regexp_, _s:String):Array<String> {
        final _re = (_re : stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>);
        final _s = (_s : stdgo.GoString);
        return [for (i in stdgo._internal.regexp.Regexp_regexp_static_extension.Regexp_static_extension.findStringSubmatch(_re, _s)) i];
    }
    static public function findSubmatchIndex(_re:Regexp_, _b:Array<std.UInt>):Array<StdTypes.Int> {
        final _re = (_re : stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>);
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return [for (i in stdgo._internal.regexp.Regexp_regexp_static_extension.Regexp_static_extension.findSubmatchIndex(_re, _b)) i];
    }
    static public function _expand(_re:Regexp_, _dst:Array<std.UInt>, _template:String, _bsrc:Array<std.UInt>, _src:String, _match:Array<StdTypes.Int>):Array<std.UInt> {
        final _re = (_re : stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>);
        final _dst = ([for (i in _dst) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _template = (_template : stdgo.GoString);
        final _bsrc = ([for (i in _bsrc) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _src = (_src : stdgo.GoString);
        final _match = ([for (i in _match) (i : stdgo.GoInt)] : stdgo.Slice<stdgo.GoInt>);
        return [for (i in stdgo._internal.regexp.Regexp_regexp_static_extension.Regexp_static_extension._expand(_re, _dst, _template, _bsrc, _src, _match)) i];
    }
    static public function expandString(_re:Regexp_, _dst:Array<std.UInt>, _template:String, _src:String, _match:Array<StdTypes.Int>):Array<std.UInt> {
        final _re = (_re : stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>);
        final _dst = ([for (i in _dst) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _template = (_template : stdgo.GoString);
        final _src = (_src : stdgo.GoString);
        final _match = ([for (i in _match) (i : stdgo.GoInt)] : stdgo.Slice<stdgo.GoInt>);
        return [for (i in stdgo._internal.regexp.Regexp_regexp_static_extension.Regexp_static_extension.expandString(_re, _dst, _template, _src, _match)) i];
    }
    static public function expand(_re:Regexp_, _dst:Array<std.UInt>, _template:Array<std.UInt>, _src:Array<std.UInt>, _match:Array<StdTypes.Int>):Array<std.UInt> {
        final _re = (_re : stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>);
        final _dst = ([for (i in _dst) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _template = ([for (i in _template) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _src = ([for (i in _src) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _match = ([for (i in _match) (i : stdgo.GoInt)] : stdgo.Slice<stdgo.GoInt>);
        return [for (i in stdgo._internal.regexp.Regexp_regexp_static_extension.Regexp_static_extension.expand(_re, _dst, _template, _src, _match)) i];
    }
    static public function findSubmatch(_re:Regexp_, _b:Array<std.UInt>):Array<Array<std.UInt>> {
        final _re = (_re : stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>);
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return [for (i in stdgo._internal.regexp.Regexp_regexp_static_extension.Regexp_static_extension.findSubmatch(_re, _b)) [for (i in i) i]];
    }
    static public function findReaderIndex(_re:Regexp_, _r:stdgo._internal.io.Io_runereader.RuneReader):Array<StdTypes.Int> {
        final _re = (_re : stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>);
        return [for (i in stdgo._internal.regexp.Regexp_regexp_static_extension.Regexp_static_extension.findReaderIndex(_re, _r)) i];
    }
    static public function findStringIndex(_re:Regexp_, _s:String):Array<StdTypes.Int> {
        final _re = (_re : stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>);
        final _s = (_s : stdgo.GoString);
        return [for (i in stdgo._internal.regexp.Regexp_regexp_static_extension.Regexp_static_extension.findStringIndex(_re, _s)) i];
    }
    static public function findString(_re:Regexp_, _s:String):String {
        final _re = (_re : stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>);
        final _s = (_s : stdgo.GoString);
        return stdgo._internal.regexp.Regexp_regexp_static_extension.Regexp_static_extension.findString(_re, _s);
    }
    static public function findIndex(_re:Regexp_, _b:Array<std.UInt>):Array<StdTypes.Int> {
        final _re = (_re : stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>);
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return [for (i in stdgo._internal.regexp.Regexp_regexp_static_extension.Regexp_static_extension.findIndex(_re, _b)) i];
    }
    static public function find(_re:Regexp_, _b:Array<std.UInt>):Array<std.UInt> {
        final _re = (_re : stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>);
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return [for (i in stdgo._internal.regexp.Regexp_regexp_static_extension.Regexp_static_extension.find(_re, _b)) i];
    }
    static public function _allMatches(_re:Regexp_, _s:String, _b:Array<std.UInt>, _n:StdTypes.Int, _deliver:Array<StdTypes.Int> -> Void):Void {
        final _re = (_re : stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>);
        final _s = (_s : stdgo.GoString);
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _n = (_n : stdgo.GoInt);
        final _deliver = _deliver;
        stdgo._internal.regexp.Regexp_regexp_static_extension.Regexp_static_extension._allMatches(_re, _s, _b, _n, _deliver);
    }
    static public function _pad(_re:Regexp_, _a:Array<StdTypes.Int>):Array<StdTypes.Int> {
        final _re = (_re : stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>);
        final _a = ([for (i in _a) (i : stdgo.GoInt)] : stdgo.Slice<stdgo.GoInt>);
        return [for (i in stdgo._internal.regexp.Regexp_regexp_static_extension.Regexp_static_extension._pad(_re, _a)) i];
    }
    static public function replaceAllFunc(_re:Regexp_, _src:Array<std.UInt>, _repl:Array<std.UInt> -> Array<std.UInt>):Array<std.UInt> {
        final _re = (_re : stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>);
        final _src = ([for (i in _src) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _repl = _repl;
        return [for (i in stdgo._internal.regexp.Regexp_regexp_static_extension.Regexp_static_extension.replaceAllFunc(_re, _src, _repl)) i];
    }
    static public function replaceAllLiteral(_re:Regexp_, _src:Array<std.UInt>, _repl:Array<std.UInt>):Array<std.UInt> {
        final _re = (_re : stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>);
        final _src = ([for (i in _src) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _repl = ([for (i in _repl) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return [for (i in stdgo._internal.regexp.Regexp_regexp_static_extension.Regexp_static_extension.replaceAllLiteral(_re, _src, _repl)) i];
    }
    static public function replaceAll(_re:Regexp_, _src:Array<std.UInt>, _repl:Array<std.UInt>):Array<std.UInt> {
        final _re = (_re : stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>);
        final _src = ([for (i in _src) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _repl = ([for (i in _repl) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return [for (i in stdgo._internal.regexp.Regexp_regexp_static_extension.Regexp_static_extension.replaceAll(_re, _src, _repl)) i];
    }
    static public function _replaceAll(_re:Regexp_, _bsrc:Array<std.UInt>, _src:String, _nmatch:StdTypes.Int, _repl:(Array<std.UInt>, Array<StdTypes.Int>) -> Array<std.UInt>):Array<std.UInt> {
        final _re = (_re : stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>);
        final _bsrc = ([for (i in _bsrc) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _src = (_src : stdgo.GoString);
        final _nmatch = (_nmatch : stdgo.GoInt);
        final _repl = _repl;
        return [for (i in stdgo._internal.regexp.Regexp_regexp_static_extension.Regexp_static_extension._replaceAll(_re, _bsrc, _src, _nmatch, _repl)) i];
    }
    static public function replaceAllStringFunc(_re:Regexp_, _src:String, _repl:String -> String):String {
        final _re = (_re : stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>);
        final _src = (_src : stdgo.GoString);
        final _repl = _repl;
        return stdgo._internal.regexp.Regexp_regexp_static_extension.Regexp_static_extension.replaceAllStringFunc(_re, _src, _repl);
    }
    static public function replaceAllLiteralString(_re:Regexp_, _src:String, _repl:String):String {
        final _re = (_re : stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>);
        final _src = (_src : stdgo.GoString);
        final _repl = (_repl : stdgo.GoString);
        return stdgo._internal.regexp.Regexp_regexp_static_extension.Regexp_static_extension.replaceAllLiteralString(_re, _src, _repl);
    }
    static public function replaceAllString(_re:Regexp_, _src:String, _repl:String):String {
        final _re = (_re : stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>);
        final _src = (_src : stdgo.GoString);
        final _repl = (_repl : stdgo.GoString);
        return stdgo._internal.regexp.Regexp_regexp_static_extension.Regexp_static_extension.replaceAllString(_re, _src, _repl);
    }
    static public function match(_re:Regexp_, _b:Array<std.UInt>):Bool {
        final _re = (_re : stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>);
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.regexp.Regexp_regexp_static_extension.Regexp_static_extension.match(_re, _b);
    }
    static public function matchString(_re:Regexp_, _s:String):Bool {
        final _re = (_re : stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>);
        final _s = (_s : stdgo.GoString);
        return stdgo._internal.regexp.Regexp_regexp_static_extension.Regexp_static_extension.matchString(_re, _s);
    }
    static public function matchReader(_re:Regexp_, _r:stdgo._internal.io.Io_runereader.RuneReader):Bool {
        final _re = (_re : stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>);
        return stdgo._internal.regexp.Regexp_regexp_static_extension.Regexp_static_extension.matchReader(_re, _r);
    }
    static public function literalPrefix(_re:Regexp_):stdgo.Tuple<String, Bool> {
        final _re = (_re : stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>);
        return {
            final obj = stdgo._internal.regexp.Regexp_regexp_static_extension.Regexp_static_extension.literalPrefix(_re);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function subexpIndex(_re:Regexp_, _name:String):StdTypes.Int {
        final _re = (_re : stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>);
        final _name = (_name : stdgo.GoString);
        return stdgo._internal.regexp.Regexp_regexp_static_extension.Regexp_static_extension.subexpIndex(_re, _name);
    }
    static public function subexpNames(_re:Regexp_):Array<String> {
        final _re = (_re : stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>);
        return [for (i in stdgo._internal.regexp.Regexp_regexp_static_extension.Regexp_static_extension.subexpNames(_re)) i];
    }
    static public function numSubexp(_re:Regexp_):StdTypes.Int {
        final _re = (_re : stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>);
        return stdgo._internal.regexp.Regexp_regexp_static_extension.Regexp_static_extension.numSubexp(_re);
    }
    static public function _put(_re:Regexp_, _m:T_machine):Void {
        final _re = (_re : stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>);
        final _m = (_m : stdgo.Ref<stdgo._internal.regexp.Regexp_t_machine.T_machine>);
        stdgo._internal.regexp.Regexp_regexp_static_extension.Regexp_static_extension._put(_re, _m);
    }
    static public function _get(_re:Regexp_):T_machine {
        final _re = (_re : stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>);
        return stdgo._internal.regexp.Regexp_regexp_static_extension.Regexp_static_extension._get(_re);
    }
    static public function longest(_re:Regexp_):Void {
        final _re = (_re : stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>);
        stdgo._internal.regexp.Regexp_regexp_static_extension.Regexp_static_extension.longest(_re);
    }
    static public function copy(_re:Regexp_):Regexp_ {
        final _re = (_re : stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>);
        return stdgo._internal.regexp.Regexp_regexp_static_extension.Regexp_static_extension.copy(_re);
    }
    static public function string(_re:Regexp_):String {
        final _re = (_re : stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>);
        return stdgo._internal.regexp.Regexp_regexp_static_extension.Regexp_static_extension.string(_re);
    }
    static public function _doExecute(_re:Regexp_, _r:stdgo._internal.io.Io_runereader.RuneReader, _b:Array<std.UInt>, _s:String, _pos:StdTypes.Int, _ncap:StdTypes.Int, _dstCap:Array<StdTypes.Int>):Array<StdTypes.Int> {
        final _re = (_re : stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>);
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _s = (_s : stdgo.GoString);
        final _pos = (_pos : stdgo.GoInt);
        final _ncap = (_ncap : stdgo.GoInt);
        final _dstCap = ([for (i in _dstCap) (i : stdgo.GoInt)] : stdgo.Slice<stdgo.GoInt>);
        return [for (i in stdgo._internal.regexp.Regexp_regexp_static_extension.Regexp_static_extension._doExecute(_re, _r, _b, _s, _pos, _ncap, _dstCap)) i];
    }
    static public function _doMatch(_re:Regexp_, _r:stdgo._internal.io.Io_runereader.RuneReader, _b:Array<std.UInt>, _s:String):Bool {
        final _re = (_re : stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>);
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _s = (_s : stdgo.GoString);
        return stdgo._internal.regexp.Regexp_regexp_static_extension.Regexp_static_extension._doMatch(_re, _r, _b, _s);
    }
    static public function _doOnePass(_re:Regexp_, _ir:stdgo._internal.io.Io_runereader.RuneReader, _ib:Array<std.UInt>, _is:String, _pos:StdTypes.Int, _ncap:StdTypes.Int, _dstCap:Array<StdTypes.Int>):Array<StdTypes.Int> {
        final _re = (_re : stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>);
        final _ib = ([for (i in _ib) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _is = (_is : stdgo.GoString);
        final _pos = (_pos : stdgo.GoInt);
        final _ncap = (_ncap : stdgo.GoInt);
        final _dstCap = ([for (i in _dstCap) (i : stdgo.GoInt)] : stdgo.Slice<stdgo.GoInt>);
        return [for (i in stdgo._internal.regexp.Regexp_regexp_static_extension.Regexp_static_extension._doOnePass(_re, _ir, _ib, _is, _pos, _ncap, _dstCap)) i];
    }
    static public function _backtrack(_re:Regexp_, _ib:Array<std.UInt>, _is:String, _pos:StdTypes.Int, _ncap:StdTypes.Int, _dstCap:Array<StdTypes.Int>):Array<StdTypes.Int> {
        final _re = (_re : stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>);
        final _ib = ([for (i in _ib) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _is = (_is : stdgo.GoString);
        final _pos = (_pos : stdgo.GoInt);
        final _ncap = (_ncap : stdgo.GoInt);
        final _dstCap = ([for (i in _dstCap) (i : stdgo.GoInt)] : stdgo.Slice<stdgo.GoInt>);
        return [for (i in stdgo._internal.regexp.Regexp_regexp_static_extension.Regexp_static_extension._backtrack(_re, _ib, _is, _pos, _ncap, _dstCap)) i];
    }
    static public function _tryBacktrack(_re:Regexp_, _b:T_bitState, _i:T_input, _pc:std.UInt, _pos:StdTypes.Int):Bool {
        final _re = (_re : stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>);
        final _b = (_b : stdgo.Ref<stdgo._internal.regexp.Regexp_t_bitstate.T_bitState>);
        final _pc = (_pc : stdgo.GoUInt32);
        final _pos = (_pos : stdgo.GoInt);
        return stdgo._internal.regexp.Regexp_regexp_static_extension.Regexp_static_extension._tryBacktrack(_re, _b, _i, _pc, _pos);
    }
}
@:dox(hide) typedef T_inputStringPointer = stdgo._internal.regexp.Regexp_t_inputstringpointer.T_inputStringPointer;
@:dox(hide) class T_inputString_static_extension {
    static public function _context(_i:T_inputString, _pos:StdTypes.Int):T_lazyFlag {
        final _i = (_i : stdgo.Ref<stdgo._internal.regexp.Regexp_t_inputstring.T_inputString>);
        final _pos = (_pos : stdgo.GoInt);
        return stdgo._internal.regexp.Regexp_t_inputstring_static_extension.T_inputString_static_extension._context(_i, _pos);
    }
    static public function _index(_i:T_inputString, _re:Regexp_, _pos:StdTypes.Int):StdTypes.Int {
        final _i = (_i : stdgo.Ref<stdgo._internal.regexp.Regexp_t_inputstring.T_inputString>);
        final _re = (_re : stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>);
        final _pos = (_pos : stdgo.GoInt);
        return stdgo._internal.regexp.Regexp_t_inputstring_static_extension.T_inputString_static_extension._index(_i, _re, _pos);
    }
    static public function _hasPrefix(_i:T_inputString, _re:Regexp_):Bool {
        final _i = (_i : stdgo.Ref<stdgo._internal.regexp.Regexp_t_inputstring.T_inputString>);
        final _re = (_re : stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>);
        return stdgo._internal.regexp.Regexp_t_inputstring_static_extension.T_inputString_static_extension._hasPrefix(_i, _re);
    }
    static public function _canCheckPrefix(_i:T_inputString):Bool {
        final _i = (_i : stdgo.Ref<stdgo._internal.regexp.Regexp_t_inputstring.T_inputString>);
        return stdgo._internal.regexp.Regexp_t_inputstring_static_extension.T_inputString_static_extension._canCheckPrefix(_i);
    }
    static public function _step(_i:T_inputString, _pos:StdTypes.Int):stdgo.Tuple<StdTypes.Int, StdTypes.Int> {
        final _i = (_i : stdgo.Ref<stdgo._internal.regexp.Regexp_t_inputstring.T_inputString>);
        final _pos = (_pos : stdgo.GoInt);
        return {
            final obj = stdgo._internal.regexp.Regexp_t_inputstring_static_extension.T_inputString_static_extension._step(_i, _pos);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
@:dox(hide) typedef T_inputBytesPointer = stdgo._internal.regexp.Regexp_t_inputbytespointer.T_inputBytesPointer;
@:dox(hide) class T_inputBytes_static_extension {
    static public function _context(_i:T_inputBytes, _pos:StdTypes.Int):T_lazyFlag {
        final _i = (_i : stdgo.Ref<stdgo._internal.regexp.Regexp_t_inputbytes.T_inputBytes>);
        final _pos = (_pos : stdgo.GoInt);
        return stdgo._internal.regexp.Regexp_t_inputbytes_static_extension.T_inputBytes_static_extension._context(_i, _pos);
    }
    static public function _index(_i:T_inputBytes, _re:Regexp_, _pos:StdTypes.Int):StdTypes.Int {
        final _i = (_i : stdgo.Ref<stdgo._internal.regexp.Regexp_t_inputbytes.T_inputBytes>);
        final _re = (_re : stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>);
        final _pos = (_pos : stdgo.GoInt);
        return stdgo._internal.regexp.Regexp_t_inputbytes_static_extension.T_inputBytes_static_extension._index(_i, _re, _pos);
    }
    static public function _hasPrefix(_i:T_inputBytes, _re:Regexp_):Bool {
        final _i = (_i : stdgo.Ref<stdgo._internal.regexp.Regexp_t_inputbytes.T_inputBytes>);
        final _re = (_re : stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>);
        return stdgo._internal.regexp.Regexp_t_inputbytes_static_extension.T_inputBytes_static_extension._hasPrefix(_i, _re);
    }
    static public function _canCheckPrefix(_i:T_inputBytes):Bool {
        final _i = (_i : stdgo.Ref<stdgo._internal.regexp.Regexp_t_inputbytes.T_inputBytes>);
        return stdgo._internal.regexp.Regexp_t_inputbytes_static_extension.T_inputBytes_static_extension._canCheckPrefix(_i);
    }
    static public function _step(_i:T_inputBytes, _pos:StdTypes.Int):stdgo.Tuple<StdTypes.Int, StdTypes.Int> {
        final _i = (_i : stdgo.Ref<stdgo._internal.regexp.Regexp_t_inputbytes.T_inputBytes>);
        final _pos = (_pos : stdgo.GoInt);
        return {
            final obj = stdgo._internal.regexp.Regexp_t_inputbytes_static_extension.T_inputBytes_static_extension._step(_i, _pos);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
@:dox(hide) typedef T_inputReaderPointer = stdgo._internal.regexp.Regexp_t_inputreaderpointer.T_inputReaderPointer;
@:dox(hide) class T_inputReader_static_extension {
    static public function _context(_i:T_inputReader, _pos:StdTypes.Int):T_lazyFlag {
        final _i = (_i : stdgo.Ref<stdgo._internal.regexp.Regexp_t_inputreader.T_inputReader>);
        final _pos = (_pos : stdgo.GoInt);
        return stdgo._internal.regexp.Regexp_t_inputreader_static_extension.T_inputReader_static_extension._context(_i, _pos);
    }
    static public function _index(_i:T_inputReader, _re:Regexp_, _pos:StdTypes.Int):StdTypes.Int {
        final _i = (_i : stdgo.Ref<stdgo._internal.regexp.Regexp_t_inputreader.T_inputReader>);
        final _re = (_re : stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>);
        final _pos = (_pos : stdgo.GoInt);
        return stdgo._internal.regexp.Regexp_t_inputreader_static_extension.T_inputReader_static_extension._index(_i, _re, _pos);
    }
    static public function _hasPrefix(_i:T_inputReader, _re:Regexp_):Bool {
        final _i = (_i : stdgo.Ref<stdgo._internal.regexp.Regexp_t_inputreader.T_inputReader>);
        final _re = (_re : stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>);
        return stdgo._internal.regexp.Regexp_t_inputreader_static_extension.T_inputReader_static_extension._hasPrefix(_i, _re);
    }
    static public function _canCheckPrefix(_i:T_inputReader):Bool {
        final _i = (_i : stdgo.Ref<stdgo._internal.regexp.Regexp_t_inputreader.T_inputReader>);
        return stdgo._internal.regexp.Regexp_t_inputreader_static_extension.T_inputReader_static_extension._canCheckPrefix(_i);
    }
    static public function _step(_i:T_inputReader, _pos:StdTypes.Int):stdgo.Tuple<StdTypes.Int, StdTypes.Int> {
        final _i = (_i : stdgo.Ref<stdgo._internal.regexp.Regexp_t_inputreader.T_inputReader>);
        final _pos = (_pos : stdgo.GoInt);
        return {
            final obj = stdgo._internal.regexp.Regexp_t_inputreader_static_extension.T_inputReader_static_extension._step(_i, _pos);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
@:dox(hide) typedef T__struct_0PointerPointer = stdgo._internal.regexp.Regexp_t__struct_0pointerpointer.T__struct_0PointerPointer;
@:dox(hide) class T__struct_0Pointer_static_extension {

}
@:dox(hide) typedef T__struct_1PointerPointer = stdgo._internal.regexp.Regexp_t__struct_1pointerpointer.T__struct_1PointerPointer;
@:dox(hide) class T__struct_1Pointer_static_extension {

}
@:dox(hide) typedef T__struct_2PointerPointer = stdgo._internal.regexp.Regexp_t__struct_2pointerpointer.T__struct_2PointerPointer;
@:dox(hide) class T__struct_2Pointer_static_extension {

}
@:dox(hide) typedef T__struct_3PointerPointer = stdgo._internal.regexp.Regexp_t__struct_3pointerpointer.T__struct_3PointerPointer;
@:dox(hide) class T__struct_3Pointer_static_extension {

}
@:dox(hide) typedef T__struct_4PointerPointer = stdgo._internal.regexp.Regexp_t__struct_4pointerpointer.T__struct_4PointerPointer;
@:dox(hide) class T__struct_4Pointer_static_extension {

}
@:dox(hide) typedef T__struct_5PointerPointer = stdgo._internal.regexp.Regexp_t__struct_5pointerpointer.T__struct_5PointerPointer;
@:dox(hide) class T__struct_5Pointer_static_extension {

}
@:dox(hide) typedef T__struct_6PointerPointer = stdgo._internal.regexp.Regexp_t__struct_6pointerpointer.T__struct_6PointerPointer;
@:dox(hide) class T__struct_6Pointer_static_extension {

}
@:dox(hide) typedef T__struct_7PointerPointer = stdgo._internal.regexp.Regexp_t__struct_7pointerpointer.T__struct_7PointerPointer;
@:dox(hide) class T__struct_7Pointer_static_extension {

}
@:dox(hide) typedef T_lazyFlagPointer = stdgo._internal.regexp.Regexp_t_lazyflagpointer.T_lazyFlagPointer;
@:dox(hide) class T_lazyFlag_static_extension {
    static public function _match(_f:T_lazyFlag, _op:stdgo._internal.regexp.syntax.Syntax_emptyop.EmptyOp):Bool {
        return stdgo._internal.regexp.Regexp_t_lazyflag_static_extension.T_lazyFlag_static_extension._match(_f, _op);
    }
}
@:dox(hide) typedef T_runeSlicePointer = stdgo._internal.regexp.Regexp_t_runeslicepointer.T_runeSlicePointer;
@:dox(hide) class T_runeSlice_static_extension {
    static public function swap(_p:T_runeSlice, _i:StdTypes.Int, _j:StdTypes.Int):Void {
        final _i = (_i : stdgo.GoInt);
        final _j = (_j : stdgo.GoInt);
        stdgo._internal.regexp.Regexp_t_runeslice_static_extension.T_runeSlice_static_extension.swap(_p, _i, _j);
    }
    static public function less(_p:T_runeSlice, _i:StdTypes.Int, _j:StdTypes.Int):Bool {
        final _i = (_i : stdgo.GoInt);
        final _j = (_j : stdgo.GoInt);
        return stdgo._internal.regexp.Regexp_t_runeslice_static_extension.T_runeSlice_static_extension.less(_p, _i, _j);
    }
    static public function len(_p:T_runeSlice):StdTypes.Int {
        return stdgo._internal.regexp.Regexp_t_runeslice_static_extension.T_runeSlice_static_extension.len(_p);
    }
}
/**
    * Package regexp implements regular expression search.
    * 
    * The syntax of the regular expressions accepted is the same
    * general syntax used by Perl, Python, and other languages.
    * More precisely, it is the syntax accepted by RE2 and described at
    * https://golang.org/s/re2syntax, except for \C.
    * For an overview of the syntax, run
    * 
    * 	go doc regexp/syntax
    * 
    * The regexp implementation provided by this package is
    * guaranteed to run in time linear in the size of the input.
    * (This is a property not guaranteed by most open source
    * implementations of regular expressions.) For more information
    * about this property, see
    * 
    * 	https://swtch.com/~rsc/regexp/regexp1.html
    * 
    * or any book about automata theory.
    * 
    * All characters are UTF-8-encoded code points.
    * Following utf8.DecodeRune, each byte of an invalid UTF-8 sequence
    * is treated as if it encoded utf8.RuneError (U+FFFD).
    * 
    * There are 16 methods of Regexp that match a regular expression and identify
    * the matched text. Their names are matched by this regular expression:
    * 
    * 	Find(All)?(String)?(Submatch)?(Index)?
    * 
    * If 'All' is present, the routine matches successive non-overlapping
    * matches of the entire expression. Empty matches abutting a preceding
    * match are ignored. The return value is a slice containing the successive
    * return values of the corresponding non-'All' routine. These routines take
    * an extra integer argument, n. If n >= 0, the function returns at most n
    * matches/submatches; otherwise, it returns all of them.
    * 
    * If 'String' is present, the argument is a string; otherwise it is a slice
    * of bytes; return values are adjusted as appropriate.
    * 
    * If 'Submatch' is present, the return value is a slice identifying the
    * successive submatches of the expression. Submatches are matches of
    * parenthesized subexpressions (also known as capturing groups) within the
    * regular expression, numbered from left to right in order of opening
    * parenthesis. Submatch 0 is the match of the entire expression, submatch 1 is
    * the match of the first parenthesized subexpression, and so on.
    * 
    * If 'Index' is present, matches and submatches are identified by byte index
    * pairs within the input string: result[2*n:2*n+2] identifies the indexes of
    * the nth submatch. The pair for n==0 identifies the match of the entire
    * expression. If 'Index' is not present, the match is identified by the text
    * of the match/submatch. If an index is negative or text is nil, it means that
    * subexpression did not match any string in the input. For 'String' versions
    * an empty string means either no match or an empty match.
    * 
    * There is also a subset of the methods that can be applied to text read
    * from a RuneReader:
    * 
    * 	MatchReader, FindReaderIndex, FindReaderSubmatchIndex
    * 
    * This set may grow. Note that regular expression matches may need to
    * examine text beyond the text returned by a match, so the methods that
    * match text from a RuneReader may read arbitrarily far into the input
    * before returning.
    * 
    * (There are a few other methods that do not match this pattern.)
**/
class Regexp {
    static public inline function testGoodCompile(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.regexp.Regexp_testgoodcompile.testGoodCompile(_t);
    }
    static public inline function testBadCompile(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.regexp.Regexp_testbadcompile.testBadCompile(_t);
    }
    static public inline function testMatch(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.regexp.Regexp_testmatch.testMatch(_t);
    }
    static public inline function testMatchFunction(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.regexp.Regexp_testmatchfunction.testMatchFunction(_t);
    }
    static public inline function testCopyMatch(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.regexp.Regexp_testcopymatch.testCopyMatch(_t);
    }
    static public inline function testReplaceAll(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.regexp.Regexp_testreplaceall.testReplaceAll(_t);
    }
    static public inline function testReplaceAllLiteral(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.regexp.Regexp_testreplaceallliteral.testReplaceAllLiteral(_t);
    }
    static public inline function testReplaceAllFunc(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.regexp.Regexp_testreplaceallfunc.testReplaceAllFunc(_t);
    }
    static public inline function testQuoteMeta(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.regexp.Regexp_testquotemeta.testQuoteMeta(_t);
    }
    static public inline function testLiteralPrefix(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.regexp.Regexp_testliteralprefix.testLiteralPrefix(_t);
    }
    static public inline function testSubexp(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.regexp.Regexp_testsubexp.testSubexp(_t);
    }
    static public inline function testSplit(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.regexp.Regexp_testsplit.testSplit(_t);
    }
    /**
        * The following sequence of Match calls used to panic. See issue #12980.
    **/
    static public inline function testParseAndCompile(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.regexp.Regexp_testparseandcompile.testParseAndCompile(_t);
    }
    /**
        * Check that one-pass cutoff does trigger.
    **/
    static public inline function testOnePassCutoff(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.regexp.Regexp_testonepasscutoff.testOnePassCutoff(_t);
    }
    /**
        * Check that the same machine can be used with the standard matcher
        * and then the backtracker when there are no captures.
    **/
    static public inline function testSwitchBacktrack(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.regexp.Regexp_testswitchbacktrack.testSwitchBacktrack(_t);
    }
    static public inline function benchmarkFind(_b:stdgo._internal.testing.Testing_b.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_b.B>);
        stdgo._internal.regexp.Regexp_benchmarkfind.benchmarkFind(_b);
    }
    static public inline function benchmarkFindAllNoMatches(_b:stdgo._internal.testing.Testing_b.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_b.B>);
        stdgo._internal.regexp.Regexp_benchmarkfindallnomatches.benchmarkFindAllNoMatches(_b);
    }
    static public inline function benchmarkFindString(_b:stdgo._internal.testing.Testing_b.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_b.B>);
        stdgo._internal.regexp.Regexp_benchmarkfindstring.benchmarkFindString(_b);
    }
    static public inline function benchmarkFindSubmatch(_b:stdgo._internal.testing.Testing_b.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_b.B>);
        stdgo._internal.regexp.Regexp_benchmarkfindsubmatch.benchmarkFindSubmatch(_b);
    }
    static public inline function benchmarkFindStringSubmatch(_b:stdgo._internal.testing.Testing_b.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_b.B>);
        stdgo._internal.regexp.Regexp_benchmarkfindstringsubmatch.benchmarkFindStringSubmatch(_b);
    }
    static public inline function benchmarkLiteral(_b:stdgo._internal.testing.Testing_b.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_b.B>);
        stdgo._internal.regexp.Regexp_benchmarkliteral.benchmarkLiteral(_b);
    }
    static public inline function benchmarkNotLiteral(_b:stdgo._internal.testing.Testing_b.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_b.B>);
        stdgo._internal.regexp.Regexp_benchmarknotliteral.benchmarkNotLiteral(_b);
    }
    static public inline function benchmarkMatchClass(_b:stdgo._internal.testing.Testing_b.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_b.B>);
        stdgo._internal.regexp.Regexp_benchmarkmatchclass.benchmarkMatchClass(_b);
    }
    static public inline function benchmarkMatchClass_InRange(_b:stdgo._internal.testing.Testing_b.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_b.B>);
        stdgo._internal.regexp.Regexp_benchmarkmatchclass_inrange.benchmarkMatchClass_InRange(_b);
    }
    static public inline function benchmarkReplaceAll(_b:stdgo._internal.testing.Testing_b.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_b.B>);
        stdgo._internal.regexp.Regexp_benchmarkreplaceall.benchmarkReplaceAll(_b);
    }
    static public inline function benchmarkAnchoredLiteralShortNonMatch(_b:stdgo._internal.testing.Testing_b.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_b.B>);
        stdgo._internal.regexp.Regexp_benchmarkanchoredliteralshortnonmatch.benchmarkAnchoredLiteralShortNonMatch(_b);
    }
    static public inline function benchmarkAnchoredLiteralLongNonMatch(_b:stdgo._internal.testing.Testing_b.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_b.B>);
        stdgo._internal.regexp.Regexp_benchmarkanchoredliterallongnonmatch.benchmarkAnchoredLiteralLongNonMatch(_b);
    }
    static public inline function benchmarkAnchoredShortMatch(_b:stdgo._internal.testing.Testing_b.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_b.B>);
        stdgo._internal.regexp.Regexp_benchmarkanchoredshortmatch.benchmarkAnchoredShortMatch(_b);
    }
    static public inline function benchmarkAnchoredLongMatch(_b:stdgo._internal.testing.Testing_b.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_b.B>);
        stdgo._internal.regexp.Regexp_benchmarkanchoredlongmatch.benchmarkAnchoredLongMatch(_b);
    }
    static public inline function benchmarkOnePassShortA(_b:stdgo._internal.testing.Testing_b.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_b.B>);
        stdgo._internal.regexp.Regexp_benchmarkonepassshorta.benchmarkOnePassShortA(_b);
    }
    static public inline function benchmarkNotOnePassShortA(_b:stdgo._internal.testing.Testing_b.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_b.B>);
        stdgo._internal.regexp.Regexp_benchmarknotonepassshorta.benchmarkNotOnePassShortA(_b);
    }
    static public inline function benchmarkOnePassShortB(_b:stdgo._internal.testing.Testing_b.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_b.B>);
        stdgo._internal.regexp.Regexp_benchmarkonepassshortb.benchmarkOnePassShortB(_b);
    }
    static public inline function benchmarkNotOnePassShortB(_b:stdgo._internal.testing.Testing_b.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_b.B>);
        stdgo._internal.regexp.Regexp_benchmarknotonepassshortb.benchmarkNotOnePassShortB(_b);
    }
    static public inline function benchmarkOnePassLongPrefix(_b:stdgo._internal.testing.Testing_b.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_b.B>);
        stdgo._internal.regexp.Regexp_benchmarkonepasslongprefix.benchmarkOnePassLongPrefix(_b);
    }
    static public inline function benchmarkOnePassLongNotPrefix(_b:stdgo._internal.testing.Testing_b.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_b.B>);
        stdgo._internal.regexp.Regexp_benchmarkonepasslongnotprefix.benchmarkOnePassLongNotPrefix(_b);
    }
    static public inline function benchmarkMatchParallelShared(_b:stdgo._internal.testing.Testing_b.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_b.B>);
        stdgo._internal.regexp.Regexp_benchmarkmatchparallelshared.benchmarkMatchParallelShared(_b);
    }
    static public inline function benchmarkMatchParallelCopied(_b:stdgo._internal.testing.Testing_b.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_b.B>);
        stdgo._internal.regexp.Regexp_benchmarkmatchparallelcopied.benchmarkMatchParallelCopied(_b);
    }
    static public inline function benchmarkQuoteMetaAll(_b:stdgo._internal.testing.Testing_b.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_b.B>);
        stdgo._internal.regexp.Regexp_benchmarkquotemetaall.benchmarkQuoteMetaAll(_b);
    }
    static public inline function benchmarkQuoteMetaNone(_b:stdgo._internal.testing.Testing_b.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_b.B>);
        stdgo._internal.regexp.Regexp_benchmarkquotemetanone.benchmarkQuoteMetaNone(_b);
    }
    static public inline function benchmarkCompile(_b:stdgo._internal.testing.Testing_b.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_b.B>);
        stdgo._internal.regexp.Regexp_benchmarkcompile.benchmarkCompile(_b);
    }
    static public inline function testDeepEqual(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.regexp.Regexp_testdeepequal.testDeepEqual(_t);
    }
    static public inline function testMinInputLen(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.regexp.Regexp_testmininputlen.testMinInputLen(_t);
    }
    static public inline function testUnmarshalText(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.regexp.Regexp_testunmarshaltext.testUnmarshalText(_t);
    }
    /**
        * This test is excluded when running under the race detector because
        * it is a very expensive test and takes too long.
    **/
    static public inline function testRE2Exhaustive(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.regexp.Regexp_testre2exhaustive.testRE2Exhaustive(_t);
    }
    /**
        * TestRE2 tests this package's regexp API against test cases
        * considered during RE2's exhaustive tests, which run all possible
        * regexps over a given set of atoms and operators, up to a given
        * complexity, over all possible strings over a given alphabet,
        * up to a given size. Rather than try to link with RE2, we read a
        * log file containing the test cases and the expected matches.
        * The log file, re2-exhaustive.txt, is generated by running 'make log'
        * in the open source RE2 distribution https://github.com/google/re2/.
        * 
        * The test file format is a sequence of stanzas like:
        * 
        * 	strings
        * 	"abc"
        * 	"123x"
        * 	regexps
        * 	"[a-z]+"
        * 	0-3;0-3
        * 	-;-
        * 	"([0-9])([0-9])([0-9])"
        * 	-;-
        * 	-;0-3 0-1 1-2 2-3
        * 
        * The stanza begins by defining a set of strings, quoted
        * using Go double-quote syntax, one per line. Then the
        * regexps section gives a sequence of regexps to run on
        * the strings. In the block that follows a regexp, each line
        * gives the semicolon-separated match results of running
        * the regexp on the corresponding string.
        * Each match result is either a single -, meaning no match, or a
        * space-separated sequence of pairs giving the match and
        * submatch indices. An unmatched subexpression formats
        * its pair as a single - (not illustrated above).  For now
        * each regexp run produces two match results, one for a
        * “full match” that restricts the regexp to matching the entire
        * string or nothing, and one for a “partial match” that gives
        * the leftmost first match found in the string.
        * 
        * Lines beginning with # are comments. Lines beginning with
        * a capital letter are test names printed during RE2's test suite
        * and are echoed into t but otherwise ignored.
        * 
        * At time of writing, re2-exhaustive.txt is 59 MB but compresses to 385 kB,
        * so we store re2-exhaustive.txt.bz2 in the repository and decompress it on the fly.
    **/
    static public inline function testRE2Search(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.regexp.Regexp_testre2search.testRE2Search(_t);
    }
    /**
        * TestFowler runs this package's regexp API against the
        * POSIX regular expression tests collected by Glenn Fowler
        * at http://www2.research.att.com/~astopen/testregex/testregex.html.
    **/
    static public inline function testFowler(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.regexp.Regexp_testfowler.testFowler(_t);
    }
    static public inline function benchmarkMatch(_b:stdgo._internal.testing.Testing_b.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_b.B>);
        stdgo._internal.regexp.Regexp_benchmarkmatch.benchmarkMatch(_b);
    }
    static public inline function benchmarkMatch_onepass_regex(_b:stdgo._internal.testing.Testing_b.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_b.B>);
        stdgo._internal.regexp.Regexp_benchmarkmatch_onepass_regex.benchmarkMatch_onepass_regex(_b);
    }
    static public inline function testLongest(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.regexp.Regexp_testlongest.testLongest(_t);
    }
    /**
        * TestProgramTooLongForBacktrack tests that a regex which is too long
        * for the backtracker still executes properly.
    **/
    static public inline function testProgramTooLongForBacktrack(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.regexp.Regexp_testprogramtoolongforbacktrack.testProgramTooLongForBacktrack(_t);
    }
    static public inline function testFind(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.regexp.Regexp_testfind.testFind(_t);
    }
    static public inline function testFindString(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.regexp.Regexp_testfindstring.testFindString(_t);
    }
    static public inline function testFindIndex(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.regexp.Regexp_testfindindex.testFindIndex(_t);
    }
    static public inline function testFindStringIndex(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.regexp.Regexp_testfindstringindex.testFindStringIndex(_t);
    }
    static public inline function testFindReaderIndex(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.regexp.Regexp_testfindreaderindex.testFindReaderIndex(_t);
    }
    static public inline function testFindAll(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.regexp.Regexp_testfindall.testFindAll(_t);
    }
    static public inline function testFindAllString(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.regexp.Regexp_testfindallstring.testFindAllString(_t);
    }
    static public inline function testFindAllIndex(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.regexp.Regexp_testfindallindex.testFindAllIndex(_t);
    }
    static public inline function testFindAllStringIndex(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.regexp.Regexp_testfindallstringindex.testFindAllStringIndex(_t);
    }
    static public inline function testFindSubmatch(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.regexp.Regexp_testfindsubmatch.testFindSubmatch(_t);
    }
    static public inline function testFindStringSubmatch(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.regexp.Regexp_testfindstringsubmatch.testFindStringSubmatch(_t);
    }
    static public inline function testFindSubmatchIndex(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.regexp.Regexp_testfindsubmatchindex.testFindSubmatchIndex(_t);
    }
    static public inline function testFindStringSubmatchIndex(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.regexp.Regexp_testfindstringsubmatchindex.testFindStringSubmatchIndex(_t);
    }
    static public inline function testFindReaderSubmatchIndex(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.regexp.Regexp_testfindreadersubmatchindex.testFindReaderSubmatchIndex(_t);
    }
    static public inline function testFindAllSubmatch(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.regexp.Regexp_testfindallsubmatch.testFindAllSubmatch(_t);
    }
    static public inline function testFindAllStringSubmatch(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.regexp.Regexp_testfindallstringsubmatch.testFindAllStringSubmatch(_t);
    }
    static public inline function testFindAllSubmatchIndex(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.regexp.Regexp_testfindallsubmatchindex.testFindAllSubmatchIndex(_t);
    }
    static public inline function testFindAllStringSubmatchIndex(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.regexp.Regexp_testfindallstringsubmatchindex.testFindAllStringSubmatchIndex(_t);
    }
    static public inline function testMergeRuneSet(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.regexp.Regexp_testmergeruneset.testMergeRuneSet(_t);
    }
    static public inline function testCompileOnePass(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.regexp.Regexp_testcompileonepass.testCompileOnePass(_t);
    }
    static public inline function testRunOnePass(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.regexp.Regexp_testrunonepass.testRunOnePass(_t);
    }
    /**
        * Compile parses a regular expression and returns, if successful,
        * a Regexp object that can be used to match against text.
        * 
        * When matching against text, the regexp returns a match that
        * begins as early as possible in the input (leftmost), and among those
        * it chooses the one that a backtracking search would have found first.
        * This so-called leftmost-first matching is the same semantics
        * that Perl, Python, and other implementations use, although this
        * package implements it without the expense of backtracking.
        * For POSIX leftmost-longest matching, see CompilePOSIX.
    **/
    static public inline function compile(_expr:String):stdgo.Tuple<Regexp_, stdgo.Error> {
        final _expr = (_expr : stdgo.GoString);
        return {
            final obj = stdgo._internal.regexp.Regexp_compile.compile(_expr);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        * CompilePOSIX is like Compile but restricts the regular expression
        * to POSIX ERE (egrep) syntax and changes the match semantics to
        * leftmost-longest.
        * 
        * That is, when matching against text, the regexp returns a match that
        * begins as early as possible in the input (leftmost), and among those
        * it chooses a match that is as long as possible.
        * This so-called leftmost-longest matching is the same semantics
        * that early regular expression implementations used and that POSIX
        * specifies.
        * 
        * However, there can be multiple leftmost-longest matches, with different
        * submatch choices, and here this package diverges from POSIX.
        * Among the possible leftmost-longest matches, this package chooses
        * the one that a backtracking search would have found first, while POSIX
        * specifies that the match be chosen to maximize the length of the first
        * subexpression, then the second, and so on from left to right.
        * The POSIX rule is computationally prohibitive and not even well-defined.
        * See https://swtch.com/~rsc/regexp/regexp2.html#posix for details.
    **/
    static public inline function compilePOSIX(_expr:String):stdgo.Tuple<Regexp_, stdgo.Error> {
        final _expr = (_expr : stdgo.GoString);
        return {
            final obj = stdgo._internal.regexp.Regexp_compileposix.compilePOSIX(_expr);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        * MustCompile is like Compile but panics if the expression cannot be parsed.
        * It simplifies safe initialization of global variables holding compiled regular
        * expressions.
    **/
    static public inline function mustCompile(_str:String):Regexp_ {
        final _str = (_str : stdgo.GoString);
        return stdgo._internal.regexp.Regexp_mustcompile.mustCompile(_str);
    }
    /**
        * MustCompilePOSIX is like CompilePOSIX but panics if the expression cannot be parsed.
        * It simplifies safe initialization of global variables holding compiled regular
        * expressions.
    **/
    static public inline function mustCompilePOSIX(_str:String):Regexp_ {
        final _str = (_str : stdgo.GoString);
        return stdgo._internal.regexp.Regexp_mustcompileposix.mustCompilePOSIX(_str);
    }
    /**
        * MatchReader reports whether the text returned by the RuneReader
        * contains any match of the regular expression pattern.
        * More complicated queries need to use Compile and the full Regexp interface.
    **/
    static public inline function matchReader(_pattern:String, _r:stdgo._internal.io.Io_runereader.RuneReader):stdgo.Tuple<Bool, stdgo.Error> {
        final _pattern = (_pattern : stdgo.GoString);
        return {
            final obj = stdgo._internal.regexp.Regexp_matchreader.matchReader(_pattern, _r);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        * MatchString reports whether the string s
        * contains any match of the regular expression pattern.
        * More complicated queries need to use Compile and the full Regexp interface.
    **/
    static public inline function matchString(_pattern:String, _s:String):stdgo.Tuple<Bool, stdgo.Error> {
        final _pattern = (_pattern : stdgo.GoString);
        final _s = (_s : stdgo.GoString);
        return {
            final obj = stdgo._internal.regexp.Regexp_matchstring.matchString(_pattern, _s);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        * Match reports whether the byte slice b
        * contains any match of the regular expression pattern.
        * More complicated queries need to use Compile and the full Regexp interface.
    **/
    static public inline function match(_pattern:String, _b:Array<std.UInt>):stdgo.Tuple<Bool, stdgo.Error> {
        final _pattern = (_pattern : stdgo.GoString);
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.regexp.Regexp_match.match(_pattern, _b);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        * QuoteMeta returns a string that escapes all regular expression metacharacters
        * inside the argument text; the returned string is a regular expression matching
        * the literal text.
    **/
    static public inline function quoteMeta(_s:String):String {
        final _s = (_s : stdgo.GoString);
        return stdgo._internal.regexp.Regexp_quotemeta.quoteMeta(_s);
    }
}
