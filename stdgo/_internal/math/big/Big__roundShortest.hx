package stdgo._internal.math.big;
function _roundShortest(_d:stdgo.Ref<stdgo._internal.math.big.Big_T_decimal.T_decimal>, _x:stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>):Void {
        if ((_d._mant.length) == ((0 : stdgo.GoInt))) {
            return;
        };
        var _mant = ((new stdgo._internal.math.big.Big_T_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_T_nat.T_nat)._set(_x._mant) : stdgo._internal.math.big.Big_T_nat.T_nat);
        var _exp = ((_x._exp : stdgo.GoInt) - _mant._bitLen() : stdgo.GoInt);
        var _s = (_mant._bitLen() - ((_x._prec + (1u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt) : stdgo.GoInt);
        if ((_s < (0 : stdgo.GoInt) : Bool)) {
            _mant = _mant._shl(_mant, (-_s : stdgo.GoUInt));
        } else if ((_s > (0 : stdgo.GoInt) : Bool)) {
            _mant = _mant._shr(_mant, (_s : stdgo.GoUInt));
        };
        _exp = (_exp + (_s) : stdgo.GoInt);
        var _lower:stdgo._internal.math.big.Big_T_decimal.T_decimal = ({} : stdgo._internal.math.big.Big_T_decimal.T_decimal);
        var _tmp:stdgo._internal.math.big.Big_T_nat.T_nat = new stdgo._internal.math.big.Big_T_nat.T_nat(0, 0);
        _lower._init(_tmp._sub(_mant, stdgo._internal.math.big.Big__natOne._natOne), _exp);
        var _upper:stdgo._internal.math.big.Big_T_decimal.T_decimal = ({} : stdgo._internal.math.big.Big_T_decimal.T_decimal);
        _upper._init(_tmp._add(_mant, stdgo._internal.math.big.Big__natOne._natOne), _exp);
        var _inclusive = ((_mant[(0 : stdgo.GoInt)] & (2u32 : stdgo._internal.math.big.Big_Word.Word) : stdgo._internal.math.big.Big_Word.Word) == ((0u32 : stdgo._internal.math.big.Big_Word.Word)) : Bool);
        for (_i => _m in _d._mant) {
            var _l = (_lower._at(_i) : stdgo.GoUInt8);
            var _u = (_upper._at(_i) : stdgo.GoUInt8);
            var _okdown = ((_l != _m) || (_inclusive && (_i + (1 : stdgo.GoInt) : stdgo.GoInt) == ((_lower._mant.length)) : Bool) : Bool);
            var _okup = ((_m != _u) && (((_inclusive || ((_m + (1 : stdgo.GoUInt8) : stdgo.GoUInt8) < _u : Bool) : Bool) || ((_i + (1 : stdgo.GoInt) : stdgo.GoInt) < (_upper._mant.length) : Bool) : Bool)) : Bool);
            if ((_okdown && _okup : Bool)) {
                _d._round((_i + (1 : stdgo.GoInt) : stdgo.GoInt));
                return;
            } else if (_okdown) {
                _d._roundDown((_i + (1 : stdgo.GoInt) : stdgo.GoInt));
                return;
            } else if (_okup) {
                _d._roundUp((_i + (1 : stdgo.GoInt) : stdgo.GoInt));
                return;
            };
        };
    }
