package stdgo._internal.math.big;
@:keep @:allow(stdgo._internal.math.big.Big.T_nat_asInterface) class T_nat_static_extension {
    @:keep
    @:tdfield
    static public function _probablyPrimeLucas( _n:stdgo._internal.math.big.Big_t_nat.T_nat):Bool {
        @:recv var _n:stdgo._internal.math.big.Big_t_nat.T_nat = _n;
        if (((_n.length == (0 : stdgo.GoInt)) || (_n._cmp(stdgo._internal.math.big.Big__natone._natOne) == (0 : stdgo.GoInt)) : Bool)) {
            return false;
        };
        if ((_n[(0 : stdgo.GoInt)] & (1u32 : stdgo._internal.math.big.Big_word.Word) : stdgo._internal.math.big.Big_word.Word) == ((0u32 : stdgo._internal.math.big.Big_word.Word))) {
            return _n._cmp(stdgo._internal.math.big.Big__nattwo._natTwo) == ((0 : stdgo.GoInt));
        };
        var _p = ((3u32 : stdgo._internal.math.big.Big_word.Word) : stdgo._internal.math.big.Big_word.Word);
        var _d = (new stdgo.Slice<stdgo._internal.math.big.Big_word.Word>(1, 1, ...[(1u32 : stdgo._internal.math.big.Big_word.Word)]).__setNumber32__() : stdgo._internal.math.big.Big_t_nat.T_nat);
        var _t1 = ((new stdgo._internal.math.big.Big_t_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_t_nat.T_nat) : stdgo._internal.math.big.Big_t_nat.T_nat);
        var _intD = (stdgo.Go.setRef(({ _abs : _d } : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        var _intN = (stdgo.Go.setRef(({ _abs : _n } : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        while (true) {
            if ((_p > (10000u32 : stdgo._internal.math.big.Big_word.Word) : Bool)) {
                throw stdgo.Go.toInterface((("math/big: internal error: cannot find (D/n) = -1 for " : stdgo.GoString) + (@:check2r _intN.string() : stdgo.GoString).__copy__() : stdgo.GoString));
            };
_d[(0 : stdgo.GoInt)] = ((_p * _p : stdgo._internal.math.big.Big_word.Word) - (4u32 : stdgo._internal.math.big.Big_word.Word) : stdgo._internal.math.big.Big_word.Word);
var _j = (stdgo._internal.math.big.Big_jacobi.jacobi(_intD, _intN) : stdgo.GoInt);
if (_j == ((-1 : stdgo.GoInt))) {
                break;
            };
if (_j == ((0 : stdgo.GoInt))) {
                return ((_n.length == (1 : stdgo.GoInt)) && (_n[(0 : stdgo.GoInt)] == (_p + (2u32 : stdgo._internal.math.big.Big_word.Word) : stdgo._internal.math.big.Big_word.Word)) : Bool);
            };
if (_p == ((40u32 : stdgo._internal.math.big.Big_word.Word))) {
                _t1 = _t1._sqrt(_n);
                _t1 = _t1._sqr(_t1);
                if (_t1._cmp(_n) == ((0 : stdgo.GoInt))) {
                    return false;
                };
            };
            _p++;
        };
        var _s = ((new stdgo._internal.math.big.Big_t_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_t_nat.T_nat)._add(_n, stdgo._internal.math.big.Big__natone._natOne) : stdgo._internal.math.big.Big_t_nat.T_nat);
        var _r = (_s._trailingZeroBits() : stdgo.GoInt);
        _s = _s._shr(_s, (_r : stdgo.GoUInt));
        var _nm2 = ((new stdgo._internal.math.big.Big_t_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_t_nat.T_nat)._sub(_n, stdgo._internal.math.big.Big__nattwo._natTwo) : stdgo._internal.math.big.Big_t_nat.T_nat);
        var _natP = ((new stdgo._internal.math.big.Big_t_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_t_nat.T_nat)._setWord(_p) : stdgo._internal.math.big.Big_t_nat.T_nat);
        var _vk = ((new stdgo._internal.math.big.Big_t_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_t_nat.T_nat)._setWord((2u32 : stdgo._internal.math.big.Big_word.Word)) : stdgo._internal.math.big.Big_t_nat.T_nat);
        var _vk1 = ((new stdgo._internal.math.big.Big_t_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_t_nat.T_nat)._setWord(_p) : stdgo._internal.math.big.Big_t_nat.T_nat);
        var _t2 = ((new stdgo._internal.math.big.Big_t_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_t_nat.T_nat) : stdgo._internal.math.big.Big_t_nat.T_nat);
        {
            var _i = (_s._bitLen() : stdgo.GoInt);
            while ((_i >= (0 : stdgo.GoInt) : Bool)) {
                if (_s._bit((_i : stdgo.GoUInt)) != ((0u32 : stdgo.GoUInt))) {
                    _t1 = _t1._mul(_vk, _vk1);
                    _t1 = _t1._add(_t1, _n);
                    _t1 = _t1._sub(_t1, _natP);
                    {
                        var __tmp__ = _t2._div(_vk, _t1, _n);
                        _t2 = @:tmpset0 __tmp__._0;
                        _vk = @:tmpset0 __tmp__._1;
                    };
                    _t1 = _t1._sqr(_vk1);
                    _t1 = _t1._add(_t1, _nm2);
                    {
                        var __tmp__ = _t2._div(_vk1, _t1, _n);
                        _t2 = @:tmpset0 __tmp__._0;
                        _vk1 = @:tmpset0 __tmp__._1;
                    };
                } else {
                    _t1 = _t1._mul(_vk, _vk1);
                    _t1 = _t1._add(_t1, _n);
                    _t1 = _t1._sub(_t1, _natP);
                    {
                        var __tmp__ = _t2._div(_vk1, _t1, _n);
                        _t2 = @:tmpset0 __tmp__._0;
                        _vk1 = @:tmpset0 __tmp__._1;
                    };
                    _t1 = _t1._sqr(_vk);
                    _t1 = _t1._add(_t1, _nm2);
                    {
                        var __tmp__ = _t2._div(_vk, _t1, _n);
                        _t2 = @:tmpset0 __tmp__._0;
                        _vk = @:tmpset0 __tmp__._1;
                    };
                };
                _i--;
            };
        };
        if (((_vk._cmp(stdgo._internal.math.big.Big__nattwo._natTwo) == (0 : stdgo.GoInt)) || (_vk._cmp(_nm2) == (0 : stdgo.GoInt)) : Bool)) {
            var _t1 = (_t1._mul(_vk, _natP) : stdgo._internal.math.big.Big_t_nat.T_nat);
            var _t2 = (_t2._shl(_vk1, (1u32 : stdgo.GoUInt)) : stdgo._internal.math.big.Big_t_nat.T_nat);
            if ((_t1._cmp(_t2) < (0 : stdgo.GoInt) : Bool)) {
                {
                    final __tmp__0 = _t2;
                    final __tmp__1 = _t1;
                    _t1 = __tmp__0;
                    _t2 = __tmp__1;
                };
            };
            _t1 = _t1._sub(_t1, _t2);
            var _t3 = (_vk1 : stdgo._internal.math.big.Big_t_nat.T_nat);
            _vk1 = null;
            var __blank__ = _vk1;
            {
                var __tmp__ = _t2._div(_t3, _t1, _n);
                _t2 = @:tmpset0 __tmp__._0;
                _t3 = @:tmpset0 __tmp__._1;
            };
            if ((_t3.length) == ((0 : stdgo.GoInt))) {
                return true;
            };
        };
        {
            var _t = (0 : stdgo.GoInt);
            while ((_t < (_r - (1 : stdgo.GoInt) : stdgo.GoInt) : Bool)) {
                if ((_vk.length) == ((0 : stdgo.GoInt))) {
                    return true;
                };
if (((_vk.length == (1 : stdgo.GoInt)) && (_vk[(0 : stdgo.GoInt)] == (2u32 : stdgo._internal.math.big.Big_word.Word)) : Bool)) {
                    return false;
                };
_t1 = _t1._sqr(_vk);
_t1 = _t1._sub(_t1, stdgo._internal.math.big.Big__nattwo._natTwo);
{
                    var __tmp__ = _t2._div(_vk, _t1, _n);
                    _t2 = @:tmpset0 __tmp__._0;
                    _vk = @:tmpset0 __tmp__._1;
                };
                _t++;
            };
        };
        return false;
    }
    @:keep
    @:tdfield
    static public function _probablyPrimeMillerRabin( _n:stdgo._internal.math.big.Big_t_nat.T_nat, _reps:stdgo.GoInt, _force2:Bool):Bool {
        @:recv var _n:stdgo._internal.math.big.Big_t_nat.T_nat = _n;
        var nextRandomBreak = false;
        var _quotient_7:stdgo._internal.math.big.Big_t_nat.T_nat = (new stdgo._internal.math.big.Big_t_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_t_nat.T_nat);
        var _y_6:stdgo._internal.math.big.Big_t_nat.T_nat = (new stdgo._internal.math.big.Big_t_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_t_nat.T_nat);
        var _x_5:stdgo._internal.math.big.Big_t_nat.T_nat = (new stdgo._internal.math.big.Big_t_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_t_nat.T_nat);
        var _rand_4:stdgo.Ref<stdgo._internal.math.rand.Rand_rand.Rand> = (null : stdgo.Ref<stdgo._internal.math.rand.Rand_rand.Rand>);
        var _q_2:stdgo._internal.math.big.Big_t_nat.T_nat = (new stdgo._internal.math.big.Big_t_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_t_nat.T_nat);
        var _k_1:stdgo.GoUInt = (0 : stdgo.GoUInt);
        var _nm1_0:stdgo._internal.math.big.Big_t_nat.T_nat = (new stdgo._internal.math.big.Big_t_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_t_nat.T_nat);
        var _j_10:stdgo.GoUInt = (0 : stdgo.GoUInt);
        var _i_9:stdgo.GoInt = (0 : stdgo.GoInt);
        var _nm3Len_8:stdgo.GoInt = (0 : stdgo.GoInt);
        var _nm3_3:stdgo._internal.math.big.Big_t_nat.T_nat = (new stdgo._internal.math.big.Big_t_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_t_nat.T_nat);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _nm1_0 = (new stdgo._internal.math.big.Big_t_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_t_nat.T_nat)._sub(_n, stdgo._internal.math.big.Big__natone._natOne);
                    _k_1 = _nm1_0._trailingZeroBits();
                    _q_2 = (new stdgo._internal.math.big.Big_t_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_t_nat.T_nat)._shr(_nm1_0, _k_1);
                    _nm3_3 = (new stdgo._internal.math.big.Big_t_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_t_nat.T_nat)._sub(_nm1_0, stdgo._internal.math.big.Big__nattwo._natTwo);
                    _rand_4 = stdgo._internal.math.rand.Rand_new_.new_(stdgo._internal.math.rand.Rand_newsource.newSource((_n[(0 : stdgo.GoInt)] : stdgo.GoInt64)));
                    _nm3Len_8 = _nm3_3._bitLen();
                    _gotoNext = 4481732i32;
                } else if (__value__ == (4481732i32)) {
                    _i_9 = (0 : stdgo.GoInt);
                    nextRandomBreak = false;
                    _gotoNext = 4481745i32;
                } else if (__value__ == (4481745i32)) {
                    if (!nextRandomBreak && ((_i_9 < _reps : Bool))) {
                        _gotoNext = 4481771i32;
                    } else {
                        _gotoNext = 4482202i32;
                    };
                } else if (__value__ == (4481771i32)) {
                    if (((_i_9 == (_reps - (1 : stdgo.GoInt) : stdgo.GoInt)) && _force2 : Bool)) {
                        _gotoNext = 4481800i32;
                    } else {
                        _gotoNext = 4481832i32;
                    };
                } else if (__value__ == (4481800i32)) {
                    _x_5 = _x_5._set(stdgo._internal.math.big.Big__nattwo._natTwo);
                    _gotoNext = 4481899i32;
                } else if (__value__ == (4481832i32)) {
                    _gotoNext = 4481832i32;
                    _x_5 = _x_5._random(_rand_4, _nm3_3, _nm3Len_8);
                    _x_5 = _x_5._add(_x_5, stdgo._internal.math.big.Big__nattwo._natTwo);
                    var __blank__ = 0i32;
                    _gotoNext = 4481899i32;
                } else if (__value__ == (4481899i32)) {
                    _y_6 = _y_6._expNN(_x_5, _q_2, _n, false);
                    if (((_y_6._cmp(stdgo._internal.math.big.Big__natone._natOne) == (0 : stdgo.GoInt)) || (_y_6._cmp(_nm1_0) == (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 4481970i32;
                    } else {
                        _gotoNext = 4481990i32;
                    };
                } else if (__value__ == (4481970i32)) {
                    _i_9++;
                    _gotoNext = 4481745i32;
                } else if (__value__ == (4481990i32)) {
                    _j_10 = (1u32 : stdgo.GoUInt);
                    _gotoNext = 4481990i32;
                    if ((_j_10 < _k_1 : Bool)) {
                        _gotoNext = 4482019i32;
                    } else {
                        _gotoNext = 4482184i32;
                    };
                } else if (__value__ == (4482015i32)) {
                    _j_10++;
                    _gotoNext = 4481990i32;
                } else if (__value__ == (4482019i32)) {
                    _y_6 = _y_6._sqr(_y_6);
                    {
                        var __tmp__ = _quotient_7._div(_y_6, _y_6, _n);
                        _quotient_7 = @:tmpset0 __tmp__._0;
                        _y_6 = @:tmpset0 __tmp__._1;
                    };
                    if (_y_6._cmp(_nm1_0) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 4482098i32;
                    } else {
                        _gotoNext = 4482132i32;
                    };
                } else if (__value__ == (4482098i32)) {
                    _i_9++;
                    _gotoNext = 4481745i32;
                } else if (__value__ == (4482132i32)) {
                    if (_y_6._cmp(stdgo._internal.math.big.Big__natone._natOne) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 4482154i32;
                    } else {
                        _gotoNext = 4482015i32;
                    };
                } else if (__value__ == (4482154i32)) {
                    return false;
                    _gotoNext = 4482015i32;
                } else if (__value__ == (4482184i32)) {
                    return false;
                    _i_9++;
                    _gotoNext = 4481745i32;
                } else if (__value__ == (4482202i32)) {
                    return true;
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
    @:keep
    @:tdfield
    static public function _divRecursiveStep( _z:stdgo._internal.math.big.Big_t_nat.T_nat, _u:stdgo._internal.math.big.Big_t_nat.T_nat, _v:stdgo._internal.math.big.Big_t_nat.T_nat, _depth:stdgo.GoInt, _tmp:stdgo.Ref<stdgo._internal.math.big.Big_t_nat.T_nat>, _temps:stdgo.Slice<stdgo.Ref<stdgo._internal.math.big.Big_t_nat.T_nat>>):Void {
        @:recv var _z:stdgo._internal.math.big.Big_t_nat.T_nat = _z;
        _u = _u._norm();
        _v = _v._norm();
        if ((_u.length) == ((0 : stdgo.GoInt))) {
            _z._clear();
            return;
        };
        var _n = (_v.length : stdgo.GoInt);
        if ((_n < (100 : stdgo.GoInt) : Bool)) {
            _z._divBasic(_u, _v);
            return;
        };
        var _m = ((_u.length) - _n : stdgo.GoInt);
        if ((_m < (0 : stdgo.GoInt) : Bool)) {
            return;
        };
        var b = (_n / (2 : stdgo.GoInt) : stdgo.GoInt);
        if ((_temps[(_depth : stdgo.GoInt)] == null || (_temps[(_depth : stdgo.GoInt)] : Dynamic).__nil__)) {
            _temps[(_depth : stdgo.GoInt)] = stdgo._internal.math.big.Big__getnat._getNat(_n);
        } else {
            (_temps[(_depth : stdgo.GoInt)] : stdgo._internal.math.big.Big_t_nat.T_nat).__setData__((@:checkr _temps[(_depth : stdgo.GoInt)] ?? throw "null pointer dereference")._make((b + (1 : stdgo.GoInt) : stdgo.GoInt)));
        };
        var _j = (_m : stdgo.GoInt);
        while ((_j > b : Bool)) {
            var _s = ((b - (1 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt);
            var _uu = (_u.__slice__((_j - b : stdgo.GoInt)) : stdgo._internal.math.big.Big_t_nat.T_nat);
            var _qhat = (_temps[(_depth : stdgo.GoInt)] : stdgo._internal.math.big.Big_t_nat.T_nat);
            _qhat._clear();
            _qhat._divRecursiveStep((_uu.__slice__(_s, (b + _n : stdgo.GoInt)) : stdgo._internal.math.big.Big_t_nat.T_nat), (_v.__slice__(_s) : stdgo._internal.math.big.Big_t_nat.T_nat), (_depth + (1 : stdgo.GoInt) : stdgo.GoInt), _tmp, _temps);
            _qhat = _qhat._norm();
            var _qhatv = ((@:checkr _tmp ?? throw "null pointer dereference")._make(((3 : stdgo.GoInt) * _n : stdgo.GoInt)) : stdgo._internal.math.big.Big_t_nat.T_nat);
            _qhatv._clear();
            _qhatv = _qhatv._mul(_qhat, (_v.__slice__(0, _s) : stdgo._internal.math.big.Big_t_nat.T_nat));
            {
                var _i = (0 : stdgo.GoInt);
                while ((_i < (2 : stdgo.GoInt) : Bool)) {
                    var _e = (_qhatv._cmp(_uu._norm()) : stdgo.GoInt);
if ((_e <= (0 : stdgo.GoInt) : Bool)) {
                        break;
                    };
stdgo._internal.math.big.Big__subvw._subVW(_qhat, _qhat, (1u32 : stdgo._internal.math.big.Big_word.Word));
var _c = (stdgo._internal.math.big.Big__subvv._subVV((_qhatv.__slice__(0, _s) : stdgo._internal.math.big.Big_t_nat.T_nat), (_qhatv.__slice__(0, _s) : stdgo._internal.math.big.Big_t_nat.T_nat), (_v.__slice__(0, _s) : stdgo._internal.math.big.Big_t_nat.T_nat)) : stdgo._internal.math.big.Big_word.Word);
if (((_qhatv.length) > _s : Bool)) {
                        stdgo._internal.math.big.Big__subvw._subVW((_qhatv.__slice__(_s) : stdgo._internal.math.big.Big_t_nat.T_nat), (_qhatv.__slice__(_s) : stdgo._internal.math.big.Big_t_nat.T_nat), _c);
                    };
stdgo._internal.math.big.Big__addat._addAt((_uu.__slice__(_s) : stdgo._internal.math.big.Big_t_nat.T_nat), (_v.__slice__(_s) : stdgo._internal.math.big.Big_t_nat.T_nat), (0 : stdgo.GoInt));
                    _i++;
                };
            };
            if ((_qhatv._cmp(_uu._norm()) > (0 : stdgo.GoInt) : Bool)) {
                throw stdgo.Go.toInterface(("impossible" : stdgo.GoString));
            };
            var _c = (stdgo._internal.math.big.Big__subvv._subVV((_uu.__slice__(0, (_qhatv.length)) : stdgo._internal.math.big.Big_t_nat.T_nat), (_uu.__slice__(0, (_qhatv.length)) : stdgo._internal.math.big.Big_t_nat.T_nat), _qhatv) : stdgo._internal.math.big.Big_word.Word);
            if ((_c > (0u32 : stdgo._internal.math.big.Big_word.Word) : Bool)) {
                stdgo._internal.math.big.Big__subvw._subVW((_uu.__slice__((_qhatv.length)) : stdgo._internal.math.big.Big_t_nat.T_nat), (_uu.__slice__((_qhatv.length)) : stdgo._internal.math.big.Big_t_nat.T_nat), _c);
            };
            stdgo._internal.math.big.Big__addat._addAt(_z, _qhat, (_j - b : stdgo.GoInt));
            _j = (_j - (b) : stdgo.GoInt);
        };
        var _s = (b - (1 : stdgo.GoInt) : stdgo.GoInt);
        var _qhat = (_temps[(_depth : stdgo.GoInt)] : stdgo._internal.math.big.Big_t_nat.T_nat);
        _qhat._clear();
        _qhat._divRecursiveStep((_u.__slice__(_s) : stdgo._internal.math.big.Big_t_nat.T_nat)._norm(), (_v.__slice__(_s) : stdgo._internal.math.big.Big_t_nat.T_nat), (_depth + (1 : stdgo.GoInt) : stdgo.GoInt), _tmp, _temps);
        _qhat = _qhat._norm();
        var _qhatv = ((@:checkr _tmp ?? throw "null pointer dereference")._make(((3 : stdgo.GoInt) * _n : stdgo.GoInt)) : stdgo._internal.math.big.Big_t_nat.T_nat);
        _qhatv._clear();
        _qhatv = _qhatv._mul(_qhat, (_v.__slice__(0, _s) : stdgo._internal.math.big.Big_t_nat.T_nat));
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (2 : stdgo.GoInt) : Bool)) {
                {
                    var _e = (_qhatv._cmp(_u._norm()) : stdgo.GoInt);
                    if ((_e > (0 : stdgo.GoInt) : Bool)) {
                        stdgo._internal.math.big.Big__subvw._subVW(_qhat, _qhat, (1u32 : stdgo._internal.math.big.Big_word.Word));
                        var _c = (stdgo._internal.math.big.Big__subvv._subVV((_qhatv.__slice__(0, _s) : stdgo._internal.math.big.Big_t_nat.T_nat), (_qhatv.__slice__(0, _s) : stdgo._internal.math.big.Big_t_nat.T_nat), (_v.__slice__(0, _s) : stdgo._internal.math.big.Big_t_nat.T_nat)) : stdgo._internal.math.big.Big_word.Word);
                        if (((_qhatv.length) > _s : Bool)) {
                            stdgo._internal.math.big.Big__subvw._subVW((_qhatv.__slice__(_s) : stdgo._internal.math.big.Big_t_nat.T_nat), (_qhatv.__slice__(_s) : stdgo._internal.math.big.Big_t_nat.T_nat), _c);
                        };
                        stdgo._internal.math.big.Big__addat._addAt((_u.__slice__(_s) : stdgo._internal.math.big.Big_t_nat.T_nat), (_v.__slice__(_s) : stdgo._internal.math.big.Big_t_nat.T_nat), (0 : stdgo.GoInt));
                    };
                };
                _i++;
            };
        };
        if ((_qhatv._cmp(_u._norm()) > (0 : stdgo.GoInt) : Bool)) {
            throw stdgo.Go.toInterface(("impossible" : stdgo.GoString));
        };
        var _c = (stdgo._internal.math.big.Big__subvv._subVV((_u.__slice__((0 : stdgo.GoInt), (_qhatv.length)) : stdgo._internal.math.big.Big_t_nat.T_nat), (_u.__slice__((0 : stdgo.GoInt), (_qhatv.length)) : stdgo._internal.math.big.Big_t_nat.T_nat), _qhatv) : stdgo._internal.math.big.Big_word.Word);
        if ((_c > (0u32 : stdgo._internal.math.big.Big_word.Word) : Bool)) {
            _c = stdgo._internal.math.big.Big__subvw._subVW((_u.__slice__((_qhatv.length)) : stdgo._internal.math.big.Big_t_nat.T_nat), (_u.__slice__((_qhatv.length)) : stdgo._internal.math.big.Big_t_nat.T_nat), _c);
        };
        if ((_c > (0u32 : stdgo._internal.math.big.Big_word.Word) : Bool)) {
            throw stdgo.Go.toInterface(("impossible" : stdgo.GoString));
        };
        stdgo._internal.math.big.Big__addat._addAt(_z, _qhat._norm(), (0 : stdgo.GoInt));
    }
    @:keep
    @:tdfield
    static public function _divRecursive( _z:stdgo._internal.math.big.Big_t_nat.T_nat, _u:stdgo._internal.math.big.Big_t_nat.T_nat, _v:stdgo._internal.math.big.Big_t_nat.T_nat):Void {
        @:recv var _z:stdgo._internal.math.big.Big_t_nat.T_nat = _z;
        var _recDepth = ((2 : stdgo.GoInt) * stdgo._internal.math.bits.Bits_len.len((_v.length : stdgo.GoUInt)) : stdgo.GoInt);
        var _tmp = stdgo._internal.math.big.Big__getnat._getNat(((3 : stdgo.GoInt) * (_v.length) : stdgo.GoInt));
        var _temps = (new stdgo.Slice<stdgo.Ref<stdgo._internal.math.big.Big_t_nat.T_nat>>((_recDepth : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.Ref<stdgo._internal.math.big.Big_t_nat.T_nat>>);
        _z._clear();
        _z._divRecursiveStep(_u, _v, (0 : stdgo.GoInt), _tmp, _temps);
        for (__8 => _n in _temps) {
            if ((_n != null && ((_n : Dynamic).__nil__ == null || !(_n : Dynamic).__nil__))) {
                stdgo._internal.math.big.Big__putnat._putNat(_n);
            };
        };
        stdgo._internal.math.big.Big__putnat._putNat(_tmp);
    }
    @:keep
    @:tdfield
    static public function _divBasic( _q:stdgo._internal.math.big.Big_t_nat.T_nat, _u:stdgo._internal.math.big.Big_t_nat.T_nat, _v:stdgo._internal.math.big.Big_t_nat.T_nat):Void {
        @:recv var _q:stdgo._internal.math.big.Big_t_nat.T_nat = _q;
        var _n = (_v.length : stdgo.GoInt);
        var _m = ((_u.length) - _n : stdgo.GoInt);
        var _qhatvp = stdgo._internal.math.big.Big__getnat._getNat((_n + (1 : stdgo.GoInt) : stdgo.GoInt));
        var _qhatv = (_qhatvp : stdgo._internal.math.big.Big_t_nat.T_nat);
        var _vn1 = (_v[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)] : stdgo._internal.math.big.Big_word.Word);
        var _rec = (stdgo._internal.math.big.Big__reciprocalword._reciprocalWord(_vn1) : stdgo._internal.math.big.Big_word.Word);
        {
            var _j = (_m : stdgo.GoInt);
            while ((_j >= (0 : stdgo.GoInt) : Bool)) {
                var _qhat = ((-1u32 : stdgo._internal.math.big.Big_word.Word) : stdgo._internal.math.big.Big_word.Word);
var _ujn:stdgo._internal.math.big.Big_word.Word = ((0 : stdgo.GoUInt) : stdgo._internal.math.big.Big_word.Word);
if (((_j + _n : stdgo.GoInt) < (_u.length) : Bool)) {
                    _ujn = _u[(_j + _n : stdgo.GoInt)];
                };
if (_ujn != (_vn1)) {
                    var _rhat:stdgo._internal.math.big.Big_word.Word = ((0 : stdgo.GoUInt) : stdgo._internal.math.big.Big_word.Word);
                    {
                        var __tmp__ = stdgo._internal.math.big.Big__divww._divWW(_ujn, _u[((_j + _n : stdgo.GoInt) - (1 : stdgo.GoInt) : stdgo.GoInt)], _vn1, _rec);
                        _qhat = @:tmpset0 __tmp__._0;
                        _rhat = @:tmpset0 __tmp__._1;
                    };
                    var _vn2 = (_v[(_n - (2 : stdgo.GoInt) : stdgo.GoInt)] : stdgo._internal.math.big.Big_word.Word);
                    var __tmp__ = stdgo._internal.math.big.Big__mulww._mulWW(_qhat, _vn2), _x1:stdgo._internal.math.big.Big_word.Word = __tmp__._0, _x2:stdgo._internal.math.big.Big_word.Word = __tmp__._1;
                    var _ujn2 = (_u[((_j + _n : stdgo.GoInt) - (2 : stdgo.GoInt) : stdgo.GoInt)] : stdgo._internal.math.big.Big_word.Word);
                    while (stdgo._internal.math.big.Big__greaterthan._greaterThan(_x1, _x2, _rhat, _ujn2)) {
                        _qhat--;
                        var _prevRhat = (_rhat : stdgo._internal.math.big.Big_word.Word);
                        _rhat = (_rhat + (_vn1) : stdgo._internal.math.big.Big_word.Word);
                        if ((_rhat < _prevRhat : Bool)) {
                            break;
                        };
                        {
                            var __tmp__ = stdgo._internal.math.big.Big__mulww._mulWW(_qhat, _vn2);
                            _x1 = @:tmpset0 __tmp__._0;
                            _x2 = @:tmpset0 __tmp__._1;
                        };
                    };
                };
_qhatv[(_n : stdgo.GoInt)] = stdgo._internal.math.big.Big__muladdvww._mulAddVWW((_qhatv.__slice__((0 : stdgo.GoInt), _n) : stdgo._internal.math.big.Big_t_nat.T_nat), _v, _qhat, (0u32 : stdgo._internal.math.big.Big_word.Word));
var _qhl = (_qhatv.length : stdgo.GoInt);
if ((((_j + _qhl : stdgo.GoInt) > (_u.length) : Bool) && (_qhatv[(_n : stdgo.GoInt)] == (0u32 : stdgo._internal.math.big.Big_word.Word)) : Bool)) {
                    _qhl--;
                };
var _c = (stdgo._internal.math.big.Big__subvv._subVV((_u.__slice__(_j, (_j + _qhl : stdgo.GoInt)) : stdgo._internal.math.big.Big_t_nat.T_nat), (_u.__slice__(_j) : stdgo._internal.math.big.Big_t_nat.T_nat), _qhatv) : stdgo._internal.math.big.Big_word.Word);
if (_c != ((0u32 : stdgo._internal.math.big.Big_word.Word))) {
                    var _c = (stdgo._internal.math.big.Big__addvv._addVV((_u.__slice__(_j, (_j + _n : stdgo.GoInt)) : stdgo._internal.math.big.Big_t_nat.T_nat), (_u.__slice__(_j) : stdgo._internal.math.big.Big_t_nat.T_nat), _v) : stdgo._internal.math.big.Big_word.Word);
                    if ((_n < _qhl : Bool)) {
                        _u[(_j + _n : stdgo.GoInt)] = (_u[(_j + _n : stdgo.GoInt)] + (_c) : stdgo._internal.math.big.Big_word.Word);
                    };
                    _qhat--;
                };
if (((_j == (_m) && _m == ((_q.length)) : Bool) && (_qhat == (0u32 : stdgo._internal.math.big.Big_word.Word)) : Bool)) {
                    {
                        _j--;
                        continue;
                    };
                };
_q[(_j : stdgo.GoInt)] = _qhat;
                _j--;
            };
        };
        stdgo._internal.math.big.Big__putnat._putNat(_qhatvp);
    }
    @:keep
    @:tdfield
    static public function _divLarge( _z:stdgo._internal.math.big.Big_t_nat.T_nat, _u:stdgo._internal.math.big.Big_t_nat.T_nat, _uIn:stdgo._internal.math.big.Big_t_nat.T_nat, _vIn:stdgo._internal.math.big.Big_t_nat.T_nat):{ var _0 : stdgo._internal.math.big.Big_t_nat.T_nat; var _1 : stdgo._internal.math.big.Big_t_nat.T_nat; } {
        @:recv var _z:stdgo._internal.math.big.Big_t_nat.T_nat = _z;
        var _q = (new stdgo._internal.math.big.Big_t_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_t_nat.T_nat), _r = (new stdgo._internal.math.big.Big_t_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_t_nat.T_nat);
        var _n = (_vIn.length : stdgo.GoInt);
        var _m = ((_uIn.length) - _n : stdgo.GoInt);
        var _shift = (stdgo._internal.math.big.Big__nlz._nlz(_vIn[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)]) : stdgo.GoUInt);
        var _vp = stdgo._internal.math.big.Big__getnat._getNat(_n);
        var _v = (_vp : stdgo._internal.math.big.Big_t_nat.T_nat);
        stdgo._internal.math.big.Big__shlvu._shlVU(_v, _vIn, _shift);
        _u = _u._make(((_uIn.length) + (1 : stdgo.GoInt) : stdgo.GoInt));
        _u[(_uIn.length : stdgo.GoInt)] = stdgo._internal.math.big.Big__shlvu._shlVU((_u.__slice__((0 : stdgo.GoInt), (_uIn.length)) : stdgo._internal.math.big.Big_t_nat.T_nat), _uIn, _shift);
        if (stdgo._internal.math.big.Big__alias._alias(_z, _u)) {
            _z = null;
        };
        _q = _z._make((_m + (1 : stdgo.GoInt) : stdgo.GoInt));
        if ((_n < (100 : stdgo.GoInt) : Bool)) {
            _q._divBasic(_u, _v);
        } else {
            _q._divRecursive(_u, _v);
        };
        stdgo._internal.math.big.Big__putnat._putNat(_vp);
        _q = _q._norm();
        stdgo._internal.math.big.Big__shrvu._shrVU(_u, _u, _shift);
        _r = _u._norm();
        return {
            final __tmp__:{ var _0 : stdgo._internal.math.big.Big_t_nat.T_nat; var _1 : stdgo._internal.math.big.Big_t_nat.T_nat; } = { _0 : _q, _1 : _r };
            _q = __tmp__._0;
            _r = __tmp__._1;
            __tmp__;
        };
    }
    @:keep
    @:tdfield
    static public function _modW( _x:stdgo._internal.math.big.Big_t_nat.T_nat, _d:stdgo._internal.math.big.Big_word.Word):stdgo._internal.math.big.Big_word.Word {
        @:recv var _x:stdgo._internal.math.big.Big_t_nat.T_nat = _x;
        var _r = ((0 : stdgo.GoUInt) : stdgo._internal.math.big.Big_word.Word);
        var _q:stdgo._internal.math.big.Big_t_nat.T_nat = (new stdgo._internal.math.big.Big_t_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_t_nat.T_nat);
        _q = _q._make((_x.length));
        return _r = stdgo._internal.math.big.Big__divwvw._divWVW(_q, (0u32 : stdgo._internal.math.big.Big_word.Word), _x, _d);
    }
    @:keep
    @:tdfield
    static public function _divW( _z:stdgo._internal.math.big.Big_t_nat.T_nat, _x:stdgo._internal.math.big.Big_t_nat.T_nat, _y:stdgo._internal.math.big.Big_word.Word):{ var _0 : stdgo._internal.math.big.Big_t_nat.T_nat; var _1 : stdgo._internal.math.big.Big_word.Word; } {
        @:recv var _z:stdgo._internal.math.big.Big_t_nat.T_nat = _z;
        var _q = (new stdgo._internal.math.big.Big_t_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_t_nat.T_nat), _r = ((0 : stdgo.GoUInt) : stdgo._internal.math.big.Big_word.Word);
        var _m = (_x.length : stdgo.GoInt);
        if (_y == ((0u32 : stdgo._internal.math.big.Big_word.Word))) {
            throw stdgo.Go.toInterface(("division by zero" : stdgo.GoString));
        } else if (_y == ((1u32 : stdgo._internal.math.big.Big_word.Word))) {
            _q = _z._set(_x);
            return { _0 : _q, _1 : _r };
        } else if (_m == ((0 : stdgo.GoInt))) {
            _q = (_z.__slice__(0, (0 : stdgo.GoInt)) : stdgo._internal.math.big.Big_t_nat.T_nat);
            return { _0 : _q, _1 : _r };
        };
        _z = _z._make(_m);
        _r = stdgo._internal.math.big.Big__divwvw._divWVW(_z, (0u32 : stdgo._internal.math.big.Big_word.Word), _x, _y);
        _q = _z._norm();
        return { _0 : _q, _1 : _r };
    }
    @:keep
    @:tdfield
    static public function _div( _z:stdgo._internal.math.big.Big_t_nat.T_nat, _z2:stdgo._internal.math.big.Big_t_nat.T_nat, _u:stdgo._internal.math.big.Big_t_nat.T_nat, _v:stdgo._internal.math.big.Big_t_nat.T_nat):{ var _0 : stdgo._internal.math.big.Big_t_nat.T_nat; var _1 : stdgo._internal.math.big.Big_t_nat.T_nat; } {
        @:recv var _z:stdgo._internal.math.big.Big_t_nat.T_nat = _z;
        var _q = (new stdgo._internal.math.big.Big_t_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_t_nat.T_nat), _r = (new stdgo._internal.math.big.Big_t_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_t_nat.T_nat);
        if ((_v.length) == ((0 : stdgo.GoInt))) {
            throw stdgo.Go.toInterface(("division by zero" : stdgo.GoString));
        };
        if ((_u._cmp(_v) < (0 : stdgo.GoInt) : Bool)) {
            _q = (_z.__slice__(0, (0 : stdgo.GoInt)) : stdgo._internal.math.big.Big_t_nat.T_nat);
            _r = _z2._set(_u);
            return { _0 : _q, _1 : _r };
        };
        if ((_v.length) == ((1 : stdgo.GoInt))) {
            var _r2:stdgo._internal.math.big.Big_word.Word = ((0 : stdgo.GoUInt) : stdgo._internal.math.big.Big_word.Word);
            {
                var __tmp__ = _z._divW(_u, _v[(0 : stdgo.GoInt)]);
                _q = @:tmpset0 __tmp__._0;
                _r2 = @:tmpset0 __tmp__._1;
            };
            _r = _z2._setWord(_r2);
            return { _0 : _q, _1 : _r };
        };
        {
            var __tmp__ = _z._divLarge(_z2, _u, _v);
            _q = @:tmpset0 __tmp__._0;
            _r = @:tmpset0 __tmp__._1;
        };
        return { _0 : _q, _1 : _r };
    }
    @:keep
    @:tdfield
    static public function _rem( _z:stdgo._internal.math.big.Big_t_nat.T_nat, _u:stdgo._internal.math.big.Big_t_nat.T_nat, _v:stdgo._internal.math.big.Big_t_nat.T_nat):stdgo._internal.math.big.Big_t_nat.T_nat {
        @:recv var _z:stdgo._internal.math.big.Big_t_nat.T_nat = _z;
        var _r = (new stdgo._internal.math.big.Big_t_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_t_nat.T_nat);
        if (stdgo._internal.math.big.Big__alias._alias(_z, _u)) {
            _z = null;
        };
        var _qp = stdgo._internal.math.big.Big__getnat._getNat((0 : stdgo.GoInt));
        var __tmp__ = (@:checkr _qp ?? throw "null pointer dereference")._div(_z, _u, _v), _q:stdgo._internal.math.big.Big_t_nat.T_nat = __tmp__._0, _r:stdgo._internal.math.big.Big_t_nat.T_nat = __tmp__._1;
        (_qp : stdgo._internal.math.big.Big_t_nat.T_nat).__setData__(_q);
        stdgo._internal.math.big.Big__putnat._putNat(_qp);
        return _r;
    }
    @:keep
    @:tdfield
    static public function _expWW( _z:stdgo._internal.math.big.Big_t_nat.T_nat, _x:stdgo._internal.math.big.Big_word.Word, _y:stdgo._internal.math.big.Big_word.Word):stdgo._internal.math.big.Big_t_nat.T_nat {
        @:recv var _z:stdgo._internal.math.big.Big_t_nat.T_nat = _z;
        return _z._expNN((new stdgo._internal.math.big.Big_t_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_t_nat.T_nat)._setWord(_x), (new stdgo._internal.math.big.Big_t_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_t_nat.T_nat)._setWord(_y), null, false);
    }
    @:keep
    @:tdfield
    static public function _convertWords( _q:stdgo._internal.math.big.Big_t_nat.T_nat, _s:stdgo.Slice<stdgo.GoUInt8>, _b:stdgo._internal.math.big.Big_word.Word, _ndigits:stdgo.GoInt, _bb:stdgo._internal.math.big.Big_word.Word, _table:stdgo.Slice<stdgo._internal.math.big.Big_t_divisor.T_divisor>):Void {
        @:recv var _q:stdgo._internal.math.big.Big_t_nat.T_nat = _q;
        if (_table != null) {
            var _r:stdgo._internal.math.big.Big_t_nat.T_nat = (new stdgo._internal.math.big.Big_t_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_t_nat.T_nat);
            var _index = ((_table.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
            while (((_q.length) > stdgo._internal.math.big.Big__leafsize._leafSize : Bool)) {
                var _maxLength = (_q._bitLen() : stdgo.GoInt);
                var _minLength = (_maxLength >> (1i64 : stdgo.GoUInt64) : stdgo.GoInt);
                while (((_index > (0 : stdgo.GoInt) : Bool) && (_table[(_index - (1 : stdgo.GoInt) : stdgo.GoInt)]._nbits > _minLength : Bool) : Bool)) {
                    _index--;
                };
                if (((_table[(_index : stdgo.GoInt)]._nbits >= _maxLength : Bool) && (_table[(_index : stdgo.GoInt)]._bbb._cmp(_q) >= (0 : stdgo.GoInt) : Bool) : Bool)) {
                    _index--;
                    if ((_index < (0 : stdgo.GoInt) : Bool)) {
                        throw stdgo.Go.toInterface(("internal inconsistency" : stdgo.GoString));
                    };
                };
                {
                    var __tmp__ = _q._div(_r, _q, _table[(_index : stdgo.GoInt)]._bbb);
                    _q = @:tmpset0 __tmp__._0;
                    _r = @:tmpset0 __tmp__._1;
                };
                var _h = ((_s.length) - _table[(_index : stdgo.GoInt)]._ndigits : stdgo.GoInt);
                _r._convertWords((_s.__slice__(_h) : stdgo.Slice<stdgo.GoUInt8>), _b, _ndigits, _bb, (_table.__slice__((0 : stdgo.GoInt), _index) : stdgo.Slice<stdgo._internal.math.big.Big_t_divisor.T_divisor>));
                _s = (_s.__slice__(0, _h) : stdgo.Slice<stdgo.GoUInt8>);
            };
        };
        var _i = (_s.length : stdgo.GoInt);
        var _r:stdgo._internal.math.big.Big_word.Word = ((0 : stdgo.GoUInt) : stdgo._internal.math.big.Big_word.Word);
        if (_b == ((10u32 : stdgo._internal.math.big.Big_word.Word))) {
            while (((_q.length) > (0 : stdgo.GoInt) : Bool)) {
                {
                    var __tmp__ = _q._divW(_q, _bb);
                    _q = @:tmpset0 __tmp__._0;
                    _r = @:tmpset0 __tmp__._1;
                };
                {
                    var _j = (0 : stdgo.GoInt);
                    while (((_j < _ndigits : Bool) && (_i > (0 : stdgo.GoInt) : Bool) : Bool)) {
                        _i--;
var _t = (_r / (10u32 : stdgo._internal.math.big.Big_word.Word) : stdgo._internal.math.big.Big_word.Word);
_s[(_i : stdgo.GoInt)] = ((48 : stdgo.GoUInt8) + ((_r - (_t * (10u32 : stdgo._internal.math.big.Big_word.Word) : stdgo._internal.math.big.Big_word.Word) : stdgo._internal.math.big.Big_word.Word) : stdgo.GoUInt8) : stdgo.GoUInt8);
_r = _t;
                        _j++;
                    };
                };
            };
        } else {
            while (((_q.length) > (0 : stdgo.GoInt) : Bool)) {
                {
                    var __tmp__ = _q._divW(_q, _bb);
                    _q = @:tmpset0 __tmp__._0;
                    _r = @:tmpset0 __tmp__._1;
                };
                {
                    var _j = (0 : stdgo.GoInt);
                    while (((_j < _ndigits : Bool) && (_i > (0 : stdgo.GoInt) : Bool) : Bool)) {
                        _i--;
_s[(_i : stdgo.GoInt)] = ("0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ" : stdgo.GoString)[((_r % _b : stdgo._internal.math.big.Big_word.Word) : stdgo.GoInt)];
_r = (_r / (_b) : stdgo._internal.math.big.Big_word.Word);
                        _j++;
                    };
                };
            };
        };
        while ((_i > (0 : stdgo.GoInt) : Bool)) {
            _i--;
            _s[(_i : stdgo.GoInt)] = (48 : stdgo.GoUInt8);
        };
    }
    @:keep
    @:tdfield
    static public function _itoa( _x:stdgo._internal.math.big.Big_t_nat.T_nat, _neg:Bool, _base:stdgo.GoInt):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _x:stdgo._internal.math.big.Big_t_nat.T_nat = _x;
        if (((_base < (2 : stdgo.GoInt) : Bool) || (_base > (62 : stdgo.GoInt) : Bool) : Bool)) {
            throw stdgo.Go.toInterface(("invalid base" : stdgo.GoString));
        };
        if ((_x.length) == ((0 : stdgo.GoInt))) {
            return ((("0" : stdgo.GoString) : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>);
        };
        var _i = ((((_x._bitLen() : stdgo.GoFloat64) / stdgo._internal.math.Math_log2.log2((_base : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt);
        if (_neg) {
            _i++;
        };
        var _s = (new stdgo.Slice<stdgo.GoUInt8>((_i : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        {
            var _b = (_base : stdgo._internal.math.big.Big_word.Word);
            if (_b == ((_b & -_b : stdgo._internal.math.big.Big_word.Word))) {
                var _shift = (stdgo._internal.math.bits.Bits_trailingzeros.trailingZeros((_b : stdgo.GoUInt)) : stdgo.GoUInt);
                var _mask = ((((1u32 : stdgo._internal.math.big.Big_word.Word) << _shift : stdgo._internal.math.big.Big_word.Word) - (1u32 : stdgo._internal.math.big.Big_word.Word) : stdgo._internal.math.big.Big_word.Word) : stdgo._internal.math.big.Big_word.Word);
                var _w = (_x[(0 : stdgo.GoInt)] : stdgo._internal.math.big.Big_word.Word);
                var _nbits = ((32u32 : stdgo.GoUInt) : stdgo.GoUInt);
                {
                    var _k = (1 : stdgo.GoInt);
                    while ((_k < (_x.length) : Bool)) {
                        while ((_nbits >= _shift : Bool)) {
                            _i--;
                            _s[(_i : stdgo.GoInt)] = ("0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ" : stdgo.GoString)[((_w & _mask : stdgo._internal.math.big.Big_word.Word) : stdgo.GoInt)];
                            _w = (_w >> (_shift) : stdgo._internal.math.big.Big_word.Word);
                            _nbits = (_nbits - (_shift) : stdgo.GoUInt);
                        };
if (_nbits == ((0u32 : stdgo.GoUInt))) {
                            _w = _x[(_k : stdgo.GoInt)];
                            _nbits = (32u32 : stdgo.GoUInt);
                        } else {
                            _w = (_w | ((_x[(_k : stdgo.GoInt)] << _nbits : stdgo._internal.math.big.Big_word.Word)) : stdgo._internal.math.big.Big_word.Word);
                            _i--;
                            _s[(_i : stdgo.GoInt)] = ("0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ" : stdgo.GoString)[((_w & _mask : stdgo._internal.math.big.Big_word.Word) : stdgo.GoInt)];
                            _w = (_x[(_k : stdgo.GoInt)] >> ((_shift - _nbits : stdgo.GoUInt)) : stdgo._internal.math.big.Big_word.Word);
                            _nbits = ((32u32 : stdgo.GoUInt) - ((_shift - _nbits : stdgo.GoUInt)) : stdgo.GoUInt);
                        };
                        _k++;
                    };
                };
                while (_w != ((0u32 : stdgo._internal.math.big.Big_word.Word))) {
                    _i--;
                    _s[(_i : stdgo.GoInt)] = ("0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ" : stdgo.GoString)[((_w & _mask : stdgo._internal.math.big.Big_word.Word) : stdgo.GoInt)];
                    _w = (_w >> (_shift) : stdgo._internal.math.big.Big_word.Word);
                };
            } else {
                var __tmp__ = stdgo._internal.math.big.Big__maxpow._maxPow(_b), _bb:stdgo._internal.math.big.Big_word.Word = __tmp__._0, _ndigits:stdgo.GoInt = __tmp__._1;
                var _table = stdgo._internal.math.big.Big__divisors._divisors((_x.length), _b, _ndigits, _bb);
                var _q = ((new stdgo._internal.math.big.Big_t_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_t_nat.T_nat)._set(_x) : stdgo._internal.math.big.Big_t_nat.T_nat);
                _q._convertWords(_s, _b, _ndigits, _bb, _table);
                _i = (0 : stdgo.GoInt);
                while (_s[(_i : stdgo.GoInt)] == ((48 : stdgo.GoUInt8))) {
                    _i++;
                };
            };
        };
        if (_neg) {
            _i--;
            _s[(_i : stdgo.GoInt)] = (45 : stdgo.GoUInt8);
        };
        return (_s.__slice__(_i) : stdgo.Slice<stdgo.GoUInt8>);
    }
    @:keep
    @:tdfield
    static public function _utoa( _x:stdgo._internal.math.big.Big_t_nat.T_nat, _base:stdgo.GoInt):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _x:stdgo._internal.math.big.Big_t_nat.T_nat = _x;
        return _x._itoa(false, _base);
    }
    @:keep
    @:tdfield
    static public function _scan( _z:stdgo._internal.math.big.Big_t_nat.T_nat, _r:stdgo._internal.io.Io_bytescanner.ByteScanner, _base:stdgo.GoInt, _fracOk:Bool):{ var _0 : stdgo._internal.math.big.Big_t_nat.T_nat; var _1 : stdgo.GoInt; var _2 : stdgo.GoInt; var _3 : stdgo.Error; } {
        @:recv var _z:stdgo._internal.math.big.Big_t_nat.T_nat = _z;
        var _res = (new stdgo._internal.math.big.Big_t_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_t_nat.T_nat), _b = (0 : stdgo.GoInt), _count = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        var _baseOk = ((_base == ((0 : stdgo.GoInt)) || ((!_fracOk && ((2 : stdgo.GoInt) <= _base : Bool) : Bool) && (_base <= (62 : stdgo.GoInt) : Bool) : Bool) : Bool) || (_fracOk && ((((_base == ((2 : stdgo.GoInt)) || _base == ((8 : stdgo.GoInt)) : Bool) || _base == ((10 : stdgo.GoInt)) : Bool) || (_base == (16 : stdgo.GoInt)) : Bool)) : Bool) : Bool);
        if (!_baseOk) {
            throw stdgo.Go.toInterface(stdgo._internal.fmt.Fmt_sprintf.sprintf(("invalid number base %d" : stdgo.GoString), stdgo.Go.toInterface(_base)));
        };
        var _prev = (46 : stdgo.GoInt32);
        var _invalSep = (false : Bool);
        var __tmp__ = _r.readByte(), _ch:stdgo.GoUInt8 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        var __0 = (_base : stdgo.GoInt), __1 = (0 : stdgo.GoInt);
var _prefix = __1, _b = __0;
        if (_base == ((0 : stdgo.GoInt))) {
            _b = (10 : stdgo.GoInt);
            if (((_err == null) && (_ch == (48 : stdgo.GoUInt8)) : Bool)) {
                _prev = (48 : stdgo.GoInt32);
                _count = (1 : stdgo.GoInt);
                {
                    var __tmp__ = _r.readByte();
                    _ch = @:tmpset0 __tmp__._0;
                    _err = @:tmpset0 __tmp__._1;
                };
                if (_err == null) {
                    {
                        final __value__ = _ch;
                        if (__value__ == ((98 : stdgo.GoUInt8)) || __value__ == ((66 : stdgo.GoUInt8))) {
                            {
                                final __tmp__0 = (2 : stdgo.GoInt);
                                final __tmp__1 = (98 : stdgo.GoInt);
                                _b = __tmp__0;
                                _prefix = __tmp__1;
                            };
                        } else if (__value__ == ((111 : stdgo.GoUInt8)) || __value__ == ((79 : stdgo.GoUInt8))) {
                            {
                                final __tmp__0 = (8 : stdgo.GoInt);
                                final __tmp__1 = (111 : stdgo.GoInt);
                                _b = __tmp__0;
                                _prefix = __tmp__1;
                            };
                        } else if (__value__ == ((120 : stdgo.GoUInt8)) || __value__ == ((88 : stdgo.GoUInt8))) {
                            {
                                final __tmp__0 = (16 : stdgo.GoInt);
                                final __tmp__1 = (120 : stdgo.GoInt);
                                _b = __tmp__0;
                                _prefix = __tmp__1;
                            };
                        } else {
                            if (!_fracOk) {
                                {
                                    final __tmp__0 = (8 : stdgo.GoInt);
                                    final __tmp__1 = (48 : stdgo.GoInt);
                                    _b = __tmp__0;
                                    _prefix = __tmp__1;
                                };
                            };
                        };
                    };
                    if (_prefix != ((0 : stdgo.GoInt))) {
                        _count = (0 : stdgo.GoInt);
                        if (_prefix != ((48 : stdgo.GoInt))) {
                            {
                                var __tmp__ = _r.readByte();
                                _ch = @:tmpset0 __tmp__._0;
                                _err = @:tmpset0 __tmp__._1;
                            };
                        };
                    };
                };
            };
        };
        _z = (_z.__slice__(0, (0 : stdgo.GoInt)) : stdgo._internal.math.big.Big_t_nat.T_nat);
        var _b1 = (_b : stdgo._internal.math.big.Big_word.Word);
        var __tmp__ = stdgo._internal.math.big.Big__maxpow._maxPow(_b1), _bn:stdgo._internal.math.big.Big_word.Word = __tmp__._0, _n:stdgo.GoInt = __tmp__._1;
        var _di = ((0u32 : stdgo._internal.math.big.Big_word.Word) : stdgo._internal.math.big.Big_word.Word);
        var _i = (0 : stdgo.GoInt);
        var _dp = (-1 : stdgo.GoInt);
        while (_err == null) {
            if (((_ch == (46 : stdgo.GoUInt8)) && _fracOk : Bool)) {
                _fracOk = false;
                if (_prev == ((95 : stdgo.GoInt32))) {
                    _invalSep = true;
                };
                _prev = (46 : stdgo.GoInt32);
                _dp = _count;
            } else if (((_ch == (95 : stdgo.GoUInt8)) && (_base == (0 : stdgo.GoInt)) : Bool)) {
                if (_prev != ((48 : stdgo.GoInt32))) {
                    _invalSep = true;
                };
                _prev = (95 : stdgo.GoInt32);
            } else {
                var _d1:stdgo._internal.math.big.Big_word.Word = ((0 : stdgo.GoUInt) : stdgo._internal.math.big.Big_word.Word);
                if ((((48 : stdgo.GoUInt8) <= _ch : Bool) && (_ch <= (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                    _d1 = ((_ch - (48 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo._internal.math.big.Big_word.Word);
                } else if ((((97 : stdgo.GoUInt8) <= _ch : Bool) && (_ch <= (122 : stdgo.GoUInt8) : Bool) : Bool)) {
                    _d1 = (((_ch - (97 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo._internal.math.big.Big_word.Word);
                } else if ((((65 : stdgo.GoUInt8) <= _ch : Bool) && (_ch <= (90 : stdgo.GoUInt8) : Bool) : Bool)) {
                    if ((_b <= (36 : stdgo.GoInt) : Bool)) {
                        _d1 = (((_ch - (65 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo._internal.math.big.Big_word.Word);
                    } else {
                        _d1 = (((_ch - (65 : stdgo.GoUInt8) : stdgo.GoUInt8) + (36 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo._internal.math.big.Big_word.Word);
                    };
                } else {
                    _d1 = (63u32 : stdgo._internal.math.big.Big_word.Word);
                };
                if ((_d1 >= _b1 : Bool)) {
                    _r.unreadByte();
                    break;
                };
                _prev = (48 : stdgo.GoInt32);
                _count++;
                _di = ((_di * _b1 : stdgo._internal.math.big.Big_word.Word) + _d1 : stdgo._internal.math.big.Big_word.Word);
                _i++;
                if (_i == (_n)) {
                    _z = _z._mulAddWW(_z, _bn, _di);
                    _di = (0u32 : stdgo._internal.math.big.Big_word.Word);
                    _i = (0 : stdgo.GoInt);
                };
            };
            {
                var __tmp__ = _r.readByte();
                _ch = @:tmpset0 __tmp__._0;
                _err = @:tmpset0 __tmp__._1;
            };
        };
        if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eOF))) {
            _err = (null : stdgo.Error);
        };
        if (((_err == null) && ((_invalSep || (_prev == (95 : stdgo.GoInt32)) : Bool)) : Bool)) {
            _err = stdgo._internal.math.big.Big__errinvalsep._errInvalSep;
        };
        if (_count == ((0 : stdgo.GoInt))) {
            if (_prefix == ((48 : stdgo.GoInt))) {
                return {
                    final __tmp__:{ var _0 : stdgo._internal.math.big.Big_t_nat.T_nat; var _1 : stdgo.GoInt; var _2 : stdgo.GoInt; var _3 : stdgo.Error; } = { _0 : (_z.__slice__(0, (0 : stdgo.GoInt)) : stdgo._internal.math.big.Big_t_nat.T_nat), _1 : (10 : stdgo.GoInt), _2 : (1 : stdgo.GoInt), _3 : _err };
                    _res = __tmp__._0;
                    _b = __tmp__._1;
                    _count = __tmp__._2;
                    _err = __tmp__._3;
                    __tmp__;
                };
            };
            _err = stdgo._internal.math.big.Big__errnodigits._errNoDigits;
        };
        if ((_i > (0 : stdgo.GoInt) : Bool)) {
            _z = _z._mulAddWW(_z, stdgo._internal.math.big.Big__pow._pow(_b1, _i), _di);
        };
        _res = _z._norm();
        if ((_dp >= (0 : stdgo.GoInt) : Bool)) {
            _count = (_dp - _count : stdgo.GoInt);
        };
        return { _0 : _res, _1 : _b, _2 : _count, _3 : _err };
    }
    @:keep
    @:tdfield
    static public function _subMod2N( _z:stdgo._internal.math.big.Big_t_nat.T_nat, _x:stdgo._internal.math.big.Big_t_nat.T_nat, _y:stdgo._internal.math.big.Big_t_nat.T_nat, _n:stdgo.GoUInt):stdgo._internal.math.big.Big_t_nat.T_nat {
        @:recv var _z:stdgo._internal.math.big.Big_t_nat.T_nat = _z;
        if (((_x._bitLen() : stdgo.GoUInt) > _n : Bool)) {
            if (stdgo._internal.math.big.Big__alias._alias(_z, _x)) {
                _x = _x._trunc(_x, _n);
            } else {
                _x = (new stdgo._internal.math.big.Big_t_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_t_nat.T_nat)._trunc(_x, _n);
            };
        };
        if (((_y._bitLen() : stdgo.GoUInt) > _n : Bool)) {
            if (stdgo._internal.math.big.Big__alias._alias(_z, _y)) {
                _y = _y._trunc(_y, _n);
            } else {
                _y = (new stdgo._internal.math.big.Big_t_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_t_nat.T_nat)._trunc(_y, _n);
            };
        };
        if ((_x._cmp(_y) >= (0 : stdgo.GoInt) : Bool)) {
            return _z._sub(_x, _y);
        };
        _z = _z._sub(_y, _x);
        while ((((_z.length : stdgo.GoUInt) * (32u32 : stdgo.GoUInt) : stdgo.GoUInt) < _n : Bool)) {
            _z = (_z.__append__((0u32 : stdgo._internal.math.big.Big_word.Word)));
        };
        for (_i => _ in _z) {
            _z[(_i : stdgo.GoInt)] = (-1 ^ _z[(_i : stdgo.GoInt)]);
        };
        _z = _z._trunc(_z, _n);
        return _z._add(_z, stdgo._internal.math.big.Big__natone._natOne);
    }
    @:keep
    @:tdfield
    static public function _sqrt( _z:stdgo._internal.math.big.Big_t_nat.T_nat, _x:stdgo._internal.math.big.Big_t_nat.T_nat):stdgo._internal.math.big.Big_t_nat.T_nat {
        @:recv var _z:stdgo._internal.math.big.Big_t_nat.T_nat = _z;
        if ((_x._cmp(stdgo._internal.math.big.Big__natone._natOne) <= (0 : stdgo.GoInt) : Bool)) {
            return _z._set(_x);
        };
        if (stdgo._internal.math.big.Big__alias._alias(_z, _x)) {
            _z = null;
        };
        var __0:stdgo._internal.math.big.Big_t_nat.T_nat = (new stdgo._internal.math.big.Big_t_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_t_nat.T_nat), __1:stdgo._internal.math.big.Big_t_nat.T_nat = (new stdgo._internal.math.big.Big_t_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_t_nat.T_nat);
var _z2 = __1, _z1 = __0;
        _z1 = _z;
        _z1 = _z1._setUint64((1i64 : stdgo.GoUInt64));
        _z1 = _z1._shl(_z1, (((_x._bitLen() + (1 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt) / (2u32 : stdgo.GoUInt) : stdgo.GoUInt));
        {
            var _n = (0 : stdgo.GoInt);
            while (true) {
                {
                    var __tmp__ = _z2._div(null, _x, _z1);
                    _z2 = @:tmpset0 __tmp__._0;
                };
_z2 = _z2._add(_z2, _z1);
_z2 = _z2._shr(_z2, (1u32 : stdgo.GoUInt));
if ((_z2._cmp(_z1) >= (0 : stdgo.GoInt) : Bool)) {
                    if ((_n & (1 : stdgo.GoInt) : stdgo.GoInt) == ((0 : stdgo.GoInt))) {
                        return _z1;
                    };
                    return _z._set(_z1);
                };
{
                    final __tmp__0 = _z2;
                    final __tmp__1 = _z1;
                    _z1 = __tmp__0;
                    _z2 = __tmp__1;
                };
                _n++;
            };
        };
    }
    @:keep
    @:tdfield
    static public function _setBytes( _z:stdgo._internal.math.big.Big_t_nat.T_nat, _buf:stdgo.Slice<stdgo.GoUInt8>):stdgo._internal.math.big.Big_t_nat.T_nat {
        @:recv var _z:stdgo._internal.math.big.Big_t_nat.T_nat = _z;
        _z = _z._make((((((_buf.length) + (4 : stdgo.GoInt) : stdgo.GoInt) - (1 : stdgo.GoInt) : stdgo.GoInt)) / (4 : stdgo.GoInt) : stdgo.GoInt));
        var _i = (_buf.length : stdgo.GoInt);
        {
            var _k = (0 : stdgo.GoInt);
            while ((_i >= (4 : stdgo.GoInt) : Bool)) {
                _z[(_k : stdgo.GoInt)] = stdgo._internal.math.big.Big__bigendianword._bigEndianWord((_buf.__slice__((_i - (4 : stdgo.GoInt) : stdgo.GoInt), _i) : stdgo.Slice<stdgo.GoUInt8>));
_i = (_i - ((4 : stdgo.GoInt)) : stdgo.GoInt);
                _k++;
            };
        };
        if ((_i > (0 : stdgo.GoInt) : Bool)) {
            var _d:stdgo._internal.math.big.Big_word.Word = ((0 : stdgo.GoUInt) : stdgo._internal.math.big.Big_word.Word);
            {
                var _s = ((0u32 : stdgo.GoUInt) : stdgo.GoUInt);
                while ((_i > (0 : stdgo.GoInt) : Bool)) {
                    _d = (_d | (((_buf[(_i - (1 : stdgo.GoInt) : stdgo.GoInt)] : stdgo._internal.math.big.Big_word.Word) << _s : stdgo._internal.math.big.Big_word.Word)) : stdgo._internal.math.big.Big_word.Word);
_i--;
                    _s = (_s + ((8u32 : stdgo.GoUInt)) : stdgo.GoUInt);
                };
            };
            _z[((_z.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] = _d;
        };
        return _z._norm();
    }
    @:keep
    @:tdfield
    static public function _bytes( _z:stdgo._internal.math.big.Big_t_nat.T_nat, _buf:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoInt {
        @:recv var _z:stdgo._internal.math.big.Big_t_nat.T_nat = _z;
        var _i = (0 : stdgo.GoInt);
        _i = (_buf.length);
        for (__8 => _d in _z) {
            {
                var _j = (0 : stdgo.GoInt);
                while ((_j < (4 : stdgo.GoInt) : Bool)) {
                    _i--;
if ((_i >= (0 : stdgo.GoInt) : Bool)) {
                        _buf[(_i : stdgo.GoInt)] = (_d : stdgo.GoUInt8);
                    } else if ((_d : stdgo.GoUInt8) != ((0 : stdgo.GoUInt8))) {
                        throw stdgo.Go.toInterface(("math/big: buffer too small to fit value" : stdgo.GoString));
                    };
_d = (_d >> ((8i64 : stdgo.GoUInt64)) : stdgo._internal.math.big.Big_word.Word);
                    _j++;
                };
            };
        };
        if ((_i < (0 : stdgo.GoInt) : Bool)) {
            _i = (0 : stdgo.GoInt);
        };
        while (((_i < (_buf.length) : Bool) && (_buf[(_i : stdgo.GoInt)] == (0 : stdgo.GoUInt8)) : Bool)) {
            _i++;
        };
        return _i;
    }
    @:keep
    @:tdfield
    static public function _expNNMontgomery( _z:stdgo._internal.math.big.Big_t_nat.T_nat, _x:stdgo._internal.math.big.Big_t_nat.T_nat, _y:stdgo._internal.math.big.Big_t_nat.T_nat, _m:stdgo._internal.math.big.Big_t_nat.T_nat):stdgo._internal.math.big.Big_t_nat.T_nat {
        @:recv var _z:stdgo._internal.math.big.Big_t_nat.T_nat = _z;
        var _numWords = (_m.length : stdgo.GoInt);
        if (((_x.length) > _numWords : Bool)) {
            {
                var __tmp__ = (new stdgo._internal.math.big.Big_t_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_t_nat.T_nat)._div(null, _x, _m);
                _x = @:tmpset0 __tmp__._1;
            };
        };
        if (((_x.length) < _numWords : Bool)) {
            var _rr = (new stdgo.Slice<stdgo._internal.math.big.Big_word.Word>((_numWords : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo._internal.math.big.Big_t_nat.T_nat);
            _rr.__copyTo__(_x);
            _x = _rr;
        };
        var _k0 = ((2u32 : stdgo._internal.math.big.Big_word.Word) - _m[(0 : stdgo.GoInt)] : stdgo._internal.math.big.Big_word.Word);
        var _t = (_m[(0 : stdgo.GoInt)] - (1u32 : stdgo._internal.math.big.Big_word.Word) : stdgo._internal.math.big.Big_word.Word);
        {
            var _i = (1 : stdgo.GoInt);
            while ((_i < (32 : stdgo.GoInt) : Bool)) {
                _t = (_t * (_t) : stdgo._internal.math.big.Big_word.Word);
_k0 = (_k0 * ((_t + (1u32 : stdgo._internal.math.big.Big_word.Word) : stdgo._internal.math.big.Big_word.Word)) : stdgo._internal.math.big.Big_word.Word);
                _i = (_i << ((1i64 : stdgo.GoUInt64)) : stdgo.GoInt);
            };
        };
        _k0 = -_k0;
        var rR = ((new stdgo._internal.math.big.Big_t_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_t_nat.T_nat)._setWord((1u32 : stdgo._internal.math.big.Big_word.Word)) : stdgo._internal.math.big.Big_t_nat.T_nat);
        var _zz = ((new stdgo._internal.math.big.Big_t_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_t_nat.T_nat)._shl(rR, ((((2 : stdgo.GoInt) * _numWords : stdgo.GoInt) * (32 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt)) : stdgo._internal.math.big.Big_t_nat.T_nat);
        {
            var __tmp__ = (new stdgo._internal.math.big.Big_t_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_t_nat.T_nat)._div(rR, _zz, _m);
            rR = @:tmpset0 __tmp__._1;
        };
        if (((rR.length) < _numWords : Bool)) {
            _zz = _zz._make(_numWords);
            _zz.__copyTo__(rR);
            rR = _zz;
        };
        var _one = (new stdgo.Slice<stdgo._internal.math.big.Big_word.Word>((_numWords : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo._internal.math.big.Big_t_nat.T_nat);
        _one[(0 : stdgo.GoInt)] = (1u32 : stdgo._internal.math.big.Big_word.Word);
        {};
        var _powers:stdgo.GoArray<stdgo._internal.math.big.Big_t_nat.T_nat> = new stdgo.GoArray<stdgo._internal.math.big.Big_t_nat.T_nat>(16, 16);
        _powers[(0 : stdgo.GoInt)] = _powers[(0 : stdgo.GoInt)]._montgomery(_one, rR, _m, _k0, _numWords);
        _powers[(1 : stdgo.GoInt)] = _powers[(1 : stdgo.GoInt)]._montgomery(_x, rR, _m, _k0, _numWords);
        {
            var _i = (2 : stdgo.GoInt);
            while ((_i < (16 : stdgo.GoInt) : Bool)) {
                _powers[(_i : stdgo.GoInt)] = _powers[(_i : stdgo.GoInt)]._montgomery(_powers[(_i - (1 : stdgo.GoInt) : stdgo.GoInt)], _powers[(1 : stdgo.GoInt)], _m, _k0, _numWords);
                _i++;
            };
        };
        _z = _z._make(_numWords);
        _z.__copyTo__(_powers[(0 : stdgo.GoInt)]);
        _zz = _zz._make(_numWords);
        {
            var _i = ((_y.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
            while ((_i >= (0 : stdgo.GoInt) : Bool)) {
                var _yi = (_y[(_i : stdgo.GoInt)] : stdgo._internal.math.big.Big_word.Word);
{
                    var _j = (0 : stdgo.GoInt);
                    while ((_j < (32 : stdgo.GoInt) : Bool)) {
                        if (((_i != ((_y.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) || (_j != (0 : stdgo.GoInt)) : Bool)) {
                            _zz = _zz._montgomery(_z, _z, _m, _k0, _numWords);
                            _z = _z._montgomery(_zz, _zz, _m, _k0, _numWords);
                            _zz = _zz._montgomery(_z, _z, _m, _k0, _numWords);
                            _z = _z._montgomery(_zz, _zz, _m, _k0, _numWords);
                        };
_zz = _zz._montgomery(_z, _powers[((_yi >> (28i64 : stdgo.GoUInt64) : stdgo._internal.math.big.Big_word.Word) : stdgo.GoInt)], _m, _k0, _numWords);
{
                            final __tmp__0 = _zz;
                            final __tmp__1 = _z;
                            _z = __tmp__0;
                            _zz = __tmp__1;
                        };
_yi = (_yi << ((4i64 : stdgo.GoUInt64)) : stdgo._internal.math.big.Big_word.Word);
                        _j = (_j + ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    };
                };
                _i--;
            };
        };
        _zz = _zz._montgomery(_z, _one, _m, _k0, _numWords);
        if ((_zz._cmp(_m) >= (0 : stdgo.GoInt) : Bool)) {
            _zz = _zz._sub(_zz, _m);
            if ((_zz._cmp(_m) >= (0 : stdgo.GoInt) : Bool)) {
                {
                    var __tmp__ = (new stdgo._internal.math.big.Big_t_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_t_nat.T_nat)._div(null, _zz, _m);
                    _zz = @:tmpset0 __tmp__._1;
                };
            };
        };
        return _zz._norm();
    }
    @:keep
    @:tdfield
    static public function _expNNWindowed( _z:stdgo._internal.math.big.Big_t_nat.T_nat, _x:stdgo._internal.math.big.Big_t_nat.T_nat, _y:stdgo._internal.math.big.Big_t_nat.T_nat, _logM:stdgo.GoUInt):stdgo._internal.math.big.Big_t_nat.T_nat {
        @:recv var _z:stdgo._internal.math.big.Big_t_nat.T_nat = _z;
        if (((_y.length) <= (1 : stdgo.GoInt) : Bool)) {
            throw stdgo.Go.toInterface(("big: misuse of expNNWindowed" : stdgo.GoString));
        };
        if ((_x[(0 : stdgo.GoInt)] & (1u32 : stdgo._internal.math.big.Big_word.Word) : stdgo._internal.math.big.Big_word.Word) == ((0u32 : stdgo._internal.math.big.Big_word.Word))) {
            return _z._setWord((0u32 : stdgo._internal.math.big.Big_word.Word));
        };
        if (_logM == ((1u32 : stdgo.GoUInt))) {
            return _z._setWord((1u32 : stdgo._internal.math.big.Big_word.Word));
        };
        var _w = (((((_logM + (32u32 : stdgo.GoUInt) : stdgo.GoUInt) - (1u32 : stdgo.GoUInt) : stdgo.GoUInt)) / (32u32 : stdgo.GoUInt) : stdgo.GoUInt) : stdgo.GoInt);
        var _zzp = stdgo._internal.math.big.Big__getnat._getNat(_w);
        var _zz = (_zzp : stdgo._internal.math.big.Big_t_nat.T_nat);
        {};
        var _powers:stdgo.GoArray<stdgo.Ref<stdgo._internal.math.big.Big_t_nat.T_nat>> = new stdgo.GoArray<stdgo.Ref<stdgo._internal.math.big.Big_t_nat.T_nat>>(16, 16);
        for (_i => _ in _powers) {
            _powers[(_i : stdgo.GoInt)] = stdgo._internal.math.big.Big__getnat._getNat(_w);
        };
        (_powers[(0 : stdgo.GoInt)] : stdgo._internal.math.big.Big_t_nat.T_nat).__setData__((@:checkr _powers[(0 : stdgo.GoInt)] ?? throw "null pointer dereference")._set(stdgo._internal.math.big.Big__natone._natOne));
        (_powers[(1 : stdgo.GoInt)] : stdgo._internal.math.big.Big_t_nat.T_nat).__setData__((@:checkr _powers[(1 : stdgo.GoInt)] ?? throw "null pointer dereference")._trunc(_x, _logM));
        {
            var _i = (2 : stdgo.GoInt);
            while ((_i < (16 : stdgo.GoInt) : Bool)) {
                var __0 = _powers[(_i / (2 : stdgo.GoInt) : stdgo.GoInt)], __1 = _powers[(_i : stdgo.GoInt)], __2 = _powers[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)];
var _p1 = __2, _p = __1, _p2 = __0;
(_p : stdgo._internal.math.big.Big_t_nat.T_nat).__setData__((@:checkr _p ?? throw "null pointer dereference")._sqr((_p2 : stdgo._internal.math.big.Big_t_nat.T_nat)));
(_p : stdgo._internal.math.big.Big_t_nat.T_nat).__setData__((@:checkr _p ?? throw "null pointer dereference")._trunc((_p : stdgo._internal.math.big.Big_t_nat.T_nat), _logM));
(_p1 : stdgo._internal.math.big.Big_t_nat.T_nat).__setData__((@:checkr _p1 ?? throw "null pointer dereference")._mul((_p : stdgo._internal.math.big.Big_t_nat.T_nat), _x));
(_p1 : stdgo._internal.math.big.Big_t_nat.T_nat).__setData__((@:checkr _p1 ?? throw "null pointer dereference")._trunc((_p1 : stdgo._internal.math.big.Big_t_nat.T_nat), _logM));
                _i = (_i + ((2 : stdgo.GoInt)) : stdgo.GoInt);
            };
        };
        var _i = ((_y.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
        var _mtop = ((((_logM - (2u32 : stdgo.GoUInt) : stdgo.GoUInt)) / (32u32 : stdgo.GoUInt) : stdgo.GoUInt) : stdgo.GoInt);
        var _mmask = (-1u32 : stdgo._internal.math.big.Big_word.Word);
        {
            var _mbits = (((_logM - (1u32 : stdgo.GoUInt) : stdgo.GoUInt)) & (31u32 : stdgo.GoUInt) : stdgo.GoUInt);
            if (_mbits != ((0u32 : stdgo.GoUInt))) {
                _mmask = ((((1u32 : stdgo._internal.math.big.Big_word.Word) << _mbits : stdgo._internal.math.big.Big_word.Word)) - (1u32 : stdgo._internal.math.big.Big_word.Word) : stdgo._internal.math.big.Big_word.Word);
            };
        };
        if ((_i > _mtop : Bool)) {
            _i = _mtop;
        };
        var _advance = (false : Bool);
        _z = _z._setWord((1u32 : stdgo._internal.math.big.Big_word.Word));
        while ((_i >= (0 : stdgo.GoInt) : Bool)) {
            var _yi = (_y[(_i : stdgo.GoInt)] : stdgo._internal.math.big.Big_word.Word);
if (_i == (_mtop)) {
                _yi = (_yi & (_mmask) : stdgo._internal.math.big.Big_word.Word);
            };
{
                var _j = (0 : stdgo.GoInt);
                while ((_j < (32 : stdgo.GoInt) : Bool)) {
                    if (_advance) {
                        _zz = _zz._sqr(_z);
                        {
                            final __tmp__0 = _z;
                            final __tmp__1 = _zz;
                            _zz = __tmp__0;
                            _z = __tmp__1;
                        };
                        _z = _z._trunc(_z, _logM);
                        _zz = _zz._sqr(_z);
                        {
                            final __tmp__0 = _z;
                            final __tmp__1 = _zz;
                            _zz = __tmp__0;
                            _z = __tmp__1;
                        };
                        _z = _z._trunc(_z, _logM);
                        _zz = _zz._sqr(_z);
                        {
                            final __tmp__0 = _z;
                            final __tmp__1 = _zz;
                            _zz = __tmp__0;
                            _z = __tmp__1;
                        };
                        _z = _z._trunc(_z, _logM);
                        _zz = _zz._sqr(_z);
                        {
                            final __tmp__0 = _z;
                            final __tmp__1 = _zz;
                            _zz = __tmp__0;
                            _z = __tmp__1;
                        };
                        _z = _z._trunc(_z, _logM);
                    };
_zz = _zz._mul(_z, (_powers[((_yi >> (28i64 : stdgo.GoUInt64) : stdgo._internal.math.big.Big_word.Word) : stdgo.GoInt)] : stdgo._internal.math.big.Big_t_nat.T_nat));
{
                        final __tmp__0 = _z;
                        final __tmp__1 = _zz;
                        _zz = __tmp__0;
                        _z = __tmp__1;
                    };
_z = _z._trunc(_z, _logM);
_yi = (_yi << ((4i64 : stdgo.GoUInt64)) : stdgo._internal.math.big.Big_word.Word);
_advance = true;
                    _j = (_j + ((4 : stdgo.GoInt)) : stdgo.GoInt);
                };
            };
            _i--;
        };
        (_zzp : stdgo._internal.math.big.Big_t_nat.T_nat).__setData__(_zz);
        stdgo._internal.math.big.Big__putnat._putNat(_zzp);
        for (_i => _ in _powers) {
            stdgo._internal.math.big.Big__putnat._putNat(_powers[(_i : stdgo.GoInt)]);
        };
        return _z._norm();
    }
    @:keep
    @:tdfield
    static public function _expNNMontgomeryEven( _z:stdgo._internal.math.big.Big_t_nat.T_nat, _x:stdgo._internal.math.big.Big_t_nat.T_nat, _y:stdgo._internal.math.big.Big_t_nat.T_nat, _m:stdgo._internal.math.big.Big_t_nat.T_nat):stdgo._internal.math.big.Big_t_nat.T_nat {
        @:recv var _z:stdgo._internal.math.big.Big_t_nat.T_nat = _z;
        var _n = (_m._trailingZeroBits() : stdgo.GoUInt);
        var _m1 = ((new stdgo._internal.math.big.Big_t_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_t_nat.T_nat)._shl(stdgo._internal.math.big.Big__natone._natOne, _n) : stdgo._internal.math.big.Big_t_nat.T_nat);
        var _m2 = ((new stdgo._internal.math.big.Big_t_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_t_nat.T_nat)._shr(_m, _n) : stdgo._internal.math.big.Big_t_nat.T_nat);
        var _z1 = ((new stdgo._internal.math.big.Big_t_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_t_nat.T_nat)._expNN(_x, _y, _m1, false) : stdgo._internal.math.big.Big_t_nat.T_nat);
        var _z2 = ((new stdgo._internal.math.big.Big_t_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_t_nat.T_nat)._expNN(_x, _y, _m2, false) : stdgo._internal.math.big.Big_t_nat.T_nat);
        _z = _z._set(_z2);
        _z1 = _z1._subMod2N(_z1, _z2, _n);
        var _m2inv = ((new stdgo._internal.math.big.Big_t_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_t_nat.T_nat)._modInverse(_m2, _m1) : stdgo._internal.math.big.Big_t_nat.T_nat);
        _z2 = _z2._mul(_z1, _m2inv);
        _z2 = _z2._trunc(_z2, _n);
        _z = _z._add(_z, _z1._mul(_z2, _m2));
        return _z;
    }
    @:keep
    @:tdfield
    static public function _expNN( _z:stdgo._internal.math.big.Big_t_nat.T_nat, _x:stdgo._internal.math.big.Big_t_nat.T_nat, _y:stdgo._internal.math.big.Big_t_nat.T_nat, _m:stdgo._internal.math.big.Big_t_nat.T_nat, _slow:Bool):stdgo._internal.math.big.Big_t_nat.T_nat {
        @:recv var _z:stdgo._internal.math.big.Big_t_nat.T_nat = _z;
        if ((stdgo._internal.math.big.Big__alias._alias(_z, _x) || stdgo._internal.math.big.Big__alias._alias(_z, _y) : Bool)) {
            _z = null;
        };
        if (((_m.length == (1 : stdgo.GoInt)) && (_m[(0 : stdgo.GoInt)] == (1u32 : stdgo._internal.math.big.Big_word.Word)) : Bool)) {
            return _z._setWord((0u32 : stdgo._internal.math.big.Big_word.Word));
        };
        if ((_y.length) == ((0 : stdgo.GoInt))) {
            return _z._setWord((1u32 : stdgo._internal.math.big.Big_word.Word));
        };
        if ((_x.length) == ((0 : stdgo.GoInt))) {
            return _z._setWord((0u32 : stdgo._internal.math.big.Big_word.Word));
        };
        if (((_x.length == (1 : stdgo.GoInt)) && (_x[(0 : stdgo.GoInt)] == (1u32 : stdgo._internal.math.big.Big_word.Word)) : Bool)) {
            return _z._setWord((1u32 : stdgo._internal.math.big.Big_word.Word));
        };
        if (((_y.length == (1 : stdgo.GoInt)) && (_y[(0 : stdgo.GoInt)] == (1u32 : stdgo._internal.math.big.Big_word.Word)) : Bool)) {
            if ((_m.length) != ((0 : stdgo.GoInt))) {
                return _z._rem(_x, _m);
            };
            return _z._set(_x);
        };
        if ((_m.length) != ((0 : stdgo.GoInt))) {
            _z = _z._make((_m.length));
            if ((((_y.length) > (1 : stdgo.GoInt) : Bool) && !_slow : Bool)) {
                if ((_m[(0 : stdgo.GoInt)] & (1u32 : stdgo._internal.math.big.Big_word.Word) : stdgo._internal.math.big.Big_word.Word) == ((1u32 : stdgo._internal.math.big.Big_word.Word))) {
                    return _z._expNNMontgomery(_x, _y, _m);
                };
                {
                    var __tmp__ = _m._isPow2(), _logM:stdgo.GoUInt = __tmp__._0, _ok:Bool = __tmp__._1;
                    if (_ok) {
                        return _z._expNNWindowed(_x, _y, _logM);
                    };
                };
                return _z._expNNMontgomeryEven(_x, _y, _m);
            };
        };
        _z = _z._set(_x);
        var _v = (_y[((_y.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] : stdgo._internal.math.big.Big_word.Word);
        var _shift = (stdgo._internal.math.big.Big__nlz._nlz(_v) + (1u32 : stdgo.GoUInt) : stdgo.GoUInt);
        _v = (_v << (_shift) : stdgo._internal.math.big.Big_word.Word);
        var _q:stdgo._internal.math.big.Big_t_nat.T_nat = (new stdgo._internal.math.big.Big_t_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_t_nat.T_nat);
        {};
        var _w = ((32 : stdgo.GoInt) - (_shift : stdgo.GoInt) : stdgo.GoInt);
        var __0:stdgo._internal.math.big.Big_t_nat.T_nat = (new stdgo._internal.math.big.Big_t_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_t_nat.T_nat), __1:stdgo._internal.math.big.Big_t_nat.T_nat = (new stdgo._internal.math.big.Big_t_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_t_nat.T_nat);
var _r = __1, _zz = __0;
        {
            var _j = (0 : stdgo.GoInt);
            while ((_j < _w : Bool)) {
                _zz = _zz._sqr(_z);
{
                    final __tmp__0 = _z;
                    final __tmp__1 = _zz;
                    _zz = __tmp__0;
                    _z = __tmp__1;
                };
if ((_v & (-2147483648u32 : stdgo._internal.math.big.Big_word.Word) : stdgo._internal.math.big.Big_word.Word) != ((0u32 : stdgo._internal.math.big.Big_word.Word))) {
                    _zz = _zz._mul(_z, _x);
                    {
                        final __tmp__0 = _z;
                        final __tmp__1 = _zz;
                        _zz = __tmp__0;
                        _z = __tmp__1;
                    };
                };
if ((_m.length) != ((0 : stdgo.GoInt))) {
                    {
                        var __tmp__ = _zz._div(_r, _z, _m);
                        _zz = @:tmpset0 __tmp__._0;
                        _r = @:tmpset0 __tmp__._1;
                    };
                    {
                        final __tmp__0 = _q;
                        final __tmp__1 = _z;
                        final __tmp__2 = _zz;
                        final __tmp__3 = _r;
                        _zz = __tmp__0;
                        _r = __tmp__1;
                        _q = __tmp__2;
                        _z = __tmp__3;
                    };
                };
_v = (_v << ((1i64 : stdgo.GoUInt64)) : stdgo._internal.math.big.Big_word.Word);
                _j++;
            };
        };
        {
            var _i = ((_y.length) - (2 : stdgo.GoInt) : stdgo.GoInt);
            while ((_i >= (0 : stdgo.GoInt) : Bool)) {
                _v = _y[(_i : stdgo.GoInt)];
{
                    var _j = (0 : stdgo.GoInt);
                    while ((_j < (32 : stdgo.GoInt) : Bool)) {
                        _zz = _zz._sqr(_z);
{
                            final __tmp__0 = _z;
                            final __tmp__1 = _zz;
                            _zz = __tmp__0;
                            _z = __tmp__1;
                        };
if ((_v & (-2147483648u32 : stdgo._internal.math.big.Big_word.Word) : stdgo._internal.math.big.Big_word.Word) != ((0u32 : stdgo._internal.math.big.Big_word.Word))) {
                            _zz = _zz._mul(_z, _x);
                            {
                                final __tmp__0 = _z;
                                final __tmp__1 = _zz;
                                _zz = __tmp__0;
                                _z = __tmp__1;
                            };
                        };
if ((_m.length) != ((0 : stdgo.GoInt))) {
                            {
                                var __tmp__ = _zz._div(_r, _z, _m);
                                _zz = @:tmpset0 __tmp__._0;
                                _r = @:tmpset0 __tmp__._1;
                            };
                            {
                                final __tmp__0 = _q;
                                final __tmp__1 = _z;
                                final __tmp__2 = _zz;
                                final __tmp__3 = _r;
                                _zz = __tmp__0;
                                _r = __tmp__1;
                                _q = __tmp__2;
                                _z = __tmp__3;
                            };
                        };
_v = (_v << ((1i64 : stdgo.GoUInt64)) : stdgo._internal.math.big.Big_word.Word);
                        _j++;
                    };
                };
                _i--;
            };
        };
        return _z._norm();
    }
    @:keep
    @:tdfield
    static public function _random( _z:stdgo._internal.math.big.Big_t_nat.T_nat, _rand:stdgo.Ref<stdgo._internal.math.rand.Rand_rand.Rand>, _limit:stdgo._internal.math.big.Big_t_nat.T_nat, _n:stdgo.GoInt):stdgo._internal.math.big.Big_t_nat.T_nat {
        @:recv var _z:stdgo._internal.math.big.Big_t_nat.T_nat = _z;
        if (stdgo._internal.math.big.Big__alias._alias(_z, _limit)) {
            _z = null;
        };
        _z = _z._make((_limit.length));
        var _bitLengthOfMSW = ((_n % (32 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt);
        if (_bitLengthOfMSW == ((0u32 : stdgo.GoUInt))) {
            _bitLengthOfMSW = (32u32 : stdgo.GoUInt);
        };
        var _mask = (((((1u32 : stdgo._internal.math.big.Big_word.Word) << _bitLengthOfMSW : stdgo._internal.math.big.Big_word.Word)) - (1u32 : stdgo._internal.math.big.Big_word.Word) : stdgo._internal.math.big.Big_word.Word) : stdgo._internal.math.big.Big_word.Word);
        while (true) {
            {
                final __value__ = (32 : stdgo.GoInt);
                if (__value__ == ((32 : stdgo.GoInt))) {
                    for (_i => _ in _z) {
                        _z[(_i : stdgo.GoInt)] = (@:check2r _rand.uint32() : stdgo._internal.math.big.Big_word.Word);
                    };
                } else if (__value__ == ((64 : stdgo.GoInt))) {
                    for (_i => _ in _z) {
                        _z[(_i : stdgo.GoInt)] = ((@:check2r _rand.uint32() : stdgo._internal.math.big.Big_word.Word) | ((@:check2r _rand.uint32() : stdgo._internal.math.big.Big_word.Word) << (32i64 : stdgo.GoUInt64) : stdgo._internal.math.big.Big_word.Word) : stdgo._internal.math.big.Big_word.Word);
                    };
                } else {
                    throw stdgo.Go.toInterface(("unknown word size" : stdgo.GoString));
                };
            };
            _z[((_limit.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] = (_z[((_limit.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] & (_mask) : stdgo._internal.math.big.Big_word.Word);
            if ((_z._cmp(_limit) < (0 : stdgo.GoInt) : Bool)) {
                break;
            };
        };
        return _z._norm();
    }
    @:keep
    @:tdfield
    static public function _xor( _z:stdgo._internal.math.big.Big_t_nat.T_nat, _x:stdgo._internal.math.big.Big_t_nat.T_nat, _y:stdgo._internal.math.big.Big_t_nat.T_nat):stdgo._internal.math.big.Big_t_nat.T_nat {
        @:recv var _z:stdgo._internal.math.big.Big_t_nat.T_nat = _z;
        var _m = (_x.length : stdgo.GoInt);
        var _n = (_y.length : stdgo.GoInt);
        var _s = (_x : stdgo._internal.math.big.Big_t_nat.T_nat);
        if ((_m < _n : Bool)) {
            {
                final __tmp__0 = _m;
                final __tmp__1 = _n;
                _n = __tmp__0;
                _m = __tmp__1;
            };
            _s = _y;
        };
        _z = _z._make(_m);
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < _n : Bool)) {
                _z[(_i : stdgo.GoInt)] = (_x[(_i : stdgo.GoInt)] ^ _y[(_i : stdgo.GoInt)] : stdgo._internal.math.big.Big_word.Word);
                _i++;
            };
        };
        (_z.__slice__(_n, _m) : stdgo._internal.math.big.Big_t_nat.T_nat).__copyTo__((_s.__slice__(_n, _m) : stdgo._internal.math.big.Big_t_nat.T_nat));
        return _z._norm();
    }
    @:keep
    @:tdfield
    static public function _or( _z:stdgo._internal.math.big.Big_t_nat.T_nat, _x:stdgo._internal.math.big.Big_t_nat.T_nat, _y:stdgo._internal.math.big.Big_t_nat.T_nat):stdgo._internal.math.big.Big_t_nat.T_nat {
        @:recv var _z:stdgo._internal.math.big.Big_t_nat.T_nat = _z;
        var _m = (_x.length : stdgo.GoInt);
        var _n = (_y.length : stdgo.GoInt);
        var _s = (_x : stdgo._internal.math.big.Big_t_nat.T_nat);
        if ((_m < _n : Bool)) {
            {
                final __tmp__0 = _m;
                final __tmp__1 = _n;
                _n = __tmp__0;
                _m = __tmp__1;
            };
            _s = _y;
        };
        _z = _z._make(_m);
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < _n : Bool)) {
                _z[(_i : stdgo.GoInt)] = (_x[(_i : stdgo.GoInt)] | _y[(_i : stdgo.GoInt)] : stdgo._internal.math.big.Big_word.Word);
                _i++;
            };
        };
        (_z.__slice__(_n, _m) : stdgo._internal.math.big.Big_t_nat.T_nat).__copyTo__((_s.__slice__(_n, _m) : stdgo._internal.math.big.Big_t_nat.T_nat));
        return _z._norm();
    }
    @:keep
    @:tdfield
    static public function _andNot( _z:stdgo._internal.math.big.Big_t_nat.T_nat, _x:stdgo._internal.math.big.Big_t_nat.T_nat, _y:stdgo._internal.math.big.Big_t_nat.T_nat):stdgo._internal.math.big.Big_t_nat.T_nat {
        @:recv var _z:stdgo._internal.math.big.Big_t_nat.T_nat = _z;
        var _m = (_x.length : stdgo.GoInt);
        var _n = (_y.length : stdgo.GoInt);
        if ((_n > _m : Bool)) {
            _n = _m;
        };
        _z = _z._make(_m);
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < _n : Bool)) {
                _z[(_i : stdgo.GoInt)] = (_x[(_i : stdgo.GoInt)] & ((_y[(_i : stdgo.GoInt)] ^ (-1i32 : stdgo.GoInt32) : stdgo._internal.math.big.Big_word.Word)) : stdgo._internal.math.big.Big_word.Word);
                _i++;
            };
        };
        (_z.__slice__(_n, _m) : stdgo._internal.math.big.Big_t_nat.T_nat).__copyTo__((_x.__slice__(_n, _m) : stdgo._internal.math.big.Big_t_nat.T_nat));
        return _z._norm();
    }
    @:keep
    @:tdfield
    static public function _trunc( _z:stdgo._internal.math.big.Big_t_nat.T_nat, _x:stdgo._internal.math.big.Big_t_nat.T_nat, _n:stdgo.GoUInt):stdgo._internal.math.big.Big_t_nat.T_nat {
        @:recv var _z:stdgo._internal.math.big.Big_t_nat.T_nat = _z;
        var _w = ((((_n + (32u32 : stdgo.GoUInt) : stdgo.GoUInt) - (1u32 : stdgo.GoUInt) : stdgo.GoUInt)) / (32u32 : stdgo.GoUInt) : stdgo.GoUInt);
        if (((_x.length : stdgo.GoUInt) < _w : Bool)) {
            return _z._set(_x);
        };
        _z = _z._make((_w : stdgo.GoInt));
        _z.__copyTo__(_x);
        if ((_n % (32u32 : stdgo.GoUInt) : stdgo.GoUInt) != ((0u32 : stdgo.GoUInt))) {
            _z[((_z.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] = (_z[((_z.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] & ((((1u32 : stdgo._internal.math.big.Big_word.Word) << ((_n % (32u32 : stdgo.GoUInt) : stdgo.GoUInt)) : stdgo._internal.math.big.Big_word.Word) - (1u32 : stdgo._internal.math.big.Big_word.Word) : stdgo._internal.math.big.Big_word.Word)) : stdgo._internal.math.big.Big_word.Word);
        };
        return _z._norm();
    }
    @:keep
    @:tdfield
    static public function _and( _z:stdgo._internal.math.big.Big_t_nat.T_nat, _x:stdgo._internal.math.big.Big_t_nat.T_nat, _y:stdgo._internal.math.big.Big_t_nat.T_nat):stdgo._internal.math.big.Big_t_nat.T_nat {
        @:recv var _z:stdgo._internal.math.big.Big_t_nat.T_nat = _z;
        var _m = (_x.length : stdgo.GoInt);
        var _n = (_y.length : stdgo.GoInt);
        if ((_m > _n : Bool)) {
            _m = _n;
        };
        _z = _z._make(_m);
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < _m : Bool)) {
                _z[(_i : stdgo.GoInt)] = (_x[(_i : stdgo.GoInt)] & _y[(_i : stdgo.GoInt)] : stdgo._internal.math.big.Big_word.Word);
                _i++;
            };
        };
        return _z._norm();
    }
    @:keep
    @:tdfield
    static public function _sticky( _x:stdgo._internal.math.big.Big_t_nat.T_nat, _i:stdgo.GoUInt):stdgo.GoUInt {
        @:recv var _x:stdgo._internal.math.big.Big_t_nat.T_nat = _x;
        var _j = (_i / (32u32 : stdgo.GoUInt) : stdgo.GoUInt);
        if ((_j >= (_x.length : stdgo.GoUInt) : Bool)) {
            if ((_x.length) == ((0 : stdgo.GoInt))) {
                return (0u32 : stdgo.GoUInt);
            };
            return (1u32 : stdgo.GoUInt);
        };
        for (__8 => _x in (_x.__slice__(0, _j) : stdgo._internal.math.big.Big_t_nat.T_nat)) {
            if (_x != ((0u32 : stdgo._internal.math.big.Big_word.Word))) {
                return (1u32 : stdgo.GoUInt);
            };
        };
        if ((_x[(_j : stdgo.GoInt)] << (((32u32 : stdgo.GoUInt) - (_i % (32u32 : stdgo.GoUInt) : stdgo.GoUInt) : stdgo.GoUInt)) : stdgo._internal.math.big.Big_word.Word) != ((0u32 : stdgo._internal.math.big.Big_word.Word))) {
            return (1u32 : stdgo.GoUInt);
        };
        return (0u32 : stdgo.GoUInt);
    }
    @:keep
    @:tdfield
    static public function _bit( _x:stdgo._internal.math.big.Big_t_nat.T_nat, _i:stdgo.GoUInt):stdgo.GoUInt {
        @:recv var _x:stdgo._internal.math.big.Big_t_nat.T_nat = _x;
        var _j = (_i / (32u32 : stdgo.GoUInt) : stdgo.GoUInt);
        if ((_j >= (_x.length : stdgo.GoUInt) : Bool)) {
            return (0u32 : stdgo.GoUInt);
        };
        return (((_x[(_j : stdgo.GoInt)] >> ((_i % (32u32 : stdgo.GoUInt) : stdgo.GoUInt)) : stdgo._internal.math.big.Big_word.Word) & (1u32 : stdgo._internal.math.big.Big_word.Word) : stdgo._internal.math.big.Big_word.Word) : stdgo.GoUInt);
    }
    @:keep
    @:tdfield
    static public function _setBit( _z:stdgo._internal.math.big.Big_t_nat.T_nat, _x:stdgo._internal.math.big.Big_t_nat.T_nat, _i:stdgo.GoUInt, _b:stdgo.GoUInt):stdgo._internal.math.big.Big_t_nat.T_nat {
        @:recv var _z:stdgo._internal.math.big.Big_t_nat.T_nat = _z;
        var _j = ((_i / (32u32 : stdgo.GoUInt) : stdgo.GoUInt) : stdgo.GoInt);
        var _m = ((1u32 : stdgo._internal.math.big.Big_word.Word) << ((_i % (32u32 : stdgo.GoUInt) : stdgo.GoUInt)) : stdgo._internal.math.big.Big_word.Word);
        var _n = (_x.length : stdgo.GoInt);
        {
            final __value__ = _b;
            if (__value__ == ((0u32 : stdgo.GoUInt))) {
                _z = _z._make(_n);
                _z.__copyTo__(_x);
                if ((_j >= _n : Bool)) {
                    return _z;
                };
                _z[(_j : stdgo.GoInt)] = (_z[(_j : stdgo.GoInt)] & (((_m) ^ (-1i32 : stdgo.GoInt32) : stdgo._internal.math.big.Big_word.Word)) : stdgo._internal.math.big.Big_word.Word);
                return _z._norm();
            } else if (__value__ == ((1u32 : stdgo.GoUInt))) {
                if ((_j >= _n : Bool)) {
                    _z = _z._make((_j + (1 : stdgo.GoInt) : stdgo.GoInt));
                    (_z.__slice__(_n) : stdgo._internal.math.big.Big_t_nat.T_nat)._clear();
                } else {
                    _z = _z._make(_n);
                };
                _z.__copyTo__(_x);
                _z[(_j : stdgo.GoInt)] = (_z[(_j : stdgo.GoInt)] | (_m) : stdgo._internal.math.big.Big_word.Word);
                return _z;
            };
        };
        throw stdgo.Go.toInterface(("set bit is not 0 or 1" : stdgo.GoString));
    }
    @:keep
    @:tdfield
    static public function _shr( _z:stdgo._internal.math.big.Big_t_nat.T_nat, _x:stdgo._internal.math.big.Big_t_nat.T_nat, _s:stdgo.GoUInt):stdgo._internal.math.big.Big_t_nat.T_nat {
        @:recv var _z:stdgo._internal.math.big.Big_t_nat.T_nat = _z;
        if (_s == ((0u32 : stdgo.GoUInt))) {
            if (stdgo._internal.math.big.Big__same._same(_z, _x)) {
                return _z;
            };
            if (!stdgo._internal.math.big.Big__alias._alias(_z, _x)) {
                return _z._set(_x);
            };
        };
        var _m = (_x.length : stdgo.GoInt);
        var _n = (_m - ((_s / (32u32 : stdgo.GoUInt) : stdgo.GoUInt) : stdgo.GoInt) : stdgo.GoInt);
        if ((_n <= (0 : stdgo.GoInt) : Bool)) {
            return (_z.__slice__(0, (0 : stdgo.GoInt)) : stdgo._internal.math.big.Big_t_nat.T_nat);
        };
        _z = _z._make(_n);
        stdgo._internal.math.big.Big__shrvu._shrVU(_z, (_x.__slice__((_m - _n : stdgo.GoInt)) : stdgo._internal.math.big.Big_t_nat.T_nat), (_s % (32u32 : stdgo.GoUInt) : stdgo.GoUInt));
        return _z._norm();
    }
    @:keep
    @:tdfield
    static public function _shl( _z:stdgo._internal.math.big.Big_t_nat.T_nat, _x:stdgo._internal.math.big.Big_t_nat.T_nat, _s:stdgo.GoUInt):stdgo._internal.math.big.Big_t_nat.T_nat {
        @:recv var _z:stdgo._internal.math.big.Big_t_nat.T_nat = _z;
        if (_s == ((0u32 : stdgo.GoUInt))) {
            if (stdgo._internal.math.big.Big__same._same(_z, _x)) {
                return _z;
            };
            if (!stdgo._internal.math.big.Big__alias._alias(_z, _x)) {
                return _z._set(_x);
            };
        };
        var _m = (_x.length : stdgo.GoInt);
        if (_m == ((0 : stdgo.GoInt))) {
            return (_z.__slice__(0, (0 : stdgo.GoInt)) : stdgo._internal.math.big.Big_t_nat.T_nat);
        };
        var _n = (_m + ((_s / (32u32 : stdgo.GoUInt) : stdgo.GoUInt) : stdgo.GoInt) : stdgo.GoInt);
        _z = _z._make((_n + (1 : stdgo.GoInt) : stdgo.GoInt));
        _z[(_n : stdgo.GoInt)] = stdgo._internal.math.big.Big__shlvu._shlVU((_z.__slice__((_n - _m : stdgo.GoInt), _n) : stdgo._internal.math.big.Big_t_nat.T_nat), _x, (_s % (32u32 : stdgo.GoUInt) : stdgo.GoUInt));
        (_z.__slice__((0 : stdgo.GoInt), (_n - _m : stdgo.GoInt)) : stdgo._internal.math.big.Big_t_nat.T_nat)._clear();
        return _z._norm();
    }
    @:keep
    @:tdfield
    static public function _isPow2( _x:stdgo._internal.math.big.Big_t_nat.T_nat):{ var _0 : stdgo.GoUInt; var _1 : Bool; } {
        @:recv var _x:stdgo._internal.math.big.Big_t_nat.T_nat = _x;
        var _i:stdgo.GoUInt = (0 : stdgo.GoUInt);
        while (_x[(_i : stdgo.GoInt)] == ((0u32 : stdgo._internal.math.big.Big_word.Word))) {
            _i++;
        };
        if (((_i == ((_x.length : stdgo.GoUInt) - (1u32 : stdgo.GoUInt) : stdgo.GoUInt)) && ((_x[(_i : stdgo.GoInt)] & ((_x[(_i : stdgo.GoInt)] - (1u32 : stdgo._internal.math.big.Big_word.Word) : stdgo._internal.math.big.Big_word.Word)) : stdgo._internal.math.big.Big_word.Word) == (0u32 : stdgo._internal.math.big.Big_word.Word)) : Bool)) {
            return { _0 : ((_i * (32u32 : stdgo.GoUInt) : stdgo.GoUInt) + (stdgo._internal.math.bits.Bits_trailingzeros.trailingZeros((_x[(_i : stdgo.GoInt)] : stdgo.GoUInt)) : stdgo.GoUInt) : stdgo.GoUInt), _1 : true };
        };
        return { _0 : (0u32 : stdgo.GoUInt), _1 : false };
    }
    @:keep
    @:tdfield
    static public function _trailingZeroBits( _x:stdgo._internal.math.big.Big_t_nat.T_nat):stdgo.GoUInt {
        @:recv var _x:stdgo._internal.math.big.Big_t_nat.T_nat = _x;
        if ((_x.length) == ((0 : stdgo.GoInt))) {
            return (0u32 : stdgo.GoUInt);
        };
        var _i:stdgo.GoUInt = (0 : stdgo.GoUInt);
        while (_x[(_i : stdgo.GoInt)] == ((0u32 : stdgo._internal.math.big.Big_word.Word))) {
            _i++;
        };
        return ((_i * (32u32 : stdgo.GoUInt) : stdgo.GoUInt) + (stdgo._internal.math.bits.Bits_trailingzeros.trailingZeros((_x[(_i : stdgo.GoInt)] : stdgo.GoUInt)) : stdgo.GoUInt) : stdgo.GoUInt);
    }
    @:keep
    @:tdfield
    static public function _bitLen( _x:stdgo._internal.math.big.Big_t_nat.T_nat):stdgo.GoInt {
        @:recv var _x:stdgo._internal.math.big.Big_t_nat.T_nat = _x;
        {
            var _i = ((_x.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
            if ((_i >= (0 : stdgo.GoInt) : Bool)) {
                var _top = (_x[(_i : stdgo.GoInt)] : stdgo.GoUInt);
                _top = (_top | ((_top >> (1i64 : stdgo.GoUInt64) : stdgo.GoUInt)) : stdgo.GoUInt);
                _top = (_top | ((_top >> (2i64 : stdgo.GoUInt64) : stdgo.GoUInt)) : stdgo.GoUInt);
                _top = (_top | ((_top >> (4i64 : stdgo.GoUInt64) : stdgo.GoUInt)) : stdgo.GoUInt);
                _top = (_top | ((_top >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt)) : stdgo.GoUInt);
                _top = (_top | ((_top >> (16i64 : stdgo.GoUInt64) : stdgo.GoUInt)) : stdgo.GoUInt);
                _top = (_top | (((_top >> (16i64 : stdgo.GoUInt64) : stdgo.GoUInt) >> (16i64 : stdgo.GoUInt64) : stdgo.GoUInt)) : stdgo.GoUInt);
                return ((_i * (32 : stdgo.GoInt) : stdgo.GoInt) + stdgo._internal.math.bits.Bits_len.len(_top) : stdgo.GoInt);
            };
        };
        return (0 : stdgo.GoInt);
    }
    @:keep
    @:tdfield
    static public function _mulRange( _z:stdgo._internal.math.big.Big_t_nat.T_nat, _a:stdgo.GoUInt64, _b:stdgo.GoUInt64):stdgo._internal.math.big.Big_t_nat.T_nat {
        @:recv var _z:stdgo._internal.math.big.Big_t_nat.T_nat = _z;
        if (_a == ((0i64 : stdgo.GoUInt64))) {
            return _z._setUint64((0i64 : stdgo.GoUInt64));
        } else if ((_a > _b : Bool)) {
            return _z._setUint64((1i64 : stdgo.GoUInt64));
        } else if (_a == (_b)) {
            return _z._setUint64(_a);
        } else if ((_a + (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64) == (_b)) {
            return _z._mul((new stdgo._internal.math.big.Big_t_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_t_nat.T_nat)._setUint64(_a), (new stdgo._internal.math.big.Big_t_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_t_nat.T_nat)._setUint64(_b));
        };
        var _m = (((_a + _b : stdgo.GoUInt64)) / (2i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
        return _z._mul((new stdgo._internal.math.big.Big_t_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_t_nat.T_nat)._mulRange(_a, _m), (new stdgo._internal.math.big.Big_t_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_t_nat.T_nat)._mulRange((_m + (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64), _b));
    }
    @:keep
    @:tdfield
    static public function _sqr( _z:stdgo._internal.math.big.Big_t_nat.T_nat, _x:stdgo._internal.math.big.Big_t_nat.T_nat):stdgo._internal.math.big.Big_t_nat.T_nat {
        @:recv var _z:stdgo._internal.math.big.Big_t_nat.T_nat = _z;
        var _n = (_x.length : stdgo.GoInt);
        if (_n == ((0 : stdgo.GoInt))) {
            return (_z.__slice__(0, (0 : stdgo.GoInt)) : stdgo._internal.math.big.Big_t_nat.T_nat);
        } else if (_n == ((1 : stdgo.GoInt))) {
            var _d = (_x[(0 : stdgo.GoInt)] : stdgo._internal.math.big.Big_word.Word);
            _z = _z._make((2 : stdgo.GoInt));
            {
                var __tmp__ = stdgo._internal.math.big.Big__mulww._mulWW(_d, _d);
                _z[(1 : stdgo.GoInt)] = @:tmpset0 __tmp__._0;
                _z[(0 : stdgo.GoInt)] = @:tmpset0 __tmp__._1;
            };
            return _z._norm();
        };
        if (stdgo._internal.math.big.Big__alias._alias(_z, _x)) {
            _z = null;
        };
        if ((_n < stdgo._internal.math.big.Big__basicsqrthreshold._basicSqrThreshold : Bool)) {
            _z = _z._make(((2 : stdgo.GoInt) * _n : stdgo.GoInt));
            stdgo._internal.math.big.Big__basicmul._basicMul(_z, _x, _x);
            return _z._norm();
        };
        if ((_n < stdgo._internal.math.big.Big__karatsubasqrthreshold._karatsubaSqrThreshold : Bool)) {
            _z = _z._make(((2 : stdgo.GoInt) * _n : stdgo.GoInt));
            stdgo._internal.math.big.Big__basicsqr._basicSqr(_z, _x);
            return _z._norm();
        };
        var _k = (stdgo._internal.math.big.Big__karatsubalen._karatsubaLen(_n, stdgo._internal.math.big.Big__karatsubasqrthreshold._karatsubaSqrThreshold) : stdgo.GoInt);
        var _x0 = (_x.__slice__((0 : stdgo.GoInt), _k) : stdgo._internal.math.big.Big_t_nat.T_nat);
        _z = _z._make(stdgo._internal.math.big.Big__max._max(((6 : stdgo.GoInt) * _k : stdgo.GoInt), ((2 : stdgo.GoInt) * _n : stdgo.GoInt)));
        stdgo._internal.math.big.Big__karatsubasqr._karatsubaSqr(_z, _x0);
        _z = (_z.__slice__((0 : stdgo.GoInt), ((2 : stdgo.GoInt) * _n : stdgo.GoInt)) : stdgo._internal.math.big.Big_t_nat.T_nat);
        (_z.__slice__(((2 : stdgo.GoInt) * _k : stdgo.GoInt)) : stdgo._internal.math.big.Big_t_nat.T_nat)._clear();
        if ((_k < _n : Bool)) {
            var _tp = stdgo._internal.math.big.Big__getnat._getNat(((2 : stdgo.GoInt) * _k : stdgo.GoInt));
            var _t = (_tp : stdgo._internal.math.big.Big_t_nat.T_nat);
            var _x0 = (_x0._norm() : stdgo._internal.math.big.Big_t_nat.T_nat);
            var _x1 = (_x.__slice__(_k) : stdgo._internal.math.big.Big_t_nat.T_nat);
            _t = _t._mul(_x0, _x1);
            stdgo._internal.math.big.Big__addat._addAt(_z, _t, _k);
            stdgo._internal.math.big.Big__addat._addAt(_z, _t, _k);
            _t = _t._sqr(_x1);
            stdgo._internal.math.big.Big__addat._addAt(_z, _t, ((2 : stdgo.GoInt) * _k : stdgo.GoInt));
            stdgo._internal.math.big.Big__putnat._putNat(_tp);
        };
        return _z._norm();
    }
    @:keep
    @:tdfield
    static public function _mul( _z:stdgo._internal.math.big.Big_t_nat.T_nat, _x:stdgo._internal.math.big.Big_t_nat.T_nat, _y:stdgo._internal.math.big.Big_t_nat.T_nat):stdgo._internal.math.big.Big_t_nat.T_nat {
        @:recv var _z:stdgo._internal.math.big.Big_t_nat.T_nat = _z;
        var _m = (_x.length : stdgo.GoInt);
        var _n = (_y.length : stdgo.GoInt);
        if ((_m < _n : Bool)) {
            return _z._mul(_y, _x);
        } else if (((_m == (0 : stdgo.GoInt)) || (_n == (0 : stdgo.GoInt)) : Bool)) {
            return (_z.__slice__(0, (0 : stdgo.GoInt)) : stdgo._internal.math.big.Big_t_nat.T_nat);
        } else if (_n == ((1 : stdgo.GoInt))) {
            return _z._mulAddWW(_x, _y[(0 : stdgo.GoInt)], (0u32 : stdgo._internal.math.big.Big_word.Word));
        };
        if ((stdgo._internal.math.big.Big__alias._alias(_z, _x) || stdgo._internal.math.big.Big__alias._alias(_z, _y) : Bool)) {
            _z = null;
        };
        if ((_n < stdgo._internal.math.big.Big__karatsubathreshold._karatsubaThreshold : Bool)) {
            _z = _z._make((_m + _n : stdgo.GoInt));
            stdgo._internal.math.big.Big__basicmul._basicMul(_z, _x, _y);
            return _z._norm();
        };
        var _k = (stdgo._internal.math.big.Big__karatsubalen._karatsubaLen(_n, stdgo._internal.math.big.Big__karatsubathreshold._karatsubaThreshold) : stdgo.GoInt);
        var _x0 = (_x.__slice__((0 : stdgo.GoInt), _k) : stdgo._internal.math.big.Big_t_nat.T_nat);
        var _y0 = (_y.__slice__((0 : stdgo.GoInt), _k) : stdgo._internal.math.big.Big_t_nat.T_nat);
        _z = _z._make(stdgo._internal.math.big.Big__max._max(((6 : stdgo.GoInt) * _k : stdgo.GoInt), (_m + _n : stdgo.GoInt)));
        stdgo._internal.math.big.Big__karatsuba._karatsuba(_z, _x0, _y0);
        _z = (_z.__slice__((0 : stdgo.GoInt), (_m + _n : stdgo.GoInt)) : stdgo._internal.math.big.Big_t_nat.T_nat);
        (_z.__slice__(((2 : stdgo.GoInt) * _k : stdgo.GoInt)) : stdgo._internal.math.big.Big_t_nat.T_nat)._clear();
        if (((_k < _n : Bool) || (_m != _n) : Bool)) {
            var _tp = stdgo._internal.math.big.Big__getnat._getNat(((3 : stdgo.GoInt) * _k : stdgo.GoInt));
            var _t = (_tp : stdgo._internal.math.big.Big_t_nat.T_nat);
            var _x0 = (_x0._norm() : stdgo._internal.math.big.Big_t_nat.T_nat);
            var _y1 = (_y.__slice__(_k) : stdgo._internal.math.big.Big_t_nat.T_nat);
            _t = _t._mul(_x0, _y1);
            stdgo._internal.math.big.Big__addat._addAt(_z, _t, _k);
            var _y0 = (_y0._norm() : stdgo._internal.math.big.Big_t_nat.T_nat);
            {
                var _i = (_k : stdgo.GoInt);
                while ((_i < (_x.length) : Bool)) {
                    var _xi = (_x.__slice__(_i) : stdgo._internal.math.big.Big_t_nat.T_nat);
if (((_xi.length) > _k : Bool)) {
                        _xi = (_xi.__slice__(0, _k) : stdgo._internal.math.big.Big_t_nat.T_nat);
                    };
_xi = _xi._norm();
_t = _t._mul(_xi, _y0);
stdgo._internal.math.big.Big__addat._addAt(_z, _t, _i);
_t = _t._mul(_xi, _y1);
stdgo._internal.math.big.Big__addat._addAt(_z, _t, (_i + _k : stdgo.GoInt));
                    _i = (_i + (_k) : stdgo.GoInt);
                };
            };
            stdgo._internal.math.big.Big__putnat._putNat(_tp);
        };
        return _z._norm();
    }
    @:keep
    @:tdfield
    static public function _montgomery( _z:stdgo._internal.math.big.Big_t_nat.T_nat, _x:stdgo._internal.math.big.Big_t_nat.T_nat, _y:stdgo._internal.math.big.Big_t_nat.T_nat, _m:stdgo._internal.math.big.Big_t_nat.T_nat, _k:stdgo._internal.math.big.Big_word.Word, _n:stdgo.GoInt):stdgo._internal.math.big.Big_t_nat.T_nat {
        @:recv var _z:stdgo._internal.math.big.Big_t_nat.T_nat = _z;
        if ((((_x.length) != (_n) || (_y.length) != (_n) : Bool) || (_m.length != _n) : Bool)) {
            throw stdgo.Go.toInterface(("math/big: mismatched montgomery number lengths" : stdgo.GoString));
        };
        _z = _z._make((_n * (2 : stdgo.GoInt) : stdgo.GoInt));
        _z._clear();
        var _c:stdgo._internal.math.big.Big_word.Word = ((0 : stdgo.GoUInt) : stdgo._internal.math.big.Big_word.Word);
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < _n : Bool)) {
                var _d = (_y[(_i : stdgo.GoInt)] : stdgo._internal.math.big.Big_word.Word);
var _c2 = (stdgo._internal.math.big.Big__addmulvvw._addMulVVW((_z.__slice__(_i, (_n + _i : stdgo.GoInt)) : stdgo._internal.math.big.Big_t_nat.T_nat), _x, _d) : stdgo._internal.math.big.Big_word.Word);
var _t = (_z[(_i : stdgo.GoInt)] * _k : stdgo._internal.math.big.Big_word.Word);
var _c3 = (stdgo._internal.math.big.Big__addmulvvw._addMulVVW((_z.__slice__(_i, (_n + _i : stdgo.GoInt)) : stdgo._internal.math.big.Big_t_nat.T_nat), _m, _t) : stdgo._internal.math.big.Big_word.Word);
var _cx = (_c + _c2 : stdgo._internal.math.big.Big_word.Word);
var _cy = (_cx + _c3 : stdgo._internal.math.big.Big_word.Word);
_z[(_n + _i : stdgo.GoInt)] = _cy;
if (((_cx < _c2 : Bool) || (_cy < _c3 : Bool) : Bool)) {
                    _c = (1u32 : stdgo._internal.math.big.Big_word.Word);
                } else {
                    _c = (0u32 : stdgo._internal.math.big.Big_word.Word);
                };
                _i++;
            };
        };
        if (_c != ((0u32 : stdgo._internal.math.big.Big_word.Word))) {
            stdgo._internal.math.big.Big__subvv._subVV((_z.__slice__(0, _n) : stdgo._internal.math.big.Big_t_nat.T_nat), (_z.__slice__(_n) : stdgo._internal.math.big.Big_t_nat.T_nat), _m);
        } else {
            (_z.__slice__(0, _n) : stdgo._internal.math.big.Big_t_nat.T_nat).__copyTo__((_z.__slice__(_n) : stdgo._internal.math.big.Big_t_nat.T_nat));
        };
        return (_z.__slice__(0, _n) : stdgo._internal.math.big.Big_t_nat.T_nat);
    }
    @:keep
    @:tdfield
    static public function _mulAddWW( _z:stdgo._internal.math.big.Big_t_nat.T_nat, _x:stdgo._internal.math.big.Big_t_nat.T_nat, _y:stdgo._internal.math.big.Big_word.Word, _r:stdgo._internal.math.big.Big_word.Word):stdgo._internal.math.big.Big_t_nat.T_nat {
        @:recv var _z:stdgo._internal.math.big.Big_t_nat.T_nat = _z;
        var _m = (_x.length : stdgo.GoInt);
        if (((_m == (0 : stdgo.GoInt)) || (_y == (0u32 : stdgo._internal.math.big.Big_word.Word)) : Bool)) {
            return _z._setWord(_r);
        };
        _z = _z._make((_m + (1 : stdgo.GoInt) : stdgo.GoInt));
        _z[(_m : stdgo.GoInt)] = stdgo._internal.math.big.Big__muladdvww._mulAddVWW((_z.__slice__((0 : stdgo.GoInt), _m) : stdgo._internal.math.big.Big_t_nat.T_nat), _x, _y, _r);
        return _z._norm();
    }
    @:keep
    @:tdfield
    static public function _cmp( _x:stdgo._internal.math.big.Big_t_nat.T_nat, _y:stdgo._internal.math.big.Big_t_nat.T_nat):stdgo.GoInt {
        @:recv var _x:stdgo._internal.math.big.Big_t_nat.T_nat = _x;
        var _r = (0 : stdgo.GoInt);
        var _m = (_x.length : stdgo.GoInt);
        var _n = (_y.length : stdgo.GoInt);
        if (((_m != _n) || (_m == (0 : stdgo.GoInt)) : Bool)) {
            if ((_m < _n : Bool)) {
                _r = (-1 : stdgo.GoInt);
            } else if ((_m > _n : Bool)) {
                _r = (1 : stdgo.GoInt);
            };
            return _r;
        };
        var _i = (_m - (1 : stdgo.GoInt) : stdgo.GoInt);
        while (((_i > (0 : stdgo.GoInt) : Bool) && (_x[(_i : stdgo.GoInt)] == _y[(_i : stdgo.GoInt)]) : Bool)) {
            _i--;
        };
        if ((_x[(_i : stdgo.GoInt)] < _y[(_i : stdgo.GoInt)] : Bool)) {
            _r = (-1 : stdgo.GoInt);
        } else if ((_x[(_i : stdgo.GoInt)] > _y[(_i : stdgo.GoInt)] : Bool)) {
            _r = (1 : stdgo.GoInt);
        };
        return _r;
    }
    @:keep
    @:tdfield
    static public function _sub( _z:stdgo._internal.math.big.Big_t_nat.T_nat, _x:stdgo._internal.math.big.Big_t_nat.T_nat, _y:stdgo._internal.math.big.Big_t_nat.T_nat):stdgo._internal.math.big.Big_t_nat.T_nat {
        @:recv var _z:stdgo._internal.math.big.Big_t_nat.T_nat = _z;
        var _m = (_x.length : stdgo.GoInt);
        var _n = (_y.length : stdgo.GoInt);
        if ((_m < _n : Bool)) {
            throw stdgo.Go.toInterface(("underflow" : stdgo.GoString));
        } else if (_m == ((0 : stdgo.GoInt))) {
            return (_z.__slice__(0, (0 : stdgo.GoInt)) : stdgo._internal.math.big.Big_t_nat.T_nat);
        } else if (_n == ((0 : stdgo.GoInt))) {
            return _z._set(_x);
        };
        _z = _z._make(_m);
        var _c = (stdgo._internal.math.big.Big__subvv._subVV((_z.__slice__((0 : stdgo.GoInt), _n) : stdgo._internal.math.big.Big_t_nat.T_nat), _x, _y) : stdgo._internal.math.big.Big_word.Word);
        if ((_m > _n : Bool)) {
            _c = stdgo._internal.math.big.Big__subvw._subVW((_z.__slice__(_n) : stdgo._internal.math.big.Big_t_nat.T_nat), (_x.__slice__(_n) : stdgo._internal.math.big.Big_t_nat.T_nat), _c);
        };
        if (_c != ((0u32 : stdgo._internal.math.big.Big_word.Word))) {
            throw stdgo.Go.toInterface(("underflow" : stdgo.GoString));
        };
        return _z._norm();
    }
    @:keep
    @:tdfield
    static public function _add( _z:stdgo._internal.math.big.Big_t_nat.T_nat, _x:stdgo._internal.math.big.Big_t_nat.T_nat, _y:stdgo._internal.math.big.Big_t_nat.T_nat):stdgo._internal.math.big.Big_t_nat.T_nat {
        @:recv var _z:stdgo._internal.math.big.Big_t_nat.T_nat = _z;
        var _m = (_x.length : stdgo.GoInt);
        var _n = (_y.length : stdgo.GoInt);
        if ((_m < _n : Bool)) {
            return _z._add(_y, _x);
        } else if (_m == ((0 : stdgo.GoInt))) {
            return (_z.__slice__(0, (0 : stdgo.GoInt)) : stdgo._internal.math.big.Big_t_nat.T_nat);
        } else if (_n == ((0 : stdgo.GoInt))) {
            return _z._set(_x);
        };
        _z = _z._make((_m + (1 : stdgo.GoInt) : stdgo.GoInt));
        var _c = (stdgo._internal.math.big.Big__addvv._addVV((_z.__slice__((0 : stdgo.GoInt), _n) : stdgo._internal.math.big.Big_t_nat.T_nat), _x, _y) : stdgo._internal.math.big.Big_word.Word);
        if ((_m > _n : Bool)) {
            _c = stdgo._internal.math.big.Big__addvw._addVW((_z.__slice__(_n, _m) : stdgo._internal.math.big.Big_t_nat.T_nat), (_x.__slice__(_n) : stdgo._internal.math.big.Big_t_nat.T_nat), _c);
        };
        _z[(_m : stdgo.GoInt)] = _c;
        return _z._norm();
    }
    @:keep
    @:tdfield
    static public function _set( _z:stdgo._internal.math.big.Big_t_nat.T_nat, _x:stdgo._internal.math.big.Big_t_nat.T_nat):stdgo._internal.math.big.Big_t_nat.T_nat {
        @:recv var _z:stdgo._internal.math.big.Big_t_nat.T_nat = _z;
        _z = _z._make((_x.length));
        _z.__copyTo__(_x);
        return _z;
    }
    @:keep
    @:tdfield
    static public function _setUint64( _z:stdgo._internal.math.big.Big_t_nat.T_nat, _x:stdgo.GoUInt64):stdgo._internal.math.big.Big_t_nat.T_nat {
        @:recv var _z:stdgo._internal.math.big.Big_t_nat.T_nat = _z;
        {
            var _w = (_x : stdgo._internal.math.big.Big_word.Word);
            if ((_w : stdgo.GoUInt64) == (_x)) {
                return _z._setWord(_w);
            };
        };
        _z = _z._make((2 : stdgo.GoInt));
        _z[(1 : stdgo.GoInt)] = ((_x >> (32i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo._internal.math.big.Big_word.Word);
        _z[(0 : stdgo.GoInt)] = (_x : stdgo._internal.math.big.Big_word.Word);
        return _z;
    }
    @:keep
    @:tdfield
    static public function _setWord( _z:stdgo._internal.math.big.Big_t_nat.T_nat, _x:stdgo._internal.math.big.Big_word.Word):stdgo._internal.math.big.Big_t_nat.T_nat {
        @:recv var _z:stdgo._internal.math.big.Big_t_nat.T_nat = _z;
        if (_x == ((0u32 : stdgo._internal.math.big.Big_word.Word))) {
            return (_z.__slice__(0, (0 : stdgo.GoInt)) : stdgo._internal.math.big.Big_t_nat.T_nat);
        };
        _z = _z._make((1 : stdgo.GoInt));
        _z[(0 : stdgo.GoInt)] = _x;
        return _z;
    }
    @:keep
    @:tdfield
    static public function _make( _z:stdgo._internal.math.big.Big_t_nat.T_nat, _n:stdgo.GoInt):stdgo._internal.math.big.Big_t_nat.T_nat {
        @:recv var _z:stdgo._internal.math.big.Big_t_nat.T_nat = _z;
        if ((_n <= _z.capacity : Bool)) {
            return (_z.__slice__(0, _n) : stdgo._internal.math.big.Big_t_nat.T_nat);
        };
        if (_n == ((1 : stdgo.GoInt))) {
            return (new stdgo.Slice<stdgo._internal.math.big.Big_word.Word>((1 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo._internal.math.big.Big_t_nat.T_nat);
        };
        {};
        return (new stdgo.Slice<stdgo._internal.math.big.Big_word.Word>((_n : stdgo.GoInt).toBasic(), (_n + (4 : stdgo.GoInt) : stdgo.GoInt)).__setNumber32__() : stdgo._internal.math.big.Big_t_nat.T_nat);
    }
    @:keep
    @:tdfield
    static public function _norm( _z:stdgo._internal.math.big.Big_t_nat.T_nat):stdgo._internal.math.big.Big_t_nat.T_nat {
        @:recv var _z:stdgo._internal.math.big.Big_t_nat.T_nat = _z;
        var _i = (_z.length : stdgo.GoInt);
        while (((_i > (0 : stdgo.GoInt) : Bool) && (_z[(_i - (1 : stdgo.GoInt) : stdgo.GoInt)] == (0u32 : stdgo._internal.math.big.Big_word.Word)) : Bool)) {
            _i--;
        };
        return (_z.__slice__((0 : stdgo.GoInt), _i) : stdgo._internal.math.big.Big_t_nat.T_nat);
    }
    @:keep
    @:tdfield
    static public function _clear( _z:stdgo._internal.math.big.Big_t_nat.T_nat):Void {
        @:recv var _z:stdgo._internal.math.big.Big_t_nat.T_nat = _z;
        for (_i => _ in _z) {
            _z[(_i : stdgo.GoInt)] = (0u32 : stdgo._internal.math.big.Big_word.Word);
        };
    }
    @:keep
    @:tdfield
    static public function string( _z:stdgo._internal.math.big.Big_t_nat.T_nat):stdgo.GoString {
        @:recv var _z:stdgo._internal.math.big.Big_t_nat.T_nat = _z;
        return (("0x" : stdgo.GoString) + (_z._itoa(false, (16 : stdgo.GoInt)) : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function _modInverse( _z:stdgo._internal.math.big.Big_t_nat.T_nat, _g:stdgo._internal.math.big.Big_t_nat.T_nat, _n:stdgo._internal.math.big.Big_t_nat.T_nat):stdgo._internal.math.big.Big_t_nat.T_nat {
        @:recv var _z:stdgo._internal.math.big.Big_t_nat.T_nat = _z;
        return @:check2r (stdgo.Go.setRef(({ _abs : _z } : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).modInverse((stdgo.Go.setRef(({ _abs : _g } : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>), (stdgo.Go.setRef(({ _abs : _n } : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>))._abs;
    }
}
