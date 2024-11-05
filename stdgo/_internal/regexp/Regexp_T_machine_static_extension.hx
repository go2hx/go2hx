package stdgo._internal.regexp;
@:keep @:allow(stdgo._internal.regexp.Regexp.T_machine_asInterface) class T_machine_static_extension {
    @:keep
    static public function _add( _m:stdgo.Ref<stdgo._internal.regexp.Regexp_T_machine.T_machine>, _q:stdgo.Ref<stdgo._internal.regexp.Regexp_T_queue.T_queue>, _pc:stdgo.GoUInt32, _pos:stdgo.GoInt, _cap:stdgo.Slice<stdgo.GoInt>, _cond:stdgo.Pointer<stdgo._internal.regexp.Regexp_T_lazyFlag.T_lazyFlag>, _t:stdgo.Ref<stdgo._internal.regexp.Regexp_T_thread.T_thread>):stdgo.Ref<stdgo._internal.regexp.Regexp_T_thread.T_thread> {
        @:recv var _m:stdgo.Ref<stdgo._internal.regexp.Regexp_T_machine.T_machine> = _m;
        var _opos_3680604:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_3680185:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Inst.Inst> = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Inst.Inst>);
        var _d_3680118:stdgo.Ref<stdgo._internal.regexp.Regexp_T_entry.T_entry> = (null : stdgo.Ref<stdgo._internal.regexp.Regexp_T_entry.T_entry>);
        var _j_3680074:stdgo.GoInt = (0 : stdgo.GoInt);
        var _j_3679989:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 3679950i32;
                } else if (__value__ == (3679950i32)) {
                    if (_pc == ((0u32 : stdgo.GoUInt32))) {
                        _gotoNext = 3679969i32;
                    } else {
                        _gotoNext = 3679986i32;
                    };
                } else if (__value__ == (3679969i32)) {
                    return _t;
                    _gotoNext = 3679986i32;
                } else if (__value__ == (3679986i32)) {
                    {
                        _j_3679989 = _q._sparse[(_pc : stdgo.GoInt)];
                        if (((_j_3679989 < (_q._dense.length : stdgo.GoUInt32) : Bool) && (_q._dense[(_j_3679989 : stdgo.GoInt)]._pc == _pc) : Bool)) {
                            _gotoNext = 3680056i32;
                        } else {
                            _gotoNext = 3680074i32;
                        };
                    };
                } else if (__value__ == (3680056i32)) {
                    return _t;
                    _gotoNext = 3680074i32;
                } else if (__value__ == (3680074i32)) {
                    _j_3680074 = (_q._dense.length);
                    _q._dense = (_q._dense.__slice__(0, (_j_3680074 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.regexp.Regexp_T_entry.T_entry>);
                    _d_3680118 = (stdgo.Go.setRef(_q._dense[(_j_3680074 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.regexp.Regexp_T_entry.T_entry>);
                    _d_3680118._t = null;
                    _d_3680118._pc = _pc;
                    _q._sparse[(_pc : stdgo.GoInt)] = (_j_3680074 : stdgo.GoUInt32);
                    _i_3680185 = (stdgo.Go.setRef(_m._p.inst[(_pc : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Inst.Inst>);
                    var __blank__ = 0i32;
                    _gotoNext = 3680205i32;
                } else if (__value__ == (3680205i32)) {
                    {
                        final __value__ = _i_3680185.op;
                        if (__value__ == ((5 : stdgo._internal.regexp.syntax.Syntax_InstOp.InstOp))) {
                            _gotoNext = 3680251i32;
                        } else if (__value__ == ((0 : stdgo._internal.regexp.syntax.Syntax_InstOp.InstOp)) || __value__ == ((1 : stdgo._internal.regexp.syntax.Syntax_InstOp.InstOp))) {
                            _gotoNext = 3680287i32;
                        } else if (__value__ == ((3 : stdgo._internal.regexp.syntax.Syntax_InstOp.InstOp))) {
                            _gotoNext = 3680397i32;
                        } else if (__value__ == ((6 : stdgo._internal.regexp.syntax.Syntax_InstOp.InstOp))) {
                            _gotoNext = 3680499i32;
                        } else if (__value__ == ((2 : stdgo._internal.regexp.syntax.Syntax_InstOp.InstOp))) {
                            _gotoNext = 3680547i32;
                        } else if (__value__ == ((4 : stdgo._internal.regexp.syntax.Syntax_InstOp.InstOp)) || __value__ == ((7 : stdgo._internal.regexp.syntax.Syntax_InstOp.InstOp)) || __value__ == ((8 : stdgo._internal.regexp.syntax.Syntax_InstOp.InstOp)) || __value__ == ((9 : stdgo._internal.regexp.syntax.Syntax_InstOp.InstOp)) || __value__ == ((10 : stdgo._internal.regexp.syntax.Syntax_InstOp.InstOp))) {
                            _gotoNext = 3680748i32;
                        } else {
                            _gotoNext = 3680220i32;
                        };
                    };
                } else if (__value__ == (3680220i32)) {
                    throw stdgo.Go.toInterface(("unhandled" : stdgo.GoString));
                    _gotoNext = 3681006i32;
                } else if (__value__ == (3680251i32)) {
                    _gotoNext = 3681006i32;
                } else if (__value__ == (3680287i32)) {
                    _t = _m._add(_q, _i_3680185.out, _pos, _cap, _cond, _t);
                    _pc = _i_3680185.arg;
                    _gotoNext = 3679950i32;
                } else if (__value__ == (3680397i32)) {
                    if (_cond.value._match((_i_3680185.arg : stdgo._internal.regexp.syntax.Syntax_EmptyOp.EmptyOp))) {
                        _gotoNext = 3680464i32;
                    } else {
                        _gotoNext = 3681006i32;
                    };
                } else if (__value__ == (3680464i32)) {
                    _pc = _i_3680185.out;
                    _gotoNext = 3679950i32;
                } else if (__value__ == (3680499i32)) {
                    _pc = _i_3680185.out;
                    _gotoNext = 3679950i32;
                } else if (__value__ == (3680547i32)) {
                    if (((_i_3680185.arg : stdgo.GoInt) < (_cap.length) : Bool)) {
                        _gotoNext = 3680599i32;
                    } else {
                        _gotoNext = 3680713i32;
                    };
                } else if (__value__ == (3680599i32)) {
                    _opos_3680604 = _cap[(_i_3680185.arg : stdgo.GoInt)];
                    _cap[(_i_3680185.arg : stdgo.GoInt)] = _pos;
                    _m._add(_q, _i_3680185.out, _pos, _cap, _cond, null);
                    _cap[(_i_3680185.arg : stdgo.GoInt)] = _opos_3680604;
                    _gotoNext = 3681006i32;
                } else if (__value__ == (3680713i32)) {
                    _pc = _i_3680185.out;
                    _gotoNext = 3679950i32;
                } else if (__value__ == (3680748i32)) {
                    if (_t == null || (_t : Dynamic).__nil__) {
                        _gotoNext = 3680865i32;
                    } else {
                        _gotoNext = 3680894i32;
                    };
                } else if (__value__ == (3680865i32)) {
                    _t = _m._alloc(_i_3680185);
                    _gotoNext = 3680916i32;
                } else if (__value__ == (3680894i32)) {
                    _t._inst = _i_3680185;
                    _gotoNext = 3680916i32;
                } else if (__value__ == (3680916i32)) {
                    if ((((_cap.length) > (0 : stdgo.GoInt) : Bool) && (stdgo.Go.pointer(_t._cap[(0 : stdgo.GoInt)]) != stdgo.Go.pointer(_cap[(0 : stdgo.GoInt)])) : Bool)) {
                        _gotoNext = 3680956i32;
                    } else {
                        _gotoNext = 3680984i32;
                    };
                } else if (__value__ == (3680956i32)) {
                    stdgo.Go.copySlice(_t._cap, _cap);
                    _gotoNext = 3680984i32;
                } else if (__value__ == (3680984i32)) {
                    _d_3680118._t = _t;
                    _t = null;
                    _gotoNext = 3681006i32;
                } else if (__value__ == (3681006i32)) {
                    return _t;
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
    @:keep
    static public function _step( _m:stdgo.Ref<stdgo._internal.regexp.Regexp_T_machine.T_machine>, _runq:stdgo.Ref<stdgo._internal.regexp.Regexp_T_queue.T_queue>, _nextq:stdgo.Ref<stdgo._internal.regexp.Regexp_T_queue.T_queue>, _pos:stdgo.GoInt, _nextPos:stdgo.GoInt, _c:stdgo.GoInt32, _nextCond:stdgo.Pointer<stdgo._internal.regexp.Regexp_T_lazyFlag.T_lazyFlag>):Void {
        @:recv var _m:stdgo.Ref<stdgo._internal.regexp.Regexp_T_machine.T_machine> = _m;
        var _longest = (_m._re._longest : Bool);
        {
            var _j = (0 : stdgo.GoInt);
            while ((_j < (_runq._dense.length) : Bool)) {
                var _d = (stdgo.Go.setRef(_runq._dense[(_j : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.regexp.Regexp_T_entry.T_entry>);
var _t = _d._t;
if (_t == null || (_t : Dynamic).__nil__) {
                    {
                        _j++;
                        continue;
                    };
                };
if ((((_longest && _m._matched : Bool) && ((_t._cap.length) > (0 : stdgo.GoInt) : Bool) : Bool) && (_m._matchcap[(0 : stdgo.GoInt)] < _t._cap[(0 : stdgo.GoInt)] : Bool) : Bool)) {
                    _m._pool = (_m._pool.__append__(_t));
                    {
                        _j++;
                        continue;
                    };
                };
var _i = _t._inst;
var _add = (false : Bool);
{
                    final __value__ = _i.op;
                    if (__value__ == ((4 : stdgo._internal.regexp.syntax.Syntax_InstOp.InstOp))) {
                        if ((((_t._cap.length) > (0 : stdgo.GoInt) : Bool) && (((!_longest || !_m._matched : Bool) || (_m._matchcap[(1 : stdgo.GoInt)] < _pos : Bool) : Bool)) : Bool)) {
                            _t._cap[(1 : stdgo.GoInt)] = _pos;
                            stdgo.Go.copySlice(_m._matchcap, _t._cap);
                        };
                        if (!_longest) {
                            for (__0 => _d in (_runq._dense.__slice__((_j + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.regexp.Regexp_T_entry.T_entry>)) {
                                if (_d._t != null && ((_d._t : Dynamic).__nil__ == null || !(_d._t : Dynamic).__nil__)) {
                                    _m._pool = (_m._pool.__append__(_d._t));
                                };
                            };
                            _runq._dense = (_runq._dense.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.regexp.Regexp_T_entry.T_entry>);
                        };
                        _m._matched = true;
                    } else if (__value__ == ((7 : stdgo._internal.regexp.syntax.Syntax_InstOp.InstOp))) {
                        _add = _i.matchRune(_c);
                    } else if (__value__ == ((8 : stdgo._internal.regexp.syntax.Syntax_InstOp.InstOp))) {
                        _add = _c == (_i.rune[((0 : stdgo.GoInt) : stdgo.GoInt)]);
                    } else if (__value__ == ((9 : stdgo._internal.regexp.syntax.Syntax_InstOp.InstOp))) {
                        _add = true;
                    } else if (__value__ == ((10 : stdgo._internal.regexp.syntax.Syntax_InstOp.InstOp))) {
                        _add = _c != ((10 : stdgo.GoInt32));
                    } else {
                        throw stdgo.Go.toInterface(("bad inst" : stdgo.GoString));
                    };
                };
if (_add) {
                    _t = _m._add(_nextq, _i.out, _nextPos, _t._cap, _nextCond, _t);
                };
if (_t != null && ((_t : Dynamic).__nil__ == null || !(_t : Dynamic).__nil__)) {
                    _m._pool = (_m._pool.__append__(_t));
                };
                _j++;
            };
        };
        _runq._dense = (_runq._dense.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.regexp.Regexp_T_entry.T_entry>);
    }
    @:keep
    static public function _clear( _m:stdgo.Ref<stdgo._internal.regexp.Regexp_T_machine.T_machine>, _q:stdgo.Ref<stdgo._internal.regexp.Regexp_T_queue.T_queue>):Void {
        @:recv var _m:stdgo.Ref<stdgo._internal.regexp.Regexp_T_machine.T_machine> = _m;
        for (__0 => _d in _q._dense) {
            if (_d._t != null && ((_d._t : Dynamic).__nil__ == null || !(_d._t : Dynamic).__nil__)) {
                _m._pool = (_m._pool.__append__(_d._t));
            };
        };
        _q._dense = (_q._dense.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.regexp.Regexp_T_entry.T_entry>);
    }
    @:keep
    static public function _match( _m:stdgo.Ref<stdgo._internal.regexp.Regexp_T_machine.T_machine>, _i:stdgo._internal.regexp.Regexp_T_input.T_input, _pos:stdgo.GoInt):Bool {
        @:recv var _m:stdgo.Ref<stdgo._internal.regexp.Regexp_T_machine.T_machine> = _m;
        var _startCond = (_m._re._cond : stdgo._internal.regexp.syntax.Syntax_EmptyOp.EmptyOp);
        if (_startCond == ((255 : stdgo._internal.regexp.syntax.Syntax_EmptyOp.EmptyOp))) {
            return false;
        };
        _m._matched = false;
        for (_i => _ in _m._matchcap) {
            _m._matchcap[(_i : stdgo.GoInt)] = (-1 : stdgo.GoInt);
        };
        var __0 = (stdgo.Go.setRef(_m._q0) : stdgo.Ref<stdgo._internal.regexp.Regexp_T_queue.T_queue>), __1 = (stdgo.Go.setRef(_m._q1) : stdgo.Ref<stdgo._internal.regexp.Regexp_T_queue.T_queue>);
var _nextq = __1, _runq = __0;
        var __0 = (-1 : stdgo.GoInt32), __1 = (-1 : stdgo.GoInt32);
var _r1 = __1, _r = __0;
        var __0 = (0 : stdgo.GoInt), __1 = (0 : stdgo.GoInt);
var _width1 = __1, _width = __0;
        {
            var __tmp__ = _i._step(_pos);
            _r = __tmp__._0;
            _width = __tmp__._1;
        };
        if (_r != ((-1 : stdgo.GoInt32))) {
            {
                var __tmp__ = _i._step((_pos + _width : stdgo.GoInt));
                _r1 = __tmp__._0;
                _width1 = __tmp__._1;
            };
        };
        var _flag:stdgo._internal.regexp.Regexp_T_lazyFlag.T_lazyFlag = ((0 : stdgo.GoUInt64) : stdgo._internal.regexp.Regexp_T_lazyFlag.T_lazyFlag);
        if (_pos == ((0 : stdgo.GoInt))) {
            _flag = stdgo._internal.regexp.Regexp__newLazyFlag._newLazyFlag((-1 : stdgo.GoInt32), _r);
        } else {
            _flag = _i._context(_pos);
        };
        while (true) {
            if ((_runq._dense.length) == ((0 : stdgo.GoInt))) {
                if ((((_startCond & (4 : stdgo._internal.regexp.syntax.Syntax_EmptyOp.EmptyOp) : stdgo._internal.regexp.syntax.Syntax_EmptyOp.EmptyOp) != (0 : stdgo._internal.regexp.syntax.Syntax_EmptyOp.EmptyOp)) && (_pos != (0 : stdgo.GoInt)) : Bool)) {
                    break;
                };
                if (_m._matched) {
                    break;
                };
                if (((((_m._re._prefix.length) > (0 : stdgo.GoInt) : Bool) && _r1 != (_m._re._prefixRune) : Bool) && _i._canCheckPrefix() : Bool)) {
                    var _advance = (_i._index(_m._re, _pos) : stdgo.GoInt);
                    if ((_advance < (0 : stdgo.GoInt) : Bool)) {
                        break;
                    };
                    _pos = (_pos + (_advance) : stdgo.GoInt);
                    {
                        var __tmp__ = _i._step(_pos);
                        _r = __tmp__._0;
                        _width = __tmp__._1;
                    };
                    {
                        var __tmp__ = _i._step((_pos + _width : stdgo.GoInt));
                        _r1 = __tmp__._0;
                        _width1 = __tmp__._1;
                    };
                };
            };
            if (!_m._matched) {
                if (((_m._matchcap.length) > (0 : stdgo.GoInt) : Bool)) {
                    _m._matchcap[(0 : stdgo.GoInt)] = _pos;
                };
                _m._add(_runq, (_m._p.start : stdgo.GoUInt32), _pos, _m._matchcap, stdgo.Go.pointer(_flag), null);
            };
            _flag = stdgo._internal.regexp.Regexp__newLazyFlag._newLazyFlag(_r, _r1);
            _m._step(_runq, _nextq, _pos, (_pos + _width : stdgo.GoInt), _r, stdgo.Go.pointer(_flag));
            if (_width == ((0 : stdgo.GoInt))) {
                break;
            };
            if (((_m._matchcap.length == (0 : stdgo.GoInt)) && _m._matched : Bool)) {
                break;
            };
            _pos = (_pos + (_width) : stdgo.GoInt);
            {
                final __tmp__0 = _r1;
                final __tmp__1 = _width1;
                _r = __tmp__0;
                _width = __tmp__1;
            };
            if (_r != ((-1 : stdgo.GoInt32))) {
                {
                    var __tmp__ = _i._step((_pos + _width : stdgo.GoInt));
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
        _m._clear(_nextq);
        return _m._matched;
    }
    @:keep
    static public function _alloc( _m:stdgo.Ref<stdgo._internal.regexp.Regexp_T_machine.T_machine>, _i:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Inst.Inst>):stdgo.Ref<stdgo._internal.regexp.Regexp_T_thread.T_thread> {
        @:recv var _m:stdgo.Ref<stdgo._internal.regexp.Regexp_T_machine.T_machine> = _m;
        var _t:stdgo.Ref<stdgo._internal.regexp.Regexp_T_thread.T_thread> = (null : stdgo.Ref<stdgo._internal.regexp.Regexp_T_thread.T_thread>);
        {
            var _n = (_m._pool.length : stdgo.GoInt);
            if ((_n > (0 : stdgo.GoInt) : Bool)) {
                _t = _m._pool[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)];
                _m._pool = (_m._pool.__slice__(0, (_n - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.Regexp_T_thread.T_thread>>);
            } else {
                _t = (stdgo.Go.setRef(({} : stdgo._internal.regexp.Regexp_T_thread.T_thread)) : stdgo.Ref<stdgo._internal.regexp.Regexp_T_thread.T_thread>);
                _t._cap = (new stdgo.Slice<stdgo.GoInt>((_m._matchcap.length : stdgo.GoInt).toBasic(), _m._matchcap.capacity).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
            };
        };
        _t._inst = _i;
        return _t;
    }
    @:keep
    static public function _init( _m:stdgo.Ref<stdgo._internal.regexp.Regexp_T_machine.T_machine>, _ncap:stdgo.GoInt):Void {
        @:recv var _m:stdgo.Ref<stdgo._internal.regexp.Regexp_T_machine.T_machine> = _m;
        for (__0 => _t in _m._pool) {
            _t._cap = (_t._cap.__slice__(0, _ncap) : stdgo.Slice<stdgo.GoInt>);
        };
        _m._matchcap = (_m._matchcap.__slice__(0, _ncap) : stdgo.Slice<stdgo.GoInt>);
    }
}
