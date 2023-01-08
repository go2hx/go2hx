package stdgo.regexp;

import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;

/**
	// Package regexp implements regular expression search.
	//
	// The syntax of the regular expressions accepted is the same
	// general syntax used by Perl, Python, and other languages.
	// More precisely, it is the syntax accepted by RE2 and described at
	// https://golang.org/s/re2syntax, except for \C.
	// For an overview of the syntax, run
	//
	//	go doc regexp/syntax
	//
	// The regexp implementation provided by this package is
	// guaranteed to run in time linear in the size of the input.
	// (This is a property not guaranteed by most open source
	// implementations of regular expressions.) For more information
	// about this property, see
	//
	//	https://swtch.com/~rsc/regexp/regexp1.html
	//
	// or any book about automata theory.
	//
	// All characters are UTF-8-encoded code points.
	// Following utf8.DecodeRune, each byte of an invalid UTF-8 sequence
	// is treated as if it encoded utf8.RuneError (U+FFFD).
	//
	// There are 16 methods of Regexp that match a regular expression and identify
	// the matched text. Their names are matched by this regular expression:
	//
	//	Find(All)?(String)?(Submatch)?(Index)?
	//
	// If 'All' is present, the routine matches successive non-overlapping
	// matches of the entire expression. Empty matches abutting a preceding
	// match are ignored. The return value is a slice containing the successive
	// return values of the corresponding non-'All' routine. These routines take
	// an extra integer argument, n. If n >= 0, the function returns at most n
	// matches/submatches; otherwise, it returns all of them.
	//
	// If 'String' is present, the argument is a string; otherwise it is a slice
	// of bytes; return values are adjusted as appropriate.
	//
	// If 'Submatch' is present, the return value is a slice identifying the
	// successive submatches of the expression. Submatches are matches of
	// parenthesized subexpressions (also known as capturing groups) within the
	// regular expression, numbered from left to right in order of opening
	// parenthesis. Submatch 0 is the match of the entire expression, submatch 1 is
	// the match of the first parenthesized subexpression, and so on.
	//
	// If 'Index' is present, matches and submatches are identified by byte index
	// pairs within the input string: result[2*n:2*n+2] identifies the indexes of
	// the nth submatch. The pair for n==0 identifies the match of the entire
	// expression. If 'Index' is not present, the match is identified by the text
	// of the match/submatch. If an index is negative or text is nil, it means that
	// subexpression did not match any string in the input. For 'String' versions
	// an empty string means either no match or an empty match.
	//
	// There is also a subset of the methods that can be applied to text read
	// from a RuneReader:
	//
	//	MatchReader, FindReaderIndex, FindReaderSubmatchIndex
	//
	// This set may grow. Note that regular expression matches may need to
	// examine text beyond the text returned by a match, so the methods that
	// match text from a RuneReader may read arbitrarily far into the input
	// before returning.
	//
	// (There are a few other methods that do not match this pattern.)
**/
private var __go2hxdoc__package:Bool;

private var _noRune:Slice<GoInt32> = (null : Slice<GoInt32>);
private var _noNext:Slice<GoUInt32> = (null : Slice<GoUInt32>);
private var _anyRuneNotNL:Slice<GoInt32> = (null : Slice<GoInt32>);
private var _anyRune:Slice<GoInt32> = (null : Slice<GoInt32>);

/**
	// Pools of *machine for use during (*Regexp).doExecute,
	// split up by the size of the execution queues.
	// matchPool[i] machines have queue size matchSize[i].
	// On a 64-bit system each queue entry is 16 bytes,
	// so matchPool[0] has 16*2*128 = 4kB queues, etc.
	// The final matchPool is a catch-all for very large queues.
**/
private var _matchSize:GoArray<GoInt> = new GoArray<GoInt>(...[for (i in 0...5) (0 : GoInt)]);

private var _goodRe:Slice<GoString> = (null : Slice<GoString>);
private var _badRe:Slice<T_stringError> = (null : Slice<T_stringError>);
private var _replaceTests:Slice<ReplaceTest> = (null : Slice<ReplaceTest>);
private var _replaceLiteralTests:Slice<ReplaceTest> = (null : Slice<ReplaceTest>);
private var _replaceFuncTests:Slice<ReplaceFuncTest> = (null : Slice<ReplaceFuncTest>);
private var _metaTests:Slice<MetaTest> = (null : Slice<MetaTest>);
private var _literalPrefixTests:Slice<MetaTest> = (null : Slice<MetaTest>);
private var _emptySubexpIndices:Slice<T_subexpIndex> = (null : Slice<T_subexpIndex>);
private var _subexpCases:Slice<T_subexpCase> = (null : Slice<T_subexpCase>);
private var _splitTests:Slice<T__struct_0> = (null : Slice<T__struct_0>);
private var _compileBenchData:Slice<T__struct_1> = (null : Slice<T__struct_1>);
private var _minInputLenTests:Slice<T__struct_2> = (null : Slice<T__struct_2>);

private var _run:Slice<(Ref<Regexp>, Ref<Regexp>, GoString) -> {
	var _0:Slice<GoInt>;
	var _1:GoString;
}> = (null : Slice<(Ref<Regexp>, Ref<Regexp>, GoString) -> {
	var _0:Slice<GoInt>;
	var _1:GoString;
}>);

private var _match:Slice<(Ref<Regexp>, Ref<Regexp>, GoString) -> {
	var _0:Bool;
	var _1:GoString;
}> = (null : Slice<(Ref<Regexp>, Ref<Regexp>, GoString) -> {
	var _0:Bool;
	var _1:GoString;
}>);

private var _notab:Ref<Regexp> = (null : Ref<Regexp>);
private var _benchData:Slice<T__struct_1> = (null : Slice<T__struct_1>);
private var _benchSizes:Slice<T__struct_3> = (null : Slice<T__struct_3>);
private var _findTests:Slice<FindTest> = (null : Slice<FindTest>);
private var _runeMergeTests:Slice<T__struct_4> = (null : Slice<T__struct_4>);
private var _onePassTests:Slice<T__struct_5> = (null : Slice<T__struct_5>);

/**
	// TODO(cespare): Unify with onePassTests and rationalize one-pass test cases.
**/
private var _onePassTests1:Slice<T__struct_6> = (null : Slice<T__struct_6>);

private var _sink:GoString = ("" : GoString);
private final _visitedBits:GoUInt64 = (0 : GoUInt64);

/**
	// len(prog.Inst) <= max
**/
private final _maxBacktrackProg:GoUInt64 = (0 : GoUInt64);

/**
	// bit vector size <= max (bits)
**/
private final _maxBacktrackVector:GoUInt64 = (0 : GoUInt64);

private var _bitStatePool:stdgo.sync.Sync.Pool = ({} : stdgo.sync.Sync.Pool);
private var _onePassPool:stdgo.sync.Sync.Pool = ({} : stdgo.sync.Sync.Pool);

/**
	// arrayNoInts is returned by doExecute match if nil dstCap is passed
	// to it with ncap=0.
**/
private var _arrayNoInts:GoArray<GoInt> = new GoArray<GoInt>(...[for (i in 0...0) (0 : GoInt)]);

private var _text:Slice<GoByte> = (null : Slice<GoUInt8>);

/**
	// mergeRuneSets merges two non-intersecting runesets, and returns the merged result,
	// and a NextIp array. The idea is that if a rune matches the OnePassRunes at index
	// i, NextIp[i/2] is the target. If the input sets intersect, an empty runeset and a
	// NextIp array with the single element mergeFailed is returned.
	// The code assumes that both inputs contain ordered and non-intersecting rune pairs.
**/
private final _mergeFailed:GoUInt32 = (0 : GoUInt32);

/**
	// Pools of *machine for use during (*Regexp).doExecute,
	// split up by the size of the execution queues.
	// matchPool[i] machines have queue size matchSize[i].
	// On a 64-bit system each queue entry is 16 bytes,
	// so matchPool[0] has 16*2*128 = 4kB queues, etc.
	// The final matchPool is a catch-all for very large queues.
**/
private var _matchPool:GoArray<stdgo.sync.Sync.Pool> = new GoArray<stdgo.sync.Sync.Pool>(...[for (i in 0...5) ({} : stdgo.sync.Sync.Pool)]);

private final _endOfText:GoRune = (0 : GoInt32);

/**
	// Bitmap used by func special to check whether a character needs to be escaped.
**/
private var _specialBytes:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0...16) (0 : GoUInt8)]);

/**
	// The size at which to start a slice in the 'All' routines.
**/
private final _startSize:GoUInt64 = (0 : GoUInt64);

/**
	// input abstracts different representations of the input text. It provides
	// one-character lookahead.
**/
private typedef T_input = StructType & {
	/**
		// advance one rune
	**/
	public function _step(_pos:GoInt):{var _0:GoRune; var _1:GoInt;};

	/**
		// can we look ahead without losing info?
	**/
	public function _canCheckPrefix():Bool;

	public function _hasPrefix(_re:Ref<Regexp>):Bool;
	public function _index(_re:Ref<Regexp>, _pos:GoInt):GoInt;
	public function _context(_pos:GoInt):T_lazyFlag;
};

@:structInit private class T_stringError {
	public var _re:GoString = "";
	public var _err:GoString = "";

	public function new(?_re:GoString, ?_err:GoString) {
		if (_re != null)
			this._re = _re;
		if (_err != null)
			this._err = _err;
	}

	public function __underlying__()
		return Go.toInterface(this);

	public function __copy__() {
		return new T_stringError(_re, _err);
	}
}

@:structInit class ReplaceTest {
	public var _pattern:GoString = "";
	public var _replacement:GoString = "";
	public var _input:GoString = "";
	public var _output:GoString = "";

	public function new(?_pattern:GoString, ?_replacement:GoString, ?_input:GoString, ?_output:GoString) {
		if (_pattern != null)
			this._pattern = _pattern;
		if (_replacement != null)
			this._replacement = _replacement;
		if (_input != null)
			this._input = _input;
		if (_output != null)
			this._output = _output;
	}

	public function __underlying__()
		return Go.toInterface(this);

	public function __copy__() {
		return new ReplaceTest(_pattern, _replacement, _input, _output);
	}
}

@:structInit class ReplaceFuncTest {
	public var _pattern:GoString = "";
	public var _replacement:GoString->GoString = null;
	public var _input:GoString = "";
	public var _output:GoString = "";

	public function new(?_pattern:GoString, ?_replacement:GoString->GoString, ?_input:GoString, ?_output:GoString) {
		if (_pattern != null)
			this._pattern = _pattern;
		if (_replacement != null)
			this._replacement = _replacement;
		if (_input != null)
			this._input = _input;
		if (_output != null)
			this._output = _output;
	}

	public function __underlying__()
		return Go.toInterface(this);

	public function __copy__() {
		return new ReplaceFuncTest(_pattern, _replacement, _input, _output);
	}
}

@:structInit class MetaTest {
	public var _pattern:GoString = "";
	public var _output:GoString = "";
	public var _literal:GoString = "";
	public var _isLiteral:Bool = false;

	public function new(?_pattern:GoString, ?_output:GoString, ?_literal:GoString, ?_isLiteral:Bool) {
		if (_pattern != null)
			this._pattern = _pattern;
		if (_output != null)
			this._output = _output;
		if (_literal != null)
			this._literal = _literal;
		if (_isLiteral != null)
			this._isLiteral = _isLiteral;
	}

	public function __underlying__()
		return Go.toInterface(this);

	public function __copy__() {
		return new MetaTest(_pattern, _output, _literal, _isLiteral);
	}
}

@:structInit private class T_subexpIndex {
	public var _name:GoString = "";
	public var _index:GoInt = 0;

	public function new(?_name:GoString, ?_index:GoInt) {
		if (_name != null)
			this._name = _name;
		if (_index != null)
			this._index = _index;
	}

	public function __underlying__()
		return Go.toInterface(this);

	public function __copy__() {
		return new T_subexpIndex(_name, _index);
	}
}

@:structInit private class T_subexpCase {
	public var _input:GoString = "";
	public var _num:GoInt = 0;
	public var _names:Slice<GoString> = (null : Slice<GoString>);
	public var _indices:Slice<T_subexpIndex> = (null : Slice<T_subexpIndex>);

	public function new(?_input:GoString, ?_num:GoInt, ?_names:Slice<GoString>, ?_indices:Slice<T_subexpIndex>) {
		if (_input != null)
			this._input = _input;
		if (_num != null)
			this._num = _num;
		if (_names != null)
			this._names = _names;
		if (_indices != null)
			this._indices = _indices;
	}

	public function __underlying__()
		return Go.toInterface(this);

	public function __copy__() {
		return new T_subexpCase(_input, _num, _names, _indices);
	}
}

/**
	// A job is an entry on the backtracker's job stack. It holds
	// the instruction pc and the position in the input.
**/
@:structInit private class T_job {
	public var _pc:GoUInt32 = 0;
	public var _arg:Bool = false;
	public var _pos:GoInt = 0;

	public function new(?_pc:GoUInt32, ?_arg:Bool, ?_pos:GoInt) {
		if (_pc != null)
			this._pc = _pc;
		if (_arg != null)
			this._arg = _arg;
		if (_pos != null)
			this._pos = _pos;
	}

	public function __underlying__()
		return Go.toInterface(this);

	public function __copy__() {
		return new T_job(_pc, _arg, _pos);
	}
}

/**
	// bitState holds state for the backtracker.
**/
@:structInit @:using(stdgo.regexp.Regexp.T_bitState_static_extension) private class T_bitState {
	public var _end:GoInt = 0;
	public var _cap:Slice<GoInt> = (null : Slice<GoInt>);
	public var _matchcap:Slice<GoInt> = (null : Slice<GoInt>);
	public var _jobs:Slice<T_job> = (null : Slice<T_job>);
	public var _visited:Slice<GoUInt32> = (null : Slice<GoUInt32>);
	public var _inputs:T_inputs = ({} : T_inputs);

	public function new(?_end:GoInt, ?_cap:Slice<GoInt>, ?_matchcap:Slice<GoInt>, ?_jobs:Slice<T_job>, ?_visited:Slice<GoUInt32>, ?_inputs:T_inputs) {
		if (_end != null)
			this._end = _end;
		if (_cap != null)
			this._cap = _cap;
		if (_matchcap != null)
			this._matchcap = _matchcap;
		if (_jobs != null)
			this._jobs = _jobs;
		if (_visited != null)
			this._visited = _visited;
		if (_inputs != null)
			this._inputs = _inputs;
	}

	public function __underlying__()
		return Go.toInterface(this);

	public function __copy__() {
		return new T_bitState(_end, _cap, _matchcap, _jobs, _visited, _inputs);
	}
}

/**
	// A queue is a 'sparse array' holding pending threads of execution.
	// See https://research.swtch.com/2008/03/using-uninitialized-memory-for-fun-and.html
**/
@:structInit private class T_queue {
	public var _sparse:Slice<GoUInt32> = (null : Slice<GoUInt32>);
	public var _dense:Slice<T_entry> = (null : Slice<T_entry>);

	public function new(?_sparse:Slice<GoUInt32>, ?_dense:Slice<T_entry>) {
		if (_sparse != null)
			this._sparse = _sparse;
		if (_dense != null)
			this._dense = _dense;
	}

	public function __underlying__()
		return Go.toInterface(this);

	public function __copy__() {
		return new T_queue(_sparse, _dense);
	}
}

