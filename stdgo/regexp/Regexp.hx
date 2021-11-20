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
typedef T_input = StructType & {
    public function _step(_pos:GoInt):{ var _0 : GoRune; var _1 : GoInt; };
    public function _canCheckPrefix():Bool;
    public function _hasPrefix(_re:Pointer<Regexp>):Bool;
    public function _index(_re:Pointer<Regexp>, _pos:GoInt):GoInt;
    public function _context(_pos:GoInt):T_lazyFlag;
};
@:structInit class T_job {
    public var _pc : GoUInt32 = ((0 : GoUInt32));
    public var _arg : Bool = false;
    public var _pos : GoInt = ((0 : GoInt));
    public function new(?_pc:GoUInt32, ?_arg:Bool, ?_pos:GoInt) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(_pc) + " " + Go.string(_arg) + " " + Go.string(_pos) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_job(_pc, _arg, _pos);
    }
    public function __set__(__tmp__) {
        this._pc = __tmp__._pc;
        this._arg = __tmp__._arg;
        this._pos = __tmp__._pos;
        return this;
    }
}
@:structInit class T_bitState {
    public function _push(_re:Pointer<Regexp>, _pc:GoUInt32, _pos:GoInt, _arg:Bool):Void {
        var _b = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_re.value._prog.value.inst[_pc].op.__t__ != regexp.syntax.Syntax.instFail.__t__ && (_arg || _b.value._shouldVisit(_pc, _pos))) {
            _b.value._jobs = _b.value._jobs.__append__((({ _pc : _pc, _arg : _arg, _pos : _pos } : T_job)).__copy__());
        };
    }
    public function _shouldVisit(_pc:GoUInt32, _pos:GoInt):Bool {
        var _b = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _n:GoUInt = (((((_pc : GoInt)) * (_b.value._end + ((1 : GoInt))) + _pos) : GoUInt));
        if (_b.value._visited[_n / _visitedBits] & ((((1 : GoUInt32)) << (_n & (_visitedBits - ((1 : GoUnTypedInt)))))) != ((0 : GoUInt32))) {
            return false;
        };
        _b.value._visited[_n / _visitedBits] = _b.value._visited[_n / _visitedBits] | ((((1 : GoUInt32)) << (_n & (_visitedBits - ((1 : GoUnTypedInt))))));
        return true;
    }
    public function _reset(_prog:Pointer<regexp.syntax.Syntax.Prog>, _end:GoInt, _ncap:GoInt):Void {
        var _b = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        _b.value._end = _end;
        if (_b.value._jobs.cap() == ((0 : GoInt))) {
            _b.value._jobs = new Slice<T_job>(...[for (i in 0 ... ((((0 : GoInt)) : GoInt)).toBasic()) new T_job()]).setCap(((((256 : GoInt)) : GoInt)).toBasic());
        } else {
            _b.value._jobs = _b.value._jobs.__slice__(0, ((0 : GoInt)));
        };
        var _visitedSize:GoInt = (_prog.value.inst.length * (_end + ((1 : GoInt))) + _visitedBits - ((1 : GoInt))) / _visitedBits;
        if (_b.value._visited.cap() < _visitedSize) {
            _b.value._visited = new Slice<GoUInt32>(...[for (i in 0 ... ((_visitedSize : GoInt)).toBasic()) ((0 : GoUInt32))]).setCap(((_maxBacktrackVector / _visitedBits : GoInt)).toBasic());
        } else {
            _b.value._visited = _b.value._visited.__slice__(0, _visitedSize);
            {
                var _i;
                for (_obj in _b.value._visited.keyValueIterator()) {
                    _i = _obj.key;
                    _b.value._visited[_i] = ((0 : GoUInt32));
                };
            };
        };
        if (_b.value._cap.cap() < _ncap) {
            _b.value._cap = new Slice<GoInt>(...[for (i in 0 ... ((_ncap : GoInt)).toBasic()) ((0 : GoInt))]);
        } else {
            _b.value._cap = _b.value._cap.__slice__(0, _ncap);
        };
        {
            var _i;
            for (_obj in _b.value._cap.keyValueIterator()) {
                _i = _obj.key;
                _b.value._cap[_i] = -((1 : GoUnTypedInt));
            };
        };
        if (_b.value._matchcap.cap() < _ncap) {
            _b.value._matchcap = new Slice<GoInt>(...[for (i in 0 ... ((_ncap : GoInt)).toBasic()) ((0 : GoInt))]);
        } else {
            _b.value._matchcap = _b.value._matchcap.__slice__(0, _ncap);
        };
        {
            var _i;
            for (_obj in _b.value._matchcap.keyValueIterator()) {
                _i = _obj.key;
                _b.value._matchcap[_i] = -((1 : GoUnTypedInt));
            };
        };
    }
    public var _end : GoInt = ((0 : GoInt));
    public var _cap : Slice<GoInt> = new Slice<GoInt>().nil();
    public var _matchcap : Slice<GoInt> = new Slice<GoInt>().nil();
    public var _jobs : Slice<T_job> = new Slice<T_job>().nil();
    public var _visited : Slice<GoUInt32> = new Slice<GoUInt32>().nil();
    public var _inputs : T_inputs = new T_inputs();
    public function new(?_end:GoInt, ?_cap:Slice<GoInt>, ?_matchcap:Slice<GoInt>, ?_jobs:Slice<T_job>, ?_visited:Slice<GoUInt32>, ?_inputs:T_inputs) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(_end) + " " + Go.string(_cap) + " " + Go.string(_matchcap) + " " + Go.string(_jobs) + " " + Go.string(_visited) + " " + Go.string(_inputs) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_bitState(_end, _cap, _matchcap, _jobs, _visited, _inputs);
    }
    public function __set__(__tmp__) {
        this._end = __tmp__._end;
        this._cap = __tmp__._cap;
        this._matchcap = __tmp__._matchcap;
        this._jobs = __tmp__._jobs;
        this._visited = __tmp__._visited;
        this._inputs = __tmp__._inputs;
        return this;
    }
}
@:structInit class T_queue {
    public var _sparse : Slice<GoUInt32> = new Slice<GoUInt32>().nil();
    public var _dense : Slice<T_entry> = new Slice<T_entry>().nil();
    public function new(?_sparse:Slice<GoUInt32>, ?_dense:Slice<T_entry>) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(_sparse) + " " + Go.string(_dense) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_queue(_sparse, _dense);
    }
    public function __set__(__tmp__) {
        this._sparse = __tmp__._sparse;
        this._dense = __tmp__._dense;
        return this;
    }
}
@:structInit class T_entry {
    public var _pc : GoUInt32 = ((0 : GoUInt32));
    public var _t : Pointer<T_thread> = new Pointer<T_thread>().nil();
    public function new(?_pc:GoUInt32, ?_t:Pointer<T_thread>) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(_pc) + " " + Go.string(_t) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_entry(_pc, _t);
    }
    public function __set__(__tmp__) {
        this._pc = __tmp__._pc;
        this._t = __tmp__._t;
        return this;
    }
}
@:structInit class T_thread {
    public var _inst : Pointer<regexp.syntax.Syntax.Inst> = new Pointer<regexp.syntax.Syntax.Inst>().nil();
    public var _cap : Slice<GoInt> = new Slice<GoInt>().nil();
    public function new(?_inst:Pointer<regexp.syntax.Syntax.Inst>, ?_cap:Slice<GoInt>) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(_inst) + " " + Go.string(_cap) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_thread(_inst, _cap);
    }
    public function __set__(__tmp__) {
        this._inst = __tmp__._inst;
        this._cap = __tmp__._cap;
        return this;
    }
}
@:structInit class T_machine {
    public function _add(_q:Pointer<T_queue>, _pc:GoUInt32, _pos:GoInt, _cap:Slice<GoInt>, _cond:Pointer<T_lazyFlag>, _t:Pointer<T_thread>):Pointer<T_thread> {
        var _m = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return stdgo.internal.Macro.controlFlow({
            @:label("Again") if (_pc == ((0 : GoUInt32))) {
                return _t;
            };
            {
                var _j:GoUInt32 = _q.value._sparse[_pc];
                if (_j < ((_q.value._dense.length : GoUInt32)) && _q.value._dense[_j]._pc == _pc) {
                    return _t;
                };
            };
            var _j:GoInt = _q.value._dense.length;
            _q.value._dense = _q.value._dense.__slice__(0, _j + ((1 : GoInt)));
            var _d:Pointer<T_entry> = Go.pointer(_q.value._dense[_j]);
            _d.value._t = new Pointer<T_thread>().nil();
            _d.value._pc = _pc;
            _q.value._sparse[_pc] = ((_j : GoUInt32));
            var _i:Pointer<regexp.syntax.Syntax.Inst> = Go.pointer(_m.value._p.value.inst[_pc]);
            if (_i.value.op.__t__ == regexp.syntax.Syntax.instFail.__t__) {} else if (_i.value.op.__t__ == regexp.syntax.Syntax.instAlt.__t__ || _i.value.op.__t__ == regexp.syntax.Syntax.instAltMatch.__t__) {
                _t = _m.value._add(_q, _i.value.out, _pos, _cap, _cond, _t);
                _pc = _i.value.arg;
                @:goto "Again";
            } else if (_i.value.op.__t__ == regexp.syntax.Syntax.instEmptyWidth.__t__) {
                if (_cond.value._match(new regexp.syntax.Syntax.EmptyOp(_i.value.arg))) {
                    _pc = _i.value.out;
                    @:goto "Again";
                };
            } else if (_i.value.op.__t__ == regexp.syntax.Syntax.instNop.__t__) {
                _pc = _i.value.out;
                @:goto "Again";
            } else if (_i.value.op.__t__ == regexp.syntax.Syntax.instCapture.__t__) {
                if (((_i.value.arg : GoInt)) < _cap.length) {
                    var _opos:GoInt = _cap[_i.value.arg];
                    _cap[_i.value.arg] = _pos;
                    _m.value._add(_q, _i.value.out, _pos, _cap, _cond, new Pointer<T_thread>().nil());
                    _cap[_i.value.arg] = _opos;
                } else {
                    _pc = _i.value.out;
                    @:goto "Again";
                };
            } else if (_i.value.op.__t__ == regexp.syntax.Syntax.instMatch.__t__ || _i.value.op.__t__ == regexp.syntax.Syntax.instRune.__t__ || _i.value.op.__t__ == regexp.syntax.Syntax.instRune1.__t__ || _i.value.op.__t__ == regexp.syntax.Syntax.instRuneAny.__t__ || _i.value.op.__t__ == regexp.syntax.Syntax.instRuneAnyNotNL.__t__) {
                if (_t == null || _t.isNil()) {
                    _t = _m.value._alloc(_i);
                } else {
                    _t.value._inst = _i;
                };
                if (_cap.length > ((0 : GoInt)) && Go.pointer(_t.value._cap[((0 : GoInt))]) != Go.pointer(_cap[((0 : GoInt))])) {
                    Go.copy(_t.value._cap, _cap);
                };
                _d.value._t = _t;
                _t = new Pointer<T_thread>().nil();
            };
            return _t;
        });
    }
    public function _step(_runq:Pointer<T_queue>, _nextq:Pointer<T_queue>, _pos:GoInt, _nextPos:GoInt, _c:GoRune, _nextCond:Pointer<T_lazyFlag>):Void {
        var _m = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _longest:Bool = _m.value._re.value._longest;
        {
            var _j:GoInt = ((0 : GoInt));
            Go.cfor(_j < _runq.value._dense.length, _j++, {
                var _d:Pointer<T_entry> = Go.pointer(_runq.value._dense[_j]);
                var _t:Pointer<T_thread> = _d.value._t;
                if (_t == null || _t.isNil()) {
                    continue;
                };
                if (_longest && _m.value._matched && _t.value._cap.length > ((0 : GoInt)) && _m.value._matchcap[((0 : GoInt))] < _t.value._cap[((0 : GoInt))]) {
                    _m.value._pool = _m.value._pool.__append__(_t);
                    continue;
                };
                var _i:Pointer<regexp.syntax.Syntax.Inst> = _t.value._inst;
                var _add:Bool = false;
                if (_i.value.op.__t__ == regexp.syntax.Syntax.instMatch.__t__) {
                    if (_t.value._cap.length > ((0 : GoInt)) && (!_longest || !_m.value._matched || _m.value._matchcap[((1 : GoInt))] < _pos)) {
                        _t.value._cap[((1 : GoInt))] = _pos;
                        Go.copy(_m.value._matchcap, _t.value._cap);
                    };
                    if (!_longest) {
                        for (_d in _runq.value._dense.__slice__(_j + ((1 : GoInt)))) {
                            if (_d._t != null && !_d._t.isNil()) {
                                _m.value._pool = _m.value._pool.__append__(_d._t);
                            };
                        };
                        _runq.value._dense = _runq.value._dense.__slice__(0, ((0 : GoInt)));
                    };
                    _m.value._matched = true;
                } else if (_i.value.op.__t__ == regexp.syntax.Syntax.instRune.__t__) {
                    _add = _i.value.matchRune(_c);
                } else if (_i.value.op.__t__ == regexp.syntax.Syntax.instRune1.__t__) {
                    _add = _c == _i.value.rune[((0 : GoInt))];
                } else if (_i.value.op.__t__ == regexp.syntax.Syntax.instRuneAny.__t__) {
                    _add = true;
                } else if (_i.value.op.__t__ == regexp.syntax.Syntax.instRuneAnyNotNL.__t__) {
                    _add = _c != (("\n".code : GoRune));
                };
                if (_add) {
                    _t = _m.value._add(_nextq, _i.value.out, _nextPos, _t.value._cap, _nextCond, _t);
                };
                if (_t != null && !_t.isNil()) {
                    _m.value._pool = _m.value._pool.__append__(_t);
                };
            });
        };
        _runq.value._dense = _runq.value._dense.__slice__(0, ((0 : GoInt)));
    }
    public function _clear(_q:Pointer<T_queue>):Void {
        var _m = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        for (_d in _q.value._dense) {
            if (_d._t != null && !_d._t.isNil()) {
                _m.value._pool = _m.value._pool.__append__(_d._t);
            };
        };
        _q.value._dense = _q.value._dense.__slice__(0, ((0 : GoInt)));
    }
    public function _match(_i:T_input, _pos:GoInt):Bool {
        var _m = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _startCond:regexp.syntax.Syntax.EmptyOp = _m.value._re.value._cond;
        if (_startCond.__t__ == -1 ^ new regexp.syntax.Syntax.EmptyOp(((0 : GoUInt8))).__t__.__t__) {
            return false;
        };
        _m.value._matched = false;
        {
            var _i;
            for (_obj in _m.value._matchcap.keyValueIterator()) {
                _i = _obj.key;
                _m.value._matchcap[_i] = -((1 : GoUnTypedInt));
            };
        };
        var _runq:Pointer<T_queue> = Go.pointer(_m.value._q0), _nextq:Pointer<T_queue> = Go.pointer(_m.value._q1);
        var _r:GoInt32 = _endOfText, _r1:GoInt32 = _endOfText;
        var _width:GoInt = ((0 : GoInt)), _width1:GoInt = ((0 : GoInt));
        {
            var __tmp__ = _i._step(_pos);
            _r = __tmp__._0;
            _width = __tmp__._1;
        };
        if (_r != _endOfText) {
            {
                var __tmp__ = _i._step(_pos + _width);
                _r1 = __tmp__._0;
                _width1 = __tmp__._1;
            };
        };
        var _flag:T_lazyFlag = new T_lazyFlag();
        if (_pos == ((0 : GoInt))) {
            _flag = _newLazyFlag(-((1 : GoUnTypedInt)), _r);
        } else {
            _flag = _i._context(_pos);
        };
        while (true) {
            if (_runq.value._dense.length == ((0 : GoInt))) {
                if (new regexp.syntax.Syntax.EmptyOp(_startCond.__t__ & regexp.syntax.Syntax.emptyBeginText.__t__).__t__ != ((0 : GoUInt8)) && _pos != ((0 : GoInt))) {
                    break;
                };
                if (_m.value._matched) {
                    break;
                };
                if (_m.value._re.value._prefix.length > ((0 : GoInt)) && _r1 != _m.value._re.value._prefixRune && _i._canCheckPrefix()) {
                    var _advance:GoInt = _i._index(_m.value._re, _pos);
                    if (_advance < ((0 : GoInt))) {
                        break;
                    };
                    _pos = _pos + (_advance);
                    {
                        var __tmp__ = _i._step(_pos);
                        _r = __tmp__._0;
                        _width = __tmp__._1;
                    };
                    {
                        var __tmp__ = _i._step(_pos + _width);
                        _r1 = __tmp__._0;
                        _width1 = __tmp__._1;
                    };
                };
            };
            if (!_m.value._matched) {
                if (_m.value._matchcap.length > ((0 : GoInt))) {
                    _m.value._matchcap[((0 : GoInt))] = _pos;
                };
                _m.value._add(_runq, ((_m.value._p.value.start : GoUInt32)), _pos, _m.value._matchcap, Go.pointer(_flag), new Pointer<T_thread>().nil());
            };
            _flag = _newLazyFlag(_r, _r1);
            _m.value._step(_runq, _nextq, _pos, _pos + _width, _r, Go.pointer(_flag));
            if (_width == ((0 : GoInt))) {
                break;
            };
            if (_m.value._matchcap.length == ((0 : GoInt)) && _m.value._matched) {
                break;
            };
            _pos = _pos + (_width);
            {
                final __tmp__0 = _r1;
                final __tmp__1 = _width1;
                _r = __tmp__0;
                _width = __tmp__1;
            };
            if (_r != _endOfText) {
                {
                    var __tmp__ = _i._step(_pos + _width);
                    _r1 = __tmp__._0;
                    _width1 = __tmp__._1;
                };
            };
            {
                final __tmp__0 = _nextq;
                final __tmp__1 = _runq;
                _runq = __tmp__0;
                _nextq = __tmp__1;
            };
        };
        _m.value._clear(_nextq);
        return _m.value._matched;
    }
    public function _alloc(_i:Pointer<regexp.syntax.Syntax.Inst>):Pointer<T_thread> {
        var _m = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _t:Pointer<T_thread> = new Pointer<T_thread>().nil();
        {
            var _n:GoInt = _m.value._pool.length;
            if (_n > ((0 : GoInt))) {
                _t = _m.value._pool[_n - ((1 : GoInt))];
                _m.value._pool = _m.value._pool.__slice__(0, _n - ((1 : GoInt)));
            } else {
                _t = Go.pointer(new T_thread());
                _t.value._cap = new Slice<GoInt>(...[for (i in 0 ... ((_m.value._matchcap.length : GoInt)).toBasic()) ((0 : GoInt))]).setCap(((_m.value._matchcap.cap() : GoInt)).toBasic());
            };
        };
        _t.value._inst = _i;
        return _t;
    }
    public function _init(_ncap:GoInt):Void {
        var _m = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        for (_t in _m.value._pool) {
            _t.value._cap = _t.value._cap.__slice__(0, _ncap);
        };
        _m.value._matchcap = _m.value._matchcap.__slice__(0, _ncap);
    }
    public var _re : Pointer<Regexp> = new Pointer<Regexp>().nil();
    public var _p : Pointer<regexp.syntax.Syntax.Prog> = new Pointer<regexp.syntax.Syntax.Prog>().nil();
    public var _q0 : T_queue = new T_queue();
    public var _q1 : T_queue = new T_queue();
    public var _pool : Slice<Pointer<T_thread>> = new Slice<Pointer<T_thread>>().nil();
    public var _matched : Bool = false;
    public var _matchcap : Slice<GoInt> = new Slice<GoInt>().nil();
    public var _inputs : T_inputs = new T_inputs();
    public function new(?_re:Pointer<Regexp>, ?_p:Pointer<regexp.syntax.Syntax.Prog>, ?_q0:T_queue, ?_q1:T_queue, ?_pool:Slice<Pointer<T_thread>>, ?_matched:Bool, ?_matchcap:Slice<GoInt>, ?_inputs:T_inputs) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(_re) + " " + Go.string(_p) + " " + Go.string(_q0) + " " + Go.string(_q1) + " " + Go.string(_pool) + " " + Go.string(_matched) + " " + Go.string(_matchcap) + " " + Go.string(_inputs) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_machine(_re, _p, _q0, _q1, _pool, _matched, _matchcap, _inputs);
    }
    public function __set__(__tmp__) {
        this._re = __tmp__._re;
        this._p = __tmp__._p;
        this._q0 = __tmp__._q0;
        this._q1 = __tmp__._q1;
        this._pool = __tmp__._pool;
        this._matched = __tmp__._matched;
        this._matchcap = __tmp__._matchcap;
        this._inputs = __tmp__._inputs;
        return this;
    }
}
@:structInit class T_inputs {
    public function _init(_r:stdgo.io.Io.RuneReader, _b:Slice<GoByte>, _s:GoString):{ var _0 : T_input; var _1 : GoInt; } {
        var _i = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_r != null) {
            return { _0 : _i.value._newReader(_r), _1 : ((0 : GoInt)) };
        };
        if (_b != null && !_b.isNil()) {
            return { _0 : _i.value._newBytes(_b), _1 : _b.length };
        };
        return { _0 : _i.value._newString(_s), _1 : _s.length };
    }
    public function _clear():Void {
        var _i = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_i.value._bytes._str != null && !_i.value._bytes._str.isNil()) {
            _i.value._bytes._str = new Slice<GoUInt8>().nil();
        } else if (_i.value._reader._r != null) {
            _i.value._reader._r = ((null : stdgo.io.Io.RuneReader));
        } else {
            _i.value._string._str = "";
        };
    }
    public function _newReader(_r:stdgo.io.Io.RuneReader):T_input {
        var _i = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        _i.value._reader._r = _r;
        _i.value._reader._atEOT = false;
        _i.value._reader._pos = ((0 : GoInt));
        return Go.pointer(_i.value._reader).value;
    }
    public function _newString(_s:GoString):T_input {
        var _i = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        _i.value._string._str = _s;
        return Go.pointer(_i.value._string).value;
    }
    public function _newBytes(_b:Slice<GoByte>):T_input {
        var _i = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        _i.value._bytes._str = _b;
        return Go.pointer(_i.value._bytes).value;
    }
    public var _bytes : T_inputBytes = new T_inputBytes();
    public var _string : T_inputString = new T_inputString();
    public var _reader : T_inputReader = new T_inputReader();
    public function new(?_bytes:T_inputBytes, ?_string:T_inputString, ?_reader:T_inputReader) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(_bytes) + " " + Go.string(_string) + " " + Go.string(_reader) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_inputs(_bytes, _string, _reader);
    }
    public function __set__(__tmp__) {
        this._bytes = __tmp__._bytes;
        this._string = __tmp__._string;
        this._reader = __tmp__._reader;
        return this;
    }
}
@:named class T_lazyFlag {
    public function _match(_op:regexp.syntax.Syntax.EmptyOp):Bool {
        var _f = this.__copy__();
        if (_op.__t__ == ((0 : GoUInt8))) {
            return true;
        };
        var _r1:GoInt32 = (new T_lazyFlag(_f.__t__ >> ((32 : GoUnTypedInt)))).__t__;
        if (new regexp.syntax.Syntax.EmptyOp(_op.__t__ & regexp.syntax.Syntax.emptyBeginLine.__t__).__t__ != ((0 : GoUInt8))) {
            if (_r1 != (("\n".code : GoRune)) && _r1 >= ((0 : GoInt32))) {
                return false;
            };
            _op = new regexp.syntax.Syntax.EmptyOp((new regexp.syntax.Syntax.EmptyOp(_op.__t__ & (regexp.syntax.Syntax.emptyBeginLine).__t__)).__t__ ^ ((-1 : GoUnTypedInt)));
        };
        if (new regexp.syntax.Syntax.EmptyOp(_op.__t__ & regexp.syntax.Syntax.emptyBeginText.__t__).__t__ != ((0 : GoUInt8))) {
            if (_r1 >= ((0 : GoInt32))) {
                return false;
            };
            _op = new regexp.syntax.Syntax.EmptyOp((new regexp.syntax.Syntax.EmptyOp(_op.__t__ & (regexp.syntax.Syntax.emptyBeginText).__t__)).__t__ ^ ((-1 : GoUnTypedInt)));
        };
        if (_op.__t__ == ((0 : GoUInt8))) {
            return true;
        };
        var _r2:GoInt32 = _f.__t__;
        if (new regexp.syntax.Syntax.EmptyOp(_op.__t__ & regexp.syntax.Syntax.emptyEndLine.__t__).__t__ != ((0 : GoUInt8))) {
            if (_r2 != (("\n".code : GoRune)) && _r2 >= ((0 : GoInt32))) {
                return false;
            };
            _op = new regexp.syntax.Syntax.EmptyOp((new regexp.syntax.Syntax.EmptyOp(_op.__t__ & (regexp.syntax.Syntax.emptyEndLine).__t__)).__t__ ^ ((-1 : GoUnTypedInt)));
        };
        if (new regexp.syntax.Syntax.EmptyOp(_op.__t__ & regexp.syntax.Syntax.emptyEndText.__t__).__t__ != ((0 : GoUInt8))) {
            if (_r2 >= ((0 : GoInt32))) {
                return false;
            };
            _op = new regexp.syntax.Syntax.EmptyOp((new regexp.syntax.Syntax.EmptyOp(_op.__t__ & (regexp.syntax.Syntax.emptyEndText).__t__)).__t__ ^ ((-1 : GoUnTypedInt)));
        };
        if (_op.__t__ == ((0 : GoUInt8))) {
            return true;
        };
        if (regexp.syntax.Syntax.isWordChar(_r1) != regexp.syntax.Syntax.isWordChar(_r2)) {
            _op = new regexp.syntax.Syntax.EmptyOp((new regexp.syntax.Syntax.EmptyOp(_op.__t__ & (regexp.syntax.Syntax.emptyWordBoundary).__t__)).__t__ ^ ((-1 : GoUnTypedInt)));
        } else {
            _op = new regexp.syntax.Syntax.EmptyOp((new regexp.syntax.Syntax.EmptyOp(_op.__t__ & (regexp.syntax.Syntax.emptyNoWordBoundary).__t__)).__t__ ^ ((-1 : GoUnTypedInt)));
        };
        return _op.__t__ == ((0 : GoUInt8));
    }
    public var __t__ : GoUInt64;
    public function new(?t:GoUInt64) {
        __t__ = t == null ? 0 : t;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    @:implicit
    public function toString():GoString return Go.string(__t__);
    public function __copy__() return new T_lazyFlag(__t__);
}
@:structInit class T_onePassMachine {
    public var _inputs : T_inputs = new T_inputs();
    public var _matchcap : Slice<GoInt> = new Slice<GoInt>().nil();
    public function new(?_inputs:T_inputs, ?_matchcap:Slice<GoInt>) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(_inputs) + " " + Go.string(_matchcap) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_onePassMachine(_inputs, _matchcap);
    }
    public function __set__(__tmp__) {
        this._inputs = __tmp__._inputs;
        this._matchcap = __tmp__._matchcap;
        return this;
    }
}
@:structInit class T_onePassProg {
    public var inst : Slice<T_onePassInst> = new Slice<T_onePassInst>().nil();
    public var start : GoInt = ((0 : GoInt));
    public var numCap : GoInt = ((0 : GoInt));
    public function new(?inst:Slice<T_onePassInst>, ?start:GoInt, ?numCap:GoInt) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(inst) + " " + Go.string(start) + " " + Go.string(numCap) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_onePassProg(inst, start, numCap);
    }
    public function __set__(__tmp__) {
        this.inst = __tmp__.inst;
        this.start = __tmp__.start;
        this.numCap = __tmp__.numCap;
        return this;
    }
}
@:structInit class T_onePassInst {
    @:embedded
    public var inst : regexp.syntax.Syntax.Inst = new regexp.syntax.Syntax.Inst();
    public var next : Slice<GoUInt32> = new Slice<GoUInt32>().nil();
    public function new(?inst:regexp.syntax.Syntax.Inst, ?next:Slice<GoUInt32>) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(inst) + " " + Go.string(next) + "}";
    }
    public function matchEmptyWidth(_before:GoInt32, _after:GoInt32):Bool return inst.matchEmptyWidth(_0, _1);
    public function matchRune(_r:GoInt32):Bool return inst.matchRune(_0);
    public function matchRunePos(_r:GoInt32):GoInt return inst.matchRunePos(_0);
    public function toString():GoString return inst.toString();
    public function _op():regexp.syntax.Syntax.InstOp return inst._op();
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_onePassInst(inst, next);
    }
    public function __set__(__tmp__) {
        this.inst = __tmp__.inst;
        this.next = __tmp__.next;
        return this;
    }
}
@:structInit class T_queueOnePass {
    public function _insertNew(_u:GoUInt32):Void {
        var _q = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_u >= ((_q.value._sparse.length : GoUInt32))) {
            return;
        };
        _q.value._sparse[_u] = _q.value._size;
        _q.value._dense[_q.value._size] = _u;
        _q.value._size++;
    }
    public function _insert(_u:GoUInt32):Void {
        var _q = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (!_q.value._contains(_u)) {
            _q.value._insertNew(_u);
        };
    }
    public function _contains(_u:GoUInt32):Bool {
        var _q = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_u >= ((_q.value._sparse.length : GoUInt32))) {
            return false;
        };
        return _q.value._sparse[_u] < _q.value._size && _q.value._dense[_q.value._sparse[_u]] == _u;
    }
    public function _clear():Void {
        var _q = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        _q.value._size = ((0 : GoUInt32));
        _q.value._nextIndex = ((0 : GoUInt32));
    }
    public function _next():GoUInt32 {
        var _q = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _n:GoUInt32 = ((0 : GoUInt32));
        _n = _q.value._dense[_q.value._nextIndex];
        _q.value._nextIndex++;
        return _n;
    }
    public function _empty():Bool {
        var _q = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return _q.value._nextIndex >= _q.value._size;
    }
    public var _sparse : Slice<GoUInt32> = new Slice<GoUInt32>().nil();
    public var _dense : Slice<GoUInt32> = new Slice<GoUInt32>().nil();
    public var _size : GoUInt32 = ((0 : GoUInt32));
    public var _nextIndex : GoUInt32 = ((0 : GoUInt32));
    public function new(?_sparse:Slice<GoUInt32>, ?_dense:Slice<GoUInt32>, ?_size:GoUInt32, ?_nextIndex:GoUInt32) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(_sparse) + " " + Go.string(_dense) + " " + Go.string(_size) + " " + Go.string(_nextIndex) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_queueOnePass(_sparse, _dense, _size, _nextIndex);
    }
    public function __set__(__tmp__) {
        this._sparse = __tmp__._sparse;
        this._dense = __tmp__._dense;
        this._size = __tmp__._size;
        this._nextIndex = __tmp__._nextIndex;
        return this;
    }
}
@:named class T_runeSlice {
    public function swap(_i:GoInt, _j:GoInt):Void {
        var _p = this.__copy__();
        {
            final __tmp__0 = _p.__t__[_j];
            final __tmp__1 = _p.__t__[_i];
            _p.__t__[_i] = __tmp__0;
            _p.__t__[_j] = __tmp__1;
        };
    }
    public function less(_i:GoInt, _j:GoInt):Bool {
        var _p = this.__copy__();
        return _p.__t__[_i] < _p.__t__[_j];
    }
    public function len():GoInt {
        var _p = this.__copy__();
        return _p.__t__.length;
    }
    public var __t__ : Slice<GoInt32>;
    public function new(?t:Slice<GoInt32>) {
        __t__ = t == null ? new Slice<GoInt32>().nil() : t;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    @:implicit
    public function toString():GoString return Go.string(__t__);
    public function __copy__() return new T_runeSlice(__t__);
    public function __append__(args:haxe.Rest<GoInt32>) return new T_runeSlice(this.__t__.__append__(...args));
    public function __slice__(low:GoInt, high:GoInt = -1) return new T_runeSlice(this.__t__.__slice__(low, high));
}
@:structInit class Regexp {
    public function split(_s:GoString, _n:GoInt):Slice<GoString> {
        var _re = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_n == ((0 : GoInt))) {
            return new Slice<GoString>().nil();
        };
        if (_re.value._expr.length > ((0 : GoInt)) && _s.length == ((0 : GoInt))) {
            return new Slice<GoString>("");
        };
        var _matches:Slice<Slice<GoInt>> = _re.value.findAllStringIndex(_s, _n);
        var _strings:Slice<GoString> = new Slice<GoString>(...[for (i in 0 ... ((((0 : GoInt)) : GoInt)).toBasic()) (("" : GoString))]).setCap(((_matches.length : GoInt)).toBasic());
        var _beg:GoInt = ((0 : GoInt));
        var _end:GoInt = ((0 : GoInt));
        for (_match in _matches) {
            if (_n > ((0 : GoInt)) && _strings.length >= _n - ((1 : GoInt))) {
                break;
            };
            _end = _match[((0 : GoInt))];
            if (_match[((1 : GoInt))] != ((0 : GoInt))) {
                _strings = _strings.__append__(_s.__slice__(_beg, _end));
            };
            _beg = _match[((1 : GoInt))];
        };
        if (_end != _s.length) {
            _strings = _strings.__append__(_s.__slice__(_beg));
        };
        return _strings;
    }
    public function findAllStringSubmatchIndex(_s:GoString, _n:GoInt):Slice<Slice<GoInt>> {
        var _re = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_n < ((0 : GoInt))) {
            _n = _s.length + ((1 : GoInt));
        };
        var _result:Slice<Slice<GoInt>> = new Slice<Slice<GoInt>>().nil();
        _re.value._allMatches(_s, new Slice<GoUInt8>().nil(), _n, function(_match:Slice<GoInt>):Void {
            if (_result == null || _result.isNil()) {
                _result = new Slice<Slice<GoInt>>(...[for (i in 0 ... ((((0 : GoInt)) : GoInt)).toBasic()) new Slice<GoInt>().nil()]).setCap(((_startSize : GoInt)).toBasic());
            };
            _result = _result.__append__(_match);
        });
        return _result;
    }
    public function findAllStringSubmatch(_s:GoString, _n:GoInt):Slice<Slice<GoString>> {
        var _re = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_n < ((0 : GoInt))) {
            _n = _s.length + ((1 : GoInt));
        };
        var _result:Slice<Slice<GoString>> = new Slice<Slice<GoString>>().nil();
        _re.value._allMatches(_s, new Slice<GoUInt8>().nil(), _n, function(_match:Slice<GoInt>):Void {
            if (_result == null || _result.isNil()) {
                _result = new Slice<Slice<GoString>>(...[for (i in 0 ... ((((0 : GoInt)) : GoInt)).toBasic()) new Slice<GoString>().nil()]).setCap(((_startSize : GoInt)).toBasic());
            };
            var _slice:Slice<GoString> = new Slice<GoString>(...[for (i in 0 ... ((_match.length / ((2 : GoInt)) : GoInt)).toBasic()) (("" : GoString))]);
            {
                var _j;
                for (_obj in _slice.keyValueIterator()) {
                    _j = _obj.key;
                    if (_match[((2 : GoInt)) * _j] >= ((0 : GoInt))) {
                        _slice[_j] = _s.__slice__(_match[((2 : GoInt)) * _j], _match[((2 : GoInt)) * _j + ((1 : GoInt))]);
                    };
                };
            };
            _result = _result.__append__(_slice);
        });
        return _result;
    }
    public function findAllSubmatchIndex(_b:Slice<GoByte>, _n:GoInt):Slice<Slice<GoInt>> {
        var _re = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_n < ((0 : GoInt))) {
            _n = _b.length + ((1 : GoInt));
        };
        var _result:Slice<Slice<GoInt>> = new Slice<Slice<GoInt>>().nil();
        _re.value._allMatches("", _b, _n, function(_match:Slice<GoInt>):Void {
            if (_result == null || _result.isNil()) {
                _result = new Slice<Slice<GoInt>>(...[for (i in 0 ... ((((0 : GoInt)) : GoInt)).toBasic()) new Slice<GoInt>().nil()]).setCap(((_startSize : GoInt)).toBasic());
            };
            _result = _result.__append__(_match);
        });
        return _result;
    }
    public function findAllSubmatch(_b:Slice<GoByte>, _n:GoInt):Slice<Slice<Slice<GoByte>>> {
        var _re = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_n < ((0 : GoInt))) {
            _n = _b.length + ((1 : GoInt));
        };
        var _result:Slice<Slice<Slice<GoByte>>> = new Slice<Slice<Slice<GoUInt8>>>().nil();
        _re.value._allMatches("", _b, _n, function(_match:Slice<GoInt>):Void {
            if (_result == null || _result.isNil()) {
                _result = new Slice<Slice<Slice<GoUInt8>>>(...[for (i in 0 ... ((((0 : GoInt)) : GoInt)).toBasic()) new Slice<Slice<GoUInt8>>().nil()]).setCap(((_startSize : GoInt)).toBasic());
            };
            var _slice:Slice<Slice<GoUInt8>> = new Slice<Slice<GoUInt8>>(...[for (i in 0 ... ((_match.length / ((2 : GoInt)) : GoInt)).toBasic()) new Slice<GoUInt8>().nil()]);
            {
                var _j;
                for (_obj in _slice.keyValueIterator()) {
                    _j = _obj.key;
                    if (_match[((2 : GoInt)) * _j] >= ((0 : GoInt))) {
                        _slice[_j] = _b.__slice__(_match[((2 : GoInt)) * _j], _match[((2 : GoInt)) * _j + ((1 : GoInt))]).setCap(((_match[((2 : GoInt)) * _j + ((1 : GoInt))] : GoInt)) - ((1 : GoInt)));
                    };
                };
            };
            _result = _result.__append__(_slice);
        });
        return _result;
    }
    public function findAllStringIndex(_s:GoString, _n:GoInt):Slice<Slice<GoInt>> {
        var _re = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_n < ((0 : GoInt))) {
            _n = _s.length + ((1 : GoInt));
        };
        var _result:Slice<Slice<GoInt>> = new Slice<Slice<GoInt>>().nil();
        _re.value._allMatches(_s, new Slice<GoUInt8>().nil(), _n, function(_match:Slice<GoInt>):Void {
            if (_result == null || _result.isNil()) {
                _result = new Slice<Slice<GoInt>>(...[for (i in 0 ... ((((0 : GoInt)) : GoInt)).toBasic()) new Slice<GoInt>().nil()]).setCap(((_startSize : GoInt)).toBasic());
            };
            _result = _result.__append__(_match.__slice__(((0 : GoInt)), ((2 : GoInt))));
        });
        return _result;
    }
    public function findAllString(_s:GoString, _n:GoInt):Slice<GoString> {
        var _re = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_n < ((0 : GoInt))) {
            _n = _s.length + ((1 : GoInt));
        };
        var _result:Slice<GoString> = new Slice<GoString>().nil();
        _re.value._allMatches(_s, new Slice<GoUInt8>().nil(), _n, function(_match:Slice<GoInt>):Void {
            if (_result == null || _result.isNil()) {
                _result = new Slice<GoString>(...[for (i in 0 ... ((((0 : GoInt)) : GoInt)).toBasic()) (("" : GoString))]).setCap(((_startSize : GoInt)).toBasic());
            };
            _result = _result.__append__(_s.__slice__(_match[((0 : GoInt))], _match[((1 : GoInt))]));
        });
        return _result;
    }
    public function findAllIndex(_b:Slice<GoByte>, _n:GoInt):Slice<Slice<GoInt>> {
        var _re = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_n < ((0 : GoInt))) {
            _n = _b.length + ((1 : GoInt));
        };
        var _result:Slice<Slice<GoInt>> = new Slice<Slice<GoInt>>().nil();
        _re.value._allMatches("", _b, _n, function(_match:Slice<GoInt>):Void {
            if (_result == null || _result.isNil()) {
                _result = new Slice<Slice<GoInt>>(...[for (i in 0 ... ((((0 : GoInt)) : GoInt)).toBasic()) new Slice<GoInt>().nil()]).setCap(((_startSize : GoInt)).toBasic());
            };
            _result = _result.__append__(_match.__slice__(((0 : GoInt)), ((2 : GoInt))));
        });
        return _result;
    }
    public function findAll(_b:Slice<GoByte>, _n:GoInt):Slice<Slice<GoByte>> {
        var _re = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_n < ((0 : GoInt))) {
            _n = _b.length + ((1 : GoInt));
        };
        var _result:Slice<Slice<GoByte>> = new Slice<Slice<GoUInt8>>().nil();
        _re.value._allMatches("", _b, _n, function(_match:Slice<GoInt>):Void {
            if (_result == null || _result.isNil()) {
                _result = new Slice<Slice<GoUInt8>>(...[for (i in 0 ... ((((0 : GoInt)) : GoInt)).toBasic()) new Slice<GoUInt8>().nil()]).setCap(((_startSize : GoInt)).toBasic());
            };
            _result = _result.__append__(_b.__slice__(_match[((0 : GoInt))], _match[((1 : GoInt))]).setCap(((_match[((1 : GoInt))] : GoInt)) - ((1 : GoInt))));
        });
        return _result;
    }
    public function findReaderSubmatchIndex(_r:stdgo.io.Io.RuneReader):Slice<GoInt> {
        var _re = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return _re.value._pad(_re.value._doExecute(_r, new Slice<GoUInt8>().nil(), "", ((0 : GoInt)), _re.value._prog.value.numCap, new Slice<GoInt>().nil()));
    }
    public function findStringSubmatchIndex(_s:GoString):Slice<GoInt> {
        var _re = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return _re.value._pad(_re.value._doExecute(((null : stdgo.io.Io.RuneReader)), new Slice<GoUInt8>().nil(), _s, ((0 : GoInt)), _re.value._prog.value.numCap, new Slice<GoInt>().nil()));
    }
    public function findStringSubmatch(_s:GoString):Slice<GoString> {
        var _re = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _dstCap:GoArray<GoInt> = new GoArray<GoInt>(...[for (i in 0 ... 4) ((0 : GoInt))]);
        var _a:Slice<GoInt> = _re.value._doExecute(((null : stdgo.io.Io.RuneReader)), new Slice<GoUInt8>().nil(), _s, ((0 : GoInt)), _re.value._prog.value.numCap, _dstCap.__slice__(0, ((0 : GoInt))));
        if (_a == null || _a.isNil()) {
            return new Slice<GoString>().nil();
        };
        var _ret:Slice<GoString> = new Slice<GoString>(...[for (i in 0 ... ((((1 : GoInt)) + _re.value._numSubexp : GoInt)).toBasic()) (("" : GoString))]);
        {
            var _i;
            for (_obj in _ret.keyValueIterator()) {
                _i = _obj.key;
                if (((2 : GoInt)) * _i < _a.length && _a[((2 : GoInt)) * _i] >= ((0 : GoInt))) {
                    _ret[_i] = _s.__slice__(_a[((2 : GoInt)) * _i], _a[((2 : GoInt)) * _i + ((1 : GoInt))]);
                };
            };
        };
        return _ret;
    }
    public function findSubmatchIndex(_b:Slice<GoByte>):Slice<GoInt> {
        var _re = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return _re.value._pad(_re.value._doExecute(((null : stdgo.io.Io.RuneReader)), _b, "", ((0 : GoInt)), _re.value._prog.value.numCap, new Slice<GoInt>().nil()));
    }
    public function _expand(_dst:Slice<GoByte>, _template:GoString, _bsrc:Slice<GoByte>, _src:GoString, _match:Slice<GoInt>):Slice<GoByte> {
        var _re = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        while (_template.length > ((0 : GoInt))) {
            var _i:GoInt = stdgo.strings.Strings.index(_template, "$");
            if (_i < ((0 : GoInt))) {
                break;
            };
            _dst = _dst.__append__(..._template.__slice__(0, _i).toArray());
            _template = _template.__slice__(_i);
            if (_template.length > ((1 : GoInt)) && _template[((1 : GoInt))] == (("$".code : GoRune))) {
                _dst = _dst.__append__((("$".code : GoRune)));
                _template = _template.__slice__(((2 : GoInt)));
                continue;
            };
            var __tmp__ = _extract(_template), _name:GoString = __tmp__._0, _num:GoInt = __tmp__._1, _rest:GoString = __tmp__._2, _ok:Bool = __tmp__._3;
            if (!_ok) {
                _dst = _dst.__append__((("$".code : GoRune)));
                _template = _template.__slice__(((1 : GoInt)));
                continue;
            };
            _template = _rest;
            if (_num >= ((0 : GoInt))) {
                if (((2 : GoInt)) * _num + ((1 : GoInt)) < _match.length && _match[((2 : GoInt)) * _num] >= ((0 : GoInt))) {
                    if (_bsrc != null && !_bsrc.isNil()) {
                        _dst = _dst.__append__(..._bsrc.__slice__(_match[((2 : GoInt)) * _num], _match[((2 : GoInt)) * _num + ((1 : GoInt))]).toArray());
                    } else {
                        _dst = _dst.__append__(..._src.__slice__(_match[((2 : GoInt)) * _num], _match[((2 : GoInt)) * _num + ((1 : GoInt))]).toArray());
                    };
                };
            } else {
                {
                    var _i;
                    var _namei;
                    for (_obj in _re.value._subexpNames.keyValueIterator()) {
                        _i = _obj.key;
                        _namei = _obj.value;
                        if (_name == _namei && ((2 : GoInt)) * _i + ((1 : GoInt)) < _match.length && _match[((2 : GoInt)) * _i] >= ((0 : GoInt))) {
                            if (_bsrc != null && !_bsrc.isNil()) {
                                _dst = _dst.__append__(..._bsrc.__slice__(_match[((2 : GoInt)) * _i], _match[((2 : GoInt)) * _i + ((1 : GoInt))]).toArray());
                            } else {
                                _dst = _dst.__append__(..._src.__slice__(_match[((2 : GoInt)) * _i], _match[((2 : GoInt)) * _i + ((1 : GoInt))]).toArray());
                            };
                            break;
                        };
                    };
                };
            };
        };
        _dst = _dst.__append__(..._template.toArray());
        return _dst;
    }
    public function expandString(_dst:Slice<GoByte>, _template:GoString, _src:GoString, _match:Slice<GoInt>):Slice<GoByte> {
        var _re = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return _re.value._expand(_dst, _template, new Slice<GoUInt8>().nil(), _src, _match);
    }
    public function expand(_dst:Slice<GoByte>, _template:Slice<GoByte>, _src:Slice<GoByte>, _match:Slice<GoInt>):Slice<GoByte> {
        var _re = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return _re.value._expand(_dst, ((_template : GoString)), _src, "", _match);
    }
    public function findSubmatch(_b:Slice<GoByte>):Slice<Slice<GoByte>> {
        var _re = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _dstCap:GoArray<GoInt> = new GoArray<GoInt>(...[for (i in 0 ... 4) ((0 : GoInt))]);
        var _a:Slice<GoInt> = _re.value._doExecute(((null : stdgo.io.Io.RuneReader)), _b, "", ((0 : GoInt)), _re.value._prog.value.numCap, _dstCap.__slice__(0, ((0 : GoInt))));
        if (_a == null || _a.isNil()) {
            return new Slice<Slice<GoUInt8>>().nil();
        };
        var _ret:Slice<Slice<GoUInt8>> = new Slice<Slice<GoUInt8>>(...[for (i in 0 ... ((((1 : GoInt)) + _re.value._numSubexp : GoInt)).toBasic()) new Slice<GoUInt8>().nil()]);
        {
            var _i;
            for (_obj in _ret.keyValueIterator()) {
                _i = _obj.key;
                if (((2 : GoInt)) * _i < _a.length && _a[((2 : GoInt)) * _i] >= ((0 : GoInt))) {
                    _ret[_i] = _b.__slice__(_a[((2 : GoInt)) * _i], _a[((2 : GoInt)) * _i + ((1 : GoInt))]).setCap(((_a[((2 : GoInt)) * _i + ((1 : GoInt))] : GoInt)) - ((1 : GoInt)));
                };
            };
        };
        return _ret;
    }
    public function findReaderIndex(_r:stdgo.io.Io.RuneReader):Slice<GoInt> {
        var _re = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _loc:Slice<GoInt> = new Slice<GoInt>().nil();
        var _a:Slice<GoInt> = _re.value._doExecute(_r, new Slice<GoUInt8>().nil(), "", ((0 : GoInt)), ((2 : GoInt)), new Slice<GoInt>().nil());
        if (_a == null || _a.isNil()) {
            return new Slice<GoInt>().nil();
        };
        return _a.__slice__(((0 : GoInt)), ((2 : GoInt)));
    }
    public function findStringIndex(_s:GoString):Slice<GoInt> {
        var _re = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _loc:Slice<GoInt> = new Slice<GoInt>().nil();
        var _a:Slice<GoInt> = _re.value._doExecute(((null : stdgo.io.Io.RuneReader)), new Slice<GoUInt8>().nil(), _s, ((0 : GoInt)), ((2 : GoInt)), new Slice<GoInt>().nil());
        if (_a == null || _a.isNil()) {
            return new Slice<GoInt>().nil();
        };
        return _a.__slice__(((0 : GoInt)), ((2 : GoInt)));
    }
    public function findString(_s:GoString):GoString {
        var _re = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _dstCap:GoArray<GoInt> = new GoArray<GoInt>(...[for (i in 0 ... 2) ((0 : GoInt))]);
        var _a:Slice<GoInt> = _re.value._doExecute(((null : stdgo.io.Io.RuneReader)), new Slice<GoUInt8>().nil(), _s, ((0 : GoInt)), ((2 : GoInt)), _dstCap.__slice__(0, ((0 : GoInt))));
        if (_a == null || _a.isNil()) {
            return "";
        };
        return _s.__slice__(_a[((0 : GoInt))], _a[((1 : GoInt))]);
    }
    public function findIndex(_b:Slice<GoByte>):Slice<GoInt> {
        var _re = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _loc:Slice<GoInt> = new Slice<GoInt>().nil();
        var _a:Slice<GoInt> = _re.value._doExecute(((null : stdgo.io.Io.RuneReader)), _b, "", ((0 : GoInt)), ((2 : GoInt)), new Slice<GoInt>().nil());
        if (_a == null || _a.isNil()) {
            return new Slice<GoInt>().nil();
        };
        return _a.__slice__(((0 : GoInt)), ((2 : GoInt)));
    }
    public function find(_b:Slice<GoByte>):Slice<GoByte> {
        var _re = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _dstCap:GoArray<GoInt> = new GoArray<GoInt>(...[for (i in 0 ... 2) ((0 : GoInt))]);
        var _a:Slice<GoInt> = _re.value._doExecute(((null : stdgo.io.Io.RuneReader)), _b, "", ((0 : GoInt)), ((2 : GoInt)), _dstCap.__slice__(0, ((0 : GoInt))));
        if (_a == null || _a.isNil()) {
            return new Slice<GoUInt8>().nil();
        };
        return _b.__slice__(_a[((0 : GoInt))], _a[((1 : GoInt))]).setCap(((_a[((1 : GoInt))] : GoInt)) - ((1 : GoInt)));
    }
    public function _allMatches(_s:GoString, _b:Slice<GoByte>, _n:GoInt, _deliver:Slice<GoInt> -> Void):Void {
        var _re = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _end:GoInt = ((0 : GoInt));
        if (_b == null || _b.isNil()) {
            _end = _s.length;
        } else {
            _end = _b.length;
        };
        {
            var _pos:GoInt = ((0 : GoInt)), _i:GoInt = ((0 : GoInt)), _prevMatchEnd:GoInt = -((1 : GoUnTypedInt));
            while (_i < _n && _pos <= _end) {
                var _matches:Slice<GoInt> = _re.value._doExecute(((null : stdgo.io.Io.RuneReader)), _b, _s, _pos, _re.value._prog.value.numCap, new Slice<GoInt>().nil());
                if (_matches.length == ((0 : GoInt))) {
                    break;
                };
                var _accept:Bool = true;
                if (_matches[((1 : GoInt))] == _pos) {
                    if (_matches[((0 : GoInt))] == _prevMatchEnd) {
                        _accept = false;
                    };
                    var _width:GoInt = ((0 : GoInt));
                    if (_b == null || _b.isNil()) {
                        {
                            var __tmp__ = unicode.utf8.Utf8.decodeRuneInString(_s.__slice__(_pos, _end));
                            _width = __tmp__._1;
                        };
                    } else {
                        {
                            var __tmp__ = unicode.utf8.Utf8.decodeRune(_b.__slice__(_pos, _end));
                            _width = __tmp__._1;
                        };
                    };
                    if (_width > ((0 : GoInt))) {
                        _pos = _pos + (_width);
                    } else {
                        _pos = _end + ((1 : GoInt));
                    };
                } else {
                    _pos = _matches[((1 : GoInt))];
                };
                _prevMatchEnd = _matches[((1 : GoInt))];
                if (_accept) {
                    _deliver(_re.value._pad(_matches));
                    _i++;
                };
            };
        };
    }
    public function _pad(_a:Slice<GoInt>):Slice<GoInt> {
        var _re = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_a == null || _a.isNil()) {
            return new Slice<GoInt>().nil();
        };
        var _n:GoInt = (((1 : GoInt)) + _re.value._numSubexp) * ((2 : GoInt));
        while (_a.length < _n) {
            _a = _a.__append__(-((1 : GoUnTypedInt)));
        };
        return _a;
    }
    public function replaceAllFunc(_src:Slice<GoByte>, _repl:Slice<GoByte> -> Slice<GoByte>):Slice<GoByte> {
        var _re = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return _re.value._replaceAll(_src, "", ((2 : GoInt)), function(_dst:Slice<GoByte>, _match:Slice<GoInt>):Slice<GoByte> {
            return _dst.__append__(..._repl(_src.__slice__(_match[((0 : GoInt))], _match[((1 : GoInt))])).toArray());
        });
    }
    public function replaceAllLiteral(_src:Slice<GoByte>, _repl:Slice<GoByte>):Slice<GoByte> {
        var _re = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return _re.value._replaceAll(_src, "", ((2 : GoInt)), function(_dst:Slice<GoByte>, _match:Slice<GoInt>):Slice<GoByte> {
            return _dst.__append__(..._repl.toArray());
        });
    }
    public function replaceAll(_src:Slice<GoByte>, _repl:Slice<GoByte>):Slice<GoByte> {
        var _re = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _n:GoInt = ((2 : GoInt));
        if (stdgo.bytes.Bytes.indexByte(_repl, (("$".code : GoRune))) >= ((0 : GoInt))) {
            _n = ((2 : GoInt)) * (_re.value._numSubexp + ((1 : GoInt)));
        };
        var _srepl:GoString = "";
        var _b:Slice<GoUInt8> = _re.value._replaceAll(_src, "", _n, function(_dst:Slice<GoByte>, _match:Slice<GoInt>):Slice<GoByte> {
            if (_srepl.length != _repl.length) {
                _srepl = ((_repl : GoString));
            };
            return _re.value._expand(_dst, _srepl, _src, "", _match);
        });
        return _b;
    }
    public function _replaceAll(_bsrc:Slice<GoByte>, _src:GoString, _nmatch:GoInt, _repl:(_dst:Slice<GoByte>, _m:Slice<GoInt>) -> Slice<GoByte>):Slice<GoByte> {
        var _re = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _lastMatchEnd:GoInt = ((0 : GoInt));
        var _searchPos:GoInt = ((0 : GoInt));
        var _buf:Slice<GoByte> = new Slice<GoUInt8>().nil();
        var _endPos:GoInt = ((0 : GoInt));
        if (_bsrc != null && !_bsrc.isNil()) {
            _endPos = _bsrc.length;
        } else {
            _endPos = _src.length;
        };
        if (_nmatch > _re.value._prog.value.numCap) {
            _nmatch = _re.value._prog.value.numCap;
        };
        var _dstCap:GoArray<GoInt> = new GoArray<GoInt>(...[for (i in 0 ... 2) ((0 : GoInt))]);
        while (_searchPos <= _endPos) {
            var _a:Slice<GoInt> = _re.value._doExecute(((null : stdgo.io.Io.RuneReader)), _bsrc, _src, _searchPos, _nmatch, _dstCap.__slice__(0, ((0 : GoInt))));
            if (_a.length == ((0 : GoInt))) {
                break;
            };
            if (_bsrc != null && !_bsrc.isNil()) {
                _buf = _buf.__append__(..._bsrc.__slice__(_lastMatchEnd, _a[((0 : GoInt))]).toArray());
            } else {
                _buf = _buf.__append__(..._src.__slice__(_lastMatchEnd, _a[((0 : GoInt))]).toArray());
            };
            if (_a[((1 : GoInt))] > _lastMatchEnd || _a[((0 : GoInt))] == ((0 : GoInt))) {
                _buf = _repl(_buf, _a);
            };
            _lastMatchEnd = _a[((1 : GoInt))];
            var _width:GoInt = ((0 : GoInt));
            if (_bsrc != null && !_bsrc.isNil()) {
                {
                    var __tmp__ = unicode.utf8.Utf8.decodeRune(_bsrc.__slice__(_searchPos));
                    _width = __tmp__._1;
                };
            } else {
                {
                    var __tmp__ = unicode.utf8.Utf8.decodeRuneInString(_src.__slice__(_searchPos));
                    _width = __tmp__._1;
                };
            };
            if (_searchPos + _width > _a[((1 : GoInt))]) {
                _searchPos = _searchPos + (_width);
            } else if (_searchPos + ((1 : GoInt)) > _a[((1 : GoInt))]) {
                _searchPos++;
            } else {
                _searchPos = _a[((1 : GoInt))];
            };
        };
        if (_bsrc != null && !_bsrc.isNil()) {
            _buf = _buf.__append__(..._bsrc.__slice__(_lastMatchEnd).toArray());
        } else {
            _buf = _buf.__append__(..._src.__slice__(_lastMatchEnd).toArray());
        };
        return _buf;
    }
    public function replaceAllStringFunc(_src:GoString, _repl:GoString -> GoString):GoString {
        var _re = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _b:Slice<GoUInt8> = _re.value._replaceAll(new Slice<GoUInt8>().nil(), _src, ((2 : GoInt)), function(_dst:Slice<GoByte>, _match:Slice<GoInt>):Slice<GoByte> {
            return _dst.__append__(..._repl(_src.__slice__(_match[((0 : GoInt))], _match[((1 : GoInt))])).toArray());
        });
        return ((_b : GoString));
    }
    public function replaceAllLiteralString(_src:GoString, _repl:GoString):GoString {
        var _re = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return ((_re.value._replaceAll(new Slice<GoUInt8>().nil(), _src, ((2 : GoInt)), function(_dst:Slice<GoByte>, _match:Slice<GoInt>):Slice<GoByte> {
            return _dst.__append__(..._repl.toArray());
        }) : GoString));
    }
    public function replaceAllString(_src:GoString, _repl:GoString):GoString {
        var _re = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _n:GoInt = ((2 : GoInt));
        if (stdgo.strings.Strings.contains(_repl, "$")) {
            _n = ((2 : GoInt)) * (_re.value._numSubexp + ((1 : GoInt)));
        };
        var _b:Slice<GoUInt8> = _re.value._replaceAll(new Slice<GoUInt8>().nil(), _src, _n, function(_dst:Slice<GoByte>, _match:Slice<GoInt>):Slice<GoByte> {
            return _re.value._expand(_dst, _repl, new Slice<GoUInt8>().nil(), _src, _match);
        });
        return ((_b : GoString));
    }
    public function match(_b:Slice<GoByte>):Bool {
        var _re = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return _re.value._doMatch(((null : stdgo.io.Io.RuneReader)), _b, "");
    }
    public function matchString(_s:GoString):Bool {
        var _re = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return _re.value._doMatch(((null : stdgo.io.Io.RuneReader)), new Slice<GoUInt8>().nil(), _s);
    }
    public function matchReader(_r:stdgo.io.Io.RuneReader):Bool {
        var _re = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return _re.value._doMatch(_r, new Slice<GoUInt8>().nil(), "");
    }
    public function literalPrefix():{ var _0 : GoString; var _1 : Bool; } {
        var _re = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _prefix:GoString = (("" : GoString)), _complete:Bool = false;
        return { _0 : _re.value._prefix, _1 : _re.value._prefixComplete };
    }
    public function subexpIndex(_name:GoString):GoInt {
        var _re = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_name != (("" : GoString))) {
            {
                var _i;
                var _s;
                for (_obj in _re.value._subexpNames.keyValueIterator()) {
                    _i = _obj.key;
                    _s = _obj.value;
                    if (_name == _s) {
                        return _i;
                    };
                };
            };
        };
        return -((1 : GoUnTypedInt));
    }
    public function subexpNames():Slice<GoString> {
        var _re = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return _re.value._subexpNames;
    }
    public function numSubexp():GoInt {
        var _re = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return _re.value._numSubexp;
    }
    public function _put(_m:Pointer<T_machine>):Void {
        var _re = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        _m.value._re = new Pointer<Regexp>().nil();
        _m.value._p = new Pointer<regexp.syntax.Syntax.Prog>().nil();
        _m.value._inputs._clear();
        _matchPool[_re.value._mpool].put(Go.toInterface(_m));
    }
    public function _get():Pointer<T_machine> {
        var _re = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var __tmp__ = try {
            { value : ((_matchPool[_re.value._mpool].get().value : Pointer<T_machine>)), ok : true };
        } catch(_) {
            { value : new Pointer<T_machine>().nil(), ok : false };
        }, _m = __tmp__.value, _ok = __tmp__.ok;
        if (!_ok) {
            _m = Go.pointer(new T_machine());
        };
        _m.value._re = _re;
        _m.value._p = _re.value._prog;
        if (_m.value._matchcap.cap() < _re.value._matchcap) {
            _m.value._matchcap = new Slice<GoInt>(...[for (i in 0 ... ((_re.value._matchcap : GoInt)).toBasic()) ((0 : GoInt))]);
            for (_t in _m.value._pool) {
                _t.value._cap = new Slice<GoInt>(...[for (i in 0 ... ((_re.value._matchcap : GoInt)).toBasic()) ((0 : GoInt))]);
            };
        };
        var _n:GoInt = _matchSize[_re.value._mpool];
        if (_n == ((0 : GoInt))) {
            _n = _re.value._prog.value.inst.length;
        };
        if (_m.value._q0._sparse.length < _n) {
            _m.value._q0 = new T_queue(new Slice<GoUInt32>(...[for (i in 0 ... ((_n : GoInt)).toBasic()) ((0 : GoUInt32))]), new Slice<T_entry>(...[for (i in 0 ... ((((0 : GoInt)) : GoInt)).toBasic()) new T_entry()]).setCap(((_n : GoInt)).toBasic())).__copy__();
            _m.value._q1 = new T_queue(new Slice<GoUInt32>(...[for (i in 0 ... ((_n : GoInt)).toBasic()) ((0 : GoUInt32))]), new Slice<T_entry>(...[for (i in 0 ... ((((0 : GoInt)) : GoInt)).toBasic()) new T_entry()]).setCap(((_n : GoInt)).toBasic())).__copy__();
        };
        return _m;
    }
    public function longest():Void {
        var _re = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        _re.value._longest = true;
    }
    public function copy():Pointer<Regexp> {
        var _re = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _re2:Regexp = _re.value.__copy__();
        return Go.pointer(_re2);
    }
    public function toString():GoString {
        var _re = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return _re.value._expr;
    }
    public function _doExecute(_r:stdgo.io.Io.RuneReader, _b:Slice<GoByte>, _s:GoString, _pos:GoInt, _ncap:GoInt, _dstCap:Slice<GoInt>):Slice<GoInt> {
        var _re = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_dstCap == null || _dstCap.isNil()) {
            _dstCap = _arrayNoInts.__slice__(0, ((0 : GoInt))).setCap(((((0 : GoInt)) : GoInt)) - ((1 : GoInt)));
        };
        if (_r == null && _b.length + _s.length < _re.value._minInputLen) {
            return new Slice<GoInt>().nil();
        };
        if (_re.value._onepass != null && !_re.value._onepass.isNil()) {
            return _re.value._doOnePass(_r, _b, _s, _pos, _ncap, _dstCap);
        };
        if (_r == null && _b.length + _s.length < _re.value._maxBitStateLen) {
            return _re.value._backtrack(_b, _s, _pos, _ncap, _dstCap);
        };
        var _m:Pointer<T_machine> = _re.value._get();
        var __tmp__ = _m.value._inputs._init(_r, _b, _s), _i:T_input = __tmp__._0, _:GoInt = __tmp__._1;
        _m.value._init(_ncap);
        if (!_m.value._match(_i, _pos)) {
            _re.value._put(_m);
            return new Slice<GoInt>().nil();
        };
        _dstCap = _dstCap.__append__(..._m.value._matchcap.toArray());
        _re.value._put(_m);
        return _dstCap;
    }
    public function _doMatch(_r:stdgo.io.Io.RuneReader, _b:Slice<GoByte>, _s:GoString):Bool {
        var _re = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return _re.value._doExecute(_r, _b, _s, ((0 : GoInt)), ((0 : GoInt)), new Slice<GoInt>().nil()) != null && !_re.value._doExecute(_r, _b, _s, ((0 : GoInt)), ((0 : GoInt)), new Slice<GoInt>().nil()).isNil();
    }
    public function _doOnePass(_ir:stdgo.io.Io.RuneReader, _ib:Slice<GoByte>, _is:GoString, _pos:GoInt, _ncap:GoInt, _dstCap:Slice<GoInt>):Slice<GoInt> {
        var _re = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return stdgo.internal.Macro.controlFlow({
            var _startCond:regexp.syntax.Syntax.EmptyOp = _re.value._cond;
            if (_startCond.__t__ == -1 ^ new regexp.syntax.Syntax.EmptyOp(((0 : GoUInt8))).__t__.__t__) {
                return new Slice<GoInt>().nil();
            };
            var _m:Pointer<T_onePassMachine> = _newOnePassMachine();
            if (_m.value._matchcap.cap() < _ncap) {
                _m.value._matchcap = new Slice<GoInt>(...[for (i in 0 ... ((_ncap : GoInt)).toBasic()) ((0 : GoInt))]);
            } else {
                _m.value._matchcap = _m.value._matchcap.__slice__(0, _ncap);
            };
            var _matched:Bool = false;
            {
                var _i;
                for (_obj in _m.value._matchcap.keyValueIterator()) {
                    _i = _obj.key;
                    _m.value._matchcap[_i] = -((1 : GoUnTypedInt));
                };
            };
            var __tmp__ = _m.value._inputs._init(_ir, _ib, _is), _i:T_input = __tmp__._0, _:GoInt = __tmp__._1;
            var _r:GoInt32 = _endOfText, _r1:GoInt32 = _endOfText;
            var _width:GoInt = ((0 : GoInt)), _width1:GoInt = ((0 : GoInt));
            {
                var __tmp__ = _i._step(_pos);
                _r = __tmp__._0;
                _width = __tmp__._1;
            };
            if (_r != _endOfText) {
                {
                    var __tmp__ = _i._step(_pos + _width);
                    _r1 = __tmp__._0;
                    _width1 = __tmp__._1;
                };
            };
            var _flag:T_lazyFlag = new T_lazyFlag();
            if (_pos == ((0 : GoInt))) {
                _flag = _newLazyFlag(-((1 : GoUnTypedInt)), _r);
            } else {
                _flag = _i._context(_pos);
            };
            var _pc:GoInt = _re.value._onepass.value.start;
            var _inst:T_onePassInst = _re.value._onepass.value.inst[_pc].__copy__();
            if (_pos == ((0 : GoInt)) && _flag._match(new regexp.syntax.Syntax.EmptyOp(_inst.inst.arg)) && _re.value._prefix.length > ((0 : GoInt)) && _i._canCheckPrefix()) {
                if (!_i._hasPrefix(_re)) {
                    @:goto "Return";
                };
                _pos = _pos + (_re.value._prefix.length);
                {
                    var __tmp__ = _i._step(_pos);
                    _r = __tmp__._0;
                    _width = __tmp__._1;
                };
                {
                    var __tmp__ = _i._step(_pos + _width);
                    _r1 = __tmp__._0;
                    _width1 = __tmp__._1;
                };
                _flag = _i._context(_pos);
                _pc = ((_re.value._prefixEnd : GoInt));
            };
            while (true) {
                _inst = _re.value._onepass.value.inst[_pc].__copy__();
                _pc = ((_inst.inst.out : GoInt));
                if (_inst.inst.op.__t__ == regexp.syntax.Syntax.instMatch.__t__) {
                    _matched = true;
                    if (_m.value._matchcap.length > ((0 : GoInt))) {
                        _m.value._matchcap[((0 : GoInt))] = ((0 : GoInt));
                        _m.value._matchcap[((1 : GoInt))] = _pos;
                    };
                    @:goto "Return";
                } else if (_inst.inst.op.__t__ == regexp.syntax.Syntax.instRune.__t__) {
                    if (!_inst.matchRune(_r)) {
                        @:goto "Return";
                    };
                } else if (_inst.inst.op.__t__ == regexp.syntax.Syntax.instRune1.__t__) {
                    if (_r != _inst.inst.rune[((0 : GoInt))]) {
                        @:goto "Return";
                    };
                } else if (_inst.inst.op.__t__ == regexp.syntax.Syntax.instRuneAny.__t__) {} else if (_inst.inst.op.__t__ == regexp.syntax.Syntax.instRuneAnyNotNL.__t__) {
                    if (_r == (("\n".code : GoRune))) {
                        @:goto "Return";
                    };
                } else if (_inst.inst.op.__t__ == regexp.syntax.Syntax.instAlt.__t__ || _inst.inst.op.__t__ == regexp.syntax.Syntax.instAltMatch.__t__) {
                    _pc = ((_onePassNext(Go.pointer(_inst), _r) : GoInt));
                    continue;
                } else if (_inst.inst.op.__t__ == regexp.syntax.Syntax.instFail.__t__) {
                    @:goto "Return";
                } else if (_inst.inst.op.__t__ == regexp.syntax.Syntax.instNop.__t__) {
                    continue;
                } else if (_inst.inst.op.__t__ == regexp.syntax.Syntax.instEmptyWidth.__t__) {
                    if (!_flag._match(new regexp.syntax.Syntax.EmptyOp(_inst.inst.arg))) {
                        @:goto "Return";
                    };
                    continue;
                } else if (_inst.inst.op.__t__ == regexp.syntax.Syntax.instCapture.__t__) {
                    if (((_inst.inst.arg : GoInt)) < _m.value._matchcap.length) {
                        _m.value._matchcap[_inst.inst.arg] = _pos;
                    };
                    continue;
                };
                if (_width == ((0 : GoInt))) {
                    break;
                };
                _flag = _newLazyFlag(_r, _r1);
                _pos = _pos + (_width);
                {
                    final __tmp__0 = _r1;
                    final __tmp__1 = _width1;
                    _r = __tmp__0;
                    _width = __tmp__1;
                };
                if (_r != _endOfText) {
                    {
                        var __tmp__ = _i._step(_pos + _width);
                        _r1 = __tmp__._0;
                        _width1 = __tmp__._1;
                    };
                };
            };
            @:label("Return") if (!_matched) {
                _freeOnePassMachine(_m);
                return new Slice<GoInt>().nil();
            };
            _dstCap = _dstCap.__append__(..._m.value._matchcap.toArray());
            _freeOnePassMachine(_m);
            return _dstCap;
        });
    }
    public function _backtrack(_ib:Slice<GoByte>, _is:GoString, _pos:GoInt, _ncap:GoInt, _dstCap:Slice<GoInt>):Slice<GoInt> {
        var _re = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return stdgo.internal.Macro.controlFlow({
            var _startCond:regexp.syntax.Syntax.EmptyOp = _re.value._cond;
            if (_startCond.__t__ == -1 ^ new regexp.syntax.Syntax.EmptyOp(((0 : GoUInt8))).__t__.__t__) {
                return new Slice<GoInt>().nil();
            };
            if (new regexp.syntax.Syntax.EmptyOp(_startCond.__t__ & regexp.syntax.Syntax.emptyBeginText.__t__).__t__ != ((0 : GoUInt8)) && _pos != ((0 : GoInt))) {
                return new Slice<GoInt>().nil();
            };
            var _b:Pointer<T_bitState> = _newBitState();
            var __tmp__ = _b.value._inputs._init(((null : stdgo.io.Io.RuneReader)), _ib, _is), _i:T_input = __tmp__._0, _end:GoInt = __tmp__._1;
            _b.value._reset(_re.value._prog, _end, _ncap);
            if (new regexp.syntax.Syntax.EmptyOp(_startCond.__t__ & regexp.syntax.Syntax.emptyBeginText.__t__).__t__ != ((0 : GoUInt8))) {
                if (_b.value._cap.length > ((0 : GoInt))) {
                    _b.value._cap[((0 : GoInt))] = _pos;
                };
                if (!_re.value._tryBacktrack(_b, _i, ((_re.value._prog.value.start : GoUInt32)), _pos)) {
                    _freeBitState(_b);
                    return new Slice<GoInt>().nil();
                };
            } else {
                var _width:GoInt = -((1 : GoUnTypedInt));
                Go.cfor(_pos <= _end && _width != ((0 : GoInt)), _pos = _pos + (_width), {
                    if (_re.value._prefix.length > ((0 : GoInt))) {
                        var _advance:GoInt = _i._index(_re, _pos);
                        if (_advance < ((0 : GoInt))) {
                            _freeBitState(_b);
                            return new Slice<GoInt>().nil();
                        };
                        _pos = _pos + (_advance);
                    };
                    if (_b.value._cap.length > ((0 : GoInt))) {
                        _b.value._cap[((0 : GoInt))] = _pos;
                    };
                    if (_re.value._tryBacktrack(_b, _i, ((_re.value._prog.value.start : GoUInt32)), _pos)) {
                        @:goto "Match";
                    };
                    {
                        var __tmp__ = _i._step(_pos);
                        _width = __tmp__._1;
                    };
                });
                _freeBitState(_b);
                return new Slice<GoInt>().nil();
            };
            @:label("Match") _dstCap = _dstCap.__append__(..._b.value._matchcap.toArray());
            _freeBitState(_b);
            return _dstCap;
        });
    }
    public function _tryBacktrack(_b:Pointer<T_bitState>, _i:T_input, _pc:GoUInt32, _pos:GoInt):Bool {
        var _re = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return stdgo.internal.Macro.controlFlow({
            var _longest:Bool = _re.value._longest;
            _b.value._push(_re, _pc, _pos, false);
            while (_b.value._jobs.length > ((0 : GoInt))) {
                var _l:GoInt = _b.value._jobs.length - ((1 : GoInt));
                var _pc:GoUInt32 = _b.value._jobs[_l]._pc;
                var _pos:GoInt = _b.value._jobs[_l]._pos;
                var _arg:Bool = _b.value._jobs[_l]._arg;
                _b.value._jobs = _b.value._jobs.__slice__(0, _l);
                @:goto "Skip";
                @:label("CheckAndLoop") if (!_b.value._shouldVisit(_pc, _pos)) {
                    continue;
                };
                @:label("Skip") {
                    var _inst:regexp.syntax.Syntax.Inst = _re.value._prog.value.inst[_pc].__copy__();
                };
                if (_inst.op.__t__ == regexp.syntax.Syntax.instFail.__t__) {
                    throw "unexpected InstFail";
                } else if (_inst.op.__t__ == regexp.syntax.Syntax.instAlt.__t__) {
                    if (_arg) {
                        _arg = false;
                        _pc = _inst.arg;
                        @:goto "CheckAndLoop";
                    } else {
                        _b.value._push(_re, _pc, _pos, true);
                        _pc = _inst.out;
                        @:goto "CheckAndLoop";
                    };
                } else if (_inst.op.__t__ == regexp.syntax.Syntax.instAltMatch.__t__) {
                    if (_re.value._prog.value.inst[_inst.out].op.__t__ == regexp.syntax.Syntax.instRune.__t__ || _re.value._prog.value.inst[_inst.out].op.__t__ == regexp.syntax.Syntax.instRune1.__t__ || _re.value._prog.value.inst[_inst.out].op.__t__ == regexp.syntax.Syntax.instRuneAny.__t__ || _re.value._prog.value.inst[_inst.out].op.__t__ == regexp.syntax.Syntax.instRuneAnyNotNL.__t__) {
                        _b.value._push(_re, _inst.arg, _pos, false);
                        _pc = _inst.arg;
                        _pos = _b.value._end;
                        @:goto "CheckAndLoop";
                    };
                    _b.value._push(_re, _inst.out, _b.value._end, false);
                    _pc = _inst.out;
                    @:goto "CheckAndLoop";
                } else if (_inst.op.__t__ == regexp.syntax.Syntax.instRune.__t__) {
                    var __tmp__ = _i._step(_pos), _r:GoInt32 = __tmp__._0, _width:GoInt = __tmp__._1;
                    if (!_inst.matchRune(_r)) {
                        continue;
                    };
                    _pos = _pos + (_width);
                    _pc = _inst.out;
                    @:goto "CheckAndLoop";
                } else if (_inst.op.__t__ == regexp.syntax.Syntax.instRune1.__t__) {
                    var __tmp__ = _i._step(_pos), _r:GoInt32 = __tmp__._0, _width:GoInt = __tmp__._1;
                    if (_r != _inst.rune[((0 : GoInt))]) {
                        continue;
                    };
                    _pos = _pos + (_width);
                    _pc = _inst.out;
                    @:goto "CheckAndLoop";
                } else if (_inst.op.__t__ == regexp.syntax.Syntax.instRuneAnyNotNL.__t__) {
                    var __tmp__ = _i._step(_pos), _r:GoInt32 = __tmp__._0, _width:GoInt = __tmp__._1;
                    if (_r == (("\n".code : GoRune)) || _r == _endOfText) {
                        continue;
                    };
                    _pos = _pos + (_width);
                    _pc = _inst.out;
                    @:goto "CheckAndLoop";
                } else if (_inst.op.__t__ == regexp.syntax.Syntax.instRuneAny.__t__) {
                    var __tmp__ = _i._step(_pos), _r:GoInt32 = __tmp__._0, _width:GoInt = __tmp__._1;
                    if (_r == _endOfText) {
                        continue;
                    };
                    _pos = _pos + (_width);
                    _pc = _inst.out;
                    @:goto "CheckAndLoop";
                } else if (_inst.op.__t__ == regexp.syntax.Syntax.instCapture.__t__) {
                    if (_arg) {
                        _b.value._cap[_inst.arg] = _pos;
                        continue;
                    } else {
                        if (_inst.arg < ((_b.value._cap.length : GoUInt32))) {
                            _b.value._push(_re, _pc, _b.value._cap[_inst.arg], true);
                            _b.value._cap[_inst.arg] = _pos;
                        };
                        _pc = _inst.out;
                        @:goto "CheckAndLoop";
                    };
                } else if (_inst.op.__t__ == regexp.syntax.Syntax.instEmptyWidth.__t__) {
                    var _flag:T_lazyFlag = _i._context(_pos);
                    if (!_flag._match(new regexp.syntax.Syntax.EmptyOp(_inst.arg))) {
                        continue;
                    };
                    _pc = _inst.out;
                    @:goto "CheckAndLoop";
                } else if (_inst.op.__t__ == regexp.syntax.Syntax.instNop.__t__) {
                    _pc = _inst.out;
                    @:goto "CheckAndLoop";
                } else if (_inst.op.__t__ == regexp.syntax.Syntax.instMatch.__t__) {
                    if (_b.value._cap.length == ((0 : GoInt))) {
                        return true;
                    };
                    if (_b.value._cap.length > ((1 : GoInt))) {
                        _b.value._cap[((1 : GoInt))] = _pos;
                    };
                    {
                        var _old:GoInt = _b.value._matchcap[((1 : GoInt))];
                        if (_old == -((1 : GoUnTypedInt)) || (_longest && _pos > ((0 : GoInt)) && _pos > _old)) {
                            Go.copy(_b.value._matchcap, _b.value._cap);
                        };
                    };
                    if (!_longest) {
                        return true;
                    };
                    if (_pos == _b.value._end) {
                        return true;
                    };
                    continue;
                };
            };
            return _longest && _b.value._matchcap.length > ((1 : GoInt)) && _b.value._matchcap[((1 : GoInt))] >= ((0 : GoInt));
        });
    }
    public var _expr : GoString = (("" : GoString));
    public var _prog : Pointer<regexp.syntax.Syntax.Prog> = new Pointer<regexp.syntax.Syntax.Prog>().nil();
    public var _onepass : Pointer<T_onePassProg> = new Pointer<T_onePassProg>().nil();
    public var _numSubexp : GoInt = ((0 : GoInt));
    public var _maxBitStateLen : GoInt = ((0 : GoInt));
    public var _subexpNames : Slice<GoString> = new Slice<GoString>().nil();
    public var _prefix : GoString = (("" : GoString));
    public var _prefixBytes : Slice<GoUInt8> = new Slice<GoUInt8>().nil();
    public var _prefixRune : GoInt32 = ((0 : GoInt32));
    public var _prefixEnd : GoUInt32 = ((0 : GoUInt32));
    public var _mpool : GoInt = ((0 : GoInt));
    public var _matchcap : GoInt = ((0 : GoInt));
    public var _prefixComplete : Bool = false;
    public var _cond : regexp.syntax.Syntax.EmptyOp = new regexp.syntax.Syntax.EmptyOp();
    public var _minInputLen : GoInt = ((0 : GoInt));
    public var _longest : Bool = false;
    public function new(?_expr:GoString, ?_prog:Pointer<regexp.syntax.Syntax.Prog>, ?_onepass:Pointer<T_onePassProg>, ?_numSubexp:GoInt, ?_maxBitStateLen:GoInt, ?_subexpNames:Slice<GoString>, ?_prefix:GoString, ?_prefixBytes:Slice<GoUInt8>, ?_prefixRune:GoInt32, ?_prefixEnd:GoUInt32, ?_mpool:GoInt, ?_matchcap:GoInt, ?_prefixComplete:Bool, ?_cond:regexp.syntax.Syntax.EmptyOp, ?_minInputLen:GoInt, ?_longest:Bool) stdgo.internal.Macro.initLocals();
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new Regexp(
_expr,
_prog,
_onepass,
_numSubexp,
_maxBitStateLen,
_subexpNames,
_prefix,
_prefixBytes,
_prefixRune,
_prefixEnd,
_mpool,
_matchcap,
_prefixComplete,
_cond,
_minInputLen,
_longest);
    }
    public function __set__(__tmp__) {
        this._expr = __tmp__._expr;
        this._prog = __tmp__._prog;
        this._onepass = __tmp__._onepass;
        this._numSubexp = __tmp__._numSubexp;
        this._maxBitStateLen = __tmp__._maxBitStateLen;
        this._subexpNames = __tmp__._subexpNames;
        this._prefix = __tmp__._prefix;
        this._prefixBytes = __tmp__._prefixBytes;
        this._prefixRune = __tmp__._prefixRune;
        this._prefixEnd = __tmp__._prefixEnd;
        this._mpool = __tmp__._mpool;
        this._matchcap = __tmp__._matchcap;
        this._prefixComplete = __tmp__._prefixComplete;
        this._cond = __tmp__._cond;
        this._minInputLen = __tmp__._minInputLen;
        this._longest = __tmp__._longest;
        return this;
    }
}
@:structInit class T_inputString {
    public function _context(_pos:GoInt):T_lazyFlag {
        var _i = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _r1:GoInt32 = _endOfText, _r2:GoInt32 = _endOfText;
        if ((((_pos - ((1 : GoInt))) : GoUInt)) < ((_i.value._str.length : GoUInt))) {
            _r1 = ((_i.value._str[_pos - ((1 : GoInt))] : GoRune));
            if (_r1 >= unicode.utf8.Utf8.runeSelf) {
                {
                    var __tmp__ = unicode.utf8.Utf8.decodeLastRuneInString(_i.value._str.__slice__(0, _pos));
                    _r1 = __tmp__._0;
                };
            };
        };
        if (((_pos : GoUInt)) < ((_i.value._str.length : GoUInt))) {
            _r2 = ((_i.value._str[_pos] : GoRune));
            if (_r2 >= unicode.utf8.Utf8.runeSelf) {
                {
                    var __tmp__ = unicode.utf8.Utf8.decodeRuneInString(_i.value._str.__slice__(_pos));
                    _r2 = __tmp__._0;
                };
            };
        };
        return _newLazyFlag(_r1, _r2);
    }
    public function _index(_re:Pointer<Regexp>, _pos:GoInt):GoInt {
        var _i = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return stdgo.strings.Strings.index(_i.value._str.__slice__(_pos), _re.value._prefix);
    }
    public function _hasPrefix(_re:Pointer<Regexp>):Bool {
        var _i = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return stdgo.strings.Strings.hasPrefix(_i.value._str, _re.value._prefix);
    }
    public function _canCheckPrefix():Bool {
        var _i = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return true;
    }
    public function _step(_pos:GoInt):{ var _0 : GoRune; var _1 : GoInt; } {
        var _i = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_pos < _i.value._str.length) {
            var _c:GoUInt8 = _i.value._str[_pos];
            if (_c < unicode.utf8.Utf8.runeSelf) {
                return { _0 : ((_c : GoRune)), _1 : ((1 : GoInt)) };
            };
            return unicode.utf8.Utf8.decodeRuneInString(_i.value._str.__slice__(_pos));
        };
        return { _0 : _endOfText, _1 : ((0 : GoInt)) };
    }
    public var _str : GoString = (("" : GoString));
    public function new(?_str:GoString) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(_str) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_inputString(_str);
    }
    public function __set__(__tmp__) {
        this._str = __tmp__._str;
        return this;
    }
}
@:structInit class T_inputBytes {
    public function _context(_pos:GoInt):T_lazyFlag {
        var _i = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _r1:GoInt32 = _endOfText, _r2:GoInt32 = _endOfText;
        if ((((_pos - ((1 : GoInt))) : GoUInt)) < ((_i.value._str.length : GoUInt))) {
            _r1 = ((_i.value._str[_pos - ((1 : GoInt))] : GoRune));
            if (_r1 >= unicode.utf8.Utf8.runeSelf) {
                {
                    var __tmp__ = unicode.utf8.Utf8.decodeLastRune(_i.value._str.__slice__(0, _pos));
                    _r1 = __tmp__._0;
                };
            };
        };
        if (((_pos : GoUInt)) < ((_i.value._str.length : GoUInt))) {
            _r2 = ((_i.value._str[_pos] : GoRune));
            if (_r2 >= unicode.utf8.Utf8.runeSelf) {
                {
                    var __tmp__ = unicode.utf8.Utf8.decodeRune(_i.value._str.__slice__(_pos));
                    _r2 = __tmp__._0;
                };
            };
        };
        return _newLazyFlag(_r1, _r2);
    }
    public function _index(_re:Pointer<Regexp>, _pos:GoInt):GoInt {
        var _i = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return stdgo.bytes.Bytes.index(_i.value._str.__slice__(_pos), _re.value._prefixBytes);
    }
    public function _hasPrefix(_re:Pointer<Regexp>):Bool {
        var _i = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return stdgo.bytes.Bytes.hasPrefix(_i.value._str, _re.value._prefixBytes);
    }
    public function _canCheckPrefix():Bool {
        var _i = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return true;
    }
    public function _step(_pos:GoInt):{ var _0 : GoRune; var _1 : GoInt; } {
        var _i = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_pos < _i.value._str.length) {
            var _c:GoUInt8 = _i.value._str[_pos];
            if (_c < unicode.utf8.Utf8.runeSelf) {
                return { _0 : ((_c : GoRune)), _1 : ((1 : GoInt)) };
            };
            return unicode.utf8.Utf8.decodeRune(_i.value._str.__slice__(_pos));
        };
        return { _0 : _endOfText, _1 : ((0 : GoInt)) };
    }
    public var _str : Slice<GoUInt8> = new Slice<GoUInt8>().nil();
    public function new(?_str:Slice<GoUInt8>) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(_str) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_inputBytes(_str);
    }
    public function __set__(__tmp__) {
        this._str = __tmp__._str;
        return this;
    }
}
@:structInit class T_inputReader {
    public function _context(_pos:GoInt):T_lazyFlag {
        var _i = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return new T_lazyFlag(((0 : GoUInt64)));
    }
    public function _index(_re:Pointer<Regexp>, _pos:GoInt):GoInt {
        var _i = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return -((1 : GoUnTypedInt));
    }
    public function _hasPrefix(_re:Pointer<Regexp>):Bool {
        var _i = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return false;
    }
    public function _canCheckPrefix():Bool {
        var _i = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return false;
    }
    public function _step(_pos:GoInt):{ var _0 : GoRune; var _1 : GoInt; } {
        var _i = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (!_i.value._atEOT && _pos != _i.value._pos) {
            return { _0 : _endOfText, _1 : ((0 : GoInt)) };
        };
        var __tmp__ = _i.value._r.readRune(), _r:GoInt32 = __tmp__._0, _w:GoInt = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        if (_err != null) {
            _i.value._atEOT = true;
            return { _0 : _endOfText, _1 : ((0 : GoInt)) };
        };
        _i.value._pos = _i.value._pos + (_w);
        return { _0 : _r, _1 : _w };
    }
    public var _r : stdgo.io.Io.RuneReader = ((null : stdgo.io.Io.RuneReader));
    public var _atEOT : Bool = false;
    public var _pos : GoInt = ((0 : GoInt));
    public function new(?_r:stdgo.io.Io.RuneReader, ?_atEOT:Bool, ?_pos:GoInt) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(_r) + " " + Go.string(_atEOT) + " " + Go.string(_pos) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_inputReader(_r, _atEOT, _pos);
    }
    public function __set__(__tmp__) {
        this._r = __tmp__._r;
        this._atEOT = __tmp__._atEOT;
        this._pos = __tmp__._pos;
        return this;
    }
}
var _matchSize : GoArray<GoInt> = new GoArray<GoInt>(((128 : GoInt)), ((512 : GoInt)), ((2048 : GoInt)), ((16384 : GoInt)), ((0 : GoInt))).copy();
var _anyRune : Slice<GoInt32> = new Slice<GoInt32>(((0 : GoInt32)), unicode.Unicode.maxRune);
var _onePassPool : stdgo.sync.Sync.Pool = new stdgo.sync.Sync.Pool();
var _bitStatePool : stdgo.sync.Sync.Pool = new stdgo.sync.Sync.Pool();
var _anyRuneNotNL : Slice<GoInt32> = new Slice<GoInt32>(((0 : GoInt32)), (("\n".code : GoRune)) - ((1 : GoInt32)), (("\n".code : GoRune)) + ((1 : GoInt32)), unicode.Unicode.maxRune);
var _specialBytes : GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0 ... 16) ((0 : GoUInt8))]);
final _mergeFailed : GoUInt32 = (((("4294967295" : GoUInt32)) : GoUInt32));
var _noNext : Slice<GoUInt32> = new Slice<GoUInt32>(_mergeFailed);
var _noRune : Slice<GoInt32> = new Slice<GoInt32>();
final _maxBacktrackVector : GoUnTypedInt = ((256 : GoUnTypedInt)) * ((1024 : GoUnTypedInt));
final _maxBacktrackProg : GoInt64 = ((500 : GoUnTypedInt));
final _endOfText : GoRune = -((1 : GoUnTypedInt));
final _visitedBits : GoInt64 = ((32 : GoUnTypedInt));
var _arrayNoInts : GoArray<GoInt> = new GoArray<GoInt>(...[for (i in 0 ... 0) ((0 : GoInt))]);
final _startSize : GoInt64 = ((10 : GoUnTypedInt));
var _matchPool : GoArray<stdgo.sync.Sync.Pool> = new GoArray<stdgo.sync.Sync.Pool>(...[for (i in 0 ... 5) new stdgo.sync.Sync.Pool()]);
function _newBitState():Pointer<T_bitState> {
        var __tmp__ = try {
            { value : ((_bitStatePool.get().value : Pointer<T_bitState>)), ok : true };
        } catch(_) {
            { value : new Pointer<T_bitState>().nil(), ok : false };
        }, _b = __tmp__.value, _ok = __tmp__.ok;
        if (!_ok) {
            _b = Go.pointer(new T_bitState());
        };
        return _b;
    }
