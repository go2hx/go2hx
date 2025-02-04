package stdgo._internal.crypto.internal.bigmod;
@:keep @:allow(stdgo._internal.crypto.internal.bigmod.Bigmod.Nat_asInterface) class Nat_static_extension {
    @:keep
    @:tdfield
    static public function expShort( _out:stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_nat.Nat>, _x:stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_nat.Nat>, _e:stdgo.GoUInt, _m:stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_modulus.Modulus>):stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_nat.Nat> {
        @:recv var _out:stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_nat.Nat> = _out;
        var _xR = @:check2r @:check2r stdgo._internal.crypto.internal.bigmod.Bigmod_newnat.newNat()._set(_x)._montgomeryRepresentation(_m);
        @:check2r _out._resetFor(_m);
        (@:checkr _out ?? throw "null pointer dereference")._limbs[(0 : stdgo.GoInt)] = (1u32 : stdgo.GoUInt);
        @:check2r _out._montgomeryRepresentation(_m);
        var _tmp = @:check2r stdgo._internal.crypto.internal.bigmod.Bigmod_newnat.newNat().expandFor(_m);
        {
            var _i = ((32 : stdgo.GoInt) - stdgo._internal.crypto.internal.bigmod.Bigmod__bitlen._bitLen(_e) : stdgo.GoInt);
            while ((_i < (32 : stdgo.GoInt) : Bool)) {
                @:check2r _out._montgomeryMul(_out, _out, _m);
var _k = (((_e >> ((((32 : stdgo.GoInt) - _i : stdgo.GoInt) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoUInt)) & (1u32 : stdgo.GoUInt) : stdgo.GoUInt);
@:check2r _tmp._montgomeryMul(_out, _xR, _m);
@:check2r _out._assign(stdgo._internal.crypto.internal.bigmod.Bigmod__cteq._ctEq(_k, (1u32 : stdgo.GoUInt)), _tmp);
                _i++;
            };
        };
        return @:check2r _out._montgomeryReduction(_m);
    }
    @:keep
    @:tdfield
    static public function exp( _out:stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_nat.Nat>, _x:stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_nat.Nat>, _e:stdgo.Slice<stdgo.GoUInt8>, _m:stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_modulus.Modulus>):stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_nat.Nat> {
        @:recv var _out:stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_nat.Nat> = _out;
        var _table = (new stdgo.GoArray<stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_nat.Nat>>(15, 15, ...[
stdgo._internal.crypto.internal.bigmod.Bigmod_newnat.newNat(),
stdgo._internal.crypto.internal.bigmod.Bigmod_newnat.newNat(),
stdgo._internal.crypto.internal.bigmod.Bigmod_newnat.newNat(),
stdgo._internal.crypto.internal.bigmod.Bigmod_newnat.newNat(),
stdgo._internal.crypto.internal.bigmod.Bigmod_newnat.newNat(),
stdgo._internal.crypto.internal.bigmod.Bigmod_newnat.newNat(),
stdgo._internal.crypto.internal.bigmod.Bigmod_newnat.newNat(),
stdgo._internal.crypto.internal.bigmod.Bigmod_newnat.newNat(),
stdgo._internal.crypto.internal.bigmod.Bigmod_newnat.newNat(),
stdgo._internal.crypto.internal.bigmod.Bigmod_newnat.newNat(),
stdgo._internal.crypto.internal.bigmod.Bigmod_newnat.newNat(),
stdgo._internal.crypto.internal.bigmod.Bigmod_newnat.newNat(),
stdgo._internal.crypto.internal.bigmod.Bigmod_newnat.newNat(),
stdgo._internal.crypto.internal.bigmod.Bigmod_newnat.newNat(),
stdgo._internal.crypto.internal.bigmod.Bigmod_newnat.newNat()]) : stdgo.GoArray<stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_nat.Nat>>);
        @:check2r @:check2r _table[(0 : stdgo.GoInt)]._set(_x)._montgomeryRepresentation(_m);
        {
            var _i = (1 : stdgo.GoInt);
            while ((_i < (_table.length) : Bool)) {
                @:check2r _table[(_i : stdgo.GoInt)]._montgomeryMul(_table[(_i - (1 : stdgo.GoInt) : stdgo.GoInt)], _table[(0 : stdgo.GoInt)], _m);
                _i++;
            };
        };
        @:check2r _out._resetFor(_m);
        (@:checkr _out ?? throw "null pointer dereference")._limbs[(0 : stdgo.GoInt)] = (1u32 : stdgo.GoUInt);
        @:check2r _out._montgomeryRepresentation(_m);
        var _tmp = @:check2r stdgo._internal.crypto.internal.bigmod.Bigmod_newnat.newNat().expandFor(_m);
        for (__0 => _b in _e) {
            for (__1 => _j in (new stdgo.Slice<stdgo.GoInt>(2, 2, ...[(4 : stdgo.GoInt), (0 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>)) {
                @:check2r _out._montgomeryMul(_out, _out, _m);
                @:check2r _out._montgomeryMul(_out, _out, _m);
                @:check2r _out._montgomeryMul(_out, _out, _m);
                @:check2r _out._montgomeryMul(_out, _out, _m);
                var _k = ((((_b >> _j : stdgo.GoUInt8)) & (15 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt);
                for (_i => _ in _table) {
                    @:check2r _tmp._assign(stdgo._internal.crypto.internal.bigmod.Bigmod__cteq._ctEq(_k, ((_i + (1 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt)), _table[(_i : stdgo.GoInt)]);
                };
                @:check2r _tmp._montgomeryMul(_out, _tmp, _m);
                @:check2r _out._assign(stdgo._internal.crypto.internal.bigmod.Bigmod__not._not(stdgo._internal.crypto.internal.bigmod.Bigmod__cteq._ctEq(_k, (0u32 : stdgo.GoUInt))), _tmp);
            };
        };
        return @:check2r _out._montgomeryReduction(_m);
    }
    @:keep
    @:tdfield
    static public function mul( _x:stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_nat.Nat>, _y:stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_nat.Nat>, _m:stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_modulus.Modulus>):stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_nat.Nat> {
        @:recv var _x:stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_nat.Nat> = _x;
        var _xR = @:check2r @:check2r stdgo._internal.crypto.internal.bigmod.Bigmod_newnat.newNat()._set(_x)._montgomeryRepresentation(_m);
        return @:check2r _x._montgomeryMul(_xR, _y, _m);
    }
    @:keep
    @:tdfield
    static public function _montgomeryMul( _x:stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_nat.Nat>, _a:stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_nat.Nat>, _b:stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_nat.Nat>, _m:stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_modulus.Modulus>):stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_nat.Nat> {
        @:recv var _x:stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_nat.Nat> = _x;
        var _n = ((@:checkr (@:checkr _m ?? throw "null pointer dereference")._nat ?? throw "null pointer dereference")._limbs.length : stdgo.GoInt);
        var _mLimbs = ((@:checkr (@:checkr _m ?? throw "null pointer dereference")._nat ?? throw "null pointer dereference")._limbs.__slice__(0, _n) : stdgo.Slice<stdgo.GoUInt>);
        var _aLimbs = ((@:checkr _a ?? throw "null pointer dereference")._limbs.__slice__(0, _n) : stdgo.Slice<stdgo.GoUInt>);
        var _bLimbs = ((@:checkr _b ?? throw "null pointer dereference")._limbs.__slice__(0, _n) : stdgo.Slice<stdgo.GoUInt>);
        {
            final __value__ = _n;
            if (__value__ == ((32 : stdgo.GoInt))) {
                {};
                var t = (new stdgo.Slice<stdgo.GoUInt>((64 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt>);
                var _c:stdgo.GoUInt = (0 : stdgo.GoUInt);
                {
                    var _i = (0 : stdgo.GoInt);
                    while ((_i < (32 : stdgo.GoInt) : Bool)) {
                        var _d = (_bLimbs[(_i : stdgo.GoInt)] : stdgo.GoUInt);
var _c1 = (stdgo._internal.crypto.internal.bigmod.Bigmod__addmulvvw1024._addMulVVW1024(stdgo.Go.pointer(t[(_i : stdgo.GoInt)]), stdgo.Go.pointer(_aLimbs[(0 : stdgo.GoInt)]), _d) : stdgo.GoUInt);
var y = (t[(_i : stdgo.GoInt)] * (@:checkr _m ?? throw "null pointer dereference")._m0inv : stdgo.GoUInt);
var _c2 = (stdgo._internal.crypto.internal.bigmod.Bigmod__addmulvvw1024._addMulVVW1024(stdgo.Go.pointer(t[(_i : stdgo.GoInt)]), stdgo.Go.pointer(_mLimbs[(0 : stdgo.GoInt)]), y) : stdgo.GoUInt);
{
                            var __tmp__ = stdgo._internal.math.bits.Bits_add.add(_c1, _c2, _c);
                            t[((32 : stdgo.GoInt) + _i : stdgo.GoInt)] = @:tmpset0 __tmp__._0;
                            _c = @:tmpset0 __tmp__._1;
                        };
                        _i++;
                    };
                };
                @:check2r _x._reset((32 : stdgo.GoInt))._limbs.__copyTo__((t.__slice__((32 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt>));
                @:check2r _x._maybeSubtractModulus((_c : stdgo._internal.crypto.internal.bigmod.Bigmod_t_choice.T_choice), _m);
            } else if (__value__ == ((48 : stdgo.GoInt))) {
                {};
                var t = (new stdgo.Slice<stdgo.GoUInt>((96 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt>);
                var _c:stdgo.GoUInt = (0 : stdgo.GoUInt);
                {
                    var _i = (0 : stdgo.GoInt);
                    while ((_i < (48 : stdgo.GoInt) : Bool)) {
                        var _d = (_bLimbs[(_i : stdgo.GoInt)] : stdgo.GoUInt);
var _c1 = (stdgo._internal.crypto.internal.bigmod.Bigmod__addmulvvw1536._addMulVVW1536(stdgo.Go.pointer(t[(_i : stdgo.GoInt)]), stdgo.Go.pointer(_aLimbs[(0 : stdgo.GoInt)]), _d) : stdgo.GoUInt);
var y = (t[(_i : stdgo.GoInt)] * (@:checkr _m ?? throw "null pointer dereference")._m0inv : stdgo.GoUInt);
var _c2 = (stdgo._internal.crypto.internal.bigmod.Bigmod__addmulvvw1536._addMulVVW1536(stdgo.Go.pointer(t[(_i : stdgo.GoInt)]), stdgo.Go.pointer(_mLimbs[(0 : stdgo.GoInt)]), y) : stdgo.GoUInt);
{
                            var __tmp__ = stdgo._internal.math.bits.Bits_add.add(_c1, _c2, _c);
                            t[((48 : stdgo.GoInt) + _i : stdgo.GoInt)] = @:tmpset0 __tmp__._0;
                            _c = @:tmpset0 __tmp__._1;
                        };
                        _i++;
                    };
                };
                @:check2r _x._reset((48 : stdgo.GoInt))._limbs.__copyTo__((t.__slice__((48 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt>));
                @:check2r _x._maybeSubtractModulus((_c : stdgo._internal.crypto.internal.bigmod.Bigmod_t_choice.T_choice), _m);
            } else if (__value__ == ((64 : stdgo.GoInt))) {
                {};
                var t = (new stdgo.Slice<stdgo.GoUInt>((128 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt>);
                var _c:stdgo.GoUInt = (0 : stdgo.GoUInt);
                {
                    var _i = (0 : stdgo.GoInt);
                    while ((_i < (64 : stdgo.GoInt) : Bool)) {
                        var _d = (_bLimbs[(_i : stdgo.GoInt)] : stdgo.GoUInt);
var _c1 = (stdgo._internal.crypto.internal.bigmod.Bigmod__addmulvvw2048._addMulVVW2048(stdgo.Go.pointer(t[(_i : stdgo.GoInt)]), stdgo.Go.pointer(_aLimbs[(0 : stdgo.GoInt)]), _d) : stdgo.GoUInt);
var y = (t[(_i : stdgo.GoInt)] * (@:checkr _m ?? throw "null pointer dereference")._m0inv : stdgo.GoUInt);
var _c2 = (stdgo._internal.crypto.internal.bigmod.Bigmod__addmulvvw2048._addMulVVW2048(stdgo.Go.pointer(t[(_i : stdgo.GoInt)]), stdgo.Go.pointer(_mLimbs[(0 : stdgo.GoInt)]), y) : stdgo.GoUInt);
{
                            var __tmp__ = stdgo._internal.math.bits.Bits_add.add(_c1, _c2, _c);
                            t[((64 : stdgo.GoInt) + _i : stdgo.GoInt)] = @:tmpset0 __tmp__._0;
                            _c = @:tmpset0 __tmp__._1;
                        };
                        _i++;
                    };
                };
                @:check2r _x._reset((64 : stdgo.GoInt))._limbs.__copyTo__((t.__slice__((64 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt>));
                @:check2r _x._maybeSubtractModulus((_c : stdgo._internal.crypto.internal.bigmod.Bigmod_t_choice.T_choice), _m);
            } else {
                var t = (new stdgo.Slice<stdgo.GoUInt>((0 : stdgo.GoInt).toBasic(), (128 : stdgo.GoInt)).__setNumber32__() : stdgo.Slice<stdgo.GoUInt>);
                if ((t.capacity < (_n * (2 : stdgo.GoInt) : stdgo.GoInt) : Bool)) {
                    t = (new stdgo.Slice<stdgo.GoUInt>((0 : stdgo.GoInt).toBasic(), (_n * (2 : stdgo.GoInt) : stdgo.GoInt)).__setNumber32__() : stdgo.Slice<stdgo.GoUInt>);
                };
                t = (t.__slice__(0, (_n * (2 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt>);
                var _c:stdgo.GoUInt = (0 : stdgo.GoUInt);
                {
                    var _i = (0 : stdgo.GoInt);
                    while ((_i < _n : Bool)) {
                        var __blank__ = t[(_n + _i : stdgo.GoInt)];
var _d = (_bLimbs[(_i : stdgo.GoInt)] : stdgo.GoUInt);
var _c1 = (stdgo._internal.crypto.internal.bigmod.Bigmod__addmulvvw._addMulVVW((t.__slice__(_i, (_n + _i : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt>), _aLimbs, _d) : stdgo.GoUInt);
var y = (t[(_i : stdgo.GoInt)] * (@:checkr _m ?? throw "null pointer dereference")._m0inv : stdgo.GoUInt);
var _c2 = (stdgo._internal.crypto.internal.bigmod.Bigmod__addmulvvw._addMulVVW((t.__slice__(_i, (_n + _i : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt>), _mLimbs, y) : stdgo.GoUInt);
{
                            var __tmp__ = stdgo._internal.math.bits.Bits_add.add(_c1, _c2, _c);
                            t[(_n + _i : stdgo.GoInt)] = @:tmpset0 __tmp__._0;
                            _c = @:tmpset0 __tmp__._1;
                        };
                        _i++;
                    };
                };
                @:check2r _x._reset(_n)._limbs.__copyTo__((t.__slice__(_n) : stdgo.Slice<stdgo.GoUInt>));
                @:check2r _x._maybeSubtractModulus((_c : stdgo._internal.crypto.internal.bigmod.Bigmod_t_choice.T_choice), _m);
            };
        };
        return _x;
    }
    @:keep
    @:tdfield
    static public function _montgomeryReduction( _x:stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_nat.Nat>, _m:stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_modulus.Modulus>):stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_nat.Nat> {
        @:recv var _x:stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_nat.Nat> = _x;
        var _one = @:check2r stdgo._internal.crypto.internal.bigmod.Bigmod_newnat.newNat().expandFor(_m);
        (@:checkr _one ?? throw "null pointer dereference")._limbs[(0 : stdgo.GoInt)] = (1u32 : stdgo.GoUInt);
        return @:check2r _x._montgomeryMul(_x, _one, _m);
    }
    @:keep
    @:tdfield
    static public function _montgomeryRepresentation( _x:stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_nat.Nat>, _m:stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_modulus.Modulus>):stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_nat.Nat> {
        @:recv var _x:stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_nat.Nat> = _x;
        return @:check2r _x._montgomeryMul(_x, (@:checkr _m ?? throw "null pointer dereference")._rr, _m);
    }
    @:keep
    @:tdfield
    static public function add( _x:stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_nat.Nat>, _y:stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_nat.Nat>, _m:stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_modulus.Modulus>):stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_nat.Nat> {
        @:recv var _x:stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_nat.Nat> = _x;
        var _overflow = (@:check2r _x._add(_y) : stdgo.GoUInt);
        @:check2r _x._maybeSubtractModulus((_overflow : stdgo._internal.crypto.internal.bigmod.Bigmod_t_choice.T_choice), _m);
        return _x;
    }
    @:keep
    @:tdfield
    static public function sub( _x:stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_nat.Nat>, _y:stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_nat.Nat>, _m:stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_modulus.Modulus>):stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_nat.Nat> {
        @:recv var _x:stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_nat.Nat> = _x;
        var _underflow = (@:check2r _x._sub(_y) : stdgo.GoUInt);
        var _t = @:check2r stdgo._internal.crypto.internal.bigmod.Bigmod_newnat.newNat()._set(_x);
        @:check2r _t._add((@:checkr _m ?? throw "null pointer dereference")._nat);
        @:check2r _x._assign((_underflow : stdgo._internal.crypto.internal.bigmod.Bigmod_t_choice.T_choice), _t);
        return _x;
    }
    @:keep
    @:tdfield
    static public function _maybeSubtractModulus( _x:stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_nat.Nat>, _always:stdgo._internal.crypto.internal.bigmod.Bigmod_t_choice.T_choice, _m:stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_modulus.Modulus>):Void {
        @:recv var _x:stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_nat.Nat> = _x;
        var _t = @:check2r stdgo._internal.crypto.internal.bigmod.Bigmod_newnat.newNat()._set(_x);
        var _underflow = (@:check2r _t._sub((@:checkr _m ?? throw "null pointer dereference")._nat) : stdgo.GoUInt);
        var _keep = (stdgo._internal.crypto.internal.bigmod.Bigmod__not._not((_underflow : stdgo._internal.crypto.internal.bigmod.Bigmod_t_choice.T_choice)) | (_always : stdgo._internal.crypto.internal.bigmod.Bigmod_t_choice.T_choice) : stdgo._internal.crypto.internal.bigmod.Bigmod_t_choice.T_choice);
        @:check2r _x._assign(_keep, _t);
    }
    @:keep
    @:tdfield
    static public function _resetFor( _out:stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_nat.Nat>, _m:stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_modulus.Modulus>):stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_nat.Nat> {
        @:recv var _out:stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_nat.Nat> = _out;
        return @:check2r _out._reset(((@:checkr (@:checkr _m ?? throw "null pointer dereference")._nat ?? throw "null pointer dereference")._limbs.length));
    }
    @:keep
    @:tdfield
    static public function expandFor( _x:stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_nat.Nat>, _m:stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_modulus.Modulus>):stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_nat.Nat> {
        @:recv var _x:stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_nat.Nat> = _x;
        return @:check2r _x._expand(((@:checkr (@:checkr _m ?? throw "null pointer dereference")._nat ?? throw "null pointer dereference")._limbs.length));
    }
    @:keep
    @:tdfield
    static public function mod( _out:stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_nat.Nat>, _x:stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_nat.Nat>, _m:stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_modulus.Modulus>):stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_nat.Nat> {
        @:recv var _out:stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_nat.Nat> = _out;
        @:check2r _out._resetFor(_m);
        var _i = (((@:checkr _x ?? throw "null pointer dereference")._limbs.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
        var _start = (((@:checkr (@:checkr _m ?? throw "null pointer dereference")._nat ?? throw "null pointer dereference")._limbs.length) - (2 : stdgo.GoInt) : stdgo.GoInt);
        if ((_i < _start : Bool)) {
            _start = _i;
        };
        {
            var _j = (_start : stdgo.GoInt);
            while ((_j >= (0 : stdgo.GoInt) : Bool)) {
                (@:checkr _out ?? throw "null pointer dereference")._limbs[(_j : stdgo.GoInt)] = (@:checkr _x ?? throw "null pointer dereference")._limbs[(_i : stdgo.GoInt)];
_i--;
                _j--;
            };
        };
        while ((_i >= (0 : stdgo.GoInt) : Bool)) {
            @:check2r _out._shiftIn((@:checkr _x ?? throw "null pointer dereference")._limbs[(_i : stdgo.GoInt)], _m);
            _i--;
        };
        return _out;
    }
    @:keep
    @:tdfield
    static public function _shiftIn( _x:stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_nat.Nat>, _y:stdgo.GoUInt, _m:stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_modulus.Modulus>):stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_nat.Nat> {
        @:recv var _x:stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_nat.Nat> = _x;
        var _d = @:check2r stdgo._internal.crypto.internal.bigmod.Bigmod_newnat.newNat()._resetFor(_m);
        var _size = ((@:checkr (@:checkr _m ?? throw "null pointer dereference")._nat ?? throw "null pointer dereference")._limbs.length : stdgo.GoInt);
        var _xLimbs = ((@:checkr _x ?? throw "null pointer dereference")._limbs.__slice__(0, _size) : stdgo.Slice<stdgo.GoUInt>);
        var _dLimbs = ((@:checkr _d ?? throw "null pointer dereference")._limbs.__slice__(0, _size) : stdgo.Slice<stdgo.GoUInt>);
        var _mLimbs = ((@:checkr (@:checkr _m ?? throw "null pointer dereference")._nat ?? throw "null pointer dereference")._limbs.__slice__(0, _size) : stdgo.Slice<stdgo.GoUInt>);
        var _needSubtraction = (0u32 : stdgo._internal.crypto.internal.bigmod.Bigmod_t_choice.T_choice);
        {
            var _i = (31 : stdgo.GoInt);
            while ((_i >= (0 : stdgo.GoInt) : Bool)) {
                var _carry = (((_y >> _i : stdgo.GoUInt)) & (1u32 : stdgo.GoUInt) : stdgo.GoUInt);
var _borrow:stdgo.GoUInt = (0 : stdgo.GoUInt);
var _mask = (stdgo._internal.crypto.internal.bigmod.Bigmod__ctmask._ctMask(_needSubtraction) : stdgo.GoUInt);
{
                    var _i = (0 : stdgo.GoInt);
                    while ((_i < _size : Bool)) {
                        var _l = (_xLimbs[(_i : stdgo.GoInt)] ^ ((_mask & ((_xLimbs[(_i : stdgo.GoInt)] ^ _dLimbs[(_i : stdgo.GoInt)] : stdgo.GoUInt)) : stdgo.GoUInt)) : stdgo.GoUInt);
{
                            var __tmp__ = stdgo._internal.math.bits.Bits_add.add(_l, _l, _carry);
                            _xLimbs[(_i : stdgo.GoInt)] = @:tmpset0 __tmp__._0;
                            _carry = @:tmpset0 __tmp__._1;
                        };
{
                            var __tmp__ = stdgo._internal.math.bits.Bits_sub.sub(_xLimbs[(_i : stdgo.GoInt)], _mLimbs[(_i : stdgo.GoInt)], _borrow);
                            _dLimbs[(_i : stdgo.GoInt)] = @:tmpset0 __tmp__._0;
                            _borrow = @:tmpset0 __tmp__._1;
                        };
                        _i++;
                    };
                };
_needSubtraction = (stdgo._internal.crypto.internal.bigmod.Bigmod__not._not((_borrow : stdgo._internal.crypto.internal.bigmod.Bigmod_t_choice.T_choice)) | (_carry : stdgo._internal.crypto.internal.bigmod.Bigmod_t_choice.T_choice) : stdgo._internal.crypto.internal.bigmod.Bigmod_t_choice.T_choice);
                _i--;
            };
        };
        return @:check2r _x._assign(_needSubtraction, _d);
    }
    @:keep
    @:tdfield
    static public function _sub( _x:stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_nat.Nat>, _y:stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_nat.Nat>):stdgo.GoUInt {
        @:recv var _x:stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_nat.Nat> = _x;
        var _c = (0 : stdgo.GoUInt);
        var _size = ((@:checkr _x ?? throw "null pointer dereference")._limbs.length : stdgo.GoInt);
        var _xLimbs = ((@:checkr _x ?? throw "null pointer dereference")._limbs.__slice__(0, _size) : stdgo.Slice<stdgo.GoUInt>);
        var _yLimbs = ((@:checkr _y ?? throw "null pointer dereference")._limbs.__slice__(0, _size) : stdgo.Slice<stdgo.GoUInt>);
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < _size : Bool)) {
                {
                    var __tmp__ = stdgo._internal.math.bits.Bits_sub.sub(_xLimbs[(_i : stdgo.GoInt)], _yLimbs[(_i : stdgo.GoInt)], _c);
                    _xLimbs[(_i : stdgo.GoInt)] = @:tmpset0 __tmp__._0;
                    _c = @:tmpset0 __tmp__._1;
                };
                _i++;
            };
        };
        return _c;
    }
    @:keep
    @:tdfield
    static public function _add( _x:stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_nat.Nat>, _y:stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_nat.Nat>):stdgo.GoUInt {
        @:recv var _x:stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_nat.Nat> = _x;
        var _c = (0 : stdgo.GoUInt);
        var _size = ((@:checkr _x ?? throw "null pointer dereference")._limbs.length : stdgo.GoInt);
        var _xLimbs = ((@:checkr _x ?? throw "null pointer dereference")._limbs.__slice__(0, _size) : stdgo.Slice<stdgo.GoUInt>);
        var _yLimbs = ((@:checkr _y ?? throw "null pointer dereference")._limbs.__slice__(0, _size) : stdgo.Slice<stdgo.GoUInt>);
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < _size : Bool)) {
                {
                    var __tmp__ = stdgo._internal.math.bits.Bits_add.add(_xLimbs[(_i : stdgo.GoInt)], _yLimbs[(_i : stdgo.GoInt)], _c);
                    _xLimbs[(_i : stdgo.GoInt)] = @:tmpset0 __tmp__._0;
                    _c = @:tmpset0 __tmp__._1;
                };
                _i++;
            };
        };
        return _c;
    }
    @:keep
    @:tdfield
    static public function _assign( _x:stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_nat.Nat>, _on:stdgo._internal.crypto.internal.bigmod.Bigmod_t_choice.T_choice, _y:stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_nat.Nat>):stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_nat.Nat> {
        @:recv var _x:stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_nat.Nat> = _x;
        var _size = ((@:checkr _x ?? throw "null pointer dereference")._limbs.length : stdgo.GoInt);
        var _xLimbs = ((@:checkr _x ?? throw "null pointer dereference")._limbs.__slice__(0, _size) : stdgo.Slice<stdgo.GoUInt>);
        var _yLimbs = ((@:checkr _y ?? throw "null pointer dereference")._limbs.__slice__(0, _size) : stdgo.Slice<stdgo.GoUInt>);
        var _mask = (stdgo._internal.crypto.internal.bigmod.Bigmod__ctmask._ctMask(_on) : stdgo.GoUInt);
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < _size : Bool)) {
                _xLimbs[(_i : stdgo.GoInt)] = (_xLimbs[(_i : stdgo.GoInt)] ^ ((_mask & ((_xLimbs[(_i : stdgo.GoInt)] ^ _yLimbs[(_i : stdgo.GoInt)] : stdgo.GoUInt)) : stdgo.GoUInt)) : stdgo.GoUInt);
                _i++;
            };
        };
        return _x;
    }
    @:keep
    @:tdfield
    static public function _cmpGeq( _x:stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_nat.Nat>, _y:stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_nat.Nat>):stdgo._internal.crypto.internal.bigmod.Bigmod_t_choice.T_choice {
        @:recv var _x:stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_nat.Nat> = _x;
        var _size = ((@:checkr _x ?? throw "null pointer dereference")._limbs.length : stdgo.GoInt);
        var _xLimbs = ((@:checkr _x ?? throw "null pointer dereference")._limbs.__slice__(0, _size) : stdgo.Slice<stdgo.GoUInt>);
        var _yLimbs = ((@:checkr _y ?? throw "null pointer dereference")._limbs.__slice__(0, _size) : stdgo.Slice<stdgo.GoUInt>);
        var _c:stdgo.GoUInt = (0 : stdgo.GoUInt);
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < _size : Bool)) {
                {
                    var __tmp__ = stdgo._internal.math.bits.Bits_sub.sub(_xLimbs[(_i : stdgo.GoInt)], _yLimbs[(_i : stdgo.GoInt)], _c);
                    _c = @:tmpset0 __tmp__._1;
                };
                _i++;
            };
        };
        return stdgo._internal.crypto.internal.bigmod.Bigmod__not._not((_c : stdgo._internal.crypto.internal.bigmod.Bigmod_t_choice.T_choice));
    }
    @:keep
    @:tdfield
    static public function isZero( _x:stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_nat.Nat>):stdgo._internal.crypto.internal.bigmod.Bigmod_t_choice.T_choice {
        @:recv var _x:stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_nat.Nat> = _x;
        var _size = ((@:checkr _x ?? throw "null pointer dereference")._limbs.length : stdgo.GoInt);
        var _xLimbs = ((@:checkr _x ?? throw "null pointer dereference")._limbs.__slice__(0, _size) : stdgo.Slice<stdgo.GoUInt>);
        var _zero = (1u32 : stdgo._internal.crypto.internal.bigmod.Bigmod_t_choice.T_choice);
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < _size : Bool)) {
                _zero = (_zero & (stdgo._internal.crypto.internal.bigmod.Bigmod__cteq._ctEq(_xLimbs[(_i : stdgo.GoInt)], (0u32 : stdgo.GoUInt))) : stdgo._internal.crypto.internal.bigmod.Bigmod_t_choice.T_choice);
                _i++;
            };
        };
        return _zero;
    }
    @:keep
    @:tdfield
    static public function equal( _x:stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_nat.Nat>, _y:stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_nat.Nat>):stdgo._internal.crypto.internal.bigmod.Bigmod_t_choice.T_choice {
        @:recv var _x:stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_nat.Nat> = _x;
        var _size = ((@:checkr _x ?? throw "null pointer dereference")._limbs.length : stdgo.GoInt);
        var _xLimbs = ((@:checkr _x ?? throw "null pointer dereference")._limbs.__slice__(0, _size) : stdgo.Slice<stdgo.GoUInt>);
        var _yLimbs = ((@:checkr _y ?? throw "null pointer dereference")._limbs.__slice__(0, _size) : stdgo.Slice<stdgo.GoUInt>);
        var _equal = (1u32 : stdgo._internal.crypto.internal.bigmod.Bigmod_t_choice.T_choice);
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < _size : Bool)) {
                _equal = (_equal & (stdgo._internal.crypto.internal.bigmod.Bigmod__cteq._ctEq(_xLimbs[(_i : stdgo.GoInt)], _yLimbs[(_i : stdgo.GoInt)])) : stdgo._internal.crypto.internal.bigmod.Bigmod_t_choice.T_choice);
                _i++;
            };
        };
        return _equal;
    }
    @:keep
    @:tdfield
    static public function _setBytes( _x:stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_nat.Nat>, _b:stdgo.Slice<stdgo.GoUInt8>, _m:stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_modulus.Modulus>):stdgo.Error {
        @:recv var _x:stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_nat.Nat> = _x;
        @:check2r _x._resetFor(_m);
        var __0 = (_b.length : stdgo.GoInt), __1 = (0 : stdgo.GoInt);
var _k = __1, _i = __0;
        while (((_k < ((@:checkr _x ?? throw "null pointer dereference")._limbs.length) : Bool) && (_i >= (4 : stdgo.GoInt) : Bool) : Bool)) {
            (@:checkr _x ?? throw "null pointer dereference")._limbs[(_k : stdgo.GoInt)] = stdgo._internal.crypto.internal.bigmod.Bigmod__bigendianuint._bigEndianUint((_b.__slice__((_i - (4 : stdgo.GoInt) : stdgo.GoInt), _i) : stdgo.Slice<stdgo.GoUInt8>));
            _i = (_i - ((4 : stdgo.GoInt)) : stdgo.GoInt);
            _k++;
        };
        {
            var _s = (0 : stdgo.GoInt);
            while ((((_s < (32 : stdgo.GoInt) : Bool) && (_k < ((@:checkr _x ?? throw "null pointer dereference")._limbs.length) : Bool) : Bool) && (_i > (0 : stdgo.GoInt) : Bool) : Bool)) {
                (@:checkr _x ?? throw "null pointer dereference")._limbs[(_k : stdgo.GoInt)] = ((@:checkr _x ?? throw "null pointer dereference")._limbs[(_k : stdgo.GoInt)] | (((_b[(_i - (1 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoUInt) << _s : stdgo.GoUInt)) : stdgo.GoUInt);
_i--;
                _s = (_s + ((8 : stdgo.GoInt)) : stdgo.GoInt);
            };
        };
        if ((_i > (0 : stdgo.GoInt) : Bool)) {
            return stdgo._internal.errors.Errors_new_.new_(("input overflows the modulus size" : stdgo.GoString));
        };
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function setOverflowingBytes( _x:stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_nat.Nat>, _b:stdgo.Slice<stdgo.GoUInt8>, _m:stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_modulus.Modulus>):{ var _0 : stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_nat.Nat>; var _1 : stdgo.Error; } {
        @:recv var _x:stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_nat.Nat> = _x;
        {
            var _err = (@:check2r _x._setBytes(_b, _m) : stdgo.Error);
            if (_err != null) {
                return { _0 : null, _1 : _err };
            };
        };
        var _leading = ((32 : stdgo.GoInt) - stdgo._internal.crypto.internal.bigmod.Bigmod__bitlen._bitLen((@:checkr _x ?? throw "null pointer dereference")._limbs[(((@:checkr _x ?? throw "null pointer dereference")._limbs.length) - (1 : stdgo.GoInt) : stdgo.GoInt)]) : stdgo.GoInt);
        if ((_leading < (@:checkr _m ?? throw "null pointer dereference")._leading : Bool)) {
            return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("input overflows the modulus size" : stdgo.GoString)) };
        };
        @:check2r _x._maybeSubtractModulus((0u32 : stdgo._internal.crypto.internal.bigmod.Bigmod_t_choice.T_choice), _m);
        return { _0 : _x, _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function setBytes( _x:stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_nat.Nat>, _b:stdgo.Slice<stdgo.GoUInt8>, _m:stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_modulus.Modulus>):{ var _0 : stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_nat.Nat>; var _1 : stdgo.Error; } {
        @:recv var _x:stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_nat.Nat> = _x;
        {
            var _err = (@:check2r _x._setBytes(_b, _m) : stdgo.Error);
            if (_err != null) {
                return { _0 : null, _1 : _err };
            };
        };
        if (@:check2r _x._cmpGeq((@:checkr _m ?? throw "null pointer dereference")._nat) == ((1u32 : stdgo._internal.crypto.internal.bigmod.Bigmod_t_choice.T_choice))) {
            return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("input overflows the modulus" : stdgo.GoString)) };
        };
        return { _0 : _x, _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function bytes( _x:stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_nat.Nat>, _m:stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_modulus.Modulus>):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _x:stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_nat.Nat> = _x;
        var _i = (@:check2r _m.size() : stdgo.GoInt);
        var _bytes = (new stdgo.Slice<stdgo.GoUInt8>((_i : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        for (__0 => _limb in (@:checkr _x ?? throw "null pointer dereference")._limbs) {
            {
                var _j = (0 : stdgo.GoInt);
                while ((_j < (4 : stdgo.GoInt) : Bool)) {
                    _i--;
if ((_i < (0 : stdgo.GoInt) : Bool)) {
                        if (_limb == ((0u32 : stdgo.GoUInt))) {
                            break;
                        };
                        throw stdgo.Go.toInterface(("bigmod: modulus is smaller than nat" : stdgo.GoString));
                    };
_bytes[(_i : stdgo.GoInt)] = (_limb : stdgo.GoUInt8);
_limb = (_limb >> ((8i64 : stdgo.GoUInt64)) : stdgo.GoUInt);
                    _j++;
                };
            };
        };
        return _bytes;
    }
    @:keep
    @:tdfield
    static public function _setBig( _x:stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_nat.Nat>, _n:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>):stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_nat.Nat> {
        @:recv var _x:stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_nat.Nat> = _x;
        var _limbs = @:check2r _n.bits();
        @:check2r _x._reset((_limbs.length));
        for (_i => _ in _limbs) {
            (@:checkr _x ?? throw "null pointer dereference")._limbs[(_i : stdgo.GoInt)] = (_limbs[(_i : stdgo.GoInt)] : stdgo.GoUInt);
        };
        return _x;
    }
    @:keep
    @:tdfield
    static public function _set( _x:stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_nat.Nat>, _y:stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_nat.Nat>):stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_nat.Nat> {
        @:recv var _x:stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_nat.Nat> = _x;
        @:check2r _x._reset(((@:checkr _y ?? throw "null pointer dereference")._limbs.length));
        (@:checkr _x ?? throw "null pointer dereference")._limbs.__copyTo__((@:checkr _y ?? throw "null pointer dereference")._limbs);
        return _x;
    }
    @:keep
    @:tdfield
    static public function _reset( _x:stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_nat.Nat>, _n:stdgo.GoInt):stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_nat.Nat> {
        @:recv var _x:stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_nat.Nat> = _x;
        if (((@:checkr _x ?? throw "null pointer dereference")._limbs.capacity < _n : Bool)) {
            (@:checkr _x ?? throw "null pointer dereference")._limbs = (new stdgo.Slice<stdgo.GoUInt>((_n : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt>);
            return _x;
        };
        for (_i => _ in (@:checkr _x ?? throw "null pointer dereference")._limbs) {
            (@:checkr _x ?? throw "null pointer dereference")._limbs[(_i : stdgo.GoInt)] = (0u32 : stdgo.GoUInt);
        };
        (@:checkr _x ?? throw "null pointer dereference")._limbs = ((@:checkr _x ?? throw "null pointer dereference")._limbs.__slice__(0, _n) : stdgo.Slice<stdgo.GoUInt>);
        return _x;
    }
    @:keep
    @:tdfield
    static public function _expand( _x:stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_nat.Nat>, _n:stdgo.GoInt):stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_nat.Nat> {
        @:recv var _x:stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_nat.Nat> = _x;
        if ((((@:checkr _x ?? throw "null pointer dereference")._limbs.length) > _n : Bool)) {
            throw stdgo.Go.toInterface(("bigmod: internal error: shrinking nat" : stdgo.GoString));
        };
        if (((@:checkr _x ?? throw "null pointer dereference")._limbs.capacity < _n : Bool)) {
            var _newLimbs = (new stdgo.Slice<stdgo.GoUInt>((_n : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt>);
            _newLimbs.__copyTo__((@:checkr _x ?? throw "null pointer dereference")._limbs);
            (@:checkr _x ?? throw "null pointer dereference")._limbs = _newLimbs;
            return _x;
        };
        var _extraLimbs = ((@:checkr _x ?? throw "null pointer dereference")._limbs.__slice__(((@:checkr _x ?? throw "null pointer dereference")._limbs.length), _n) : stdgo.Slice<stdgo.GoUInt>);
        for (_i => _ in _extraLimbs) {
            _extraLimbs[(_i : stdgo.GoInt)] = (0u32 : stdgo.GoUInt);
        };
        (@:checkr _x ?? throw "null pointer dereference")._limbs = ((@:checkr _x ?? throw "null pointer dereference")._limbs.__slice__(0, _n) : stdgo.Slice<stdgo.GoUInt>);
        return _x;
    }
}