/**
	// An entry is an entry on a queue.
	// It holds both the instruction pc and the actual thread.
	// Some queue entries are just place holders so that the machine
	// knows it has considered that pc. Such entries have t == nil.
**/
@:structInit private class T_entry {
	public var _pc:GoUInt32 = 0;
	public var _t:Ref<T_thread> = (null : Ref<T_thread>);

	public function new(?_pc:GoUInt32, ?_t:Ref<T_thread>) {
		if (_pc != null)
			this._pc = _pc;
		if (_t != null)
			this._t = _t;
	}

	public function __underlying__()
		return Go.toInterface(this);

	public function __copy__() {
		return new T_entry(_pc, _t);
	}
}

/**
	// A thread is the state of a single path through the machine:
	// an instruction and a corresponding capture array.
	// See https://swtch.com/~rsc/regexp/regexp2.html
**/
@:structInit private class T_thread {
	public var _inst:Ref<stdgo.regexp.syntax.Syntax.Inst> = (null : Ref<stdgo.regexp.syntax.Syntax.Inst>);
	public var _cap:Slice<GoInt> = (null : Slice<GoInt>);

	public function new(?_inst:Ref<stdgo.regexp.syntax.Syntax.Inst>, ?_cap:Slice<GoInt>) {
		if (_inst != null)
			this._inst = _inst;
		if (_cap != null)
			this._cap = _cap;
	}

	public function __underlying__()
		return Go.toInterface(this);

	public function __copy__() {
		return new T_thread(_inst, _cap);
	}
}

/**
	// A machine holds all the state during an NFA simulation for p.
**/
@:structInit @:using(stdgo.regexp.Regexp.T_machine_static_extension) private class T_machine {
	/**
		// corresponding Regexp
	**/
	public var _re:Ref<Regexp> = (null : Ref<Regexp>);

	/**
		// compiled program
	**/
	public var _p:Ref<stdgo.regexp.syntax.Syntax.Prog> = (null : Ref<stdgo.regexp.syntax.Syntax.Prog>);

	/**
		// two queues for runq, nextq
	**/
	public var _q0:T_queue = ({} : T_queue);

	/**
		// pool of available threads
	**/
	public var _q1:T_queue = ({} : T_queue);

	/**
		// whether a match was found
	**/
	public var _pool:Slice<Ref<T_thread>> = (null : Slice<Ref<T_thread>>);

	/**
		// capture information for the match
	**/
	public var _matched:Bool = false;

	public var _matchcap:Slice<GoInt> = (null : Slice<GoInt>);
	public var _inputs:T_inputs = ({} : T_inputs);

	public function new(?_re:Ref<Regexp>, ?_p:Ref<stdgo.regexp.syntax.Syntax.Prog>, ?_q0:T_queue, ?_q1:T_queue, ?_pool:Slice<Ref<T_thread>>, ?_matched:Bool,
			?_matchcap:Slice<GoInt>, ?_inputs:T_inputs) {
		if (_re != null)
			this._re = _re;
		if (_p != null)
			this._p = _p;
		if (_q0 != null)
			this._q0 = _q0;
		if (_q1 != null)
			this._q1 = _q1;
		if (_pool != null)
			this._pool = _pool;
		if (_matched != null)
			this._matched = _matched;
		if (_matchcap != null)
			this._matchcap = _matchcap;
		if (_inputs != null)
			this._inputs = _inputs;
	}

	public function __underlying__()
		return Go.toInterface(this);

	public function __copy__() {
		return new T_machine(_re, _p, _q0, _q1, _pool, _matched, _matchcap, _inputs);
	}
}

@:structInit @:using(stdgo.regexp.Regexp.T_inputs_static_extension) private class T_inputs {
	/**
		// cached inputs, to avoid allocation
	**/
	public var _bytes:T_inputBytes = ({} : T_inputBytes);

	public var _string:T_inputString = ({} : T_inputString);
	public var _reader:T_inputReader = ({} : T_inputReader);

	public function new(?_bytes:T_inputBytes, ?_string:T_inputString, ?_reader:T_inputReader) {
		if (_bytes != null)
			this._bytes = _bytes;
		if (_string != null)
			this._string = _string;
		if (_reader != null)
			this._reader = _reader;
	}

	public function __underlying__()
		return Go.toInterface(this);

	public function __copy__() {
		return new T_inputs(_bytes, _string, _reader);
	}
}

@:structInit private class T_onePassMachine {
	public var _inputs:T_inputs = ({} : T_inputs);
	public var _matchcap:Slice<GoInt> = (null : Slice<GoInt>);

	public function new(?_inputs:T_inputs, ?_matchcap:Slice<GoInt>) {
		if (_inputs != null)
			this._inputs = _inputs;
		if (_matchcap != null)
			this._matchcap = _matchcap;
	}

	public function __underlying__()
		return Go.toInterface(this);

	public function __copy__() {
		return new T_onePassMachine(_inputs, _matchcap);
	}
}

/**
	// For each pattern/text pair, what is the expected output of each function?
	// We can derive the textual results from the indexed results, the non-submatch
	// results from the submatched results, the single results from the 'all' results,
	// and the byte results from the string results. Therefore the table includes
	// only the FindAllStringSubmatchIndex result.
**/
@:structInit @:using(stdgo.regexp.Regexp.FindTest_static_extension) class FindTest {
	public var _pat:GoString = "";
	public var _text:GoString = "";
	public var _matches:Slice<Slice<GoInt>> = (null : Slice<Slice<GoInt>>);

	public function new(?_pat:GoString, ?_text:GoString, ?_matches:Slice<Slice<GoInt>>) {
		if (_pat != null)
			this._pat = _pat;
		if (_text != null)
			this._text = _text;
		if (_matches != null)
			this._matches = _matches;
	}

	public function __underlying__()
		return Go.toInterface(this);

	public function __copy__() {
		return new FindTest(_pat, _text, _matches);
	}
}

/**
	// A onePassProg is a compiled one-pass regular expression program.
	// It is the same as syntax.Prog except for the use of onePassInst.
**/
@:structInit private class T_onePassProg {
	public var inst:Slice<T_onePassInst> = (null : Slice<T_onePassInst>);

	/**
		// index of start instruction
	**/
	public var start:GoInt = 0;

	/**
		// number of InstCapture insts in re
	**/
	public var numCap:GoInt = 0;

	public function new(?inst:Slice<T_onePassInst>, ?start:GoInt, ?numCap:GoInt) {
		if (inst != null)
			this.inst = inst;
		if (start != null)
			this.start = start;
		if (numCap != null)
			this.numCap = numCap;
	}

	public function __underlying__()
		return Go.toInterface(this);

	public function __copy__() {
		return new T_onePassProg(inst, start, numCap);
	}
}

/**
	// A onePassInst is a single instruction in a one-pass regular expression program.
	// It is the same as syntax.Inst except for the new 'Next' field.
**/
@:structInit @:using(stdgo.regexp.Regexp.T_onePassInst_static_extension) private class T_onePassInst {
	@:embedded
	public var inst:stdgo.regexp.syntax.Syntax.Inst = ({} : stdgo.regexp.syntax.Syntax.Inst);
	public var next:Slice<GoUInt32> = (null : Slice<GoUInt32>);

	public function new(?inst:stdgo.regexp.syntax.Syntax.Inst, ?next:Slice<GoUInt32>) {
		if (inst != null)
			this.inst = inst;
		if (next != null)
			this.next = next;
	}

	public function __underlying__()
		return Go.toInterface(this);

	@:embedded
	public function matchEmptyWidth(_before:GoInt32, _after:GoInt32):Bool
		return false;

	@:embedded
	public function matchRune(__0:GoInt32):Bool
		return false;

	@:embedded
	public function matchRunePos(__0:GoInt32):GoInt
		return (0 : GoInt);

	@:embedded
	public function string():GoString
		return ("" : GoString);

	@:embedded
	public function _op():stdgo.regexp.syntax.Syntax.InstOp
		return ((0 : GoUInt8) : stdgo.regexp.syntax.Syntax.InstOp);

	public function __copy__() {
		return new T_onePassInst(inst, next);
	}
}

/**
	// Sparse Array implementation is used as a queueOnePass.
**/
@:structInit @:using(stdgo.regexp.Regexp.T_queueOnePass_static_extension) private class T_queueOnePass {
	public var _sparse:Slice<GoUInt32> = (null : Slice<GoUInt32>);
	public var _dense:Slice<GoUInt32> = (null : Slice<GoUInt32>);
	public var _size:GoUInt32 = 0;
	public var _nextIndex:GoUInt32 = 0;

	public function new(?_sparse:Slice<GoUInt32>, ?_dense:Slice<GoUInt32>, ?_size:GoUInt32, ?_nextIndex:GoUInt32) {
		if (_sparse != null)
			this._sparse = _sparse;
		if (_dense != null)
			this._dense = _dense;
		if (_size != null)
			this._size = _size;
		if (_nextIndex != null)
			this._nextIndex = _nextIndex;
	}

	public function __underlying__()
		return Go.toInterface(this);

	public function __copy__() {
		return new T_queueOnePass(_sparse, _dense, _size, _nextIndex);
	}
}

/**
	// Regexp is the representation of a compiled regular expression.
	// A Regexp is safe for concurrent use by multiple goroutines,
	// except for configuration methods, such as Longest.
**/
@:structInit @:using(stdgo.regexp.Regexp.Regexp_static_extension) class Regexp {
	/**
		// as passed to Compile
	**/
	public var _expr:GoString = "";

	/**
		// compiled program
	**/
	public var _prog:Ref<stdgo.regexp.syntax.Syntax.Prog> = (null : Ref<stdgo.regexp.syntax.Syntax.Prog>);

	/**
		// onepass program or nil
	**/
	public var _onepass:Ref<T_onePassProg> = (null : Ref<T_onePassProg>);

	public var _numSubexp:GoInt = 0;
	public var _maxBitStateLen:GoInt = 0;
	public var _subexpNames:Slice<GoString> = (null : Slice<GoString>);

	/**
		// required prefix in unanchored matches
	**/
	public var _prefix:GoString = "";

	/**
		// prefix, as a []byte
	**/
	public var _prefixBytes:Slice<GoUInt8> = (null : Slice<GoUInt8>);

	/**
		// first rune in prefix
	**/
	public var _prefixRune:GoInt32 = 0;

	/**
		// pc for last rune in prefix
	**/
	public var _prefixEnd:GoUInt32 = 0;

	/**
		// pool for machines
	**/
	public var _mpool:GoInt = 0;

	/**
		// size of recorded match lengths
	**/
	public var _matchcap:GoInt = 0;

	/**
		// prefix is the entire regexp
	**/
	public var _prefixComplete:Bool = false;

	/**
		// empty-width conditions required at start of match
	**/
	public var _cond:stdgo.regexp.syntax.Syntax.EmptyOp = ((0 : GoUInt8) : stdgo.regexp.syntax.Syntax.EmptyOp);

	/**
		// minimum length of the input in bytes
	**/
	public var _minInputLen:GoInt = 0;

	/**
		// This field can be modified by the Longest method,
		// but it is otherwise read-only.// whether regexp prefers leftmost-longest match
	**/
	public var _longest:Bool = false;

	public function new(?_expr:GoString, ?_prog:Ref<stdgo.regexp.syntax.Syntax.Prog>, ?_onepass:Ref<T_onePassProg>, ?_numSubexp:GoInt, ?_maxBitStateLen:GoInt,
			?_subexpNames:Slice<GoString>, ?_prefix:GoString, ?_prefixBytes:Slice<GoUInt8>, ?_prefixRune:GoInt32, ?_prefixEnd:GoUInt32, ?_mpool:GoInt,
			?_matchcap:GoInt, ?_prefixComplete:Bool, ?_cond:stdgo.regexp.syntax.Syntax.EmptyOp, ?_minInputLen:GoInt, ?_longest:Bool) {
		if (_expr != null)
			this._expr = _expr;
		if (_prog != null)
			this._prog = _prog;
		if (_onepass != null)
			this._onepass = _onepass;
		if (_numSubexp != null)
			this._numSubexp = _numSubexp;
		if (_maxBitStateLen != null)
			this._maxBitStateLen = _maxBitStateLen;
		if (_subexpNames != null)
			this._subexpNames = _subexpNames;
		if (_prefix != null)
			this._prefix = _prefix;
		if (_prefixBytes != null)
			this._prefixBytes = _prefixBytes;
		if (_prefixRune != null)
			this._prefixRune = _prefixRune;
		if (_prefixEnd != null)
			this._prefixEnd = _prefixEnd;
		if (_mpool != null)
			this._mpool = _mpool;
		if (_matchcap != null)
			this._matchcap = _matchcap;
		if (_prefixComplete != null)
			this._prefixComplete = _prefixComplete;
		if (_cond != null)
			this._cond = _cond;
		if (_minInputLen != null)
			this._minInputLen = _minInputLen;
		if (_longest != null)
			this._longest = _longest;
	}

	public function __underlying__()
		return Go.toInterface(this);

	public function __copy__() {
		return new Regexp(_expr, _prog, _onepass, _numSubexp, _maxBitStateLen, _subexpNames, _prefix, _prefixBytes, _prefixRune, _prefixEnd, _mpool,
			_matchcap, _prefixComplete, _cond, _minInputLen, _longest);
	}
}

/**
	// inputString scans a string.
**/
@:structInit @:using(stdgo.regexp.Regexp.T_inputString_static_extension) private class T_inputString {
	public var _str:GoString = "";

	public function new(?_str:GoString) {
		if (_str != null)
			this._str = _str;
	}

	public function __underlying__()
		return Go.toInterface(this);

	public function __copy__() {
		return new T_inputString(_str);
	}
}

/**
	// inputBytes scans a byte slice.
**/
@:structInit @:using(stdgo.regexp.Regexp.T_inputBytes_static_extension) private class T_inputBytes {
	public var _str:Slice<GoUInt8> = (null : Slice<GoUInt8>);

	public function new(?_str:Slice<GoUInt8>) {
		if (_str != null)
			this._str = _str;
	}

	public function __underlying__()
		return Go.toInterface(this);

	public function __copy__() {
		return new T_inputBytes(_str);
	}
}

/**
	// inputReader scans a RuneReader.
**/
@:structInit @:using(stdgo.regexp.Regexp.T_inputReader_static_extension) private class T_inputReader {
	public var _r:stdgo.io.Io.RuneReader = (null : stdgo.io.Io.RuneReader);
	public var _atEOT:Bool = false;
	public var _pos:GoInt = 0;

	public function new(?_r:stdgo.io.Io.RuneReader, ?_atEOT:Bool, ?_pos:GoInt) {
		if (_r != null)
			this._r = _r;
		if (_atEOT != null)
			this._atEOT = _atEOT;
		if (_pos != null)
			this._pos = _pos;
	}

	public function __underlying__()
		return Go.toInterface(this);

	public function __copy__() {
		return new T_inputReader(_r, _atEOT, _pos);
	}
}

class T__struct_0_asInterface {
	public function new(__self__, __type__) {
		this.__self__ = __self__;
		this.__type__ = __type__;
	}

	public function __underlying__()
		return new AnyInterface((__type__.kind() == stdgo.reflect.Reflect.ptr
			&& !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic),
			__type__);

	var __self__:Pointer<T__struct_0>;
	var __type__:stdgo.internal.reflect.Reflect._Type;
}

@:keep @:allow(stdgo.regexp.Regexp.T__struct_0_asInterface) class T__struct_0_static_extension {}

@:local @:using(stdgo.regexp.Regexp.T__struct_0_static_extension) private typedef T__struct_0 = {
	public var _s:GoString;
	public var _r:GoString;
	public var _n:GoInt;
	public var _out:Slice<GoString>;
};

class T__struct_1_asInterface {
	public function new(__self__, __type__) {
		this.__self__ = __self__;
		this.__type__ = __type__;
	}

	public function __underlying__()
		return new AnyInterface((__type__.kind() == stdgo.reflect.Reflect.ptr
			&& !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic),
			__type__);