function _freeBitState(_b:Pointer<T_bitState>):Void {
        _b.value._inputs._clear();
        _bitStatePool.put(Go.toInterface(_b));
    }
/**
    // maxBitStateLen returns the maximum length of a string to search with
    // the backtracker using prog.
**/
function _maxBitStateLen(_prog:Pointer<regexp.syntax.Syntax.Prog>):GoInt {
        if (!_shouldBacktrack(_prog)) {
            return ((0 : GoInt));
        };
        return _maxBacktrackVector / _prog.value.inst.length;
    }
/**
    // shouldBacktrack reports whether the program is too
    // long for the backtracker to run.
**/
function _shouldBacktrack(_prog:Pointer<regexp.syntax.Syntax.Prog>):Bool {
        return _prog.value.inst.length <= _maxBacktrackProg;
    }
function _newLazyFlag(_r1:GoRune, _r2:GoRune):T_lazyFlag {
        return new T_lazyFlag(((((_r1 : GoUInt64)) << ((32 : GoUnTypedInt))) | ((((_r2 : GoUInt32)) : GoUInt64))));
    }
function _newOnePassMachine():Pointer<T_onePassMachine> {
        var __tmp__ = try {
            { value : ((_onePassPool.get().value : Pointer<T_onePassMachine>)), ok : true };
        } catch(_) {
            { value : new Pointer<T_onePassMachine>().nil(), ok : false };
        }, _m = __tmp__.value, _ok = __tmp__.ok;
        if (!_ok) {
            _m = Go.pointer(new T_onePassMachine());
        };
        return _m;
    }
