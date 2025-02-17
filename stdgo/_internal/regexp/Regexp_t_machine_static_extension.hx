package stdgo._internal.regexp;
@:keep @:allow(stdgo._internal.regexp.Regexp.T_machine_asInterface) class T_machine_static_extension {
    @:keep
    @:tdfield
    static public function _add( _m:stdgo.Ref<stdgo._internal.regexp.Regexp_t_machine.T_machine>, _q:stdgo.Ref<stdgo._internal.regexp.Regexp_t_queue.T_queue>, _pc:stdgo.GoUInt32, _pos:stdgo.GoInt, _cap:stdgo.Slice<stdgo.GoInt>, _cond:stdgo.Pointer<stdgo._internal.regexp.Regexp_t_lazyflag.T_lazyFlag>, _t:stdgo.Ref<stdgo._internal.regexp.Regexp_t_thread.T_thread>):stdgo.Ref<stdgo._internal.regexp.Regexp_t_thread.T_thread> {
        @:recv var _m:stdgo.Ref<stdgo._internal.regexp.Regexp_t_machine.T_machine> = _m;
        var _d_24:stdgo.Ref<stdgo._internal.regexp.Regexp_t_entry.T_entry> = (null : stdgo.Ref<stdgo._internal.regexp.Regexp_t_entry.T_entry>);
        var _j_23:stdgo.GoInt = (0 : stdgo.GoInt);
        var _j_22:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
        var _opos_26:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_25:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_inst.Inst> = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_inst.Inst>);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 3744963i32;
                } else if (__value__ == (3744963i32)) {
                    if (_pc == ((0u32 : stdgo.GoUInt32))) {
                        _gotoNext = 3744982i32;
                    } else {
                        _gotoNext = 3744999i32;
                    };
                } else if (__value__ == (3744982i32)) {
                    return _t;
                    _gotoNext = 3744999i32;
                } else if (__value__ == (3744999i32)) {
                    {
                        _j_22 = (@:checkr _q ?? throw "null pointer dereference")._sparse[(_pc : stdgo.GoInt)];
                        if (((_j_22 < ((@:checkr _q ?? throw "null pointer dereference")._dense.length : stdgo.GoUInt32) : Bool) && ((@:checkr _q ?? throw "null pointer dereference")._dense[(_j_22 : stdgo.GoInt)]._pc == _pc) : Bool)) {
                            _gotoNext = 3745069i32;
                        } else {
                            _gotoNext = 3745087i32;
                        };
                    };
                } else if (__value__ == (3745069i32)) {
                    return _t;
                    _gotoNext = 3745087i32;
                } else if (__value__ == (3745087i32)) {
                    _j_23 = ((@:checkr _q ?? throw "null pointer dereference")._dense.length);
                    (@:checkr _q ?? throw "null pointer dereference")._dense = ((@:checkr _q ?? throw "null pointer dereference")._dense.__slice__(0, (_j_23 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.regexp.Regexp_t_entry.T_entry>);
                    _d_24 = (stdgo.Go.setRef((@:checkr _q ?? throw "null pointer dereference")._dense[(_j_23 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.regexp.Regexp_t_entry.T_entry>);
                    (@:checkr _d_24 ?? throw "null pointer dereference")._t = null;
                    (@:checkr _d_24 ?? throw "null pointer dereference")._pc = _pc;
                    (@:checkr _q ?? throw "null pointer dereference")._sparse[(_pc : stdgo.GoInt)] = (_j_23 : stdgo.GoUInt32);
                    _i_25 = (stdgo.Go.setRef((@:checkr (@:checkr _m ?? throw "null pointer dereference")._p ?? throw "null pointer dereference").inst[(_pc : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_inst.Inst>);
                    _gotoNext = 3745218i32;
                } else if (__value__ == (3745218i32)) {
                    {
                        final __value__ = (@:checkr _i_25 ?? throw "null pointer dereference").op;
                        if (__value__ == ((5 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 3745264i32;
                        } else if (__value__ == ((0 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp)) || __value__ == ((1 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 3745300i32;
                        } else if (__value__ == ((3 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 3745410i32;
                        } else if (__value__ == ((6 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 3745512i32;
                        } else if (__value__ == ((2 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 3745560i32;
                        } else if (__value__ == ((4 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp)) || __value__ == ((7 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp)) || __value__ == ((8 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp)) || __value__ == ((9 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp)) || __value__ == ((10 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 3745761i32;
                        } else {
                            _gotoNext = 3745233i32;
                        };
                    };
                } else if (__value__ == (3745233i32)) {
                    throw stdgo.Go.toInterface(("unhandled" : stdgo.GoString));
                    _gotoNext = 3746019i32;
                } else if (__value__ == (3745264i32)) {
                    _gotoNext = 3746019i32;
                } else if (__value__ == (3745300i32)) {
                    _t = @:check2r _m._add(_q, (@:checkr _i_25 ?? throw "null pointer dereference").out, _pos, _cap, _cond, _t);
                    _pc = (@:checkr _i_25 ?? throw "null pointer dereference").arg;
                    _gotoNext = 3744963i32;
                } else if (__value__ == (3745410i32)) {
                    if (_cond.value._match(((@:checkr _i_25 ?? throw "null pointer dereference").arg : stdgo._internal.regexp.syntax.Syntax_emptyop.EmptyOp))) {
                        _gotoNext = 3745477i32;
                    } else {
                        _gotoNext = 3746019i32;
                    };
                } else if (__value__ == (3745477i32)) {
                    _pc = (@:checkr _i_25 ?? throw "null pointer dereference").out;
                    _gotoNext = 3744963i32;
                } else if (__value__ == (3745512i32)) {
                    _pc = (@:checkr _i_25 ?? throw "null pointer dereference").out;
                    _gotoNext = 3744963i32;
                } else if (__value__ == (3745560i32)) {
                    if ((((@:checkr _i_25 ?? throw "null pointer dereference").arg : stdgo.GoInt) < (_cap.length) : Bool)) {
                        _gotoNext = 3745612i32;
                    } else {
                        _gotoNext = 3745726i32;
                    };
                } else if (__value__ == (3745612i32)) {
                    _opos_26 = _cap[((@:checkr _i_25 ?? throw "null pointer dereference").arg : stdgo.GoInt)];
                    _cap[((@:checkr _i_25 ?? throw "null pointer dereference").arg : stdgo.GoInt)] = _pos;
                    @:check2r _m._add(_q, (@:checkr _i_25 ?? throw "null pointer dereference").out, _pos, _cap, _cond, null);
                    _cap[((@:checkr _i_25 ?? throw "null pointer dereference").arg : stdgo.GoInt)] = _opos_26;
                    _gotoNext = 3746019i32;
                } else if (__value__ == (3745726i32)) {
                    _gotoNext = 3745726i32;
                    _pc = (@:checkr _i_25 ?? throw "null pointer dereference").out;
                    _gotoNext = 3744963i32;
                } else if (__value__ == (3745761i32)) {
                    if ((_t == null || (_t : Dynamic).__nil__)) {
                        _gotoNext = 3745878i32;
                    } else {
                        _gotoNext = 3745907i32;
                    };
                } else if (__value__ == (3745878i32)) {
                    _t = @:check2r _m._alloc(_i_25);
                    _gotoNext = 3745929i32;
                } else if (__value__ == (3745907i32)) {
                    _gotoNext = 3745907i32;
                    (@:checkr _t ?? throw "null pointer dereference")._inst = _i_25;
                    var __blank__ = 0i32;
                    _gotoNext = 3745929i32;
                } else if (__value__ == (3745929i32)) {
                    if ((((_cap.length) > (0 : stdgo.GoInt) : Bool) && (stdgo.Go.pointer((@:checkr _t ?? throw "null pointer dereference")._cap[(0 : stdgo.GoInt)]) != stdgo.Go.pointer(_cap[(0 : stdgo.GoInt)])) : Bool)) {
                        _gotoNext = 3745969i32;
                    } else {
                        _gotoNext = 3745997i32;
                    };
                } else if (__value__ == (3745969i32)) {
                    (@:checkr _t ?? throw "null pointer dereference")._cap.__copyTo__(_cap);
                    _gotoNext = 3745997i32;
                } else if (__value__ == (3745997i32)) {
                    (@:checkr _d_24 ?? throw "null pointer dereference")._t = _t;
                    _t = null;
                    _gotoNext = 3746019i32;
                } else if (__value__ == (3746019i32)) {
                    return _t;
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
    @:keep
    @:tdfield
    static public function _step( _m:stdgo.Ref<stdgo._internal.regexp.Regexp_t_machine.T_machine>, _runq:stdgo.Ref<stdgo._internal.regexp.Regexp_t_queue.T_queue>, _nextq:stdgo.Ref<stdgo._internal.regexp.Regexp_t_queue.T_queue>, _pos:stdgo.GoInt, _nextPos:stdgo.GoInt, _c:stdgo.GoInt32, _nextCond:stdgo.Pointer<stdgo._internal.regexp.Regexp_t_lazyflag.T_lazyFlag>):Void {
        @:recv var _m:stdgo.Ref<stdgo._internal.regexp.Regexp_t_machine.T_machine> = _m;
        var _longest = ((@:checkr (@:checkr _m ?? throw "null pointer dereference")._re ?? throw "null pointer dereference")._longest : Bool);
        {
            var _j = (0 : stdgo.GoInt);
            while ((_j < ((@:checkr _runq ?? throw "null pointer dereference")._dense.length) : Bool)) {
                var _d = (stdgo.Go.setRef((@:checkr _runq ?? throw "null pointer dereference")._dense[(_j : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.regexp.Regexp_t_entry.T_entry>);
var _t = (@:checkr _d ?? throw "null pointer dereference")._t;
if ((_t == null || (_t : Dynamic).__nil__)) {
                    {
                        _j++;
                        continue;
                    };
                };
if ((((_longest && (@:checkr _m ?? throw "null pointer dereference")._matched : Bool) && (((@:checkr _t ?? throw "null pointer dereference")._cap.length) > (0 : stdgo.GoInt) : Bool) : Bool) && ((@:checkr _m ?? throw "null pointer dereference")._matchcap[(0 : stdgo.GoInt)] < (@:checkr _t ?? throw "null pointer dereference")._cap[(0 : stdgo.GoInt)] : Bool) : Bool)) {
                    (@:checkr _m ?? throw "null pointer dereference")._pool = ((@:checkr _m ?? throw "null pointer dereference")._pool.__append__(_t));
                    {
                        _j++;
                        continue;
                    };
                };
var _i = (@:checkr _t ?? throw "null pointer dereference")._inst;
var _add = (false : Bool);
{
                    final __value__ = (@:checkr _i ?? throw "null pointer dereference").op;
                    if (__value__ == ((4 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp))) {
                        if (((((@:checkr _t ?? throw "null pointer dereference")._cap.length) > (0 : stdgo.GoInt) : Bool) && (((!_longest || !(@:checkr _m ?? throw "null pointer dereference")._matched : Bool) || ((@:checkr _m ?? throw "null pointer dereference")._matchcap[(1 : stdgo.GoInt)] < _pos : Bool) : Bool)) : Bool)) {
                            (@:checkr _t ?? throw "null pointer dereference")._cap[(1 : stdgo.GoInt)] = _pos;
                            (@:checkr _m ?? throw "null pointer dereference")._matchcap.__copyTo__((@:checkr _t ?? throw "null pointer dereference")._cap);
                        };
                        if (!_longest) {
                            for (__0 => _d in ((@:checkr _runq ?? throw "null pointer dereference")._dense.__slice__((_j + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.regexp.Regexp_t_entry.T_entry>)) {
                                if ((_d._t != null && ((_d._t : Dynamic).__nil__ == null || !(_d._t : Dynamic).__nil__))) {
                                    (@:checkr _m ?? throw "null pointer dereference")._pool = ((@:checkr _m ?? throw "null pointer dereference")._pool.__append__(_d._t));
                                };
                            };
                            (@:checkr _runq ?? throw "null pointer dereference")._dense = ((@:checkr _runq ?? throw "null pointer dereference")._dense.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.regexp.Regexp_t_entry.T_entry>);
                        };
                        (@:checkr _m ?? throw "null pointer dereference")._matched = true;
                    } else if (__value__ == ((7 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp))) {
                        _add = @:check2r _i.matchRune(_c);
                    } else if (__value__ == ((8 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp))) {
                        _add = _c == ((@:checkr _i ?? throw "null pointer dereference").rune[((0 : stdgo.GoInt) : stdgo.GoInt)]);
                    } else if (__value__ == ((9 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp))) {
                        _add = true;
                    } else if (__value__ == ((10 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp))) {
                        _add = _c != ((10 : stdgo.GoInt32));
                    } else {
                        throw stdgo.Go.toInterface(("bad inst" : stdgo.GoString));
                    };
                };
if (_add) {
                    _t = @:check2r _m._add(_nextq, (@:checkr _i ?? throw "null pointer dereference").out, _nextPos, (@:checkr _t ?? throw "null pointer dereference")._cap, _nextCond, _t);
                };
if ((_t != null && ((_t : Dynamic).__nil__ == null || !(_t : Dynamic).__nil__))) {
                    (@:checkr _m ?? throw "null pointer dereference")._pool = ((@:checkr _m ?? throw "null pointer dereference")._pool.__append__(_t));
                };
                _j++;
            };
        };
        (@:checkr _runq ?? throw "null pointer dereference")._dense = ((@:checkr _runq ?? throw "null pointer dereference")._dense.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.regexp.Regexp_t_entry.T_entry>);
    }
    @:keep
    @:tdfield
    static public function _clear( _m:stdgo.Ref<stdgo._internal.regexp.Regexp_t_machine.T_machine>, _q:stdgo.Ref<stdgo._internal.regexp.Regexp_t_queue.T_queue>):Void {
        @:recv var _m:stdgo.Ref<stdgo._internal.regexp.Regexp_t_machine.T_machine> = _m;
        for (__0 => _d in (@:checkr _q ?? throw "null pointer dereference")._dense) {
            if ((_d._t != null && ((_d._t : Dynamic).__nil__ == null || !(_d._t : Dynamic).__nil__))) {
                (@:checkr _m ?? throw "null pointer dereference")._pool = ((@:checkr _m ?? throw "null pointer dereference")._pool.__append__(_d._t));
            };
        };
        (@:checkr _q ?? throw "null pointer dereference")._dense = ((@:checkr _q ?? throw "null pointer dereference")._dense.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.regexp.Regexp_t_entry.T_entry>);
    }
    @:keep
    @:tdfield
    static public function _match( _m:stdgo.Ref<stdgo._internal.regexp.Regexp_t_machine.T_machine>, _i:stdgo._internal.regexp.Regexp_t_input.T_input, _pos:stdgo.GoInt):Bool {
        @:recv var _m:stdgo.Ref<stdgo._internal.regexp.Regexp_t_machine.T_machine> = _m;
        var _startCond = ((@:checkr (@:checkr _m ?? throw "null pointer dereference")._re ?? throw "null pointer dereference")._cond : stdgo._internal.regexp.syntax.Syntax_emptyop.EmptyOp);
        if (_startCond == ((255 : stdgo._internal.regexp.syntax.Syntax_emptyop.EmptyOp))) {
            return false;
        };
        (@:checkr _m ?? throw "null pointer dereference")._matched = false;
        for (_i => _ in (@:checkr _m ?? throw "null pointer dereference")._matchcap) {
            (@:checkr _m ?? throw "null pointer dereference")._matchcap[(_i : stdgo.GoInt)] = (-1 : stdgo.GoInt);
        };
        var __0 = (stdgo.Go.setRef((@:checkr _m ?? throw "null pointer dereference")._q0) : stdgo.Ref<stdgo._internal.regexp.Regexp_t_queue.T_queue>), __1 = (stdgo.Go.setRef((@:checkr _m ?? throw "null pointer dereference")._q1) : stdgo.Ref<stdgo._internal.regexp.Regexp_t_queue.T_queue>);
var _nextq = __1, _runq = __0;
        var __0 = (-1 : stdgo.GoInt32), __1 = (-1 : stdgo.GoInt32);
var _r1 = __1, _r = __0;
        var __0 = (0 : stdgo.GoInt), __1 = (0 : stdgo.GoInt);
var _width1 = __1, _width = __0;
        {
            var __tmp__ = _i._step(_pos);
            _r = @:tmpset0 __tmp__._0;
            _width = @:tmpset0 __tmp__._1;
        };
        if (_r != ((-1 : stdgo.GoInt32))) {
            {
                var __tmp__ = _i._step((_pos + _width : stdgo.GoInt));
                _r1 = @:tmpset0 __tmp__._0;
                _width1 = @:tmpset0 __tmp__._1;
            };
        };
        var _flag:stdgo._internal.regexp.Regexp_t_lazyflag.T_lazyFlag = ((0 : stdgo.GoUInt64) : stdgo._internal.regexp.Regexp_t_lazyflag.T_lazyFlag);
        var _flag__pointer__ = stdgo.Go.pointer(_flag);
        var _flag__pointer__ = stdgo.Go.pointer(_flag);
        var _flag__pointer__ = stdgo.Go.pointer(_flag);
        var _flag__pointer__ = stdgo.Go.pointer(_flag);
        if (_pos == ((0 : stdgo.GoInt))) {
            _flag = stdgo._internal.regexp.Regexp__newlazyflag._newLazyFlag((-1 : stdgo.GoInt32), _r);
        } else {
            _flag = _i._context(_pos);
        };
        while (true) {
            if (((@:checkr _runq ?? throw "null pointer dereference")._dense.length) == ((0 : stdgo.GoInt))) {
                if ((((_startCond & (4 : stdgo._internal.regexp.syntax.Syntax_emptyop.EmptyOp) : stdgo._internal.regexp.syntax.Syntax_emptyop.EmptyOp) != (0 : stdgo._internal.regexp.syntax.Syntax_emptyop.EmptyOp)) && (_pos != (0 : stdgo.GoInt)) : Bool)) {
                    break;
                };
                if ((@:checkr _m ?? throw "null pointer dereference")._matched) {
                    break;
                };
                if ((((((@:checkr (@:checkr _m ?? throw "null pointer dereference")._re ?? throw "null pointer dereference")._prefix.length) > (0 : stdgo.GoInt) : Bool) && _r1 != ((@:checkr (@:checkr _m ?? throw "null pointer dereference")._re ?? throw "null pointer dereference")._prefixRune) : Bool) && _i._canCheckPrefix() : Bool)) {
                    var _advance = (_i._index((@:checkr _m ?? throw "null pointer dereference")._re, _pos) : stdgo.GoInt);
                    if ((_advance < (0 : stdgo.GoInt) : Bool)) {
                        break;
                    };
                    _pos = (_pos + (_advance) : stdgo.GoInt);
                    {
                        var __tmp__ = _i._step(_pos);
                        _r = @:tmpset0 __tmp__._0;
                        _width = @:tmpset0 __tmp__._1;
                    };
                    {
                        var __tmp__ = _i._step((_pos + _width : stdgo.GoInt));
                        _r1 = @:tmpset0 __tmp__._0;
                        _width1 = @:tmpset0 __tmp__._1;
                    };
                };
            };
            if (!(@:checkr _m ?? throw "null pointer dereference")._matched) {
                if ((((@:checkr _m ?? throw "null pointer dereference")._matchcap.length) > (0 : stdgo.GoInt) : Bool)) {
                    (@:checkr _m ?? throw "null pointer dereference")._matchcap[(0 : stdgo.GoInt)] = _pos;
                };
                @:check2r _m._add(_runq, ((@:checkr (@:checkr _m ?? throw "null pointer dereference")._p ?? throw "null pointer dereference").start : stdgo.GoUInt32), _pos, (@:checkr _m ?? throw "null pointer dereference")._matchcap, _flag__pointer__, null);
            };
            _flag = stdgo._internal.regexp.Regexp__newlazyflag._newLazyFlag(_r, _r1);
            @:check2r _m._step(_runq, _nextq, _pos, (_pos + _width : stdgo.GoInt), _r, _flag__pointer__);
            if (_width == ((0 : stdgo.GoInt))) {
                break;
            };
            if ((((@:checkr _m ?? throw "null pointer dereference")._matchcap.length == (0 : stdgo.GoInt)) && (@:checkr _m ?? throw "null pointer dereference")._matched : Bool)) {
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
                    _r1 = @:tmpset0 __tmp__._0;
                    _width1 = @:tmpset0 __tmp__._1;
                };
            };
            {
                final __tmp__0 = _nextq;
                final __tmp__1 = _runq;
                _runq = __tmp__0;
                _nextq = __tmp__1;
            };
        };
        @:check2r _m._clear(_nextq);
        return (@:checkr _m ?? throw "null pointer dereference")._matched;
    }
    @:keep
    @:tdfield
    static public function _alloc( _m:stdgo.Ref<stdgo._internal.regexp.Regexp_t_machine.T_machine>, _i:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_inst.Inst>):stdgo.Ref<stdgo._internal.regexp.Regexp_t_thread.T_thread> {
        @:recv var _m:stdgo.Ref<stdgo._internal.regexp.Regexp_t_machine.T_machine> = _m;
        var _t:stdgo.Ref<stdgo._internal.regexp.Regexp_t_thread.T_thread> = (null : stdgo.Ref<stdgo._internal.regexp.Regexp_t_thread.T_thread>);
        {
            var _n = ((@:checkr _m ?? throw "null pointer dereference")._pool.length : stdgo.GoInt);
            if ((_n > (0 : stdgo.GoInt) : Bool)) {
                _t = (@:checkr _m ?? throw "null pointer dereference")._pool[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)];
                (@:checkr _m ?? throw "null pointer dereference")._pool = ((@:checkr _m ?? throw "null pointer dereference")._pool.__slice__(0, (_n - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.Regexp_t_thread.T_thread>>);
            } else {
                _t = (stdgo.Go.setRef(({} : stdgo._internal.regexp.Regexp_t_thread.T_thread)) : stdgo.Ref<stdgo._internal.regexp.Regexp_t_thread.T_thread>);
                (@:checkr _t ?? throw "null pointer dereference")._cap = (new stdgo.Slice<stdgo.GoInt>(((@:checkr _m ?? throw "null pointer dereference")._matchcap.length : stdgo.GoInt).toBasic(), (@:checkr _m ?? throw "null pointer dereference")._matchcap.capacity).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
            };
        };
        (@:checkr _t ?? throw "null pointer dereference")._inst = _i;
        return _t;
    }
    @:keep
    @:tdfield
    static public function _init( _m:stdgo.Ref<stdgo._internal.regexp.Regexp_t_machine.T_machine>, _ncap:stdgo.GoInt):Void {
        @:recv var _m:stdgo.Ref<stdgo._internal.regexp.Regexp_t_machine.T_machine> = _m;
        for (__0 => _t in (@:checkr _m ?? throw "null pointer dereference")._pool) {
            (@:checkr _t ?? throw "null pointer dereference")._cap = ((@:checkr _t ?? throw "null pointer dereference")._cap.__slice__(0, _ncap) : stdgo.Slice<stdgo.GoInt>);
        };
        (@:checkr _m ?? throw "null pointer dereference")._matchcap = ((@:checkr _m ?? throw "null pointer dereference")._matchcap.__slice__(0, _ncap) : stdgo.Slice<stdgo.GoInt>);
    }
}