	var __self__:Pointer<T__struct_1>;
	var __type__:stdgo.internal.reflect.Reflect._Type;
}

@:keep @:allow(stdgo.regexp.Regexp.T__struct_1_asInterface) class T__struct_1_static_extension {}

@:local @:using(stdgo.regexp.Regexp.T__struct_1_static_extension) private typedef T__struct_1 = {
	public var _name:GoString;
	public var _re:GoString;
};

class T__struct_2_asInterface {
	public function new(__self__, __type__) {
		this.__self__ = __self__;
		this.__type__ = __type__;
	}

	public function __underlying__()
		return new AnyInterface((__type__.kind() == stdgo.reflect.Reflect.ptr
			&& !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic),
			__type__);

	var __self__:Pointer<T__struct_2>;
	var __type__:stdgo.internal.reflect.Reflect._Type;
}

@:keep @:allow(stdgo.regexp.Regexp.T__struct_2_asInterface) class T__struct_2_static_extension {}

@:local @:using(stdgo.regexp.Regexp.T__struct_2_static_extension) private typedef T__struct_2 = {
	public var regexp:GoString;
	public var _min:GoInt;
};

class T__struct_3_asInterface {
	public function new(__self__, __type__) {
		this.__self__ = __self__;
		this.__type__ = __type__;
	}

	public function __underlying__()
		return new AnyInterface((__type__.kind() == stdgo.reflect.Reflect.ptr
			&& !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic),
			__type__);

	var __self__:Pointer<T__struct_3>;
	var __type__:stdgo.internal.reflect.Reflect._Type;
}

@:keep @:allow(stdgo.regexp.Regexp.T__struct_3_asInterface) class T__struct_3_static_extension {}

@:local @:using(stdgo.regexp.Regexp.T__struct_3_static_extension) private typedef T__struct_3 = {
	public var _name:GoString;
	public var _n:GoInt;
};

class T__struct_4_asInterface {
	public function new(__self__, __type__) {
		this.__self__ = __self__;
		this.__type__ = __type__;
	}

	public function __underlying__()
		return new AnyInterface((__type__.kind() == stdgo.reflect.Reflect.ptr
			&& !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic),
			__type__);

	var __self__:Pointer<T__struct_4>;
	var __type__:stdgo.internal.reflect.Reflect._Type;
}

@:keep @:allow(stdgo.regexp.Regexp.T__struct_4_asInterface) class T__struct_4_static_extension {}

@:local @:using(stdgo.regexp.Regexp.T__struct_4_static_extension) private typedef T__struct_4 = {
	public var _left:Slice<GoInt32>;
	public var _right:Slice<GoInt32>;
	public var _merged:Slice<GoInt32>;
	public var _next:Slice<GoUInt32>;
	public var _leftPC:GoUInt32;
	public var _rightPC:GoUInt32;
};

class T__struct_5_asInterface {
	public function new(__self__, __type__) {
		this.__self__ = __self__;
		this.__type__ = __type__;
	}

	public function __underlying__()
		return new AnyInterface((__type__.kind() == stdgo.reflect.Reflect.ptr
			&& !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic),
			__type__);

	var __self__:Pointer<T__struct_5>;
	var __type__:stdgo.internal.reflect.Reflect._Type;
}

@:keep @:allow(stdgo.regexp.Regexp.T__struct_5_asInterface) class T__struct_5_static_extension {}

@:local @:using(stdgo.regexp.Regexp.T__struct_5_static_extension) private typedef T__struct_5 = {
	public var _re:GoString;
	public var _isOnePass:Bool;
};

class T__struct_6_asInterface {
	public function new(__self__, __type__) {
		this.__self__ = __self__;
		this.__type__ = __type__;
	}

	public function __underlying__()
		return new AnyInterface((__type__.kind() == stdgo.reflect.Reflect.ptr
			&& !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic),
			__type__);

	var __self__:Pointer<T__struct_6>;
	var __type__:stdgo.internal.reflect.Reflect._Type;
}

@:keep @:allow(stdgo.regexp.Regexp.T__struct_6_asInterface) class T__struct_6_static_extension {}

@:local @:using(stdgo.regexp.Regexp.T__struct_6_static_extension) private typedef T__struct_6 = {
	public var _re:GoString;
	public var _match:GoString;
};

/**
	// A lazyFlag is a lazily-evaluated syntax.EmptyOp,
	// for checking zero-width flags like ^ $ \A \z \B \b.
	// It records the pair of relevant runes and does not
	// determine the implied flags until absolutely necessary
	// (most of the time, that means never).
**/
@:named @:using(stdgo.regexp.Regexp.T_lazyFlag_static_extension) private typedef T_lazyFlag = GoUInt64;

/**
	// runeSlice exists to permit sorting the case-folded rune sets.
**/
@:named @:using(stdgo.regexp.Regexp.T_runeSlice_static_extension) private typedef T_runeSlice = Slice<GoInt32>;

function _compileTest(_t:Ref<stdgo.testing.Testing.T>, _expr:GoString, _error:GoString):Ref<Regexp>
	throw "regexp._compileTest is not yet implemented";

function testGoodCompile(_t:Ref<stdgo.testing.Testing.T>):Void
	throw "regexp.testGoodCompile is not yet implemented";

function testBadCompile(_t:Ref<stdgo.testing.Testing.T>):Void
	throw "regexp.testBadCompile is not yet implemented";

function _matchTest(_t:Ref<stdgo.testing.Testing.T>, _test:Ref<FindTest>):Void
	throw "regexp._matchTest is not yet implemented";

function testMatch(_t:Ref<stdgo.testing.Testing.T>):Void
	throw "regexp.testMatch is not yet implemented";

function _matchFunctionTest(_t:Ref<stdgo.testing.Testing.T>, _test:Ref<FindTest>):Void
	throw "regexp._matchFunctionTest is not yet implemented";

function testMatchFunction(_t:Ref<stdgo.testing.Testing.T>):Void
	throw "regexp.testMatchFunction is not yet implemented";

function _copyMatchTest(_t:Ref<stdgo.testing.Testing.T>, _test:Ref<FindTest>):Void
	throw "regexp._copyMatchTest is not yet implemented";

function testCopyMatch(_t:Ref<stdgo.testing.Testing.T>):Void
	throw "regexp.testCopyMatch is not yet implemented";

function testReplaceAll(_t:Ref<stdgo.testing.Testing.T>):Void
	throw "regexp.testReplaceAll is not yet implemented";

function testReplaceAllLiteral(_t:Ref<stdgo.testing.Testing.T>):Void
	throw "regexp.testReplaceAllLiteral is not yet implemented";

function testReplaceAllFunc(_t:Ref<stdgo.testing.Testing.T>):Void
	throw "regexp.testReplaceAllFunc is not yet implemented";

function testQuoteMeta(_t:Ref<stdgo.testing.Testing.T>):Void
	throw "regexp.testQuoteMeta is not yet implemented";

function testLiteralPrefix(_t:Ref<stdgo.testing.Testing.T>):Void
	throw "regexp.testLiteralPrefix is not yet implemented";

function testSubexp(_t:Ref<stdgo.testing.Testing.T>):Void
	throw "regexp.testSubexp is not yet implemented";

function testSplit(_t:Ref<stdgo.testing.Testing.T>):Void
	throw "regexp.testSplit is not yet implemented";

/**
	// The following sequence of Match calls used to panic. See issue #12980.
**/
function testParseAndCompile(_t:Ref<stdgo.testing.Testing.T>):Void
	throw "regexp.testParseAndCompile is not yet implemented";

/**
	// Check that one-pass cutoff does trigger.
**/
function testOnePassCutoff(_t:Ref<stdgo.testing.Testing.T>):Void
	throw "regexp.testOnePassCutoff is not yet implemented";

/**
	// Check that the same machine can be used with the standard matcher
	// and then the backtracker when there are no captures.
**/
function testSwitchBacktrack(_t:Ref<stdgo.testing.Testing.T>):Void
	throw "regexp.testSwitchBacktrack is not yet implemented";

function benchmarkFind(_b:Ref<stdgo.testing.Testing.B>):Void
	throw "regexp.benchmarkFind is not yet implemented";

function benchmarkFindAllNoMatches(_b:Ref<stdgo.testing.Testing.B>):Void
	throw "regexp.benchmarkFindAllNoMatches is not yet implemented";

function benchmarkFindString(_b:Ref<stdgo.testing.Testing.B>):Void
	throw "regexp.benchmarkFindString is not yet implemented";

function benchmarkFindSubmatch(_b:Ref<stdgo.testing.Testing.B>):Void
	throw "regexp.benchmarkFindSubmatch is not yet implemented";

function benchmarkFindStringSubmatch(_b:Ref<stdgo.testing.Testing.B>):Void
	throw "regexp.benchmarkFindStringSubmatch is not yet implemented";

function benchmarkLiteral(_b:Ref<stdgo.testing.Testing.B>):Void
	throw "regexp.benchmarkLiteral is not yet implemented";

function benchmarkNotLiteral(_b:Ref<stdgo.testing.Testing.B>):Void
	throw "regexp.benchmarkNotLiteral is not yet implemented";

function benchmarkMatchClass(_b:Ref<stdgo.testing.Testing.B>):Void
	throw "regexp.benchmarkMatchClass is not yet implemented";

function benchmarkMatchClass_InRange(_b:Ref<stdgo.testing.Testing.B>):Void
	throw "regexp.benchmarkMatchClass_InRange is not yet implemented";

function benchmarkReplaceAll(_b:Ref<stdgo.testing.Testing.B>):Void
	throw "regexp.benchmarkReplaceAll is not yet implemented";

function benchmarkAnchoredLiteralShortNonMatch(_b:Ref<stdgo.testing.Testing.B>):Void
	throw "regexp.benchmarkAnchoredLiteralShortNonMatch is not yet implemented";

function benchmarkAnchoredLiteralLongNonMatch(_b:Ref<stdgo.testing.Testing.B>):Void
	throw "regexp.benchmarkAnchoredLiteralLongNonMatch is not yet implemented";

function benchmarkAnchoredShortMatch(_b:Ref<stdgo.testing.Testing.B>):Void
	throw "regexp.benchmarkAnchoredShortMatch is not yet implemented";

function benchmarkAnchoredLongMatch(_b:Ref<stdgo.testing.Testing.B>):Void
	throw "regexp.benchmarkAnchoredLongMatch is not yet implemented";

function benchmarkOnePassShortA(_b:Ref<stdgo.testing.Testing.B>):Void
	throw "regexp.benchmarkOnePassShortA is not yet implemented";

function benchmarkNotOnePassShortA(_b:Ref<stdgo.testing.Testing.B>):Void
	throw "regexp.benchmarkNotOnePassShortA is not yet implemented";

function benchmarkOnePassShortB(_b:Ref<stdgo.testing.Testing.B>):Void
	throw "regexp.benchmarkOnePassShortB is not yet implemented";

function benchmarkNotOnePassShortB(_b:Ref<stdgo.testing.Testing.B>):Void
	throw "regexp.benchmarkNotOnePassShortB is not yet implemented";

function benchmarkOnePassLongPrefix(_b:Ref<stdgo.testing.Testing.B>):Void
	throw "regexp.benchmarkOnePassLongPrefix is not yet implemented";

function benchmarkOnePassLongNotPrefix(_b:Ref<stdgo.testing.Testing.B>):Void
	throw "regexp.benchmarkOnePassLongNotPrefix is not yet implemented";

function benchmarkMatchParallelShared(_b:Ref<stdgo.testing.Testing.B>):Void
	throw "regexp.benchmarkMatchParallelShared is not yet implemented";

function benchmarkMatchParallelCopied(_b:Ref<stdgo.testing.Testing.B>):Void
	throw "regexp.benchmarkMatchParallelCopied is not yet implemented";

function benchmarkQuoteMetaAll(_b:Ref<stdgo.testing.Testing.B>):Void
	throw "regexp.benchmarkQuoteMetaAll is not yet implemented";

function benchmarkQuoteMetaNone(_b:Ref<stdgo.testing.Testing.B>):Void
	throw "regexp.benchmarkQuoteMetaNone is not yet implemented";

function benchmarkCompile(_b:Ref<stdgo.testing.Testing.B>):Void
	throw "regexp.benchmarkCompile is not yet implemented";

function testDeepEqual(_t:Ref<stdgo.testing.Testing.T>):Void
	throw "regexp.testDeepEqual is not yet implemented";

function testMinInputLen(_t:Ref<stdgo.testing.Testing.T>):Void
	throw "regexp.testMinInputLen is not yet implemented";

function _newBitState():Ref<T_bitState>
	throw "regexp._newBitState is not yet implemented";

function _freeBitState(_b:Ref<T_bitState>):Void
	throw "regexp._freeBitState is not yet implemented";

/**
	// maxBitStateLen returns the maximum length of a string to search with
	// the backtracker using prog.
**/
function _maxBitStateLen(_prog:Ref<stdgo.regexp.syntax.Syntax.Prog>):GoInt
	throw "regexp._maxBitStateLen is not yet implemented";

/**
	// shouldBacktrack reports whether the program is too
	// long for the backtracker to run.
**/
function _shouldBacktrack(_prog:Ref<stdgo.regexp.syntax.Syntax.Prog>):Bool
	throw "regexp._shouldBacktrack is not yet implemented";

function _newLazyFlag(_r1:GoRune, _r2:GoRune):T_lazyFlag
	throw "regexp._newLazyFlag is not yet implemented";

function _newOnePassMachine():Ref<T_onePassMachine>
	throw "regexp._newOnePassMachine is not yet implemented";

function _freeOnePassMachine(_m:Ref<T_onePassMachine>):Void
	throw "regexp._freeOnePassMachine is not yet implemented";

/**
	// This test is excluded when running under the race detector because
	// it is a very expensive test and takes too long.
**/
function testRE2Exhaustive(_t:Ref<stdgo.testing.Testing.T>):Void
	throw "regexp.testRE2Exhaustive is not yet implemented";

/**
	// TestRE2 tests this package's regexp API against test cases
	// considered during RE2's exhaustive tests, which run all possible
	// regexps over a given set of atoms and operators, up to a given
	// complexity, over all possible strings over a given alphabet,
	// up to a given size. Rather than try to link with RE2, we read a
	// log file containing the test cases and the expected matches.
	// The log file, re2-exhaustive.txt, is generated by running 'make log'
	// in the open source RE2 distribution https://github.com/google/re2/.
	//
	// The test file format is a sequence of stanzas like:
	//
	//	strings
	//	"abc"
	//	"123x"
	//	regexps
	//	"[a-z]+"
	//	0-3;0-3
	//	-;-
	//	"([0-9])([0-9])([0-9])"
	//	-;-
	//	-;0-3 0-1 1-2 2-3
	//
	// The stanza begins by defining a set of strings, quoted
	// using Go double-quote syntax, one per line. Then the
	// regexps section gives a sequence of regexps to run on
	// the strings. In the block that follows a regexp, each line
	// gives the semicolon-separated match results of running
	// the regexp on the corresponding string.
	// Each match result is either a single -, meaning no match, or a
	// space-separated sequence of pairs giving the match and
	// submatch indices. An unmatched subexpression formats
	// its pair as a single - (not illustrated above).  For now
	// each regexp run produces two match results, one for a
	// “full match” that restricts the regexp to matching the entire
	// string or nothing, and one for a “partial match” that gives
	// the leftmost first match found in the string.
	//
	// Lines beginning with # are comments. Lines beginning with
	// a capital letter are test names printed during RE2's test suite
	// and are echoed into t but otherwise ignored.
	//
	// At time of writing, re2-exhaustive.txt is 59 MB but compresses to 385 kB,
	// so we store re2-exhaustive.txt.bz2 in the repository and decompress it on the fly.
**/
function testRE2Search(_t:Ref<stdgo.testing.Testing.T>):Void
	throw "regexp.testRE2Search is not yet implemented";