function _freeOnePassMachine(_m:Pointer<T_onePassMachine>):Void {
        _m.value._inputs._clear();
        _onePassPool.put(Go.toInterface(_m));
    }
/**
    // OnePassPrefix returns a literal string that all matches for the
    // regexp must start with. Complete is true if the prefix
    // is the entire match. Pc is the index of the last rune instruction
    // in the string. The OnePassPrefix skips over the mandatory
    // EmptyBeginText
**/
function _onePassPrefix(_p:Pointer<regexp.syntax.Syntax.Prog>):{ var _0 : GoString; var _1 : Bool; var _2 : GoUInt32; } {
        var _prefix:GoString = (("" : GoString)), _complete:Bool = false, _pc:GoUInt32 = ((0 : GoUInt32));
        var _i:Pointer<regexp.syntax.Syntax.Inst> = Go.pointer(_p.value.inst[_p.value.start]);
        if (_i.value.op.__t__ != regexp.syntax.Syntax.instEmptyWidth.__t__ || new regexp.syntax.Syntax.EmptyOp((new regexp.syntax.Syntax.EmptyOp(_i.value.arg)).__t__ & regexp.syntax.Syntax.emptyBeginText.__t__).__t__ == ((0 : GoUInt8))) {
            return { _0 : "", _1 : _i.value.op.__t__ == regexp.syntax.Syntax.instMatch.__t__, _2 : ((_p.value.start : GoUInt32)) };
        };
        _pc = _i.value.out;
        _i = Go.pointer(_p.value.inst[_pc]);
        while (_i.value.op.__t__ == regexp.syntax.Syntax.instNop.__t__) {
            _pc = _i.value.out;
            _i = Go.pointer(_p.value.inst[_pc]);
        };
        if (_iop(_i).__t__ != regexp.syntax.Syntax.instRune.__t__ || _i.value.rune.length != ((1 : GoInt))) {
            return { _0 : "", _1 : _i.value.op.__t__ == regexp.syntax.Syntax.instMatch.__t__, _2 : ((_p.value.start : GoUInt32)) };
        };
        var _buf:stdgo.strings.Strings.Builder = new stdgo.strings.Strings.Builder();
        while (_iop(_i).__t__ == regexp.syntax.Syntax.instRune.__t__ && _i.value.rune.length == ((1 : GoInt)) && new regexp.syntax.Syntax.Flags(new regexp.syntax.Syntax.Flags(_i.value.arg).__t__ & regexp.syntax.Syntax.foldCase.__t__).__t__ == ((0 : GoUInt16))) {
            _buf.writeRune(_i.value.rune[((0 : GoInt))]);
            {
                final __tmp__0 = _i.value.out;
                final __tmp__1 = Go.pointer(_p.value.inst[_i.value.out]);
                _pc = __tmp__0;
                _i = __tmp__1;
            };
        };
        if (_i.value.op.__t__ == regexp.syntax.Syntax.instEmptyWidth.__t__ && new regexp.syntax.Syntax.EmptyOp(new regexp.syntax.Syntax.EmptyOp(_i.value.arg).__t__ & regexp.syntax.Syntax.emptyEndText.__t__).__t__ != ((0 : GoUInt8)) && _p.value.inst[_i.value.out].op.__t__ == regexp.syntax.Syntax.instMatch.__t__) {
            _complete = true;
        };
        return { _0 : _buf.toString(), _1 : _complete, _2 : _pc };
    }
