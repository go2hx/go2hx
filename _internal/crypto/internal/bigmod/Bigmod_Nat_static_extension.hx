package _internal.crypto.internal.bigmod;
@:keep @:allow(_internal.crypto.internal.bigmod.Bigmod.Nat_asInterface) class Nat_static_extension {
    @:keep
    static public function expShort( _out:stdgo.Ref<_internal.crypto.internal.bigmod.Bigmod_Nat.Nat>, _x:stdgo.Ref<_internal.crypto.internal.bigmod.Bigmod_Nat.Nat>, _e:stdgo.GoUInt, _m:stdgo.Ref<_internal.crypto.internal.bigmod.Bigmod_Modulus.Modulus>):stdgo.Ref<_internal.crypto.internal.bigmod.Bigmod_Nat.Nat> {
        @:recv var _out:stdgo.Ref<_internal.crypto.internal.bigmod.Bigmod_Nat.Nat> = _out;
        var _xR = _internal.crypto.internal.bigmod.Bigmod_newNat.newNat()._set(_x)._montgomeryRepresentation(_m);
        _out._resetFor(_m);
        _out._limbs[(0 : stdgo.GoInt)] = (1u32 : stdgo.GoUInt);
        _out._montgomeryRepresentation(_m);
        var _tmp = _internal.crypto.internal.bigmod.Bigmod_newNat.newNat().expandFor(_m);
        {
            var _i = ((32 : stdgo.GoInt) - _internal.crypto.internal.bigmod.Bigmod__bitLen._bitLen(_e) : stdgo.GoInt);
            stdgo.Go.cfor((_i < (32 : stdgo.GoInt) : Bool), _i++, {
                _out._montgomeryMul(_out, _out, _m);
                var _k = (((_e >> ((((32 : stdgo.GoInt) - _i : stdgo.GoInt) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoUInt)) & (1u32 : stdgo.GoUInt) : stdgo.GoUInt);
                _tmp._montgomeryMul(_out, _xR, _m);
                _out._assign(_internal.crypto.internal.bigmod.Bigmod__ctEq._ctEq(_k, (1u32 : stdgo.GoUInt)), _tmp);
            });
        };
        return _out._montgomeryReduction(_m);
    }
    @:keep
    static public function exp( _out:stdgo.Ref<_internal.crypto.internal.bigmod.Bigmod_Nat.Nat>, _x:stdgo.Ref<_internal.crypto.internal.bigmod.Bigmod_Nat.Nat>, _e:stdgo.Slice<stdgo.GoUInt8>, _m:stdgo.Ref<_internal.crypto.internal.bigmod.Bigmod_Modulus.Modulus>):stdgo.Ref<_internal.crypto.internal.bigmod.Bigmod_Nat.Nat> {
        @:recv var _out:stdgo.Ref<_internal.crypto.internal.bigmod.Bigmod_Nat.Nat> = _out;
        var _table = (new stdgo.GoArray<stdgo.Ref<_internal.crypto.internal.bigmod.Bigmod_Nat.Nat>>(15, 15, ...[
_internal.crypto.internal.bigmod.Bigmod_newNat.newNat(),
_internal.crypto.internal.bigmod.Bigmod_newNat.newNat(),
_internal.crypto.internal.bigmod.Bigmod_newNat.newNat(),
_internal.crypto.internal.bigmod.Bigmod_newNat.newNat(),
_internal.crypto.internal.bigmod.Bigmod_newNat.newNat(),
_internal.crypto.internal.bigmod.Bigmod_newNat.newNat(),
_internal.crypto.internal.bigmod.Bigmod_newNat.newNat(),
_internal.crypto.internal.bigmod.Bigmod_newNat.newNat(),
_internal.crypto.internal.bigmod.Bigmod_newNat.newNat(),
_internal.crypto.internal.bigmod.Bigmod_newNat.newNat(),
_internal.crypto.internal.bigmod.Bigmod_newNat.newNat(),
_internal.crypto.internal.bigmod.Bigmod_newNat.newNat(),
_internal.crypto.internal.bigmod.Bigmod_newNat.newNat(),
_internal.crypto.internal.bigmod.Bigmod_newNat.newNat(),
_internal.crypto.internal.bigmod.Bigmod_newNat.newNat()]) : stdgo.GoArray<stdgo.Ref<_internal.crypto.internal.bigmod.Bigmod_Nat.Nat>>);
        _table[(0 : stdgo.GoInt)]._set(_x)._montgomeryRepresentation(_m);
        {
            var _i = (1 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_table.length) : Bool), _i++, {
                _table[(_i : stdgo.GoInt)]._montgomeryMul(_table[(_i - (1 : stdgo.GoInt) : stdgo.GoInt)], _table[(0 : stdgo.GoInt)], _m);
            });
        };
        _out._resetFor(_m);
        _out._limbs[(0 : stdgo.GoInt)] = (1u32 : stdgo.GoUInt);
        _out._montgomeryRepresentation(_m);
        var _tmp = _internal.crypto.internal.bigmod.Bigmod_newNat.newNat().expandFor(_m);
        for (__0 => _b in _e) {
            for (__1 => _j in (new stdgo.Slice<stdgo.GoInt>(2, 2, ...[(4 : stdgo.GoInt), (0 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>)) {
                _out._montgomeryMul(_out, _out, _m);
                _out._montgomeryMul(_out, _out, _m);
                _out._montgomeryMul(_out, _out, _m);
                _out._montgomeryMul(_out, _out, _m);
                var _k = ((((_b >> _j : stdgo.GoUInt8)) & (15 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt);
                for (_i => _ in _table) {
                    _tmp._assign(_internal.crypto.internal.bigmod.Bigmod__ctEq._ctEq(_k, ((_i + (1 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt)), _table[(_i : stdgo.GoInt)]);
                };
                _tmp._montgomeryMul(_out, _tmp, _m);
                _out._assign(_internal.crypto.internal.bigmod.Bigmod__not._not(_internal.crypto.internal.bigmod.Bigmod__ctEq._ctEq(_k, (0u32 : stdgo.GoUInt))), _tmp);
            };
        };
        return _out._montgomeryReduction(_m);
    }
    @:keep
    static public function mul( _x:stdgo.Ref<_internal.crypto.internal.bigmod.Bigmod_Nat.Nat>, _y:stdgo.Ref<_internal.crypto.internal.bigmod.Bigmod_Nat.Nat>, _m:stdgo.Ref<_internal.crypto.internal.bigmod.Bigmod_Modulus.Modulus>):stdgo.Ref<_internal.crypto.internal.bigmod.Bigmod_Nat.Nat> {
        @:recv var _x:stdgo.Ref<_internal.crypto.internal.bigmod.Bigmod_Nat.Nat> = _x;
        var _xR = _internal.crypto.internal.bigmod.Bigmod_newNat.newNat()._set(_x)._montgomeryRepresentation(_m);
        return _x._montgomeryMul(_xR, _y, _m);
    }
    @:keep
    static public function _montgomeryMul( _x:stdgo.Ref<_internal.crypto.internal.bigmod.Bigmod_Nat.Nat>, _a:stdgo.Ref<_internal.crypto.internal.bigmod.Bigmod_Nat.Nat>, _b:stdgo.Ref<_internal.crypto.internal.bigmod.Bigmod_Nat.Nat>, _m:stdgo.Ref<_internal.crypto.internal.bigmod.Bigmod_Modulus.Modulus>):stdgo.Ref<_internal.crypto.internal.bigmod.Bigmod_Nat.Nat> {
        @:recv var _x:stdgo.Ref<_internal.crypto.internal.bigmod.Bigmod_Nat.Nat> = _x;
        var _n = (_m._nat._limbs.length : stdgo.GoInt);
        var _mLimbs = (_m._nat._limbs.__slice__(0, _n) : stdgo.Slice<stdgo.GoUInt>);
        var _aLimbs = (_a._limbs.__slice__(0, _n) : stdgo.Slice<stdgo.GoUInt>);
        var _bLimbs = (_b._limbs.__slice__(0, _n) : stdgo.Slice<stdgo.GoUInt>);
        {
            final __value__ = _n;
            if (__value__ == ((32 : stdgo.GoInt))) {
                {};
                var t = (new stdgo.Slice<stdgo.GoUInt>((64 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt>);
                var _c:stdgo.GoUInt = (0 : stdgo.GoUInt);
                {
                    var _i = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_i < (32 : stdgo.GoInt) : Bool), _i++, {
                        var _d = (_bLimbs[(_i : stdgo.GoInt)] : stdgo.GoUInt);
                        var _c1 = (_internal.crypto.internal.bigmod.Bigmod__addMulVVW1024._addMulVVW1024(stdgo.Go.pointer(t[(_i : stdgo.GoInt)]), stdgo.Go.pointer(_aLimbs[(0 : stdgo.GoInt)]), _d) : stdgo.GoUInt);
                        var y = (t[(_i : stdgo.GoInt)] * _m._m0inv : stdgo.GoUInt);
                        var _c2 = (_internal.crypto.internal.bigmod.Bigmod__addMulVVW1024._addMulVVW1024(stdgo.Go.pointer(t[(_i : stdgo.GoInt)]), stdgo.Go.pointer(_mLimbs[(0 : stdgo.GoInt)]), y) : stdgo.GoUInt);
                        {
                            var __tmp__ = stdgo._internal.math.bits.Bits_add.add(_c1, _c2, _c);
                            t[((32 : stdgo.GoInt) + _i : stdgo.GoInt)] = __tmp__._0;
                            _c = __tmp__._1;
                        };
                    });
                };
                stdgo.Go.copySlice(_x._reset((32 : stdgo.GoInt))._limbs, (t.__slice__((32 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt>));
                _x._maybeSubtractModulus((_c : _internal.crypto.internal.bigmod.Bigmod_T_choice.T_choice), _m);
            } else if (__value__ == ((48 : stdgo.GoInt))) {
                {};
                var t = (new stdgo.Slice<stdgo.GoUInt>((96 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt>);
                var _c:stdgo.GoUInt = (0 : stdgo.GoUInt);
                {
                    var _i = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_i < (48 : stdgo.GoInt) : Bool), _i++, {
                        var _d = (_bLimbs[(_i : stdgo.GoInt)] : stdgo.GoUInt);
                        var _c1 = (_internal.crypto.internal.bigmod.Bigmod__addMulVVW1536._addMulVVW1536(stdgo.Go.pointer(t[(_i : stdgo.GoInt)]), stdgo.Go.pointer(_aLimbs[(0 : stdgo.GoInt)]), _d) : stdgo.GoUInt);
                        var y = (t[(_i : stdgo.GoInt)] * _m._m0inv : stdgo.GoUInt);
                        var _c2 = (_internal.crypto.internal.bigmod.Bigmod__addMulVVW1536._addMulVVW1536(stdgo.Go.pointer(t[(_i : stdgo.GoInt)]), stdgo.Go.pointer(_mLimbs[(0 : stdgo.GoInt)]), y) : stdgo.GoUInt);
                        {
                            var __tmp__ = stdgo._internal.math.bits.Bits_add.add(_c1, _c2, _c);
                            t[((48 : stdgo.GoInt) + _i : stdgo.GoInt)] = __tmp__._0;
                            _c = __tmp__._1;
                        };
                    });
                };
                stdgo.Go.copySlice(_x._reset((48 : stdgo.GoInt))._limbs, (t.__slice__((48 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt>));
                _x._maybeSubtractModulus((_c : _internal.crypto.internal.bigmod.Bigmod_T_choice.T_choice), _m);
            } else if (__value__ == ((64 : stdgo.GoInt))) {
                {};
                var t = (new stdgo.Slice<stdgo.GoUInt>((128 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt>);
                var _c:stdgo.GoUInt = (0 : stdgo.GoUInt);
                {
                    var _i = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_i < (64 : stdgo.GoInt) : Bool), _i++, {
                        var _d = (_bLimbs[(_i : stdgo.GoInt)] : stdgo.GoUInt);
                        var _c1 = (_internal.crypto.internal.bigmod.Bigmod__addMulVVW2048._addMulVVW2048(stdgo.Go.pointer(t[(_i : stdgo.GoInt)]), stdgo.Go.pointer(_aLimbs[(0 : stdgo.GoInt)]), _d) : stdgo.GoUInt);
                        var y = (t[(_i : stdgo.GoInt)] * _m._m0inv : stdgo.GoUInt);
                        var _c2 = (_internal.crypto.internal.bigmod.Bigmod__addMulVVW2048._addMulVVW2048(stdgo.Go.pointer(t[(_i : stdgo.GoInt)]), stdgo.Go.pointer(_mLimbs[(0 : stdgo.GoInt)]), y) : stdgo.GoUInt);
                        {
                            var __tmp__ = stdgo._internal.math.bits.Bits_add.add(_c1, _c2, _c);
                            t[((64 : stdgo.GoInt) + _i : stdgo.GoInt)] = __tmp__._0;
                            _c = __tmp__._1;
                        };
                    });
                };
                stdgo.Go.copySlice(_x._reset((64 : stdgo.GoInt))._limbs, (t.__slice__((64 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt>));
                _x._maybeSubtractModulus((_c : _internal.crypto.internal.bigmod.Bigmod_T_choice.T_choice), _m);
            } else {
                var t = (new stdgo.Slice<stdgo.GoUInt>((0 : stdgo.GoInt).toBasic(), (128 : stdgo.GoInt)).__setNumber32__() : stdgo.Slice<stdgo.GoUInt>);
                if ((t.capacity < (_n * (2 : stdgo.GoInt) : stdgo.GoInt) : Bool)) {
                    t = (new stdgo.Slice<stdgo.GoUInt>((0 : stdgo.GoInt).toBasic(), (_n * (2 : stdgo.GoInt) : stdgo.GoInt)).__setNumber32__() : stdgo.Slice<stdgo.GoUInt>);
                };
                t = (t.__slice__(0, (_n * (2 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt>);
                var _c:stdgo.GoUInt = (0 : stdgo.GoUInt);
                {
                    var _i = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_i < _n : Bool), _i++, {
                        var __blank__ = t[(_n + _i : stdgo.GoInt)];
                        var _d = (_bLimbs[(_i : stdgo.GoInt)] : stdgo.GoUInt);
                        var _c1 = (_internal.crypto.internal.bigmod.Bigmod__addMulVVW._addMulVVW((t.__slice__(_i, (_n + _i : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt>), _aLimbs, _d) : stdgo.GoUInt);
                        var y = (t[(_i : stdgo.GoInt)] * _m._m0inv : stdgo.GoUInt);
                        var _c2 = (_internal.crypto.internal.bigmod.Bigmod__addMulVVW._addMulVVW((t.__slice__(_i, (_n + _i : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt>), _mLimbs, y) : stdgo.GoUInt);
                        {
                            var __tmp__ = stdgo._internal.math.bits.Bits_add.add(_c1, _c2, _c);
                            t[(_n + _i : stdgo.GoInt)] = __tmp__._0;
                            _c = __tmp__._1;
                        };
                    });
                };
                stdgo.Go.copySlice(_x._reset(_n)._limbs, (t.__slice__(_n) : stdgo.Slice<stdgo.GoUInt>));
                _x._maybeSubtractModulus((_c : _internal.crypto.internal.bigmod.Bigmod_T_choice.T_choice), _m);
            };
        };
        return _x;
    }
    @:keep
    static public function _montgomeryReduction( _x:stdgo.Ref<_internal.crypto.internal.bigmod.Bigmod_Nat.Nat>, _m:stdgo.Ref<_internal.crypto.internal.bigmod.Bigmod_Modulus.Modulus>):stdgo.Ref<_internal.crypto.internal.bigmod.Bigmod_Nat.Nat> {
        @:recv var _x:stdgo.Ref<_internal.crypto.internal.bigmod.Bigmod_Nat.Nat> = _x;
        var _one = _internal.crypto.internal.bigmod.Bigmod_newNat.newNat().expandFor(_m);
        _one._limbs[(0 : stdgo.GoInt)] = (1u32 : stdgo.GoUInt);
        return _x._montgomeryMul(_x, _one, _m);
    }
    @:keep
    static public function _montgomeryRepresentation( _x:stdgo.Ref<_internal.crypto.internal.bigmod.Bigmod_Nat.Nat>, _m:stdgo.Ref<_internal.crypto.internal.bigmod.Bigmod_Modulus.Modulus>):stdgo.Ref<_internal.crypto.internal.bigmod.Bigmod_Nat.Nat> {
        @:recv var _x:stdgo.Ref<_internal.crypto.internal.bigmod.Bigmod_Nat.Nat> = _x;
        return _x._montgomeryMul(_x, _m._rr, _m);
    }
    @:keep
    static public function add( _x:stdgo.Ref<_internal.crypto.internal.bigmod.Bigmod_Nat.Nat>, _y:stdgo.Ref<_internal.crypto.internal.bigmod.Bigmod_Nat.Nat>, _m:stdgo.Ref<_internal.crypto.internal.bigmod.Bigmod_Modulus.Modulus>):stdgo.Ref<_internal.crypto.internal.bigmod.Bigmod_Nat.Nat> {
        @:recv var _x:stdgo.Ref<_internal.crypto.internal.bigmod.Bigmod_Nat.Nat> = _x;
        var _overflow = (_x._add(_y) : stdgo.GoUInt);
        _x._maybeSubtractModulus((_overflow : _internal.crypto.internal.bigmod.Bigmod_T_choice.T_choice), _m);
        return _x;
    }
    @:keep
    static public function sub( _x:stdgo.Ref<_internal.crypto.internal.bigmod.Bigmod_Nat.Nat>, _y:stdgo.Ref<_internal.crypto.internal.bigmod.Bigmod_Nat.Nat>, _m:stdgo.Ref<_internal.crypto.internal.bigmod.Bigmod_Modulus.Modulus>):stdgo.Ref<_internal.crypto.internal.bigmod.Bigmod_Nat.Nat> {
        @:recv var _x:stdgo.Ref<_internal.crypto.internal.bigmod.Bigmod_Nat.Nat> = _x;
        var _underflow = (_x._sub(_y) : stdgo.GoUInt);
        var _t = _internal.crypto.internal.bigmod.Bigmod_newNat.newNat()._set(_x);
        _t._add(_m._nat);
        _x._assign((_underflow : _internal.crypto.internal.bigmod.Bigmod_T_choice.T_choice), _t);
        return _x;
    }
    @:keep
    static public function _maybeSubtractModulus( _x:stdgo.Ref<_internal.crypto.internal.bigmod.Bigmod_Nat.Nat>, _always:_internal.crypto.internal.bigmod.Bigmod_T_choice.T_choice, _m:stdgo.Ref<_internal.crypto.internal.bigmod.Bigmod_Modulus.Modulus>):Void {
        @:recv var _x:stdgo.Ref<_internal.crypto.internal.bigmod.Bigmod_Nat.Nat> = _x;
        var _t = _internal.crypto.internal.bigmod.Bigmod_newNat.newNat()._set(_x);
        var _underflow = (_t._sub(_m._nat) : stdgo.GoUInt);
        var _keep = (_internal.crypto.internal.bigmod.Bigmod__not._not((_underflow : _internal.crypto.internal.bigmod.Bigmod_T_choice.T_choice)) | (_always : _internal.crypto.internal.bigmod.Bigmod_T_choice.T_choice) : _internal.crypto.internal.bigmod.Bigmod_T_choice.T_choice);
        _x._assign(_keep, _t);
    }
    @:keep
    static public function _resetFor( _out:stdgo.Ref<_internal.crypto.internal.bigmod.Bigmod_Nat.Nat>, _m:stdgo.Ref<_internal.crypto.internal.bigmod.Bigmod_Modulus.Modulus>):stdgo.Ref<_internal.crypto.internal.bigmod.Bigmod_Nat.Nat> {
        @:recv var _out:stdgo.Ref<_internal.crypto.internal.bigmod.Bigmod_Nat.Nat> = _out;
        return _out._reset((_m._nat._limbs.length));
    }
    @:keep
    static public function expandFor( _x:stdgo.Ref<_internal.crypto.internal.bigmod.Bigmod_Nat.Nat>, _m:stdgo.Ref<_internal.crypto.internal.bigmod.Bigmod_Modulus.Modulus>):stdgo.Ref<_internal.crypto.internal.bigmod.Bigmod_Nat.Nat> {
        @:recv var _x:stdgo.Ref<_internal.crypto.internal.bigmod.Bigmod_Nat.Nat> = _x;
        return _x._expand((_m._nat._limbs.length));
    }
    @:keep
    static public function mod( _out:stdgo.Ref<_internal.crypto.internal.bigmod.Bigmod_Nat.Nat>, _x:stdgo.Ref<_internal.crypto.internal.bigmod.Bigmod_Nat.Nat>, _m:stdgo.Ref<_internal.crypto.internal.bigmod.Bigmod_Modulus.Modulus>):stdgo.Ref<_internal.crypto.internal.bigmod.Bigmod_Nat.Nat> {
        @:recv var _out:stdgo.Ref<_internal.crypto.internal.bigmod.Bigmod_Nat.Nat> = _out;
        _out._resetFor(_m);
        var _i = ((_x._limbs.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
        var _start = ((_m._nat._limbs.length) - (2 : stdgo.GoInt) : stdgo.GoInt);
        if ((_i < _start : Bool)) {
            _start = _i;
        };
        {
            var _j = (_start : stdgo.GoInt);
            stdgo.Go.cfor((_j >= (0 : stdgo.GoInt) : Bool), _j--, {
                _out._limbs[(_j : stdgo.GoInt)] = _x._limbs[(_i : stdgo.GoInt)];
                _i--;
            });
        };
        while ((_i >= (0 : stdgo.GoInt) : Bool)) {
            _out._shiftIn(_x._limbs[(_i : stdgo.GoInt)], _m);
            _i--;
        };
        return _out;
    }
    @:keep
    static public function _shiftIn( _x:stdgo.Ref<_internal.crypto.internal.bigmod.Bigmod_Nat.Nat>, _y:stdgo.GoUInt, _m:stdgo.Ref<_internal.crypto.internal.bigmod.Bigmod_Modulus.Modulus>):stdgo.Ref<_internal.crypto.internal.bigmod.Bigmod_Nat.Nat> {
        @:recv var _x:stdgo.Ref<_internal.crypto.internal.bigmod.Bigmod_Nat.Nat> = _x;
        var _d = _internal.crypto.internal.bigmod.Bigmod_newNat.newNat()._resetFor(_m);
        var _size = (_m._nat._limbs.length : stdgo.GoInt);
        var _xLimbs = (_x._limbs.__slice__(0, _size) : stdgo.Slice<stdgo.GoUInt>);
        var _dLimbs = (_d._limbs.__slice__(0, _size) : stdgo.Slice<stdgo.GoUInt>);
        var _mLimbs = (_m._nat._limbs.__slice__(0, _size) : stdgo.Slice<stdgo.GoUInt>);
        var _needSubtraction = (0u32 : _internal.crypto.internal.bigmod.Bigmod_T_choice.T_choice);
        {
            var _i = (31 : stdgo.GoInt);
            stdgo.Go.cfor((_i >= (0 : stdgo.GoInt) : Bool), _i--, {
                var _carry = (((_y >> _i : stdgo.GoUInt)) & (1u32 : stdgo.GoUInt) : stdgo.GoUInt);
                var _borrow:stdgo.GoUInt = (0 : stdgo.GoUInt);
                var _mask = (_internal.crypto.internal.bigmod.Bigmod__ctMask._ctMask(_needSubtraction) : stdgo.GoUInt);
                {
                    var _i = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_i < _size : Bool), _i++, {
                        var _l = (_xLimbs[(_i : stdgo.GoInt)] ^ ((_mask & ((_xLimbs[(_i : stdgo.GoInt)] ^ _dLimbs[(_i : stdgo.GoInt)] : stdgo.GoUInt)) : stdgo.GoUInt)) : stdgo.GoUInt);
                        {
                            var __tmp__ = stdgo._internal.math.bits.Bits_add.add(_l, _l, _carry);
                            _xLimbs[(_i : stdgo.GoInt)] = __tmp__._0;
                            _carry = __tmp__._1;
                        };
                        {
                            var __tmp__ = stdgo._internal.math.bits.Bits_sub.sub(_xLimbs[(_i : stdgo.GoInt)], _mLimbs[(_i : stdgo.GoInt)], _borrow);
                            _dLimbs[(_i : stdgo.GoInt)] = __tmp__._0;
                            _borrow = __tmp__._1;
                        };
                    });
                };
                _needSubtraction = (_internal.crypto.internal.bigmod.Bigmod__not._not((_borrow : _internal.crypto.internal.bigmod.Bigmod_T_choice.T_choice)) | (_carry : _internal.crypto.internal.bigmod.Bigmod_T_choice.T_choice) : _internal.crypto.internal.bigmod.Bigmod_T_choice.T_choice);
            });
        };
        return _x._assign(_needSubtraction, _d);
    }
    @:keep
    static public function _sub( _x:stdgo.Ref<_internal.crypto.internal.bigmod.Bigmod_Nat.Nat>, _y:stdgo.Ref<_internal.crypto.internal.bigmod.Bigmod_Nat.Nat>):stdgo.GoUInt {
        @:recv var _x:stdgo.Ref<_internal.crypto.internal.bigmod.Bigmod_Nat.Nat> = _x;
        var _c = (0 : stdgo.GoUInt);
        var _size = (_x._limbs.length : stdgo.GoInt);
        var _xLimbs = (_x._limbs.__slice__(0, _size) : stdgo.Slice<stdgo.GoUInt>);
        var _yLimbs = (_y._limbs.__slice__(0, _size) : stdgo.Slice<stdgo.GoUInt>);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _size : Bool), _i++, {
                {
                    var __tmp__ = stdgo._internal.math.bits.Bits_sub.sub(_xLimbs[(_i : stdgo.GoInt)], _yLimbs[(_i : stdgo.GoInt)], _c);
                    _xLimbs[(_i : stdgo.GoInt)] = __tmp__._0;
                    _c = __tmp__._1;
                };
            });
        };
        return _c;
    }
    @:keep
    static public function _add( _x:stdgo.Ref<_internal.crypto.internal.bigmod.Bigmod_Nat.Nat>, _y:stdgo.Ref<_internal.crypto.internal.bigmod.Bigmod_Nat.Nat>):stdgo.GoUInt {
        @:recv var _x:stdgo.Ref<_internal.crypto.internal.bigmod.Bigmod_Nat.Nat> = _x;
        var _c = (0 : stdgo.GoUInt);
        var _size = (_x._limbs.length : stdgo.GoInt);
        var _xLimbs = (_x._limbs.__slice__(0, _size) : stdgo.Slice<stdgo.GoUInt>);
        var _yLimbs = (_y._limbs.__slice__(0, _size) : stdgo.Slice<stdgo.GoUInt>);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _size : Bool), _i++, {
                {
                    var __tmp__ = stdgo._internal.math.bits.Bits_add.add(_xLimbs[(_i : stdgo.GoInt)], _yLimbs[(_i : stdgo.GoInt)], _c);
                    _xLimbs[(_i : stdgo.GoInt)] = __tmp__._0;
                    _c = __tmp__._1;
                };
            });
        };
        return _c;
    }
    @:keep
    static public function _assign( _x:stdgo.Ref<_internal.crypto.internal.bigmod.Bigmod_Nat.Nat>, _on:_internal.crypto.internal.bigmod.Bigmod_T_choice.T_choice, _y:stdgo.Ref<_internal.crypto.internal.bigmod.Bigmod_Nat.Nat>):stdgo.Ref<_internal.crypto.internal.bigmod.Bigmod_Nat.Nat> {
        @:recv var _x:stdgo.Ref<_internal.crypto.internal.bigmod.Bigmod_Nat.Nat> = _x;
        var _size = (_x._limbs.length : stdgo.GoInt);
        var _xLimbs = (_x._limbs.__slice__(0, _size) : stdgo.Slice<stdgo.GoUInt>);
        var _yLimbs = (_y._limbs.__slice__(0, _size) : stdgo.Slice<stdgo.GoUInt>);
        var _mask = (_internal.crypto.internal.bigmod.Bigmod__ctMask._ctMask(_on) : stdgo.GoUInt);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _size : Bool), _i++, {
                _xLimbs[(_i : stdgo.GoInt)] = (_xLimbs[(_i : stdgo.GoInt)] ^ ((_mask & ((_xLimbs[(_i : stdgo.GoInt)] ^ _yLimbs[(_i : stdgo.GoInt)] : stdgo.GoUInt)) : stdgo.GoUInt)) : stdgo.GoUInt);
            });
        };
        return _x;
    }
    @:keep
    static public function _cmpGeq( _x:stdgo.Ref<_internal.crypto.internal.bigmod.Bigmod_Nat.Nat>, _y:stdgo.Ref<_internal.crypto.internal.bigmod.Bigmod_Nat.Nat>):_internal.crypto.internal.bigmod.Bigmod_T_choice.T_choice {
        @:recv var _x:stdgo.Ref<_internal.crypto.internal.bigmod.Bigmod_Nat.Nat> = _x;
        var _size = (_x._limbs.length : stdgo.GoInt);
        var _xLimbs = (_x._limbs.__slice__(0, _size) : stdgo.Slice<stdgo.GoUInt>);
        var _yLimbs = (_y._limbs.__slice__(0, _size) : stdgo.Slice<stdgo.GoUInt>);
        var _c:stdgo.GoUInt = (0 : stdgo.GoUInt);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _size : Bool), _i++, {
                {
                    var __tmp__ = stdgo._internal.math.bits.Bits_sub.sub(_xLimbs[(_i : stdgo.GoInt)], _yLimbs[(_i : stdgo.GoInt)], _c);
                    _c = __tmp__._1;
                };
            });
        };
        return _internal.crypto.internal.bigmod.Bigmod__not._not((_c : _internal.crypto.internal.bigmod.Bigmod_T_choice.T_choice));
    }
    @:keep
    static public function isZero( _x:stdgo.Ref<_internal.crypto.internal.bigmod.Bigmod_Nat.Nat>):_internal.crypto.internal.bigmod.Bigmod_T_choice.T_choice {
        @:recv var _x:stdgo.Ref<_internal.crypto.internal.bigmod.Bigmod_Nat.Nat> = _x;
        var _size = (_x._limbs.length : stdgo.GoInt);
        var _xLimbs = (_x._limbs.__slice__(0, _size) : stdgo.Slice<stdgo.GoUInt>);
        var _zero = (1u32 : _internal.crypto.internal.bigmod.Bigmod_T_choice.T_choice);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _size : Bool), _i++, {
                _zero = (_zero & (_internal.crypto.internal.bigmod.Bigmod__ctEq._ctEq(_xLimbs[(_i : stdgo.GoInt)], (0u32 : stdgo.GoUInt))) : _internal.crypto.internal.bigmod.Bigmod_T_choice.T_choice);
            });
        };
        return _zero;
    }
    @:keep
    static public function equal( _x:stdgo.Ref<_internal.crypto.internal.bigmod.Bigmod_Nat.Nat>, _y:stdgo.Ref<_internal.crypto.internal.bigmod.Bigmod_Nat.Nat>):_internal.crypto.internal.bigmod.Bigmod_T_choice.T_choice {
        @:recv var _x:stdgo.Ref<_internal.crypto.internal.bigmod.Bigmod_Nat.Nat> = _x;
        var _size = (_x._limbs.length : stdgo.GoInt);
        var _xLimbs = (_x._limbs.__slice__(0, _size) : stdgo.Slice<stdgo.GoUInt>);
        var _yLimbs = (_y._limbs.__slice__(0, _size) : stdgo.Slice<stdgo.GoUInt>);
        var _equal = (1u32 : _internal.crypto.internal.bigmod.Bigmod_T_choice.T_choice);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _size : Bool), _i++, {
                _equal = (_equal & (_internal.crypto.internal.bigmod.Bigmod__ctEq._ctEq(_xLimbs[(_i : stdgo.GoInt)], _yLimbs[(_i : stdgo.GoInt)])) : _internal.crypto.internal.bigmod.Bigmod_T_choice.T_choice);
            });
        };
        return _equal;
    }
    @:keep
    static public function _setBytes( _x:stdgo.Ref<_internal.crypto.internal.bigmod.Bigmod_Nat.Nat>, _b:stdgo.Slice<stdgo.GoUInt8>, _m:stdgo.Ref<_internal.crypto.internal.bigmod.Bigmod_Modulus.Modulus>):stdgo.Error {
        @:recv var _x:stdgo.Ref<_internal.crypto.internal.bigmod.Bigmod_Nat.Nat> = _x;
        _x._resetFor(_m);
        var __0 = (_b.length : stdgo.GoInt), __1 = (0 : stdgo.GoInt);
var _k = __1, _i = __0;
        while (((_k < (_x._limbs.length) : Bool) && (_i >= (4 : stdgo.GoInt) : Bool) : Bool)) {
            _x._limbs[(_k : stdgo.GoInt)] = _internal.crypto.internal.bigmod.Bigmod__bigEndianUint._bigEndianUint((_b.__slice__((_i - (4 : stdgo.GoInt) : stdgo.GoInt), _i) : stdgo.Slice<stdgo.GoUInt8>));
            _i = (_i - ((4 : stdgo.GoInt)) : stdgo.GoInt);
            _k++;
        };
        {
            var _s = (0 : stdgo.GoInt);
            stdgo.Go.cfor((((_s < (32 : stdgo.GoInt) : Bool) && (_k < (_x._limbs.length) : Bool) : Bool) && (_i > (0 : stdgo.GoInt) : Bool) : Bool), _s = (_s + ((8 : stdgo.GoInt)) : stdgo.GoInt), {
                _x._limbs[(_k : stdgo.GoInt)] = (_x._limbs[(_k : stdgo.GoInt)] | (((_b[(_i - (1 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoUInt) << _s : stdgo.GoUInt)) : stdgo.GoUInt);
                _i--;
            });
        };
        if ((_i > (0 : stdgo.GoInt) : Bool)) {
            return stdgo._internal.errors.Errors_new_.new_(("input overflows the modulus size" : stdgo.GoString));
        };
        return (null : stdgo.Error);
    }
    @:keep
    static public function setOverflowingBytes( _x:stdgo.Ref<_internal.crypto.internal.bigmod.Bigmod_Nat.Nat>, _b:stdgo.Slice<stdgo.GoUInt8>, _m:stdgo.Ref<_internal.crypto.internal.bigmod.Bigmod_Modulus.Modulus>):{ var _0 : stdgo.Ref<_internal.crypto.internal.bigmod.Bigmod_Nat.Nat>; var _1 : stdgo.Error; } {
        @:recv var _x:stdgo.Ref<_internal.crypto.internal.bigmod.Bigmod_Nat.Nat> = _x;
        {
            var _err = (_x._setBytes(_b, _m) : stdgo.Error);
            if (_err != null) {
                return { _0 : null, _1 : _err };
            };
        };
        var _leading = ((32 : stdgo.GoInt) - _internal.crypto.internal.bigmod.Bigmod__bitLen._bitLen(_x._limbs[((_x._limbs.length) - (1 : stdgo.GoInt) : stdgo.GoInt)]) : stdgo.GoInt);
        if ((_leading < _m._leading : Bool)) {
            return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("input overflows the modulus size" : stdgo.GoString)) };
        };
        _x._maybeSubtractModulus((0u32 : _internal.crypto.internal.bigmod.Bigmod_T_choice.T_choice), _m);
        return { _0 : _x, _1 : (null : stdgo.Error) };
    }
    @:keep
    static public function setBytes( _x:stdgo.Ref<_internal.crypto.internal.bigmod.Bigmod_Nat.Nat>, _b:stdgo.Slice<stdgo.GoUInt8>, _m:stdgo.Ref<_internal.crypto.internal.bigmod.Bigmod_Modulus.Modulus>):{ var _0 : stdgo.Ref<_internal.crypto.internal.bigmod.Bigmod_Nat.Nat>; var _1 : stdgo.Error; } {
        @:recv var _x:stdgo.Ref<_internal.crypto.internal.bigmod.Bigmod_Nat.Nat> = _x;
        {
            var _err = (_x._setBytes(_b, _m) : stdgo.Error);
            if (_err != null) {
                return { _0 : null, _1 : _err };
            };
        };
        if (_x._cmpGeq(_m._nat) == ((1u32 : _internal.crypto.internal.bigmod.Bigmod_T_choice.T_choice))) {
            return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("input overflows the modulus" : stdgo.GoString)) };
        };
        return { _0 : _x, _1 : (null : stdgo.Error) };
    }
    @:keep
    static public function bytes( _x:stdgo.Ref<_internal.crypto.internal.bigmod.Bigmod_Nat.Nat>, _m:stdgo.Ref<_internal.crypto.internal.bigmod.Bigmod_Modulus.Modulus>):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _x:stdgo.Ref<_internal.crypto.internal.bigmod.Bigmod_Nat.Nat> = _x;
        var _i = (_m.size() : stdgo.GoInt);
        var _bytes = (new stdgo.Slice<stdgo.GoUInt8>((_i : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        for (__0 => _limb in _x._limbs) {
            {
                var _j = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_j < (4 : stdgo.GoInt) : Bool), _j++, {
                    _i--;
                    if ((_i < (0 : stdgo.GoInt) : Bool)) {
                        if (_limb == ((0u32 : stdgo.GoUInt))) {
                            break;
                        };
                        throw stdgo.Go.toInterface(("bigmod: modulus is smaller than nat" : stdgo.GoString));
                    };
                    _bytes[(_i : stdgo.GoInt)] = (_limb : stdgo.GoUInt8);
                    _limb = (_limb >> ((8i64 : stdgo.GoUInt64)) : stdgo.GoUInt);
                });
            };
        };
        return _bytes;
    }
    @:keep
    static public function _setBig( _x:stdgo.Ref<_internal.crypto.internal.bigmod.Bigmod_Nat.Nat>, _n:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>):stdgo.Ref<_internal.crypto.internal.bigmod.Bigmod_Nat.Nat> {
        @:recv var _x:stdgo.Ref<_internal.crypto.internal.bigmod.Bigmod_Nat.Nat> = _x;
        var _limbs = _n.bits();
        _x._reset((_limbs.length));
        for (_i => _ in _limbs) {
            _x._limbs[(_i : stdgo.GoInt)] = (_limbs[(_i : stdgo.GoInt)] : stdgo.GoUInt);
        };
        return _x;
    }
    @:keep
    static public function _set( _x:stdgo.Ref<_internal.crypto.internal.bigmod.Bigmod_Nat.Nat>, _y:stdgo.Ref<_internal.crypto.internal.bigmod.Bigmod_Nat.Nat>):stdgo.Ref<_internal.crypto.internal.bigmod.Bigmod_Nat.Nat> {
        @:recv var _x:stdgo.Ref<_internal.crypto.internal.bigmod.Bigmod_Nat.Nat> = _x;
        _x._reset((_y._limbs.length));
        stdgo.Go.copySlice(_x._limbs, _y._limbs);
        return _x;
    }
    @:keep
    static public function _reset( _x:stdgo.Ref<_internal.crypto.internal.bigmod.Bigmod_Nat.Nat>, _n:stdgo.GoInt):stdgo.Ref<_internal.crypto.internal.bigmod.Bigmod_Nat.Nat> {
        @:recv var _x:stdgo.Ref<_internal.crypto.internal.bigmod.Bigmod_Nat.Nat> = _x;
        if ((_x._limbs.capacity < _n : Bool)) {
            _x._limbs = (new stdgo.Slice<stdgo.GoUInt>((_n : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt>);
            return _x;
        };
        for (_i => _ in _x._limbs) {
            _x._limbs[(_i : stdgo.GoInt)] = (0u32 : stdgo.GoUInt);
        };
        _x._limbs = (_x._limbs.__slice__(0, _n) : stdgo.Slice<stdgo.GoUInt>);
        return _x;
    }
    @:keep
    static public function _expand( _x:stdgo.Ref<_internal.crypto.internal.bigmod.Bigmod_Nat.Nat>, _n:stdgo.GoInt):stdgo.Ref<_internal.crypto.internal.bigmod.Bigmod_Nat.Nat> {
        @:recv var _x:stdgo.Ref<_internal.crypto.internal.bigmod.Bigmod_Nat.Nat> = _x;
        if (((_x._limbs.length) > _n : Bool)) {
            throw stdgo.Go.toInterface(("bigmod: internal error: shrinking nat" : stdgo.GoString));
        };
        if ((_x._limbs.capacity < _n : Bool)) {
            var _newLimbs = (new stdgo.Slice<stdgo.GoUInt>((_n : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt>);
            stdgo.Go.copySlice(_newLimbs, _x._limbs);
            _x._limbs = _newLimbs;
            return _x;
        };
        var _extraLimbs = (_x._limbs.__slice__((_x._limbs.length), _n) : stdgo.Slice<stdgo.GoUInt>);
        for (_i => _ in _extraLimbs) {
            _extraLimbs[(_i : stdgo.GoInt)] = (0u32 : stdgo.GoUInt);
        };
        _x._limbs = (_x._limbs.__slice__(0, _n) : stdgo.Slice<stdgo.GoUInt>);
        return _x;
    }
}