function _testRE2(_t:Ref<stdgo.testing.Testing.T>, _file:GoString):Void
	throw "regexp._testRE2 is not yet implemented";

function _runFull(_re:Ref<Regexp>, _refull:Ref<Regexp>, _text:GoString):{var _0:Slice<GoInt>; var _1:GoString;}
	throw "regexp._runFull is not yet implemented";

function _runPartial(_re:Ref<Regexp>, _refull:Ref<Regexp>, _text:GoString):{var _0:Slice<GoInt>; var _1:GoString;}
	throw "regexp._runPartial is not yet implemented";

function _runFullLongest(_re:Ref<Regexp>, _refull:Ref<Regexp>, _text:GoString):{var _0:Slice<GoInt>; var _1:GoString;}
	throw "regexp._runFullLongest is not yet implemented";

function _runPartialLongest(_re:Ref<Regexp>, _refull:Ref<Regexp>, _text:GoString):{var _0:Slice<GoInt>; var _1:GoString;}
	throw "regexp._runPartialLongest is not yet implemented";

function _matchFull(_re:Ref<Regexp>, _refull:Ref<Regexp>, _text:GoString):{var _0:Bool; var _1:GoString;}
	throw "regexp._matchFull is not yet implemented";

function _matchPartial(_re:Ref<Regexp>, _refull:Ref<Regexp>, _text:GoString):{var _0:Bool; var _1:GoString;}
	throw "regexp._matchPartial is not yet implemented";

function _matchFullLongest(_re:Ref<Regexp>, _refull:Ref<Regexp>, _text:GoString):{var _0:Bool; var _1:GoString;}
	throw "regexp._matchFullLongest is not yet implemented";

function _matchPartialLongest(_re:Ref<Regexp>, _refull:Ref<Regexp>, _text:GoString):{var _0:Bool; var _1:GoString;}
	throw "regexp._matchPartialLongest is not yet implemented";

function _isSingleBytes(_s:GoString):Bool
	throw "regexp._isSingleBytes is not yet implemented";

function _tryCompile(_s:GoString):{var _0:Ref<Regexp>; var _1:Error;}
	throw "regexp._tryCompile is not yet implemented";

function _parseResult(_t:Ref<stdgo.testing.Testing.T>, _file:GoString, _lineno:GoInt, _res:GoString):Slice<GoInt>
	throw "regexp._parseResult is not yet implemented";

function _same(_x:Slice<GoInt>, _y:Slice<GoInt>):Bool
	throw "regexp._same is not yet implemented";

/**
	// TestFowler runs this package's regexp API against the
	// POSIX regular expression tests collected by Glenn Fowler
	// at http://www2.research.att.com/~astopen/testregex/testregex.html.
**/
function testFowler(_t:Ref<stdgo.testing.Testing.T>):Void
	throw "regexp.testFowler is not yet implemented";

function _testFowler(_t:Ref<stdgo.testing.Testing.T>, _file:GoString):Void
	throw "regexp._testFowler is not yet implemented";

function _parseFowlerResult(_s:GoString):{
	var _0:Bool;
	var _1:Bool;
	var _2:Bool;
	var _3:Slice<GoInt>;
}
	throw "regexp._parseFowlerResult is not yet implemented";

function _makeText(_n:GoInt):Slice<GoByte>
	throw "regexp._makeText is not yet implemented";

function benchmarkMatch(_b:Ref<stdgo.testing.Testing.B>):Void
	throw "regexp.benchmarkMatch is not yet implemented";

function benchmarkMatch_onepass_regex(_b:Ref<stdgo.testing.Testing.B>):Void
	throw "regexp.benchmarkMatch_onepass_regex is not yet implemented";

function testLongest(_t:Ref<stdgo.testing.Testing.T>):Void
	throw "regexp.testLongest is not yet implemented";

/**
	// TestProgramTooLongForBacktrack tests that a regex which is too long
	// for the backtracker still executes properly.
**/
function testProgramTooLongForBacktrack(_t:Ref<stdgo.testing.Testing.T>):Void
	throw "regexp.testProgramTooLongForBacktrack is not yet implemented";

/**
	// build is a helper to construct a [][]int by extracting n sequences from x.
	// This represents n matches with len(x)/n submatches each.
**/
function _build(_n:GoInt, _x:haxe.Rest<GoInt>):Slice<Slice<GoInt>>
	throw "regexp._build is not yet implemented";

function testFind(_t:Ref<stdgo.testing.Testing.T>):Void
	throw "regexp.testFind is not yet implemented";

function testFindString(_t:Ref<stdgo.testing.Testing.T>):Void
	throw "regexp.testFindString is not yet implemented";

function _testFindIndex(_test:Ref<FindTest>, _result:Slice<GoInt>, _t:Ref<stdgo.testing.Testing.T>):Void
	throw "regexp._testFindIndex is not yet implemented";

function testFindIndex(_t:Ref<stdgo.testing.Testing.T>):Void
	throw "regexp.testFindIndex is not yet implemented";

function testFindStringIndex(_t:Ref<stdgo.testing.Testing.T>):Void
	throw "regexp.testFindStringIndex is not yet implemented";

function testFindReaderIndex(_t:Ref<stdgo.testing.Testing.T>):Void
	throw "regexp.testFindReaderIndex is not yet implemented";

function testFindAll(_t:Ref<stdgo.testing.Testing.T>):Void
	throw "regexp.testFindAll is not yet implemented";

function testFindAllString(_t:Ref<stdgo.testing.Testing.T>):Void
	throw "regexp.testFindAllString is not yet implemented";

function _testFindAllIndex(_test:Ref<FindTest>, _result:Slice<Slice<GoInt>>, _t:Ref<stdgo.testing.Testing.T>):Void
	throw "regexp._testFindAllIndex is not yet implemented";

function testFindAllIndex(_t:Ref<stdgo.testing.Testing.T>):Void
	throw "regexp.testFindAllIndex is not yet implemented";

function testFindAllStringIndex(_t:Ref<stdgo.testing.Testing.T>):Void
	throw "regexp.testFindAllStringIndex is not yet implemented";

function _testSubmatchBytes(_test:Ref<FindTest>, _n:GoInt, _submatches:Slice<GoInt>, _result:Slice<Slice<GoByte>>, _t:Ref<stdgo.testing.Testing.T>):Void
	throw "regexp._testSubmatchBytes is not yet implemented";

function testFindSubmatch(_t:Ref<stdgo.testing.Testing.T>):Void
	throw "regexp.testFindSubmatch is not yet implemented";

function _testSubmatchString(_test:Ref<FindTest>, _n:GoInt, _submatches:Slice<GoInt>, _result:Slice<GoString>, _t:Ref<stdgo.testing.Testing.T>):Void
	throw "regexp._testSubmatchString is not yet implemented";

function testFindStringSubmatch(_t:Ref<stdgo.testing.Testing.T>):Void
	throw "regexp.testFindStringSubmatch is not yet implemented";

function _testSubmatchIndices(_test:Ref<FindTest>, _n:GoInt, _expect:Slice<GoInt>, _result:Slice<GoInt>, _t:Ref<stdgo.testing.Testing.T>):Void
	throw "regexp._testSubmatchIndices is not yet implemented";

function _testFindSubmatchIndex(_test:Ref<FindTest>, _result:Slice<GoInt>, _t:Ref<stdgo.testing.Testing.T>):Void
	throw "regexp._testFindSubmatchIndex is not yet implemented";

function testFindSubmatchIndex(_t:Ref<stdgo.testing.Testing.T>):Void
	throw "regexp.testFindSubmatchIndex is not yet implemented";

function testFindStringSubmatchIndex(_t:Ref<stdgo.testing.Testing.T>):Void
	throw "regexp.testFindStringSubmatchIndex is not yet implemented";

function testFindReaderSubmatchIndex(_t:Ref<stdgo.testing.Testing.T>):Void
	throw "regexp.testFindReaderSubmatchIndex is not yet implemented";

function testFindAllSubmatch(_t:Ref<stdgo.testing.Testing.T>):Void
	throw "regexp.testFindAllSubmatch is not yet implemented";

function testFindAllStringSubmatch(_t:Ref<stdgo.testing.Testing.T>):Void
	throw "regexp.testFindAllStringSubmatch is not yet implemented";

function _testFindAllSubmatchIndex(_test:Ref<FindTest>, _result:Slice<Slice<GoInt>>, _t:Ref<stdgo.testing.Testing.T>):Void
	throw "regexp._testFindAllSubmatchIndex is not yet implemented";

function testFindAllSubmatchIndex(_t:Ref<stdgo.testing.Testing.T>):Void
	throw "regexp.testFindAllSubmatchIndex is not yet implemented";

function testFindAllStringSubmatchIndex(_t:Ref<stdgo.testing.Testing.T>):Void
	throw "regexp.testFindAllStringSubmatchIndex is not yet implemented";

/**
	// OnePassPrefix returns a literal string that all matches for the
	// regexp must start with. Complete is true if the prefix
	// is the entire match. Pc is the index of the last rune instruction
	// in the string. The OnePassPrefix skips over the mandatory
	// EmptyBeginText
**/
function _onePassPrefix(_p:Ref<stdgo.regexp.syntax.Syntax.Prog>):{var _0:GoString; var _1:Bool; var _2:GoUInt32;}
	throw "regexp._onePassPrefix is not yet implemented";

/**
	// OnePassNext selects the next actionable state of the prog, based on the input character.
	// It should only be called when i.Op == InstAlt or InstAltMatch, and from the one-pass machine.
	// One of the alternates may ultimately lead without input to end of line. If the instruction
	// is InstAltMatch the path to the InstMatch is in i.Out, the normal node in i.Next.
**/
function _onePassNext(_i:Ref<T_onePassInst>, _r:GoRune):GoUInt32
	throw "regexp._onePassNext is not yet implemented";

function _iop(_i:Ref<stdgo.regexp.syntax.Syntax.Inst>):stdgo.regexp.syntax.Syntax.InstOp
	throw "regexp._iop is not yet implemented";

function _newQueue(_size:GoInt):Ref<T_queueOnePass>
	throw "regexp._newQueue is not yet implemented";

function _mergeRuneSets(_leftRunes:Ref<Slice<GoRune>>, _rightRunes:Ref<Slice<GoRune>>, _leftPC:GoUInt32,
		_rightPC:GoUInt32):{var _0:Slice<GoRune>; var _1:Slice<GoUInt32>;}
	throw "regexp._mergeRuneSets is not yet implemented";

/**
	// cleanupOnePass drops working memory, and restores certain shortcut instructions.
**/
function _cleanupOnePass(_prog:Ref<T_onePassProg>, _original:Ref<stdgo.regexp.syntax.Syntax.Prog>):Void
	throw "regexp._cleanupOnePass is not yet implemented";

/**
	// onePassCopy creates a copy of the original Prog, as we'll be modifying it
**/
function _onePassCopy(_prog:Ref<stdgo.regexp.syntax.Syntax.Prog>):Ref<T_onePassProg>
	throw "regexp._onePassCopy is not yet implemented";

/**
	// makeOnePass creates a onepass Prog, if possible. It is possible if at any alt,
	// the match engine can always tell which branch to take. The routine may modify
	// p if it is turned into a onepass Prog. If it isn't possible for this to be a
	// onepass Prog, the Prog nil is returned. makeOnePass is recursive
	// to the size of the Prog.
**/
function _makeOnePass(_p:Ref<T_onePassProg>):Ref<T_onePassProg>
	throw "regexp._makeOnePass is not yet implemented";

/**
	// compileOnePass returns a new *syntax.Prog suitable for onePass execution if the original Prog
	// can be recharacterized as a one-pass regexp program, or syntax.nil if the
	// Prog cannot be converted. For a one pass prog, the fundamental condition that must
	// be true is: at any InstAlt, there must be no ambiguity about what branch to  take.
**/
function _compileOnePass(_prog:Ref<stdgo.regexp.syntax.Syntax.Prog>):Ref<T_onePassProg>
	throw "regexp._compileOnePass is not yet implemented";

function testMergeRuneSet(_t:Ref<stdgo.testing.Testing.T>):Void
	throw "regexp.testMergeRuneSet is not yet implemented";

function testCompileOnePass(_t:Ref<stdgo.testing.Testing.T>):Void
	throw "regexp.testCompileOnePass is not yet implemented";

function testRunOnePass(_t:Ref<stdgo.testing.Testing.T>):Void
	throw "regexp.testRunOnePass is not yet implemented";

/**
	// Compile parses a regular expression and returns, if successful,
	// a Regexp object that can be used to match against text.
	//
	// When matching against text, the regexp returns a match that
	// begins as early as possible in the input (leftmost), and among those
	// it chooses the one that a backtracking search would have found first.
	// This so-called leftmost-first matching is the same semantics
	// that Perl, Python, and other implementations use, although this
	// package implements it without the expense of backtracking.
	// For POSIX leftmost-longest matching, see CompilePOSIX.
**/
function compile(_expr:GoString):{var _0:Ref<Regexp>; var _1:Error;}
	throw "regexp.compile is not yet implemented";

/**
	// CompilePOSIX is like Compile but restricts the regular expression
	// to POSIX ERE (egrep) syntax and changes the match semantics to
	// leftmost-longest.
	//
	// That is, when matching against text, the regexp returns a match that
	// begins as early as possible in the input (leftmost), and among those
	// it chooses a match that is as long as possible.
	// This so-called leftmost-longest matching is the same semantics
	// that early regular expression implementations used and that POSIX
	// specifies.
	//
	// However, there can be multiple leftmost-longest matches, with different
	// submatch choices, and here this package diverges from POSIX.
	// Among the possible leftmost-longest matches, this package chooses
	// the one that a backtracking search would have found first, while POSIX
	// specifies that the match be chosen to maximize the length of the first
	// subexpression, then the second, and so on from left to right.
	// The POSIX rule is computationally prohibitive and not even well-defined.
	// See https://swtch.com/~rsc/regexp/regexp2.html#posix for details.
**/
function compilePOSIX(_expr:GoString):{var _0:Ref<Regexp>; var _1:Error;}
	throw "regexp.compilePOSIX is not yet implemented";

function _compile(_expr:GoString, _mode:stdgo.regexp.syntax.Syntax.Flags, _longest:Bool):{var _0:Ref<Regexp>; var _1:Error;}
	throw "regexp._compile is not yet implemented";

/**
	// minInputLen walks the regexp to find the minimum length of any matchable input
**/
function _minInputLen(_re:Ref<stdgo.regexp.syntax.Syntax.Regexp>):GoInt
	throw "regexp._minInputLen is not yet implemented";

/**
	// MustCompile is like Compile but panics if the expression cannot be parsed.
	// It simplifies safe initialization of global variables holding compiled regular
	// expressions.
**/
function mustCompile(_str:GoString):Ref<Regexp>
	throw "regexp.mustCompile is not yet implemented";

/**
	// MustCompilePOSIX is like CompilePOSIX but panics if the expression cannot be parsed.
	// It simplifies safe initialization of global variables holding compiled regular
	// expressions.
**/
function mustCompilePOSIX(_str:GoString):Ref<Regexp>
	throw "regexp.mustCompilePOSIX is not yet implemented";

function _quote(_s:GoString):GoString
	throw "regexp._quote is not yet implemented";