/**
    // OnePassNext selects the next actionable state of the prog, based on the input character.
    // It should only be called when i.Op == InstAlt or InstAltMatch, and from the one-pass machine.
    // One of the alternates may ultimately lead without input to end of line. If the instruction
    // is InstAltMatch the path to the InstMatch is in i.Out, the normal node in i.Next.
**/
function _onePassNext(_i:Pointer<T_onePassInst>, _r:GoRune):GoUInt32 {
        var _next:GoInt = _i.value.matchRunePos(_r);
        if (_next >= ((0 : GoInt))) {
            return _i.value.next[_next];
        };
        if (_i.value.inst.op.__t__ == regexp.syntax.Syntax.instAltMatch.__t__) {
            return _i.value.inst.out;
        };
        return ((0 : GoUInt32));
    }
function _iop(_i:Pointer<regexp.syntax.Syntax.Inst>):regexp.syntax.Syntax.InstOp {
        var _op:regexp.syntax.Syntax.InstOp = _i.value.op;
        if (_op.__t__ == regexp.syntax.Syntax.instRune1.__t__ || _op.__t__ == regexp.syntax.Syntax.instRuneAny.__t__ || _op.__t__ == regexp.syntax.Syntax.instRuneAnyNotNL.__t__) {
            _op = regexp.syntax.Syntax.instRune;
        };
        return _op;
    }