/**
	// MatchReader reports whether the text returned by the RuneReader
	// contains any match of the regular expression pattern.
	// More complicated queries need to use Compile and the full Regexp interface.
**/
function matchReader(_pattern:GoString, _r:stdgo.io.Io.RuneReader):{var _0:Bool; var _1:Error;}
	throw "regexp.matchReader is not yet implemented";

/**
	// MatchString reports whether the string s
	// contains any match of the regular expression pattern.
	// More complicated queries need to use Compile and the full Regexp interface.
**/
function matchString(_pattern:GoString, _s:GoString):{var _0:Bool; var _1:Error;}
	throw "regexp.matchString is not yet implemented";

/**
	// Match reports whether the byte slice b
	// contains any match of the regular expression pattern.
	// More complicated queries need to use Compile and the full Regexp interface.
**/
function match(_pattern:GoString, _b:Slice<GoByte>):{var _0:Bool; var _1:Error;}
	throw "regexp.match is not yet implemented";

/**
	// special reports whether byte b needs to be escaped by QuoteMeta.
**/
function _special(_b:GoByte):Bool
	throw "regexp._special is not yet implemented";

/**
	// QuoteMeta returns a string that escapes all regular expression metacharacters
	// inside the argument text; the returned string is a regular expression matching
	// the literal text.
**/
function quoteMeta(_s:GoString):GoString
	throw "regexp.quoteMeta is not yet implemented";

/**
	// extract returns the name from a leading "name" or "{name}" in str.
	// (The $ has already been removed by the caller.)
	// If it is a number, extract returns num set to that number; otherwise num = -1.
**/
function _extract(_str:GoString):{
	var _0:GoString;
	var _1:GoInt;
	var _2:GoString;
	var _3:Bool;
}
	throw "regexp._extract is not yet implemented";

class T_bitState_asInterface {
	/**
		// push pushes (pc, pos, arg) onto the job stack if it should be
		// visited.
	**/
	@:keep
	public function _push(_re:Ref<Regexp>, _pc:GoUInt32, _pos:GoInt, _arg:Bool):Void
		__self__.value._push(_re, _pc, _pos, _arg);

	/**
		// shouldVisit reports whether the combination of (pc, pos) has not
		// been visited yet.
	**/
	@:keep
	public function _shouldVisit(_pc:GoUInt32, _pos:GoInt):Bool
		return __self__.value._shouldVisit(_pc, _pos);

	/**
		// reset resets the state of the backtracker.
		// end is the end position in the input.
		// ncap is the number of captures.
	**/
	@:keep
	public function _reset(_prog:Ref<stdgo.regexp.syntax.Syntax.Prog>, _end:GoInt, _ncap:GoInt):Void
		__self__.value._reset(_prog, _end, _ncap);

	public function new(__self__, __type__) {
		this.__self__ = __self__;
		this.__type__ = __type__;
	}

	public function __underlying__()
		return new AnyInterface((__type__.kind() == stdgo.reflect.Reflect.ptr
			&& !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic),
			__type__);

	var __self__:Pointer<T_bitState>;
	var __type__:stdgo.internal.reflect.Reflect._Type;
}

@:keep @:allow(stdgo.regexp.Regexp.T_bitState_asInterface) class T_bitState_static_extension {
	/**
		// push pushes (pc, pos, arg) onto the job stack if it should be
		// visited.
	**/
	@:keep
	static public function _push(_b:Ref<T_bitState>, _re:Ref<Regexp>, _pc:GoUInt32, _pos:GoInt, _arg:Bool):Void
		throw "regexp._push is not yet implemented";

	/**
		// shouldVisit reports whether the combination of (pc, pos) has not
		// been visited yet.
	**/
	@:keep
	static public function _shouldVisit(_b:Ref<T_bitState>, _pc:GoUInt32, _pos:GoInt):Bool
		throw "regexp._shouldVisit is not yet implemented";

	/**
		// reset resets the state of the backtracker.
		// end is the end position in the input.
		// ncap is the number of captures.
	**/
	@:keep
	static public function _reset(_b:Ref<T_bitState>, _prog:Ref<stdgo.regexp.syntax.Syntax.Prog>, _end:GoInt, _ncap:GoInt):Void
		throw "regexp._reset is not yet implemented";
}

class T_machine_asInterface {
	/**
		// add adds an entry to q for pc, unless the q already has such an entry.
		// It also recursively adds an entry for all instructions reachable from pc by following
		// empty-width conditions satisfied by cond.  pos gives the current position
		// in the input.
	**/
	@:keep
	public function _add(_q:Ref<T_queue>, _pc:GoUInt32, _pos:GoInt, _cap:Slice<GoInt>, _cond:Pointer<T_lazyFlag>, _t:Ref<T_thread>):Ref<T_thread>
		return __self__.value._add(_q, _pc, _pos, _cap, _cond, _t);

	/**
		// step executes one step of the machine, running each of the threads
		// on runq and appending new threads to nextq.
		// The step processes the rune c (which may be endOfText),
		// which starts at position pos and ends at nextPos.
		// nextCond gives the setting for the empty-width flags after c.
	**/
	@:keep
	public function _step(_runq:Ref<T_queue>, _nextq:Ref<T_queue>, _pos:GoInt, _nextPos:GoInt, _c:GoRune, _nextCond:Pointer<T_lazyFlag>):Void
		__self__.value._step(_runq, _nextq, _pos, _nextPos, _c, _nextCond);

	/**
		// clear frees all threads on the thread queue.
	**/
	@:keep
	public function _clear(_q:Ref<T_queue>):Void
		__self__.value._clear(_q);

	/**
		// match runs the machine over the input starting at pos.
		// It reports whether a match was found.
		// If so, m.matchcap holds the submatch information.
	**/
	@:keep
	public function _match(_i:T_input, _pos:GoInt):Bool
		return __self__.value._match(_i, _pos);

	/**
		// alloc allocates a new thread with the given instruction.
		// It uses the free pool if possible.
	**/
	@:keep
	public function _alloc(_i:Ref<stdgo.regexp.syntax.Syntax.Inst>):Ref<T_thread>
		return __self__.value._alloc(_i);

	@:keep
	public function _init(_ncap:GoInt):Void
		__self__.value._init(_ncap);

	public function new(__self__, __type__) {
		this.__self__ = __self__;
		this.__type__ = __type__;
	}

	public function __underlying__()
		return new AnyInterface((__type__.kind() == stdgo.reflect.Reflect.ptr
			&& !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic),
			__type__);

	var __self__:Pointer<T_machine>;
	var __type__:stdgo.internal.reflect.Reflect._Type;
}

@:keep @:allow(stdgo.regexp.Regexp.T_machine_asInterface) class T_machine_static_extension {
	/**
		// add adds an entry to q for pc, unless the q already has such an entry.
		// It also recursively adds an entry for all instructions reachable from pc by following
		// empty-width conditions satisfied by cond.  pos gives the current position
		// in the input.
	**/
	@:keep
	static public function _add(_m:Ref<T_machine>, _q:Ref<T_queue>, _pc:GoUInt32, _pos:GoInt, _cap:Slice<GoInt>, _cond:Pointer<T_lazyFlag>,
			_t:Ref<T_thread>):Ref<T_thread>
		throw "regexp._add is not yet implemented";

	/**
		// step executes one step of the machine, running each of the threads
		// on runq and appending new threads to nextq.
		// The step processes the rune c (which may be endOfText),
		// which starts at position pos and ends at nextPos.
		// nextCond gives the setting for the empty-width flags after c.
	**/
	@:keep
	static public function _step(_m:Ref<T_machine>, _runq:Ref<T_queue>, _nextq:Ref<T_queue>, _pos:GoInt, _nextPos:GoInt, _c:GoRune,
			_nextCond:Pointer<T_lazyFlag>):Void
		throw "regexp._step is not yet implemented";

	/**
		// clear frees all threads on the thread queue.
	**/
	@:keep
	static public function _clear(_m:Ref<T_machine>, _q:Ref<T_queue>):Void
		throw "regexp._clear is not yet implemented";

	/**
		// match runs the machine over the input starting at pos.
		// It reports whether a match was found.
		// If so, m.matchcap holds the submatch information.
	**/
	@:keep
	static public function _match(_m:Ref<T_machine>, _i:T_input, _pos:GoInt):Bool
		throw "regexp._match is not yet implemented";

	/**
		// alloc allocates a new thread with the given instruction.
		// It uses the free pool if possible.
	**/
	@:keep
	static public function _alloc(_m:Ref<T_machine>, _i:Ref<stdgo.regexp.syntax.Syntax.Inst>):Ref<T_thread>
		throw "regexp._alloc is not yet implemented";

	@:keep
	static public function _init(_m:Ref<T_machine>, _ncap:GoInt):Void
		throw "regexp._init is not yet implemented";
}

class T_inputs_asInterface {
	@:keep
	public function _init(_r:stdgo.io.Io.RuneReader, _b:Slice<GoByte>, _s:GoString):{var _0:T_input; var _1:GoInt;}
		return __self__.value._init(_r, _b, _s);

	@:keep
	public function _clear():Void
		__self__.value._clear();

	@:keep
	public function _newReader(_r:stdgo.io.Io.RuneReader):T_input
		return __self__.value._newReader(_r);

	@:keep
	public function _newString(_s:GoString):T_input
		return __self__.value._newString(_s);

	@:keep
	public function _newBytes(_b:Slice<GoByte>):T_input
		return __self__.value._newBytes(_b);

	public function new(__self__, __type__) {
		this.__self__ = __self__;
		this.__type__ = __type__;
	}

	public function __underlying__()
		return new AnyInterface((__type__.kind() == stdgo.reflect.Reflect.ptr
			&& !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic),
			__type__);

	var __self__:Pointer<T_inputs>;
	var __type__:stdgo.internal.reflect.Reflect._Type;
}

@:keep @:allow(stdgo.regexp.Regexp.T_inputs_asInterface) class T_inputs_static_extension {
	@:keep
	static public function _init(_i:Ref<T_inputs>, _r:stdgo.io.Io.RuneReader, _b:Slice<GoByte>, _s:GoString):{var _0:T_input; var _1:GoInt;}
		throw "regexp._init is not yet implemented";

	@:keep
	static public function _clear(_i:Ref<T_inputs>):Void
		throw "regexp._clear is not yet implemented";

	@:keep
	static public function _newReader(_i:Ref<T_inputs>, _r:stdgo.io.Io.RuneReader):T_input
		throw "regexp._newReader is not yet implemented";

	@:keep
	static public function _newString(_i:Ref<T_inputs>, _s:GoString):T_input
		throw "regexp._newString is not yet implemented";

	@:keep
	static public function _newBytes(_i:Ref<T_inputs>, _b:Slice<GoByte>):T_input
		throw "regexp._newBytes is not yet implemented";
}

class FindTest_asInterface {
	@:keep
	public function string():GoString
		return __self__.value.string();

	public function new(__self__, __type__) {
		this.__self__ = __self__;
		this.__type__ = __type__;
	}

	public function __underlying__()
		return new AnyInterface((__type__.kind() == stdgo.reflect.Reflect.ptr
			&& !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic),
			__type__);

	var __self__:Pointer<FindTest>;
	var __type__:stdgo.internal.reflect.Reflect._Type;
}

@:keep @:allow(stdgo.regexp.Regexp.FindTest_asInterface) class FindTest_static_extension {
	@:keep
	static public function string(_t:FindTest):GoString
		throw "regexp.string is not yet implemented";
}

class T_onePassInst_asInterface {
	@:embedded
	public function _op():stdgo.regexp.syntax.Syntax.InstOp
		return __self__.value._op();

	@:embedded
	public function string():GoString
		return __self__.value.string();

	@:embedded
	public function matchRunePos(__0:GoInt32):GoInt
		return __self__.value.matchRunePos(__0);

	@:embedded
	public function matchRune(__0:GoInt32):Bool
		return __self__.value.matchRune(__0);

	@:embedded
	public function matchEmptyWidth(_before:GoInt32, _after:GoInt32):Bool
		return __self__.value.matchEmptyWidth(_before, _after);

	public function new(__self__, __type__) {
		this.__self__ = __self__;
		this.__type__ = __type__;
	}

	public function __underlying__()
		return new AnyInterface((__type__.kind() == stdgo.reflect.Reflect.ptr
			&& !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic),
			__type__);

	var __self__:Pointer<T_onePassInst>;
	var __type__:stdgo.internal.reflect.Reflect._Type;
}

@:keep @:allow(stdgo.regexp.Regexp.T_onePassInst_asInterface) class T_onePassInst_static_extension {
	@:embedded
	public static function _op(__self__:T_onePassInst):stdgo.regexp.syntax.Syntax.InstOp
		return __self__._op();

	@:embedded
	public static function string(__self__:T_onePassInst):GoString
		return __self__.string();

	@:embedded
	public static function matchRunePos(__self__:T_onePassInst, __0:GoInt32):GoInt
		return __self__.matchRunePos(__0);

	@:embedded
	public static function matchRune(__self__:T_onePassInst, __0:GoInt32):Bool
		return __self__.matchRune(__0);

	@:embedded
	public static function matchEmptyWidth(__self__:T_onePassInst, _before:GoInt32, _after:GoInt32):Bool
		return __self__.matchEmptyWidth(_before, _after);
}

class T_queueOnePass_asInterface {
	@:keep
	public function _insertNew(_u:GoUInt32):Void
		__self__.value._insertNew(_u);

	@:keep
	public function _insert(_u:GoUInt32):Void
		__self__.value._insert(_u);

	@:keep
	public function _contains(_u:GoUInt32):Bool
		return __self__.value._contains(_u);

	@:keep
	public function _clear():Void
		__self__.value._clear();

	@:keep
	public function _next():GoUInt32
		return __self__.value._next();

	@:keep
	public function _empty():Bool
		return __self__.value._empty();

	public function new(__self__, __type__) {
		this.__self__ = __self__;
		this.__type__ = __type__;
	}

	public function __underlying__()
		return new AnyInterface((__type__.kind() == stdgo.reflect.Reflect.ptr
			&& !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic),
			__type__);

	var __self__:Pointer<T_queueOnePass>;
	var __type__:stdgo.internal.reflect.Reflect._Type;
}

@:keep @:allow(stdgo.regexp.Regexp.T_queueOnePass_asInterface) class T_queueOnePass_static_extension {
	@:keep
	static public function _insertNew(_q:Ref<T_queueOnePass>, _u:GoUInt32):Void
		throw "regexp._insertNew is not yet implemented";

	@:keep
	static public function _insert(_q:Ref<T_queueOnePass>, _u:GoUInt32):Void
		throw "regexp._insert is not yet implemented";

	@:keep
	static public function _contains(_q:Ref<T_queueOnePass>, _u:GoUInt32):Bool
		throw "regexp._contains is not yet implemented";

	@:keep
	static public function _clear(_q:Ref<T_queueOnePass>):Void
		throw "regexp._clear is not yet implemented";

	@:keep
	static public function _next(_q:Ref<T_queueOnePass>):GoUInt32
		throw "regexp._next is not yet implemented";

	@:keep
	static public function _empty(_q:Ref<T_queueOnePass>):Bool
		throw "regexp._empty is not yet implemented";
}

class Regexp_asInterface {
	/**
		// Split slices s into substrings separated by the expression and returns a slice of
		// the substrings between those expression matches.
		//
		// The slice returned by this method consists of all the substrings of s
		// not contained in the slice returned by FindAllString. When called on an expression
		// that contains no metacharacters, it is equivalent to strings.SplitN.
		//
		// Example:
		//
		//	s := regexp.MustCompile("a*").Split("abaabaccadaaae", 5)
		//	// s: ["", "b", "b", "c", "cadaaae"]
		//
		// The count determines the number of substrings to return:
		//
		//	n > 0: at most n substrings; the last substring will be the unsplit remainder.
		//	n == 0: the result is nil (zero substrings)
		//	n < 0: all substrings
	**/
	@:keep
	public function split(_s:GoString, _n:GoInt):Slice<GoString>
		return __self__.value.split(_s, _n);

	/**
		// FindAllStringSubmatchIndex is the 'All' version of
		// FindStringSubmatchIndex; it returns a slice of all successive matches of
		// the expression, as defined by the 'All' description in the package
		// comment.
		// A return value of nil indicates no match.
	**/
	@:keep
	public function findAllStringSubmatchIndex(_s:GoString, _n:GoInt):Slice<Slice<GoInt>>
		return __self__.value.findAllStringSubmatchIndex(_s, _n);

	/**
		// FindAllStringSubmatch is the 'All' version of FindStringSubmatch; it
		// returns a slice of all successive matches of the expression, as defined by
		// the 'All' description in the package comment.
		// A return value of nil indicates no match.
	**/
	@:keep
	public function findAllStringSubmatch(_s:GoString, _n:GoInt):Slice<Slice<GoString>>
		return __self__.value.findAllStringSubmatch(_s, _n);

	/**
		// FindAllSubmatchIndex is the 'All' version of FindSubmatchIndex; it returns
		// a slice of all successive matches of the expression, as defined by the
		// 'All' description in the package comment.
		// A return value of nil indicates no match.
	**/
	@:keep
	public function findAllSubmatchIndex(_b:Slice<GoByte>, _n:GoInt):Slice<Slice<GoInt>>
		return __self__.value.findAllSubmatchIndex(_b, _n);

	/**
		// FindAllSubmatch is the 'All' version of FindSubmatch; it returns a slice
		// of all successive matches of the expression, as defined by the 'All'
		// description in the package comment.
		// A return value of nil indicates no match.
	**/
	@:keep
	public function findAllSubmatch(_b:Slice<GoByte>, _n:GoInt):Slice<Slice<Slice<GoByte>>>
		return __self__.value.findAllSubmatch(_b, _n);

	/**
		// FindAllStringIndex is the 'All' version of FindStringIndex; it returns a
		// slice of all successive matches of the expression, as defined by the 'All'
		// description in the package comment.
		// A return value of nil indicates no match.
	**/
	@:keep
	public function findAllStringIndex(_s:GoString, _n:GoInt):Slice<Slice<GoInt>>
		return __self__.value.findAllStringIndex(_s, _n);

	/**
		// FindAllString is the 'All' version of FindString; it returns a slice of all
		// successive matches of the expression, as defined by the 'All' description
		// in the package comment.
		// A return value of nil indicates no match.
	**/
	@:keep
	public function findAllString(_s:GoString, _n:GoInt):Slice<GoString>
		return __self__.value.findAllString(_s, _n);

	/**
		// FindAllIndex is the 'All' version of FindIndex; it returns a slice of all
		// successive matches of the expression, as defined by the 'All' description
		// in the package comment.
		// A return value of nil indicates no match.
	**/
	@:keep
	public function findAllIndex(_b:Slice<GoByte>, _n:GoInt):Slice<Slice<GoInt>>
		return __self__.value.findAllIndex(_b, _n);

	/**
		// FindAll is the 'All' version of Find; it returns a slice of all successive
		// matches of the expression, as defined by the 'All' description in the
		// package comment.
		// A return value of nil indicates no match.
	**/
	@:keep
	public function findAll(_b:Slice<GoByte>, _n:GoInt):Slice<Slice<GoByte>>
		return __self__.value.findAll(_b, _n);

	/**
		// FindReaderSubmatchIndex returns a slice holding the index pairs
		// identifying the leftmost match of the regular expression of text read by
		// the RuneReader, and the matches, if any, of its subexpressions, as defined
		// by the 'Submatch' and 'Index' descriptions in the package comment. A
		// return value of nil indicates no match.
	**/
	@:keep
	public function findReaderSubmatchIndex(_r:stdgo.io.Io.RuneReader):Slice<GoInt>
		return __self__.value.findReaderSubmatchIndex(_r);

	/**
		// FindStringSubmatchIndex returns a slice holding the index pairs
		// identifying the leftmost match of the regular expression in s and the
		// matches, if any, of its subexpressions, as defined by the 'Submatch' and
		// 'Index' descriptions in the package comment.
		// A return value of nil indicates no match.
	**/
	@:keep
	public function findStringSubmatchIndex(_s:GoString):Slice<GoInt>
		return __self__.value.findStringSubmatchIndex(_s);

	/**
		// FindStringSubmatch returns a slice of strings holding the text of the
		// leftmost match of the regular expression in s and the matches, if any, of
		// its subexpressions, as defined by the 'Submatch' description in the
		// package comment.
		// A return value of nil indicates no match.
	**/
	@:keep
	public function findStringSubmatch(_s:GoString):Slice<GoString>
		return __self__.value.findStringSubmatch(_s);

	/**
		// FindSubmatchIndex returns a slice holding the index pairs identifying the
		// leftmost match of the regular expression in b and the matches, if any, of
		// its subexpressions, as defined by the 'Submatch' and 'Index' descriptions
		// in the package comment.
		// A return value of nil indicates no match.
	**/
	@:keep
	public function findSubmatchIndex(_b:Slice<GoByte>):Slice<GoInt>
		return __self__.value.findSubmatchIndex(_b);

	@:keep
	public function _expand(_dst:Slice<GoByte>, _template:GoString, _bsrc:Slice<GoByte>, _src:GoString, _match:Slice<GoInt>):Slice<GoByte>
		return __self__.value._expand(_dst, _template, _bsrc, _src, _match);

	/**
		// ExpandString is like Expand but the template and source are strings.
		// It appends to and returns a byte slice in order to give the calling
		// code control over allocation.
	**/
	@:keep
	public function expandString(_dst:Slice<GoByte>, _template:GoString, _src:GoString, _match:Slice<GoInt>):Slice<GoByte>
		return __self__.value.expandString(_dst, _template, _src, _match);

	/**
		// Expand appends template to dst and returns the result; during the
		// append, Expand replaces variables in the template with corresponding
		// matches drawn from src. The match slice should have been returned by
		// FindSubmatchIndex.
		//
		// In the template, a variable is denoted by a substring of the form
		// $name or ${name}, where name is a non-empty sequence of letters,
		// digits, and underscores. A purely numeric name like $1 refers to
		// the submatch with the corresponding index; other names refer to
		// capturing parentheses named with the (?P<name>...) syntax. A
		// reference to an out of range or unmatched index or a name that is not
		// present in the regular expression is replaced with an empty slice.
		//
		// In the $name form, name is taken to be as long as possible: $1x is
		// equivalent to ${1x}, not ${1}x, and, $10 is equivalent to ${10}, not ${1}0.
		//
		// To insert a literal $ in the output, use $$ in the template.
	**/
	@:keep
	public function expand(_dst:Slice<GoByte>, _template:Slice<GoByte>, _src:Slice<GoByte>, _match:Slice<GoInt>):Slice<GoByte>
		return __self__.value.expand(_dst, _template, _src, _match);

	/**
		// FindSubmatch returns a slice of slices holding the text of the leftmost
		// match of the regular expression in b and the matches, if any, of its
		// subexpressions, as defined by the 'Submatch' descriptions in the package
		// comment.
		// A return value of nil indicates no match.
	**/
	@:keep
	public function findSubmatch(_b:Slice<GoByte>):Slice<Slice<GoByte>>
		return __self__.value.findSubmatch(_b);

	/**
		// FindReaderIndex returns a two-element slice of integers defining the
		// location of the leftmost match of the regular expression in text read from
		// the RuneReader. The match text was found in the input stream at
		// byte offset loc[0] through loc[1]-1.
		// A return value of nil indicates no match.
	**/
	@:keep
	public function findReaderIndex(_r:stdgo.io.Io.RuneReader):Slice<GoInt>
		return __self__.value.findReaderIndex(_r);

	/**
		// FindStringIndex returns a two-element slice of integers defining the
		// location of the leftmost match in s of the regular expression. The match
		// itself is at s[loc[0]:loc[1]].
		// A return value of nil indicates no match.
	**/
	@:keep
	public function findStringIndex(_s:GoString):Slice<GoInt>
		return __self__.value.findStringIndex(_s);

	/**
		// FindString returns a string holding the text of the leftmost match in s of the regular
		// expression. If there is no match, the return value is an empty string,
		// but it will also be empty if the regular expression successfully matches
		// an empty string. Use FindStringIndex or FindStringSubmatch if it is
		// necessary to distinguish these cases.
	**/
	@:keep
	public function findString(_s:GoString):GoString
		return __self__.value.findString(_s);

	/**
		// FindIndex returns a two-element slice of integers defining the location of
		// the leftmost match in b of the regular expression. The match itself is at
		// b[loc[0]:loc[1]].
		// A return value of nil indicates no match.
	**/
	@:keep
	public function findIndex(_b:Slice<GoByte>):Slice<GoInt>
		return __self__.value.findIndex(_b);

	/**
		// Find returns a slice holding the text of the leftmost match in b of the regular expression.
		// A return value of nil indicates no match.
	**/
	@:keep
	public function find(_b:Slice<GoByte>):Slice<GoByte>
		return __self__.value.find(_b);

	/**
		// allMatches calls deliver at most n times
		// with the location of successive matches in the input text.
		// The input text is b if non-nil, otherwise s.
	**/
	@:keep
	public function _allMatches(_s:GoString, _b:Slice<GoByte>, _n:GoInt, _deliver:Slice<GoInt>->Void):Void
		__self__.value._allMatches(_s, _b, _n, _deliver);

	/**
		// The number of capture values in the program may correspond
		// to fewer capturing expressions than are in the regexp.
		// For example, "(a){0}" turns into an empty program, so the
		// maximum capture in the program is 0 but we need to return
		// an expression for \1.  Pad appends -1s to the slice a as needed.
	**/
	@:keep
	public function _pad(_a:Slice<GoInt>):Slice<GoInt>
		return __self__.value._pad(_a);

	/**
		// ReplaceAllFunc returns a copy of src in which all matches of the
		// Regexp have been replaced by the return value of function repl applied
		// to the matched byte slice. The replacement returned by repl is substituted
		// directly, without using Expand.
	**/
	@:keep
	public function replaceAllFunc(_src:Slice<GoByte>, _repl:Slice<GoByte>->Slice<GoByte>):Slice<GoByte>
		return __self__.value.replaceAllFunc(_src, _repl);

	/**
		// ReplaceAllLiteral returns a copy of src, replacing matches of the Regexp
		// with the replacement bytes repl. The replacement repl is substituted directly,
		// without using Expand.
	**/
	@:keep
	public function replaceAllLiteral(_src:Slice<GoByte>, _repl:Slice<GoByte>):Slice<GoByte>
		return __self__.value.replaceAllLiteral(_src, _repl);

	/**
		// ReplaceAll returns a copy of src, replacing matches of the Regexp
		// with the replacement text repl. Inside repl, $ signs are interpreted as
		// in Expand, so for instance $1 represents the text of the first submatch.
	**/
	@:keep
	public function replaceAll(_src:Slice<GoByte>, _repl:Slice<GoByte>):Slice<GoByte>
		return __self__.value.replaceAll(_src, _repl);

	@:keep
	public function _replaceAll(_bsrc:Slice<GoByte>, _src:GoString, _nmatch:GoInt, _repl:(_dst:Slice<GoByte>, _m:Slice<GoInt>) -> Slice<GoByte>):Slice<GoByte>
		return __self__.value._replaceAll(_bsrc, _src, _nmatch, _repl);

	/**
		// ReplaceAllStringFunc returns a copy of src in which all matches of the
		// Regexp have been replaced by the return value of function repl applied
		// to the matched substring. The replacement returned by repl is substituted
		// directly, without using Expand.
	**/
	@:keep
	public function replaceAllStringFunc(_src:GoString, _repl:GoString->GoString):GoString
		return __self__.value.replaceAllStringFunc(_src, _repl);

	/**
		// ReplaceAllLiteralString returns a copy of src, replacing matches of the Regexp
		// with the replacement string repl. The replacement repl is substituted directly,
		// without using Expand.
	**/
	@:keep
	public function replaceAllLiteralString(_src:GoString, _repl:GoString):GoString
		return __self__.value.replaceAllLiteralString(_src, _repl);

	/**
		// ReplaceAllString returns a copy of src, replacing matches of the Regexp
		// with the replacement string repl. Inside repl, $ signs are interpreted as
		// in Expand, so for instance $1 represents the text of the first submatch.
	**/
	@:keep
	public function replaceAllString(_src:GoString, _repl:GoString):GoString
		return __self__.value.replaceAllString(_src, _repl);

	/**
		// Match reports whether the byte slice b
		// contains any match of the regular expression re.
	**/
	@:keep
	public function match(_b:Slice<GoByte>):Bool
		return __self__.value.match(_b);

	/**
		// MatchString reports whether the string s
		// contains any match of the regular expression re.
	**/
	@:keep
	public function matchString(_s:GoString):Bool
		return __self__.value.matchString(_s);

	/**
		// MatchReader reports whether the text returned by the RuneReader
		// contains any match of the regular expression re.
	**/
	@:keep
	public function matchReader(_r:stdgo.io.Io.RuneReader):Bool
		return __self__.value.matchReader(_r);

	/**
		// LiteralPrefix returns a literal string that must begin any match
		// of the regular expression re. It returns the boolean true if the
		// literal string comprises the entire regular expression.
	**/
	@:keep
	public function literalPrefix():{var _0:GoString; var _1:Bool;}
		return __self__.value.literalPrefix();

	/**
		// SubexpIndex returns the index of the first subexpression with the given name,
		// or -1 if there is no subexpression with that name.
		//
		// Note that multiple subexpressions can be written using the same name, as in
		// (?P<bob>a+)(?P<bob>b+), which declares two subexpressions named "bob".
		// In this case, SubexpIndex returns the index of the leftmost such subexpression
		// in the regular expression.
	**/
	@:keep
	public function subexpIndex(_name:GoString):GoInt
		return __self__.value.subexpIndex(_name);

	/**
		// SubexpNames returns the names of the parenthesized subexpressions
		// in this Regexp. The name for the first sub-expression is names[1],
		// so that if m is a match slice, the name for m[i] is SubexpNames()[i].
		// Since the Regexp as a whole cannot be named, names[0] is always
		// the empty string. The slice should not be modified.
	**/
	@:keep
	public function subexpNames():Slice<GoString>
		return __self__.value.subexpNames();

	/**
		// NumSubexp returns the number of parenthesized subexpressions in this Regexp.
	**/
	@:keep
	public function numSubexp():GoInt
		return __self__.value.numSubexp();

	/**
		// put returns a machine to the correct machine pool.
	**/
	@:keep
	public function _put(_m:Ref<T_machine>):Void
		__self__.value._put(_m);

	/**
		// get returns a machine to use for matching re.
		// It uses the re's machine cache if possible, to avoid
		// unnecessary allocation.
	**/
	@:keep
	public function _get():Ref<T_machine>
		return __self__.value._get();

	/**
		// Longest makes future searches prefer the leftmost-longest match.
		// That is, when matching against text, the regexp returns a match that
		// begins as early as possible in the input (leftmost), and among those
		// it chooses a match that is as long as possible.
		// This method modifies the Regexp and may not be called concurrently
		// with any other methods.
	**/
	@:keep
	public function longest():Void
		__self__.value.longest();