function _newQueue(_size:GoInt):Pointer<T_queueOnePass> {
        var _q:Pointer<T_queueOnePass> = new Pointer<T_queueOnePass>().nil();
        return Go.pointer((({ _sparse : new Slice<GoUInt32>(...[for (i in 0 ... ((_size : GoInt)).toBasic()) ((0 : GoUInt32))]), _dense : new Slice<GoUInt32>(...[for (i in 0 ... ((_size : GoInt)).toBasic()) ((0 : GoUInt32))]), _size : 0, _nextIndex : 0 } : T_queueOnePass)));
    }
function _mergeRuneSets(_leftRunes:Pointer<Slice<GoRune>>, _rightRunes:Pointer<Slice<GoRune>>, _leftPC:GoUInt32, _rightPC:GoUInt32):{ var _0 : Slice<GoRune>; var _1 : Slice<GoUInt32>; } {
        var recover_exception:Error = null;
        var deferstack:Array<Void -> Void> = [];
        var _leftLen:GoInt = _leftRunes.value.length;
        var _rightLen:GoInt = _rightRunes.value.length;
        try {
            if (_leftLen & ((1 : GoInt)) != ((0 : GoInt)) || _rightLen & ((1 : GoInt)) != ((0 : GoInt))) {
                throw "mergeRuneSets odd length []rune";
            };
            var _lx:GoInt = ((0 : GoInt)), _rx:GoInt = ((0 : GoInt));
            var _merged:Slice<GoInt32> = new Slice<GoInt32>(...[for (i in 0 ... ((((0 : GoInt)) : GoInt)).toBasic()) ((0 : GoInt32))]);
            var _next:Slice<GoUInt32> = new Slice<GoUInt32>(...[for (i in 0 ... ((((0 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt32))]);
            var _ok:Bool = true;
            {
                deferstack.unshift(() -> {
                    var a = function():Void {
                        if (!_ok) {
                            _merged = new Slice<GoInt32>().nil();
                            _next = new Slice<GoUInt32>().nil();
                        };
                    };
                    a();
                });
            };
            var _ix:GoInt = -((1 : GoUnTypedInt));
            var _extend:(Pointer<GoInt>, Pointer<Slice<GoInt32>>, GoUInt32) -> Bool = function(_newLow:Pointer<GoInt>, _newArray:Pointer<Slice<GoRune>>, _pc:GoUInt32):Bool {
                if (_ix > ((0 : GoInt)) && (_newArray.value)[_newLow.value] <= _merged[_ix]) {
                    return false;
                };
                _merged = _merged.__append__((_newArray.value)[_newLow.value], (_newArray.value)[_newLow.value + ((1 : GoInt))]);
                _newLow.value = _newLow.value + (((2 : GoInt)));
                _ix = _ix + (((2 : GoInt)));
                _next = _next.__append__(_pc);
                return true;
            };
            while (_lx < _leftLen || _rx < _rightLen) {
                if (_rx >= _rightLen) {
                    _ok = _extend(Go.pointer(_lx), _leftRunes, _leftPC);
                } else if (_lx >= _leftLen) {
                    _ok = _extend(Go.pointer(_rx), _rightRunes, _rightPC);
                } else if ((_rightRunes.value)[_rx] < (_leftRunes.value)[_lx]) {
                    _ok = _extend(Go.pointer(_rx), _rightRunes, _rightPC);
                } else {
                    _ok = _extend(Go.pointer(_lx), _leftRunes, _leftPC);
                };
                if (!_ok) {
                    {
                        for (defer in deferstack) {
                            defer();
                        };
                        return { _0 : _noRune, _1 : _noNext };
                    };
                };
            };
            {
                for (defer in deferstack) {
                    defer();
                };
                return { _0 : _merged, _1 : _next };
            };
            for (defer in deferstack) {
                defer();
            };
        } catch(e) {
            recover_exception = stdgo.runtime.Runtime.newRuntime(e.message);
            {
                for (defer in deferstack) {
                    defer();
                };
                if (recover_exception != null) throw recover_exception;
                return { _0 : new Slice<GoInt32>().nil(), _1 : new Slice<GoUInt32>().nil() };
            };
        };
    }
/**
    // cleanupOnePass drops working memory, and restores certain shortcut instructions.
**/
function _cleanupOnePass(_prog:Pointer<T_onePassProg>, _original:Pointer<regexp.syntax.Syntax.Prog>):Void {
        {
            var _ix;
            var _instOriginal;
            for (_obj in _original.value.inst.keyValueIterator()) {
                _ix = _obj.key;
                _instOriginal = _obj.value;
                if (_instOriginal.op.__t__ == regexp.syntax.Syntax.instAlt.__t__ || _instOriginal.op.__t__ == regexp.syntax.Syntax.instAltMatch.__t__ || _instOriginal.op.__t__ == regexp.syntax.Syntax.instRune.__t__) {} else if (_instOriginal.op.__t__ == regexp.syntax.Syntax.instCapture.__t__ || _instOriginal.op.__t__ == regexp.syntax.Syntax.instEmptyWidth.__t__ || _instOriginal.op.__t__ == regexp.syntax.Syntax.instNop.__t__ || _instOriginal.op.__t__ == regexp.syntax.Syntax.instMatch.__t__ || _instOriginal.op.__t__ == regexp.syntax.Syntax.instFail.__t__) {
                    _prog.value.inst[_ix].next = new Slice<GoUInt32>().nil();
                } else if (_instOriginal.op.__t__ == regexp.syntax.Syntax.instRune1.__t__ || _instOriginal.op.__t__ == regexp.syntax.Syntax.instRuneAny.__t__ || _instOriginal.op.__t__ == regexp.syntax.Syntax.instRuneAnyNotNL.__t__) {
                    _prog.value.inst[_ix].next = new Slice<GoUInt32>().nil();
                    _prog.value.inst[_ix] = (({ inst : _instOriginal.__copy__(), next : new Slice<GoUInt32>().nil() } : T_onePassInst)).__copy__();
                };
            };
        };
    }
/**
    // onePassCopy creates a copy of the original Prog, as we'll be modifying it
**/
function _onePassCopy(_prog:Pointer<regexp.syntax.Syntax.Prog>):Pointer<T_onePassProg> {
        var _p:Pointer<T_onePassProg> = Go.pointer((({ start : _prog.value.start, numCap : _prog.value.numCap, inst : new Slice<T_onePassInst>(...[for (i in 0 ... ((_prog.value.inst.length : GoInt)).toBasic()) new T_onePassInst()]) } : T_onePassProg)));
        {
            var _i;
            var _inst;
            for (_obj in _prog.value.inst.keyValueIterator()) {
                _i = _obj.key;
                _inst = _obj.value;
                _p.value.inst[_i] = (({ inst : _inst.__copy__(), next : new Slice<GoUInt32>().nil() } : T_onePassInst)).__copy__();
            };
        };
        {
            var _pc;
            for (_obj in _p.value.inst.keyValueIterator()) {
                _pc = _obj.key;
                if (_p.value.inst[_pc].inst.op.__t__ == regexp.syntax.Syntax.instAlt.__t__ || _p.value.inst[_pc].inst.op.__t__ == regexp.syntax.Syntax.instAltMatch.__t__) {
                    var _p_A_Other:Pointer<GoUInt32> = Go.pointer(_p.value.inst[_pc].inst.out);
                    var _p_A_Alt:Pointer<GoUInt32> = Go.pointer(_p.value.inst[_pc].inst.arg);
                    var _instAlt:T_onePassInst = _p.value.inst[_p_A_Alt.value].__copy__();
                    if (!(_instAlt.inst.op.__t__ == regexp.syntax.Syntax.instAlt.__t__ || _instAlt.inst.op.__t__ == regexp.syntax.Syntax.instAltMatch.__t__)) {
                        {
                            final __tmp__0 = _p_A_Other;
                            final __tmp__1 = _p_A_Alt;
                            _p_A_Alt = __tmp__0;
                            _p_A_Other = __tmp__1;
                        };
                        _instAlt = _p.value.inst[_p_A_Alt.value].__copy__();
                        if (!(_instAlt.inst.op.__t__ == regexp.syntax.Syntax.instAlt.__t__ || _instAlt.inst.op.__t__ == regexp.syntax.Syntax.instAltMatch.__t__)) {
                            continue;
                        };
                    };
                    var _instOther:T_onePassInst = _p.value.inst[_p_A_Other.value].__copy__();
                    if (_instOther.inst.op.__t__ == regexp.syntax.Syntax.instAlt.__t__ || _instOther.inst.op.__t__ == regexp.syntax.Syntax.instAltMatch.__t__) {
                        continue;
                    };
                    var _p_B_Alt:Pointer<GoUInt32> = Go.pointer(_p.value.inst[_p_A_Alt.value].inst.out);
                    var _p_B_Other:Pointer<GoUInt32> = Go.pointer(_p.value.inst[_p_A_Alt.value].inst.arg);
                    var _patch:Bool = false;
                    if (_instAlt.inst.out == ((_pc : GoUInt32))) {
                        _patch = true;
                    } else if (_instAlt.inst.arg == ((_pc : GoUInt32))) {
                        _patch = true;
                        {
                            final __tmp__0 = _p_B_Other;
                            final __tmp__1 = _p_B_Alt;
                            _p_B_Alt = __tmp__0;
                            _p_B_Other = __tmp__1;
                        };
                    };
                    if (_patch) {
                        _p_B_Alt.value = _p_A_Other.value;
                    };
                    if (_p_A_Other.value == _p_B_Alt.value) {
                        _p_A_Alt.value = _p_B_Other.value;
                    };
                };
            };
        };
        return _p;
    }
/**
    // makeOnePass creates a onepass Prog, if possible. It is possible if at any alt,
    // the match engine can always tell which branch to take. The routine may modify
    // p if it is turned into a onepass Prog. If it isn't possible for this to be a
    // onepass Prog, the Prog nil is returned. makeOnePass is recursive
    // to the size of the Prog.
**/
function _makeOnePass(_p:Pointer<T_onePassProg>):Pointer<T_onePassProg> {
        if (_p.value.inst.length >= ((1000 : GoInt))) {
            return new Pointer<T_onePassProg>().nil();
        };
        var _instQueue:Pointer<T_queueOnePass> = _newQueue(_p.value.inst.length), _visitQueue:Pointer<T_queueOnePass> = _newQueue(_p.value.inst.length), _check:(GoUInt32, Slice<Bool>) -> Bool = null, _onePassRunes:Slice<Slice<GoInt32>> = new Slice<Slice<GoInt32>>(...[for (i in 0 ... ((_p.value.inst.length : GoInt)).toBasic()) new Slice<GoInt32>().nil()]);
        _check = function(_pc:GoUInt32, _m:Slice<Bool>):Bool {
            var _ok:Bool = false;
            _ok = true;
            var _inst:Pointer<T_onePassInst> = Go.pointer(_p.value.inst[_pc]);
            if (_visitQueue.value._contains(_pc)) {
                return _ok;
            };
            _visitQueue.value._insert(_pc);
            {
                var __switchIndex__ = -1;
                while (true) {
                    if (_inst.value.inst.op.__t__ == regexp.syntax.Syntax.instAlt.__t__ || _inst.value.inst.op.__t__ == regexp.syntax.Syntax.instAltMatch.__t__) {
                        _ok = _check(_inst.value.inst.out, _m) && _check(_inst.value.inst.arg, _m);
                        var _matchOut:Bool = _m[_inst.value.inst.out];
                        var _matchArg:Bool = _m[_inst.value.inst.arg];
                        if (_matchOut && _matchArg) {
                            _ok = false;
                            break;
                        };
                        if (_matchArg) {
                            {
                                final __tmp__0 = _inst.value.inst.arg;
                                final __tmp__1 = _inst.value.inst.out;
                                _inst.value.inst.out = __tmp__0;
                                _inst.value.inst.arg = __tmp__1;
                            };
                            {
                                final __tmp__0 = _matchArg;
                                final __tmp__1 = _matchOut;
                                _matchOut = __tmp__0;
                                _matchArg = __tmp__1;
                            };
                        };
                        if (_matchOut) {
                            _m[_pc] = true;
                            _inst.value.inst.op = regexp.syntax.Syntax.instAltMatch;
                        };
                        {
                            var __tmp__ = _mergeRuneSets(Go.pointer(_onePassRunes[_inst.value.inst.out]), Go.pointer(_onePassRunes[_inst.value.inst.arg]), _inst.value.inst.out, _inst.value.inst.arg);
                            _onePassRunes[_pc] = __tmp__._0;
                            _inst.value.next = __tmp__._1;
                        };
                        if (_inst.value.next.length > ((0 : GoInt)) && _inst.value.next[((0 : GoInt))] == _mergeFailed) {
                            _ok = false;
                            break;
                        };
                        break;
                    } else if (_inst.value.inst.op.__t__ == regexp.syntax.Syntax.instCapture.__t__ || _inst.value.inst.op.__t__ == regexp.syntax.Syntax.instNop.__t__) {
                        _ok = _check(_inst.value.inst.out, _m);
                        _m[_pc] = _m[_inst.value.inst.out];
                        _onePassRunes[_pc] = new Slice<GoInt32>().__append__(..._onePassRunes[_inst.value.inst.out].toArray());
                        _inst.value.next = new Slice<GoUInt32>(...[for (i in 0 ... ((_onePassRunes[_pc].length / ((2 : GoInt)) + ((1 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt32))]);
                        {
                            var _i;
                            for (_obj in _inst.value.next.keyValueIterator()) {
                                _i = _obj.key;
                                _inst.value.next[_i] = _inst.value.inst.out;
                            };
                        };
                        break;
                    } else if (_inst.value.inst.op.__t__ == regexp.syntax.Syntax.instEmptyWidth.__t__) {
                        _ok = _check(_inst.value.inst.out, _m);
                        _m[_pc] = _m[_inst.value.inst.out];
                        _onePassRunes[_pc] = new Slice<GoInt32>().__append__(..._onePassRunes[_inst.value.inst.out].toArray());
                        _inst.value.next = new Slice<GoUInt32>(...[for (i in 0 ... ((_onePassRunes[_pc].length / ((2 : GoInt)) + ((1 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt32))]);
                        {
                            var _i;
                            for (_obj in _inst.value.next.keyValueIterator()) {
                                _i = _obj.key;
                                _inst.value.next[_i] = _inst.value.inst.out;
                            };
                        };
                        break;
                    } else if (_inst.value.inst.op.__t__ == regexp.syntax.Syntax.instMatch.__t__ || _inst.value.inst.op.__t__ == regexp.syntax.Syntax.instFail.__t__) {
                        _m[_pc] = _inst.value.inst.op.__t__ == regexp.syntax.Syntax.instMatch.__t__;
                        break;
                    } else if (_inst.value.inst.op.__t__ == regexp.syntax.Syntax.instRune.__t__) {
                        _m[_pc] = false;
                        if (_inst.value.next.length > ((0 : GoInt))) {
                            break;
                        };
                        _instQueue.value._insert(_inst.value.inst.out);
                        if (_inst.value.inst.rune.length == ((0 : GoInt))) {
                            _onePassRunes[_pc] = new Slice<GoInt32>();
                            _inst.value.next = new Slice<GoUInt32>(_inst.value.inst.out);
                            break;
                        };
                        var _runes:Slice<GoInt32> = new Slice<GoInt32>(...[for (i in 0 ... ((((0 : GoInt)) : GoInt)).toBasic()) ((0 : GoInt32))]);
                        if (_inst.value.inst.rune.length == ((1 : GoInt)) && new regexp.syntax.Syntax.Flags(new regexp.syntax.Syntax.Flags(_inst.value.inst.arg).__t__ & regexp.syntax.Syntax.foldCase.__t__).__t__ != ((0 : GoUInt16))) {
                            var _r0:GoInt32 = _inst.value.inst.rune[((0 : GoInt))];
                            _runes = _runes.__append__(_r0, _r0);
                            {
                                var _r1:GoInt32 = unicode.Unicode.simpleFold(_r0);
                                Go.cfor(_r1 != _r0, _r1 = unicode.Unicode.simpleFold(_r1), {
                                    _runes = _runes.__append__(_r1, _r1);
                                });
                            };
                            stdgo.sort.Sort.sort(new T_runeSlice(_runes).__copy__());
                        } else {
                            _runes = _runes.__append__(..._inst.value.inst.rune.toArray());
                        };
                        _onePassRunes[_pc] = _runes;
                        _inst.value.next = new Slice<GoUInt32>(...[for (i in 0 ... ((_onePassRunes[_pc].length / ((2 : GoInt)) + ((1 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt32))]);
                        {
                            var _i;
                            for (_obj in _inst.value.next.keyValueIterator()) {
                                _i = _obj.key;
                                _inst.value.next[_i] = _inst.value.inst.out;
                            };
                        };
                        _inst.value.inst.op = regexp.syntax.Syntax.instRune;
                        break;
                    } else if (_inst.value.inst.op.__t__ == regexp.syntax.Syntax.instRune1.__t__) {
                        _m[_pc] = false;
                        if (_inst.value.next.length > ((0 : GoInt))) {
                            break;
                        };
                        _instQueue.value._insert(_inst.value.inst.out);
                        var _runes:Slice<GoInt32> = new Slice<GoInt32>();
                        if (new regexp.syntax.Syntax.Flags(new regexp.syntax.Syntax.Flags(_inst.value.inst.arg).__t__ & regexp.syntax.Syntax.foldCase.__t__).__t__ != ((0 : GoUInt16))) {
                            var _r0:GoInt32 = _inst.value.inst.rune[((0 : GoInt))];
                            _runes = _runes.__append__(_r0, _r0);
                            {
                                var _r1:GoInt32 = unicode.Unicode.simpleFold(_r0);
                                Go.cfor(_r1 != _r0, _r1 = unicode.Unicode.simpleFold(_r1), {
                                    _runes = _runes.__append__(_r1, _r1);
                                });
                            };
                            stdgo.sort.Sort.sort(new T_runeSlice(_runes).__copy__());
                        } else {
                            _runes = _runes.__append__(_inst.value.inst.rune[((0 : GoInt))], _inst.value.inst.rune[((0 : GoInt))]);
                        };
                        _onePassRunes[_pc] = _runes;
                        _inst.value.next = new Slice<GoUInt32>(...[for (i in 0 ... ((_onePassRunes[_pc].length / ((2 : GoInt)) + ((1 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt32))]);
                        {
                            var _i;
                            for (_obj in _inst.value.next.keyValueIterator()) {
                                _i = _obj.key;
                                _inst.value.next[_i] = _inst.value.inst.out;
                            };
                        };
                        _inst.value.inst.op = regexp.syntax.Syntax.instRune;
                        break;
                    } else if (_inst.value.inst.op.__t__ == regexp.syntax.Syntax.instRuneAny.__t__) {
                        _m[_pc] = false;
                        if (_inst.value.next.length > ((0 : GoInt))) {
                            break;
                        };
                        _instQueue.value._insert(_inst.value.inst.out);
                        _onePassRunes[_pc] = new Slice<GoInt32>().__append__(..._anyRune.toArray());
                        _inst.value.next = new Slice<GoUInt32>(_inst.value.inst.out);
                        break;
                    } else if (_inst.value.inst.op.__t__ == regexp.syntax.Syntax.instRuneAnyNotNL.__t__) {
                        _m[_pc] = false;
                        if (_inst.value.next.length > ((0 : GoInt))) {
                            break;
                        };
                        _instQueue.value._insert(_inst.value.inst.out);
                        _onePassRunes[_pc] = new Slice<GoInt32>().__append__(..._anyRuneNotNL.toArray());
                        _inst.value.next = new Slice<GoUInt32>(...[for (i in 0 ... ((_onePassRunes[_pc].length / ((2 : GoInt)) + ((1 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt32))]);
                        {
                            var _i;
                            for (_obj in _inst.value.next.keyValueIterator()) {
                                _i = _obj.key;
                                _inst.value.next[_i] = _inst.value.inst.out;
                            };
                        };
                        break;
                    };
                    break;
                };
            };
            return _ok;
        };
        _instQueue.value._clear();
        _instQueue.value._insert(((_p.value.start : GoUInt32)));
        var _m:Slice<Bool> = new Slice<Bool>(...[for (i in 0 ... ((_p.value.inst.length : GoInt)).toBasic()) false]);
        while (!_instQueue.value._empty()) {
            _visitQueue.value._clear();
            var _pc:GoUInt32 = _instQueue.value._next();
            if (!_check(_pc, _m)) {
                _p = new Pointer<T_onePassProg>().nil();
                break;
            };
        };
        if (_p != null && !_p.isNil()) {
            {
                var _i;
                for (_obj in _p.value.inst.keyValueIterator()) {
                    _i = _obj.key;
                    _p.value.inst[_i].inst.rune = _onePassRunes[_i];
                };
            };
        };
        return _p;
    }
/**
    // compileOnePass returns a new *syntax.Prog suitable for onePass execution if the original Prog
    // can be recharacterized as a one-pass regexp program, or syntax.nil if the
    // Prog cannot be converted. For a one pass prog, the fundamental condition that must
    // be true is: at any InstAlt, there must be no ambiguity about what branch to  take.
**/
function _compileOnePass(_prog:Pointer<regexp.syntax.Syntax.Prog>):Pointer<T_onePassProg> {
        var _p:Pointer<T_onePassProg> = new Pointer<T_onePassProg>().nil();
        if (_prog.value.start == ((0 : GoInt))) {
            return new Pointer<T_onePassProg>().nil();
        };
        if (_prog.value.inst[_prog.value.start].op.__t__ != regexp.syntax.Syntax.instEmptyWidth.__t__ || new regexp.syntax.Syntax.EmptyOp(new regexp.syntax.Syntax.EmptyOp(_prog.value.inst[_prog.value.start].arg).__t__ & regexp.syntax.Syntax.emptyBeginText.__t__).__t__ != regexp.syntax.Syntax.emptyBeginText.__t__) {
            return new Pointer<T_onePassProg>().nil();
        };
        for (_inst in _prog.value.inst) {
            var _opOut:regexp.syntax.Syntax.InstOp = _prog.value.inst[_inst.out].op;
            if (_inst.op.__t__ == regexp.syntax.Syntax.instAlt.__t__ || _inst.op.__t__ == regexp.syntax.Syntax.instAltMatch.__t__) {
                if (_opOut.__t__ == regexp.syntax.Syntax.instMatch.__t__ || _prog.value.inst[_inst.arg].op.__t__ == regexp.syntax.Syntax.instMatch.__t__) {
                    return new Pointer<T_onePassProg>().nil();
                };
            } else if (_inst.op.__t__ == regexp.syntax.Syntax.instEmptyWidth.__t__) {
                if (_opOut.__t__ == regexp.syntax.Syntax.instMatch.__t__) {
                    if (new regexp.syntax.Syntax.EmptyOp(new regexp.syntax.Syntax.EmptyOp(_inst.arg).__t__ & regexp.syntax.Syntax.emptyEndText.__t__).__t__ == regexp.syntax.Syntax.emptyEndText.__t__) {
                        continue;
                    };
                    return new Pointer<T_onePassProg>().nil();
                };
            };
        };
        _p = _onePassCopy(_prog);
        _p = _makeOnePass(_p);
        if (_p != null && !_p.isNil()) {
            _cleanupOnePass(_p, _prog);
        };
        return _p;
    }
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
function compile(_expr:GoString):{ var _0 : Pointer<Regexp>; var _1 : Error; } {
        return _compile(_expr, regexp.syntax.Syntax.perl, false);
    }
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
function compilePOSIX(_expr:GoString):{ var _0 : Pointer<Regexp>; var _1 : Error; } {
        return _compile(_expr, regexp.syntax.Syntax.posix, true);
    }
function _compile(_expr:GoString, _mode:regexp.syntax.Syntax.Flags, _longest:Bool):{ var _0 : Pointer<Regexp>; var _1 : Error; } {
        var __tmp__ = regexp.syntax.Syntax.parse(_expr, _mode), _re:Pointer<regexp.syntax.Syntax.Regexp> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : new Pointer<Regexp>().nil(), _1 : _err };
        };
        var _maxCap:GoInt = _re.value.maxCap();
        var _capNames:Slice<GoString> = _re.value.capNames();
        _re = _re.value.simplify();
        var __tmp__ = regexp.syntax.Syntax.compile(_re), _prog:Pointer<regexp.syntax.Syntax.Prog> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : new Pointer<Regexp>().nil(), _1 : _err };
        };
        var _matchcap:GoInt = _prog.value.numCap;
        if (_matchcap < ((2 : GoInt))) {
            _matchcap = ((2 : GoInt));
        };
        var _regexp:Pointer<Regexp> = Go.pointer((({ _expr : _expr, _prog : _prog, _onepass : _compileOnePass(_prog), _numSubexp : _maxCap, _subexpNames : _capNames, _cond : _prog.value.startCond(), _longest : _longest, _matchcap : _matchcap, _minInputLen : _minInputLen(_re), _maxBitStateLen : 0, _prefix : "", _prefixBytes : new Slice<GoUInt8>().nil(), _prefixRune : 0, _prefixEnd : 0, _mpool : 0, _prefixComplete : false } : Regexp)));
        if (_regexp.value._onepass == null || _regexp.value._onepass.isNil()) {
            {
                var __tmp__ = _prog.value.prefix();
                _regexp.value._prefix = __tmp__._0;
                _regexp.value._prefixComplete = __tmp__._1;
            };
            _regexp.value._maxBitStateLen = _maxBitStateLen(_prog);
        } else {
            {
                var __tmp__ = _onePassPrefix(_prog);
                _regexp.value._prefix = __tmp__._0;
                _regexp.value._prefixComplete = __tmp__._1;
                _regexp.value._prefixEnd = __tmp__._2;
            };
        };
        if (_regexp.value._prefix != (("" : GoString))) {
            _regexp.value._prefixBytes = ((_regexp.value._prefix : Slice<GoByte>));
            {
                var __tmp__ = unicode.utf8.Utf8.decodeRuneInString(_regexp.value._prefix);
                _regexp.value._prefixRune = __tmp__._0;
            };
        };
        var _n:GoInt = _prog.value.inst.length;
        var _i:GoInt = ((0 : GoInt));
        while (_matchSize[_i] != ((0 : GoInt)) && _matchSize[_i] < _n) {
            _i++;
        };
        _regexp.value._mpool = _i;
        return { _0 : _regexp, _1 : ((null : stdgo.Error)) };
    }
/**
    // minInputLen walks the regexp to find the minimum length of any matchable input
**/
function _minInputLen(_re:Pointer<regexp.syntax.Syntax.Regexp>):GoInt {
        if (_re.value.op.__t__ == regexp.syntax.Syntax.opAnyChar.__t__ || _re.value.op.__t__ == regexp.syntax.Syntax.opAnyCharNotNL.__t__ || _re.value.op.__t__ == regexp.syntax.Syntax.opCharClass.__t__) {
            return ((1 : GoInt));
        } else if (_re.value.op.__t__ == regexp.syntax.Syntax.opLiteral.__t__) {
            var _l:GoInt = ((0 : GoInt));
            for (_r in _re.value.rune) {
                _l = _l + (unicode.utf8.Utf8.runeLen(_r));
            };
            return _l;
        } else if (_re.value.op.__t__ == regexp.syntax.Syntax.opCapture.__t__ || _re.value.op.__t__ == regexp.syntax.Syntax.opPlus.__t__) {
            return _minInputLen(_re.value.sub[((0 : GoInt))]);
        } else if (_re.value.op.__t__ == regexp.syntax.Syntax.opRepeat.__t__) {
            return _re.value.min * _minInputLen(_re.value.sub[((0 : GoInt))]);
        } else if (_re.value.op.__t__ == regexp.syntax.Syntax.opConcat.__t__) {
            var _l:GoInt = ((0 : GoInt));
            for (_sub in _re.value.sub) {
                _l = _l + (_minInputLen(_sub));
            };
            return _l;
        } else if (_re.value.op.__t__ == regexp.syntax.Syntax.opAlternate.__t__) {
            var _l:GoInt = _minInputLen(_re.value.sub[((0 : GoInt))]);
            var _lnext:GoInt = ((0 : GoInt));
            for (_sub in _re.value.sub.__slice__(((1 : GoInt)))) {
                _lnext = _minInputLen(_sub);
                if (_lnext < _l) {
                    _l = _lnext;
                };
            };
            return _l;
        };
    }
/**
    // MustCompile is like Compile but panics if the expression cannot be parsed.
    // It simplifies safe initialization of global variables holding compiled regular
    // expressions.
**/
function mustCompile(_str:GoString):Pointer<Regexp> {
        var __tmp__ = compile(_str), _regexp:Pointer<Regexp> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            throw (("regexp: Compile(" : GoString)) + _quote(_str) + (("): " : GoString)) + _err.error();
        };
        return _regexp;
    }
/**
    // MustCompilePOSIX is like CompilePOSIX but panics if the expression cannot be parsed.
    // It simplifies safe initialization of global variables holding compiled regular
    // expressions.
**/
function mustCompilePOSIX(_str:GoString):Pointer<Regexp> {
        var __tmp__ = compilePOSIX(_str), _regexp:Pointer<Regexp> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            throw (("regexp: CompilePOSIX(" : GoString)) + _quote(_str) + (("): " : GoString)) + _err.error();
        };
        return _regexp;
    }
function _quote(_s:GoString):GoString {
        if (stdgo.strconv.Strconv.canBackquote(_s)) {
            return (("`" : GoString)) + _s + (("`" : GoString));
        };
        return stdgo.strconv.Strconv.quote(_s);
    }
/**
    // MatchReader reports whether the text returned by the RuneReader
    // contains any match of the regular expression pattern.
    // More complicated queries need to use Compile and the full Regexp interface.
**/
function matchReader(_pattern:GoString, _r:stdgo.io.Io.RuneReader):{ var _0 : Bool; var _1 : Error; } {
        var _matched:Bool = false, _err:Error = ((null : stdgo.Error));
        var __tmp__ = compile(_pattern), _re:Pointer<Regexp> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : false, _1 : _err };
        };
        return { _0 : _re.value.matchReader(_r), _1 : ((null : stdgo.Error)) };
    }
/**
    // MatchString reports whether the string s
    // contains any match of the regular expression pattern.
    // More complicated queries need to use Compile and the full Regexp interface.
**/
function matchString(_pattern:GoString, _s:GoString):{ var _0 : Bool; var _1 : Error; } {
        var _matched:Bool = false, _err:Error = ((null : stdgo.Error));
        var __tmp__ = compile(_pattern), _re:Pointer<Regexp> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : false, _1 : _err };
        };
        return { _0 : _re.value.matchString(_s), _1 : ((null : stdgo.Error)) };
    }
/**
    // Match reports whether the byte slice b
    // contains any match of the regular expression pattern.
    // More complicated queries need to use Compile and the full Regexp interface.
**/
function match(_pattern:GoString, _b:Slice<GoByte>):{ var _0 : Bool; var _1 : Error; } {
        var _matched:Bool = false, _err:Error = ((null : stdgo.Error));
        var __tmp__ = compile(_pattern), _re:Pointer<Regexp> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : false, _1 : _err };
        };
        return { _0 : _re.value.match(_b), _1 : ((null : stdgo.Error)) };
    }
/**
    // special reports whether byte b needs to be escaped by QuoteMeta.
**/
function _special(_b:GoByte):Bool {
        return _b < unicode.utf8.Utf8.runeSelf && _specialBytes[_b % ((16 : GoUInt8))] & ((((1 : GoUInt8)) << (_b / ((16 : GoUInt8))))) != ((0 : GoUInt8));
    }
/**
    // QuoteMeta returns a string that escapes all regular expression metacharacters
    // inside the argument text; the returned string is a regular expression matching
    // the literal text.
**/
function quoteMeta(_s:GoString):GoString {
        var _i:GoInt = ((0 : GoInt));
        {
            _i = ((0 : GoInt));
            Go.cfor(_i < _s.length, _i++, {
                if (_special(_s[_i])) {
                    break;
                };
            });
        };
        if (_i >= _s.length) {
            return _s;
        };
        var _b:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((((2 : GoInt)) * _s.length - _i : GoInt)).toBasic()) ((0 : GoUInt8))]);
        Go.copy(_b, _s.__slice__(0, _i));
        var _j:GoInt = _i;
        Go.cfor(_i < _s.length, _i++, {
            if (_special(_s[_i])) {
                _b[_j] = (("\\".code : GoRune));
                _j++;
            };
            _b[_j] = _s[_i];
            _j++;
        });
        return ((_b.__slice__(0, _j) : GoString));
    }
/**
    // extract returns the name from a leading "$name" or "${name}" in str.
    // If it is a number, extract returns num set to that number; otherwise num = -1.
**/
function _extract(_str:GoString):{ var _0 : GoString; var _1 : GoInt; var _2 : GoString; var _3 : Bool; } {
        var _name:GoString = (("" : GoString)), _num:GoInt = ((0 : GoInt)), _rest:GoString = (("" : GoString)), _ok:Bool = false;
        if (_str.length < ((2 : GoInt)) || _str[((0 : GoInt))] != (("$".code : GoRune))) {
            return { _0 : _name, _1 : _num, _2 : _rest, _3 : _ok };
        };
        var _brace:Bool = false;
        if (_str[((1 : GoInt))] == (("{".code : GoRune))) {
            _brace = true;
            _str = _str.__slice__(((2 : GoInt)));
        } else {
            _str = _str.__slice__(((1 : GoInt)));
        };
        var _i:GoInt = ((0 : GoInt));
        while (_i < _str.length) {
            var __tmp__ = unicode.utf8.Utf8.decodeRuneInString(_str.__slice__(_i)), _rune:GoInt32 = __tmp__._0, _size:GoInt = __tmp__._1;
            if (!unicode.Unicode.isLetter(_rune) && !unicode.Unicode.isDigit(_rune) && _rune != (("_".code : GoRune))) {
                break;
            };
            _i = _i + (_size);
        };
        if (_i == ((0 : GoInt))) {
            return { _0 : _name, _1 : _num, _2 : _rest, _3 : _ok };
        };
        _name = _str.__slice__(0, _i);
        if (_brace) {
            if (_i >= _str.length || _str[_i] != (("}".code : GoRune))) {
                return { _0 : _name, _1 : _num, _2 : _rest, _3 : _ok };
            };
            _i++;
        };
        _num = ((0 : GoInt));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _name.length, _i++, {
                if (_name[_i] < (("0".code : GoRune)) || (("9".code : GoRune)) < _name[_i] || _num >= ((1e+08 : GoInt))) {
                    _num = -((1 : GoUnTypedInt));
                    break;
                };
                _num = _num * ((10 : GoInt)) + ((_name[_i] : GoInt)) - (("0".code : GoRune));
            });
        };
        if (_name[((0 : GoInt))] == (("0".code : GoRune)) && _name.length > ((1 : GoInt))) {
            _num = -((1 : GoUnTypedInt));
        };
        _rest = _str.__slice__(_i);
        _ok = true;
        return { _0 : _name, _1 : _num, _2 : _rest, _3 : _ok };
    }
@:keep var _ = {
        try {
            for (_b in (("\.+*?()|[]{}^$" : Slice<GoByte>))) {
                _specialBytes[_b % ((16 : GoUInt8))] = _specialBytes[_b % ((16 : GoUInt8))] | ((((1 : GoUInt8)) << (_b / ((16 : GoUInt8)))));
            };
        } catch(e) if (e.message != "__return__") throw e;
        true;
    };
class T_bitState_extension_fields {
    public function _reset(__tmp__, _prog:Pointer<regexp.syntax.Syntax.Prog>, _end:GoInt, _ncap:GoInt):Void __tmp__._reset(_prog, _end, _ncap);
    public function _shouldVisit(__tmp__, _pc:GoUInt32, _pos:GoInt):Bool return __tmp__._shouldVisit(_pc, _pos);
    public function _push(__tmp__, _re:Pointer<Regexp>, _pc:GoUInt32, _pos:GoInt, _arg:Bool):Void __tmp__._push(_re, _pc, _pos, _arg);
}
class T_machine_extension_fields {
    public function _init(__tmp__, _ncap:GoInt):Void __tmp__._init(_ncap);
    public function _alloc(__tmp__, _i:Pointer<regexp.syntax.Syntax.Inst>):Pointer<T_thread> return __tmp__._alloc(_i);
    public function _match(__tmp__, _i:T_input, _pos:GoInt):Bool return __tmp__._match(_i, _pos);
    public function _clear(__tmp__, _q:Pointer<T_queue>):Void __tmp__._clear(_q);
    public function _step(__tmp__, _runq:Pointer<T_queue>, _nextq:Pointer<T_queue>, _pos:GoInt, _nextPos:GoInt, _c:GoRune, _nextCond:Pointer<T_lazyFlag>):Void __tmp__._step(_runq, _nextq, _pos, _nextPos, _c, _nextCond);
    public function _add(__tmp__, _q:Pointer<T_queue>, _pc:GoUInt32, _pos:GoInt, _cap:Slice<GoInt>, _cond:Pointer<T_lazyFlag>, _t:Pointer<T_thread>):Pointer<T_thread> return __tmp__._add(_q, _pc, _pos, _cap, _cond, _t);
}
class T_inputs_extension_fields {
    public function _newBytes(__tmp__, _b:Slice<GoByte>):T_input return __tmp__._newBytes(_b);
    public function _newString(__tmp__, _s:GoString):T_input return __tmp__._newString(_s);
    public function _newReader(__tmp__, _r:stdgo.io.Io.RuneReader):T_input return __tmp__._newReader(_r);
    public function _clear(__tmp__):Void __tmp__._clear();
    public function _init(__tmp__, _r:stdgo.io.Io.RuneReader, _b:Slice<GoByte>, _s:GoString):{ var _0 : T_input; var _1 : GoInt; } return __tmp__._init(_r, _b, _s);
}
class T_lazyFlag_extension_fields {
    public function _match(__tmp__, _op:regexp.syntax.Syntax.EmptyOp):Bool return __tmp__._match(_op);
}
class T_queueOnePass_extension_fields {
    public function _empty(__tmp__):Bool return __tmp__._empty();
    public function _next(__tmp__):GoUInt32 return __tmp__._next();
    public function _clear(__tmp__):Void __tmp__._clear();
    public function _contains(__tmp__, _u:GoUInt32):Bool return __tmp__._contains(_u);
    public function _insert(__tmp__, _u:GoUInt32):Void __tmp__._insert(_u);
    public function _insertNew(__tmp__, _u:GoUInt32):Void __tmp__._insertNew(_u);
}
class T_runeSlice_extension_fields {
    public function len(__tmp__):GoInt return __tmp__.len();
    public function less(__tmp__, _i:GoInt, _j:GoInt):Bool return __tmp__.less(_i, _j);
    public function swap(__tmp__, _i:GoInt, _j:GoInt):Void __tmp__.swap(_i, _j);
}
class Regexp_extension_fields {
    public function _tryBacktrack(__tmp__, _b:Pointer<T_bitState>, _i:T_input, _pc:GoUInt32, _pos:GoInt):Bool return __tmp__._tryBacktrack(_b, _i, _pc, _pos);
    public function _backtrack(__tmp__, _ib:Slice<GoByte>, _is:GoString, _pos:GoInt, _ncap:GoInt, _dstCap:Slice<GoInt>):Slice<GoInt> return __tmp__._backtrack(_ib, _is, _pos, _ncap, _dstCap);
    public function _doOnePass(__tmp__, _ir:stdgo.io.Io.RuneReader, _ib:Slice<GoByte>, _is:GoString, _pos:GoInt, _ncap:GoInt, _dstCap:Slice<GoInt>):Slice<GoInt> return __tmp__._doOnePass(_ir, _ib, _is, _pos, _ncap, _dstCap);
    public function _doMatch(__tmp__, _r:stdgo.io.Io.RuneReader, _b:Slice<GoByte>, _s:GoString):Bool return __tmp__._doMatch(_r, _b, _s);
    public function _doExecute(__tmp__, _r:stdgo.io.Io.RuneReader, _b:Slice<GoByte>, _s:GoString, _pos:GoInt, _ncap:GoInt, _dstCap:Slice<GoInt>):Slice<GoInt> return __tmp__._doExecute(_r, _b, _s, _pos, _ncap, _dstCap);
    public function toString(__tmp__):GoString return __tmp__.toString();
    public function copy(__tmp__):Pointer<Regexp> return __tmp__.copy();
    public function longest(__tmp__):Void __tmp__.longest();
    public function _get(__tmp__):Pointer<T_machine> return __tmp__._get();
    public function _put(__tmp__, _m:Pointer<T_machine>):Void __tmp__._put(_m);
    public function numSubexp(__tmp__):GoInt return __tmp__.numSubexp();
    public function subexpNames(__tmp__):Slice<GoString> return __tmp__.subexpNames();
    public function subexpIndex(__tmp__, _name:GoString):GoInt return __tmp__.subexpIndex(_name);
    public function literalPrefix(__tmp__):{ var _0 : GoString; var _1 : Bool; } return __tmp__.literalPrefix();
    public function matchReader(__tmp__, _r:stdgo.io.Io.RuneReader):Bool return __tmp__.matchReader(_r);
    public function matchString(__tmp__, _s:GoString):Bool return __tmp__.matchString(_s);
    public function match(__tmp__, _b:Slice<GoByte>):Bool return __tmp__.match(_b);
    public function replaceAllString(__tmp__, _src:GoString, _repl:GoString):GoString return __tmp__.replaceAllString(_src, _repl);
    public function replaceAllLiteralString(__tmp__, _src:GoString, _repl:GoString):GoString return __tmp__.replaceAllLiteralString(_src, _repl);
    public function replaceAllStringFunc(__tmp__, _src:GoString, _repl:GoString -> GoString):GoString return __tmp__.replaceAllStringFunc(_src, _repl);
    public function _replaceAll(__tmp__, _bsrc:Slice<GoByte>, _src:GoString, _nmatch:GoInt, _repl:(_dst:Slice<GoByte>, _m:Slice<GoInt>) -> Slice<GoByte>):Slice<GoByte> return __tmp__._replaceAll(_bsrc, _src, _nmatch, _repl);
    public function replaceAll(__tmp__, _src:Slice<GoByte>, _repl:Slice<GoByte>):Slice<GoByte> return __tmp__.replaceAll(_src, _repl);
    public function replaceAllLiteral(__tmp__, _src:Slice<GoByte>, _repl:Slice<GoByte>):Slice<GoByte> return __tmp__.replaceAllLiteral(_src, _repl);
    public function replaceAllFunc(__tmp__, _src:Slice<GoByte>, _repl:Slice<GoByte> -> Slice<GoByte>):Slice<GoByte> return __tmp__.replaceAllFunc(_src, _repl);
    public function _pad(__tmp__, _a:Slice<GoInt>):Slice<GoInt> return __tmp__._pad(_a);
    public function _allMatches(__tmp__, _s:GoString, _b:Slice<GoByte>, _n:GoInt, _deliver:Slice<GoInt> -> Void):Void __tmp__._allMatches(_s, _b, _n, _deliver);
    public function find(__tmp__, _b:Slice<GoByte>):Slice<GoByte> return __tmp__.find(_b);
    public function findIndex(__tmp__, _b:Slice<GoByte>):Slice<GoInt> return __tmp__.findIndex(_b);
    public function findString(__tmp__, _s:GoString):GoString return __tmp__.findString(_s);
    public function findStringIndex(__tmp__, _s:GoString):Slice<GoInt> return __tmp__.findStringIndex(_s);
    public function findReaderIndex(__tmp__, _r:stdgo.io.Io.RuneReader):Slice<GoInt> return __tmp__.findReaderIndex(_r);
    public function findSubmatch(__tmp__, _b:Slice<GoByte>):Slice<Slice<GoByte>> return __tmp__.findSubmatch(_b);
    public function expand(__tmp__, _dst:Slice<GoByte>, _template:Slice<GoByte>, _src:Slice<GoByte>, _match:Slice<GoInt>):Slice<GoByte> return __tmp__.expand(_dst, _template, _src, _match);
    public function expandString(__tmp__, _dst:Slice<GoByte>, _template:GoString, _src:GoString, _match:Slice<GoInt>):Slice<GoByte> return __tmp__.expandString(_dst, _template, _src, _match);
    public function _expand(__tmp__, _dst:Slice<GoByte>, _template:GoString, _bsrc:Slice<GoByte>, _src:GoString, _match:Slice<GoInt>):Slice<GoByte> return __tmp__._expand(_dst, _template, _bsrc, _src, _match);
    public function findSubmatchIndex(__tmp__, _b:Slice<GoByte>):Slice<GoInt> return __tmp__.findSubmatchIndex(_b);
    public function findStringSubmatch(__tmp__, _s:GoString):Slice<GoString> return __tmp__.findStringSubmatch(_s);
    public function findStringSubmatchIndex(__tmp__, _s:GoString):Slice<GoInt> return __tmp__.findStringSubmatchIndex(_s);
    public function findReaderSubmatchIndex(__tmp__, _r:stdgo.io.Io.RuneReader):Slice<GoInt> return __tmp__.findReaderSubmatchIndex(_r);
    public function findAll(__tmp__, _b:Slice<GoByte>, _n:GoInt):Slice<Slice<GoByte>> return __tmp__.findAll(_b, _n);
    public function findAllIndex(__tmp__, _b:Slice<GoByte>, _n:GoInt):Slice<Slice<GoInt>> return __tmp__.findAllIndex(_b, _n);
    public function findAllString(__tmp__, _s:GoString, _n:GoInt):Slice<GoString> return __tmp__.findAllString(_s, _n);
    public function findAllStringIndex(__tmp__, _s:GoString, _n:GoInt):Slice<Slice<GoInt>> return __tmp__.findAllStringIndex(_s, _n);
    public function findAllSubmatch(__tmp__, _b:Slice<GoByte>, _n:GoInt):Slice<Slice<Slice<GoByte>>> return __tmp__.findAllSubmatch(_b, _n);
    public function findAllSubmatchIndex(__tmp__, _b:Slice<GoByte>, _n:GoInt):Slice<Slice<GoInt>> return __tmp__.findAllSubmatchIndex(_b, _n);
    public function findAllStringSubmatch(__tmp__, _s:GoString, _n:GoInt):Slice<Slice<GoString>> return __tmp__.findAllStringSubmatch(_s, _n);
    public function findAllStringSubmatchIndex(__tmp__, _s:GoString, _n:GoInt):Slice<Slice<GoInt>> return __tmp__.findAllStringSubmatchIndex(_s, _n);
    public function split(__tmp__, _s:GoString, _n:GoInt):Slice<GoString> return __tmp__.split(_s, _n);
}
class T_inputString_extension_fields {
    public function _step(__tmp__, _pos:GoInt):{ var _0 : GoRune; var _1 : GoInt; } return __tmp__._step(_pos);
    public function _canCheckPrefix(__tmp__):Bool return __tmp__._canCheckPrefix();
    public function _hasPrefix(__tmp__, _re:Pointer<Regexp>):Bool return __tmp__._hasPrefix(_re);
    public function _index(__tmp__, _re:Pointer<Regexp>, _pos:GoInt):GoInt return __tmp__._index(_re, _pos);
    public function _context(__tmp__, _pos:GoInt):T_lazyFlag return __tmp__._context(_pos);
}
class T_inputBytes_extension_fields {
    public function _step(__tmp__, _pos:GoInt):{ var _0 : GoRune; var _1 : GoInt; } return __tmp__._step(_pos);
    public function _canCheckPrefix(__tmp__):Bool return __tmp__._canCheckPrefix();
    public function _hasPrefix(__tmp__, _re:Pointer<Regexp>):Bool return __tmp__._hasPrefix(_re);
    public function _index(__tmp__, _re:Pointer<Regexp>, _pos:GoInt):GoInt return __tmp__._index(_re, _pos);
    public function _context(__tmp__, _pos:GoInt):T_lazyFlag return __tmp__._context(_pos);
}
class T_inputReader_extension_fields {
    public function _step(__tmp__, _pos:GoInt):{ var _0 : GoRune; var _1 : GoInt; } return __tmp__._step(_pos);
    public function _canCheckPrefix(__tmp__):Bool return __tmp__._canCheckPrefix();
    public function _hasPrefix(__tmp__, _re:Pointer<Regexp>):Bool return __tmp__._hasPrefix(_re);
    public function _index(__tmp__, _re:Pointer<Regexp>, _pos:GoInt):GoInt return __tmp__._index(_re, _pos);
    public function _context(__tmp__, _pos:GoInt):T_lazyFlag return __tmp__._context(_pos);
}