	/**
		// Copy returns a new Regexp object copied from re.
		// Calling Longest on one copy does not affect another.
		//
		// Deprecated: In earlier releases, when using a Regexp in multiple goroutines,
		// giving each goroutine its own copy helped to avoid lock contention.
		// As of Go 1.12, using Copy is no longer necessary to avoid lock contention.
		// Copy may still be appropriate if the reason for its use is to make
		// two copies with different Longest settings.
	**/
	@:keep
	public function copy():Ref<Regexp>
		return __self__.value.copy();

	/**
		// String returns the source text used to compile the regular expression.
	**/
	@:keep
	public function string():GoString
		return __self__.value.string();

	/**
		// doExecute finds the leftmost match in the input, appends the position
		// of its subexpressions to dstCap and returns dstCap.
		//
		// nil is returned if no matches are found and non-nil if matches are found.
	**/
	@:keep
	public function _doExecute(_r:stdgo.io.Io.RuneReader, _b:Slice<GoByte>, _s:GoString, _pos:GoInt, _ncap:GoInt, _dstCap:Slice<GoInt>):Slice<GoInt>
		return __self__.value._doExecute(_r, _b, _s, _pos, _ncap, _dstCap);

	/**
		// doMatch reports whether either r, b or s match the regexp.
	**/
	@:keep
	public function _doMatch(_r:stdgo.io.Io.RuneReader, _b:Slice<GoByte>, _s:GoString):Bool
		return __self__.value._doMatch(_r, _b, _s);

	/**
		// doOnePass implements r.doExecute using the one-pass execution engine.
	**/
	@:keep
	public function _doOnePass(_ir:stdgo.io.Io.RuneReader, _ib:Slice<GoByte>, _is:GoString, _pos:GoInt, _ncap:GoInt, _dstCap:Slice<GoInt>):Slice<GoInt>
		return __self__.value._doOnePass(_ir, _ib, _is, _pos, _ncap, _dstCap);

	/**
		// backtrack runs a backtracking search of prog on the input starting at pos.
	**/
	@:keep
	public function _backtrack(_ib:Slice<GoByte>, _is:GoString, _pos:GoInt, _ncap:GoInt, _dstCap:Slice<GoInt>):Slice<GoInt>
		return __self__.value._backtrack(_ib, _is, _pos, _ncap, _dstCap);

	/**
		// tryBacktrack runs a backtracking search starting at pos.
	**/
	@:keep
	public function _tryBacktrack(_b:Ref<T_bitState>, _i:T_input, _pc:GoUInt32, _pos:GoInt):Bool
		return __self__.value._tryBacktrack(_b, _i, _pc, _pos);

	public function new(__self__, __type__) {
		this.__self__ = __self__;
		this.__type__ = __type__;
	}

	public function __underlying__()
		return new AnyInterface((__type__.kind() == stdgo.reflect.Reflect.ptr
			&& !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic),
			__type__);

	var __self__:Pointer<Regexp>;
	var __type__:stdgo.internal.reflect.Reflect._Type;
}

@:keep @:allow(stdgo.regexp.Regexp.Regexp_asInterface) class Regexp_static_extension {
	/**
		// Split slices s into substrings separated by the expression and returns a slice of
		// the substrings between those expression matches.
		//
		// The slice returned by this method consists of all the substrings of s
		// not contained in the slice returned by FindAllString. When called on an expression
		// that contains no metacharacters, it is equivalent to strings.SplitN.
		//
		// Example:
		//
		//	s := regexp.MustCompile("a*").Split("abaabaccadaaae", 5)
		//	// s: ["", "b", "b", "c", "cadaaae"]
		//
		// The count determines the number of substrings to return:
		//
		//	n > 0: at most n substrings; the last substring will be the unsplit remainder.
		//	n == 0: the result is nil (zero substrings)
		//	n < 0: all substrings
	**/
	@:keep
	static public function split(_re:Ref<Regexp>, _s:GoString, _n:GoInt):Slice<GoString>
		throw "regexp.split is not yet implemented";

	/**
		// FindAllStringSubmatchIndex is the 'All' version of
		// FindStringSubmatchIndex; it returns a slice of all successive matches of
		// the expression, as defined by the 'All' description in the package
		// comment.
		// A return value of nil indicates no match.
	**/
	@:keep
	static public function findAllStringSubmatchIndex(_re:Ref<Regexp>, _s:GoString, _n:GoInt):Slice<Slice<GoInt>>
		throw "regexp.findAllStringSubmatchIndex is not yet implemented";

	/**
		// FindAllStringSubmatch is the 'All' version of FindStringSubmatch; it
		// returns a slice of all successive matches of the expression, as defined by
		// the 'All' description in the package comment.
		// A return value of nil indicates no match.
	**/
	@:keep
	static public function findAllStringSubmatch(_re:Ref<Regexp>, _s:GoString, _n:GoInt):Slice<Slice<GoString>>
		throw "regexp.findAllStringSubmatch is not yet implemented";

	/**
		// FindAllSubmatchIndex is the 'All' version of FindSubmatchIndex; it returns
		// a slice of all successive matches of the expression, as defined by the
		// 'All' description in the package comment.
		// A return value of nil indicates no match.
	**/
	@:keep
	static public function findAllSubmatchIndex(_re:Ref<Regexp>, _b:Slice<GoByte>, _n:GoInt):Slice<Slice<GoInt>>
		throw "regexp.findAllSubmatchIndex is not yet implemented";

	/**
		// FindAllSubmatch is the 'All' version of FindSubmatch; it returns a slice
		// of all successive matches of the expression, as defined by the 'All'
		// description in the package comment.
		// A return value of nil indicates no match.
	**/
	@:keep
	static public function findAllSubmatch(_re:Ref<Regexp>, _b:Slice<GoByte>, _n:GoInt):Slice<Slice<Slice<GoByte>>>
		throw "regexp.findAllSubmatch is not yet implemented";

	/**
		// FindAllStringIndex is the 'All' version of FindStringIndex; it returns a
		// slice of all successive matches of the expression, as defined by the 'All'
		// description in the package comment.
		// A return value of nil indicates no match.
	**/
	@:keep
	static public function findAllStringIndex(_re:Ref<Regexp>, _s:GoString, _n:GoInt):Slice<Slice<GoInt>>
		throw "regexp.findAllStringIndex is not yet implemented";

	/**
		// FindAllString is the 'All' version of FindString; it returns a slice of all
		// successive matches of the expression, as defined by the 'All' description
		// in the package comment.
		// A return value of nil indicates no match.
	**/
	@:keep
	static public function findAllString(_re:Ref<Regexp>, _s:GoString, _n:GoInt):Slice<GoString>
		throw "regexp.findAllString is not yet implemented";

	/**
		// FindAllIndex is the 'All' version of FindIndex; it returns a slice of all
		// successive matches of the expression, as defined by the 'All' description
		// in the package comment.
		// A return value of nil indicates no match.
	**/
	@:keep
	static public function findAllIndex(_re:Ref<Regexp>, _b:Slice<GoByte>, _n:GoInt):Slice<Slice<GoInt>>
		throw "regexp.findAllIndex is not yet implemented";

	/**
		// FindAll is the 'All' version of Find; it returns a slice of all successive
		// matches of the expression, as defined by the 'All' description in the
		// package comment.
		// A return value of nil indicates no match.
	**/
	@:keep
	static public function findAll(_re:Ref<Regexp>, _b:Slice<GoByte>, _n:GoInt):Slice<Slice<GoByte>>
		throw "regexp.findAll is not yet implemented";

	/**
		// FindReaderSubmatchIndex returns a slice holding the index pairs
		// identifying the leftmost match of the regular expression of text read by
		// the RuneReader, and the matches, if any, of its subexpressions, as defined
		// by the 'Submatch' and 'Index' descriptions in the package comment. A
		// return value of nil indicates no match.
	**/
	@:keep
	static public function findReaderSubmatchIndex(_re:Ref<Regexp>, _r:stdgo.io.Io.RuneReader):Slice<GoInt>
		throw "regexp.findReaderSubmatchIndex is not yet implemented";

	/**
		// FindStringSubmatchIndex returns a slice holding the index pairs
		// identifying the leftmost match of the regular expression in s and the
		// matches, if any, of its subexpressions, as defined by the 'Submatch' and
		// 'Index' descriptions in the package comment.
		// A return value of nil indicates no match.
	**/
	@:keep
	static public function findStringSubmatchIndex(_re:Ref<Regexp>, _s:GoString):Slice<GoInt>
		throw "regexp.findStringSubmatchIndex is not yet implemented";

	/**
		// FindStringSubmatch returns a slice of strings holding the text of the
		// leftmost match of the regular expression in s and the matches, if any, of
		// its subexpressions, as defined by the 'Submatch' description in the
		// package comment.
		// A return value of nil indicates no match.
	**/
	@:keep
	static public function findStringSubmatch(_re:Ref<Regexp>, _s:GoString):Slice<GoString>
		throw "regexp.findStringSubmatch is not yet implemented";

	/**
		// FindSubmatchIndex returns a slice holding the index pairs identifying the
		// leftmost match of the regular expression in b and the matches, if any, of
		// its subexpressions, as defined by the 'Submatch' and 'Index' descriptions
		// in the package comment.
		// A return value of nil indicates no match.
	**/
	@:keep
	static public function findSubmatchIndex(_re:Ref<Regexp>, _b:Slice<GoByte>):Slice<GoInt>
		throw "regexp.findSubmatchIndex is not yet implemented";

	@:keep
	static public function _expand(_re:Ref<Regexp>, _dst:Slice<GoByte>, _template:GoString, _bsrc:Slice<GoByte>, _src:GoString,
			_match:Slice<GoInt>):Slice<GoByte>
		throw "regexp._expand is not yet implemented";

	/**
		// ExpandString is like Expand but the template and source are strings.
		// It appends to and returns a byte slice in order to give the calling
		// code control over allocation.
	**/
	@:keep
	static public function expandString(_re:Ref<Regexp>, _dst:Slice<GoByte>, _template:GoString, _src:GoString, _match:Slice<GoInt>):Slice<GoByte>
		throw "regexp.expandString is not yet implemented";

	/**
		// Expand appends template to dst and returns the result; during the
		// append, Expand replaces variables in the template with corresponding
		// matches drawn from src. The match slice should have been returned by
		// FindSubmatchIndex.
		//
		// In the template, a variable is denoted by a substring of the form
		// $name or ${name}, where name is a non-empty sequence of letters,
		// digits, and underscores. A purely numeric name like $1 refers to
		// the submatch with the corresponding index; other names refer to
		// capturing parentheses named with the (?P<name>...) syntax. A
		// reference to an out of range or unmatched index or a name that is not
		// present in the regular expression is replaced with an empty slice.
		//
		// In the $name form, name is taken to be as long as possible: $1x is
		// equivalent to ${1x}, not ${1}x, and, $10 is equivalent to ${10}, not ${1}0.
		//
		// To insert a literal $ in the output, use $$ in the template.
	**/
	@:keep
	static public function expand(_re:Ref<Regexp>, _dst:Slice<GoByte>, _template:Slice<GoByte>, _src:Slice<GoByte>, _match:Slice<GoInt>):Slice<GoByte>
		throw "regexp.expand is not yet implemented";

	/**
		// FindSubmatch returns a slice of slices holding the text of the leftmost
		// match of the regular expression in b and the matches, if any, of its
		// subexpressions, as defined by the 'Submatch' descriptions in the package
		// comment.
		// A return value of nil indicates no match.
	**/
	@:keep
	static public function findSubmatch(_re:Ref<Regexp>, _b:Slice<GoByte>):Slice<Slice<GoByte>>
		throw "regexp.findSubmatch is not yet implemented";

	/**
		// FindReaderIndex returns a two-element slice of integers defining the
		// location of the leftmost match of the regular expression in text read from
		// the RuneReader. The match text was found in the input stream at
		// byte offset loc[0] through loc[1]-1.
		// A return value of nil indicates no match.
	**/
	@:keep
	static public function findReaderIndex(_re:Ref<Regexp>, _r:stdgo.io.Io.RuneReader):Slice<GoInt>
		throw "regexp.findReaderIndex is not yet implemented";

	/**
		// FindStringIndex returns a two-element slice of integers defining the
		// location of the leftmost match in s of the regular expression. The match
		// itself is at s[loc[0]:loc[1]].
		// A return value of nil indicates no match.
	**/
	@:keep
	static public function findStringIndex(_re:Ref<Regexp>, _s:GoString):Slice<GoInt>
		throw "regexp.findStringIndex is not yet implemented";

	/**
		// FindString returns a string holding the text of the leftmost match in s of the regular
		// expression. If there is no match, the return value is an empty string,
		// but it will also be empty if the regular expression successfully matches
		// an empty string. Use FindStringIndex or FindStringSubmatch if it is
		// necessary to distinguish these cases.
	**/
	@:keep
	static public function findString(_re:Ref<Regexp>, _s:GoString):GoString
		throw "regexp.findString is not yet implemented";

	/**
		// FindIndex returns a two-element slice of integers defining the location of
		// the leftmost match in b of the regular expression. The match itself is at
		// b[loc[0]:loc[1]].
		// A return value of nil indicates no match.
	**/
	@:keep
	static public function findIndex(_re:Ref<Regexp>, _b:Slice<GoByte>):Slice<GoInt>
		throw "regexp.findIndex is not yet implemented";

	/**
		// Find returns a slice holding the text of the leftmost match in b of the regular expression.
		// A return value of nil indicates no match.
	**/
	@:keep
	static public function find(_re:Ref<Regexp>, _b:Slice<GoByte>):Slice<GoByte>
		throw "regexp.find is not yet implemented";

	/**
		// allMatches calls deliver at most n times
		// with the location of successive matches in the input text.
		// The input text is b if non-nil, otherwise s.
	**/
	@:keep
	static public function _allMatches(_re:Ref<Regexp>, _s:GoString, _b:Slice<GoByte>, _n:GoInt, _deliver:Slice<GoInt>->Void):Void
		throw "regexp._allMatches is not yet implemented";

	/**
		// The number of capture values in the program may correspond
		// to fewer capturing expressions than are in the regexp.
		// For example, "(a){0}" turns into an empty program, so the
		// maximum capture in the program is 0 but we need to return
		// an expression for \1.  Pad appends -1s to the slice a as needed.
	**/
	@:keep
	static public function _pad(_re:Ref<Regexp>, _a:Slice<GoInt>):Slice<GoInt>
		throw "regexp._pad is not yet implemented";

	/**
		// ReplaceAllFunc returns a copy of src in which all matches of the
		// Regexp have been replaced by the return value of function repl applied
		// to the matched byte slice. The replacement returned by repl is substituted
		// directly, without using Expand.
	**/
	@:keep
	static public function replaceAllFunc(_re:Ref<Regexp>, _src:Slice<GoByte>, _repl:Slice<GoByte>->Slice<GoByte>):Slice<GoByte>
		throw "regexp.replaceAllFunc is not yet implemented";

	/**
		// ReplaceAllLiteral returns a copy of src, replacing matches of the Regexp
		// with the replacement bytes repl. The replacement repl is substituted directly,
		// without using Expand.
	**/
	@:keep
	static public function replaceAllLiteral(_re:Ref<Regexp>, _src:Slice<GoByte>, _repl:Slice<GoByte>):Slice<GoByte>
		throw "regexp.replaceAllLiteral is not yet implemented";

	/**
		// ReplaceAll returns a copy of src, replacing matches of the Regexp
		// with the replacement text repl. Inside repl, $ signs are interpreted as
		// in Expand, so for instance $1 represents the text of the first submatch.
	**/
	@:keep
	static public function replaceAll(_re:Ref<Regexp>, _src:Slice<GoByte>, _repl:Slice<GoByte>):Slice<GoByte>
		throw "regexp.replaceAll is not yet implemented";

	@:keep
	static public function _replaceAll(_re:Ref<Regexp>, _bsrc:Slice<GoByte>, _src:GoString, _nmatch:GoInt,
			_repl:(_dst:Slice<GoByte>, _m:Slice<GoInt>) -> Slice<GoByte>):Slice<GoByte>
		throw "regexp._replaceAll is not yet implemented";

	/**
		// ReplaceAllStringFunc returns a copy of src in which all matches of the
		// Regexp have been replaced by the return value of function repl applied
		// to the matched substring. The replacement returned by repl is substituted
		// directly, without using Expand.
	**/
	@:keep
	static public function replaceAllStringFunc(_re:Ref<Regexp>, _src:GoString, _repl:GoString->GoString):GoString
		throw "regexp.replaceAllStringFunc is not yet implemented";

	/**
		// ReplaceAllLiteralString returns a copy of src, replacing matches of the Regexp
		// with the replacement string repl. The replacement repl is substituted directly,
		// without using Expand.
	**/
	@:keep
	static public function replaceAllLiteralString(_re:Ref<Regexp>, _src:GoString, _repl:GoString):GoString
		throw "regexp.replaceAllLiteralString is not yet implemented";

	/**
		// ReplaceAllString returns a copy of src, replacing matches of the Regexp
		// with the replacement string repl. Inside repl, $ signs are interpreted as
		// in Expand, so for instance $1 represents the text of the first submatch.
	**/
	@:keep
	static public function replaceAllString(_re:Ref<Regexp>, _src:GoString, _repl:GoString):GoString
		throw "regexp.replaceAllString is not yet implemented";

	/**
		// Match reports whether the byte slice b
		// contains any match of the regular expression re.
	**/
	@:keep
	static public function match(_re:Ref<Regexp>, _b:Slice<GoByte>):Bool
		throw "regexp.match is not yet implemented";

	/**
		// MatchString reports whether the string s
		// contains any match of the regular expression re.
	**/
	@:keep
	static public function matchString(_re:Ref<Regexp>, _s:GoString):Bool
		throw "regexp.matchString is not yet implemented";

	/**
		// MatchReader reports whether the text returned by the RuneReader
		// contains any match of the regular expression re.
	**/
	@:keep
	static public function matchReader(_re:Ref<Regexp>, _r:stdgo.io.Io.RuneReader):Bool
		throw "regexp.matchReader is not yet implemented";

	/**
		// LiteralPrefix returns a literal string that must begin any match
		// of the regular expression re. It returns the boolean true if the
		// literal string comprises the entire regular expression.
	**/
	@:keep
	static public function literalPrefix(_re:Ref<Regexp>):{var _0:GoString; var _1:Bool;}
		throw "regexp.literalPrefix is not yet implemented";

	/**
		// SubexpIndex returns the index of the first subexpression with the given name,
		// or -1 if there is no subexpression with that name.
		//
		// Note that multiple subexpressions can be written using the same name, as in
		// (?P<bob>a+)(?P<bob>b+), which declares two subexpressions named "bob".
		// In this case, SubexpIndex returns the index of the leftmost such subexpression
		// in the regular expression.
	**/
	@:keep
	static public function subexpIndex(_re:Ref<Regexp>, _name:GoString):GoInt
		throw "regexp.subexpIndex is not yet implemented";

	/**
		// SubexpNames returns the names of the parenthesized subexpressions
		// in this Regexp. The name for the first sub-expression is names[1],
		// so that if m is a match slice, the name for m[i] is SubexpNames()[i].
		// Since the Regexp as a whole cannot be named, names[0] is always
		// the empty string. The slice should not be modified.
	**/
	@:keep
	static public function subexpNames(_re:Ref<Regexp>):Slice<GoString>
		throw "regexp.subexpNames is not yet implemented";

	/**
		// NumSubexp returns the number of parenthesized subexpressions in this Regexp.
	**/
	@:keep
	static public function numSubexp(_re:Ref<Regexp>):GoInt
		throw "regexp.numSubexp is not yet implemented";

	/**
		// put returns a machine to the correct machine pool.
	**/
	@:keep
	static public function _put(_re:Ref<Regexp>, _m:Ref<T_machine>):Void
		throw "regexp._put is not yet implemented";

	/**
		// get returns a machine to use for matching re.
		// It uses the re's machine cache if possible, to avoid
		// unnecessary allocation.
	**/
	@:keep
	static public function _get(_re:Ref<Regexp>):Ref<T_machine>
		throw "regexp._get is not yet implemented";

	/**
		// Longest makes future searches prefer the leftmost-longest match.
		// That is, when matching against text, the regexp returns a match that
		// begins as early as possible in the input (leftmost), and among those
		// it chooses a match that is as long as possible.
		// This method modifies the Regexp and may not be called concurrently
		// with any other methods.
	**/
	@:keep
	static public function longest(_re:Ref<Regexp>):Void
		throw "regexp.longest is not yet implemented";

	/**
		// Copy returns a new Regexp object copied from re.
		// Calling Longest on one copy does not affect another.
		//
		// Deprecated: In earlier releases, when using a Regexp in multiple goroutines,
		// giving each goroutine its own copy helped to avoid lock contention.
		// As of Go 1.12, using Copy is no longer necessary to avoid lock contention.
		// Copy may still be appropriate if the reason for its use is to make
		// two copies with different Longest settings.
	**/
	@:keep
	static public function copy(_re:Ref<Regexp>):Ref<Regexp>
		throw "regexp.copy is not yet implemented";

	/**
		// String returns the source text used to compile the regular expression.
	**/
	@:keep
	static public function string(_re:Ref<Regexp>):GoString
		throw "regexp.string is not yet implemented";

	/**
		// doExecute finds the leftmost match in the input, appends the position
		// of its subexpressions to dstCap and returns dstCap.
		//
		// nil is returned if no matches are found and non-nil if matches are found.
	**/
	@:keep
	static public function _doExecute(_re:Ref<Regexp>, _r:stdgo.io.Io.RuneReader, _b:Slice<GoByte>, _s:GoString, _pos:GoInt, _ncap:GoInt,
			_dstCap:Slice<GoInt>):Slice<GoInt>
		throw "regexp._doExecute is not yet implemented";

	/**
		// doMatch reports whether either r, b or s match the regexp.
	**/
	@:keep
	static public function _doMatch(_re:Ref<Regexp>, _r:stdgo.io.Io.RuneReader, _b:Slice<GoByte>, _s:GoString):Bool
		throw "regexp._doMatch is not yet implemented";

	/**
		// doOnePass implements r.doExecute using the one-pass execution engine.
	**/
	@:keep
	static public function _doOnePass(_re:Ref<Regexp>, _ir:stdgo.io.Io.RuneReader, _ib:Slice<GoByte>, _is:GoString, _pos:GoInt, _ncap:GoInt,
			_dstCap:Slice<GoInt>):Slice<GoInt>
		throw "regexp._doOnePass is not yet implemented";

	/**
		// backtrack runs a backtracking search of prog on the input starting at pos.
	**/
	@:keep
	static public function _backtrack(_re:Ref<Regexp>, _ib:Slice<GoByte>, _is:GoString, _pos:GoInt, _ncap:GoInt, _dstCap:Slice<GoInt>):Slice<GoInt>
		throw "regexp._backtrack is not yet implemented";

	/**
		// tryBacktrack runs a backtracking search starting at pos.
	**/
	@:keep
	static public function _tryBacktrack(_re:Ref<Regexp>, _b:Ref<T_bitState>, _i:T_input, _pc:GoUInt32, _pos:GoInt):Bool
		throw "regexp._tryBacktrack is not yet implemented";
}

class T_inputString_asInterface {
	@:keep
	public function _context(_pos:GoInt):T_lazyFlag
		return __self__.value._context(_pos);

	@:keep
	public function _index(_re:Ref<Regexp>, _pos:GoInt):GoInt
		return __self__.value._index(_re, _pos);

	@:keep
	public function _hasPrefix(_re:Ref<Regexp>):Bool
		return __self__.value._hasPrefix(_re);

	@:keep
	public function _canCheckPrefix():Bool
		return __self__.value._canCheckPrefix();

	@:keep
	public function _step(_pos:GoInt):{var _0:GoRune; var _1:GoInt;}
		return __self__.value._step(_pos);

	public function new(__self__, __type__) {
		this.__self__ = __self__;
		this.__type__ = __type__;
	}

	public function __underlying__()
		return new AnyInterface((__type__.kind() == stdgo.reflect.Reflect.ptr
			&& !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic),
			__type__);

	var __self__:Pointer<T_inputString>;
	var __type__:stdgo.internal.reflect.Reflect._Type;
}

@:keep @:allow(stdgo.regexp.Regexp.T_inputString_asInterface) class T_inputString_static_extension {
	@:keep
	static public function _context(_i:Ref<T_inputString>, _pos:GoInt):T_lazyFlag
		throw "regexp._context is not yet implemented";

	@:keep
	static public function _index(_i:Ref<T_inputString>, _re:Ref<Regexp>, _pos:GoInt):GoInt
		throw "regexp._index is not yet implemented";

	@:keep
	static public function _hasPrefix(_i:Ref<T_inputString>, _re:Ref<Regexp>):Bool
		throw "regexp._hasPrefix is not yet implemented";

	@:keep
	static public function _canCheckPrefix(_i:Ref<T_inputString>):Bool
		throw "regexp._canCheckPrefix is not yet implemented";

	@:keep
	static public function _step(_i:Ref<T_inputString>, _pos:GoInt):{var _0:GoRune; var _1:GoInt;}
		throw "regexp._step is not yet implemented";
}

class T_inputBytes_asInterface {
	@:keep
	public function _context(_pos:GoInt):T_lazyFlag
		return __self__.value._context(_pos);

	@:keep
	public function _index(_re:Ref<Regexp>, _pos:GoInt):GoInt
		return __self__.value._index(_re, _pos);

	@:keep
	public function _hasPrefix(_re:Ref<Regexp>):Bool
		return __self__.value._hasPrefix(_re);

	@:keep
	public function _canCheckPrefix():Bool
		return __self__.value._canCheckPrefix();

	@:keep
	public function _step(_pos:GoInt):{var _0:GoRune; var _1:GoInt;}
		return __self__.value._step(_pos);

	public function new(__self__, __type__) {
		this.__self__ = __self__;
		this.__type__ = __type__;
	}

	public function __underlying__()
		return new AnyInterface((__type__.kind() == stdgo.reflect.Reflect.ptr
			&& !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic),
			__type__);

	var __self__:Pointer<T_inputBytes>;
	var __type__:stdgo.internal.reflect.Reflect._Type;
}

@:keep @:allow(stdgo.regexp.Regexp.T_inputBytes_asInterface) class T_inputBytes_static_extension {
	@:keep
	static public function _context(_i:Ref<T_inputBytes>, _pos:GoInt):T_lazyFlag
		throw "regexp._context is not yet implemented";

	@:keep
	static public function _index(_i:Ref<T_inputBytes>, _re:Ref<Regexp>, _pos:GoInt):GoInt
		throw "regexp._index is not yet implemented";

	@:keep
	static public function _hasPrefix(_i:Ref<T_inputBytes>, _re:Ref<Regexp>):Bool
		throw "regexp._hasPrefix is not yet implemented";

	@:keep
	static public function _canCheckPrefix(_i:Ref<T_inputBytes>):Bool
		throw "regexp._canCheckPrefix is not yet implemented";

	@:keep
	static public function _step(_i:Ref<T_inputBytes>, _pos:GoInt):{var _0:GoRune; var _1:GoInt;}
		throw "regexp._step is not yet implemented";
}

class T_inputReader_asInterface {
	@:keep
	public function _context(_pos:GoInt):T_lazyFlag
		return __self__.value._context(_pos);

	@:keep
	public function _index(_re:Ref<Regexp>, _pos:GoInt):GoInt
		return __self__.value._index(_re, _pos);

	@:keep
	public function _hasPrefix(_re:Ref<Regexp>):Bool
		return __self__.value._hasPrefix(_re);

	@:keep
	public function _canCheckPrefix():Bool
		return __self__.value._canCheckPrefix();

	@:keep
	public function _step(_pos:GoInt):{var _0:GoRune; var _1:GoInt;}
		return __self__.value._step(_pos);

	public function new(__self__, __type__) {
		this.__self__ = __self__;
		this.__type__ = __type__;
	}

	public function __underlying__()
		return new AnyInterface((__type__.kind() == stdgo.reflect.Reflect.ptr
			&& !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic),
			__type__);

	var __self__:Pointer<T_inputReader>;
	var __type__:stdgo.internal.reflect.Reflect._Type;
}

@:keep @:allow(stdgo.regexp.Regexp.T_inputReader_asInterface) class T_inputReader_static_extension {
	@:keep
	static public function _context(_i:Ref<T_inputReader>, _pos:GoInt):T_lazyFlag
		throw "regexp._context is not yet implemented";

	@:keep
	static public function _index(_i:Ref<T_inputReader>, _re:Ref<Regexp>, _pos:GoInt):GoInt
		throw "regexp._index is not yet implemented";

	@:keep
	static public function _hasPrefix(_i:Ref<T_inputReader>, _re:Ref<Regexp>):Bool
		throw "regexp._hasPrefix is not yet implemented";

	@:keep
	static public function _canCheckPrefix(_i:Ref<T_inputReader>):Bool
		throw "regexp._canCheckPrefix is not yet implemented";

	@:keep
	static public function _step(_i:Ref<T_inputReader>, _pos:GoInt):{var _0:GoRune; var _1:GoInt;}
		throw "regexp._step is not yet implemented";
}

class T_lazyFlag_asInterface {
	@:keep
	public function _match(_op:stdgo.regexp.syntax.Syntax.EmptyOp):Bool
		return __self__.value._match(_op);

	public function new(__self__, __type__) {
		this.__self__ = __self__;
		this.__type__ = __type__;
	}

	public function __underlying__()
		return new AnyInterface((__type__.kind() == stdgo.reflect.Reflect.ptr
			&& !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic),
			__type__);

	var __self__:Pointer<T_lazyFlag>;
	var __type__:stdgo.internal.reflect.Reflect._Type;
}

@:keep @:allow(stdgo.regexp.Regexp.T_lazyFlag_asInterface) class T_lazyFlag_static_extension {
	@:keep
	static public function _match(_f:T_lazyFlag, _op:stdgo.regexp.syntax.Syntax.EmptyOp):Bool
		throw "regexp._match is not yet implemented";
}

class T_runeSlice_asInterface {
	@:keep
	public function swap(_i:GoInt, _j:GoInt):Void
		__self__.value.swap(_i, _j);

	@:keep
	public function less(_i:GoInt, _j:GoInt):Bool
		return __self__.value.less(_i, _j);

	@:keep
	public function len():GoInt
		return __self__.value.len();

	public function new(__self__, __type__) {
		this.__self__ = __self__;
		this.__type__ = __type__;
	}

	public function __underlying__()
		return new AnyInterface((__type__.kind() == stdgo.reflect.Reflect.ptr
			&& !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic),
			__type__);

	var __self__:Pointer<T_runeSlice>;
	var __type__:stdgo.internal.reflect.Reflect._Type;
}

@:keep @:allow(stdgo.regexp.Regexp.T_runeSlice_asInterface) class T_runeSlice_static_extension {
	@:keep
	static public function swap(_p:T_runeSlice, _i:GoInt, _j:GoInt):Void
		throw "regexp.swap is not yet implemented";

	@:keep
	static public function less(_p:T_runeSlice, _i:GoInt, _j:GoInt):Bool
		throw "regexp.less is not yet implemented";

	@:keep
	static public function len(_p:T_runeSlice):GoInt
		throw "regexp.len is not yet implemented";
}
