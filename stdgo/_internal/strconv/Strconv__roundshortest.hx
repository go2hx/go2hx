package stdgo._internal.strconv;
function _roundShortest(_d:stdgo.Ref<stdgo._internal.strconv.Strconv_t_decimal.T_decimal>, _mant:stdgo.GoUInt64, _exp:stdgo.GoInt, _flt:stdgo.Ref<stdgo._internal.strconv.Strconv_t_floatinfo.T_floatInfo>):Void {
        if (_mant == ((0i64 : stdgo.GoUInt64))) {
            (@:checkr _d ?? throw "null pointer dereference")._nd = (0 : stdgo.GoInt);
            return;
        };
        var _minexp = ((@:checkr _flt ?? throw "null pointer dereference")._bias + (1 : stdgo.GoInt) : stdgo.GoInt);
        if (((_exp > _minexp : Bool) && (((332 : stdgo.GoInt) * (((@:checkr _d ?? throw "null pointer dereference")._dp - (@:checkr _d ?? throw "null pointer dereference")._nd : stdgo.GoInt)) : stdgo.GoInt) >= ((100 : stdgo.GoInt) * ((_exp - ((@:checkr _flt ?? throw "null pointer dereference")._mantbits : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt) : Bool) : Bool)) {
            return;
        };
        var _upper = (stdgo.Go.setRef(({} : stdgo._internal.strconv.Strconv_t_decimal.T_decimal)) : stdgo.Ref<stdgo._internal.strconv.Strconv_t_decimal.T_decimal>);
        @:check2r _upper.assign(((_mant * (2i64 : stdgo.GoUInt64) : stdgo.GoUInt64) + (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64));
        @:check2r _upper.shift(((_exp - ((@:checkr _flt ?? throw "null pointer dereference")._mantbits : stdgo.GoInt) : stdgo.GoInt) - (1 : stdgo.GoInt) : stdgo.GoInt));
        var _mantlo:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _explo:stdgo.GoInt = (0 : stdgo.GoInt);
        if (((_mant > ((1i64 : stdgo.GoUInt64) << (@:checkr _flt ?? throw "null pointer dereference")._mantbits : stdgo.GoUInt64) : Bool) || (_exp == _minexp) : Bool)) {
            _mantlo = (_mant - (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
            _explo = _exp;
        } else {
            _mantlo = ((_mant * (2i64 : stdgo.GoUInt64) : stdgo.GoUInt64) - (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
            _explo = (_exp - (1 : stdgo.GoInt) : stdgo.GoInt);
        };
        var _lower = (stdgo.Go.setRef(({} : stdgo._internal.strconv.Strconv_t_decimal.T_decimal)) : stdgo.Ref<stdgo._internal.strconv.Strconv_t_decimal.T_decimal>);
        @:check2r _lower.assign(((_mantlo * (2i64 : stdgo.GoUInt64) : stdgo.GoUInt64) + (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64));
        @:check2r _lower.shift(((_explo - ((@:checkr _flt ?? throw "null pointer dereference")._mantbits : stdgo.GoInt) : stdgo.GoInt) - (1 : stdgo.GoInt) : stdgo.GoInt));
        var _inclusive = ((_mant % (2i64 : stdgo.GoUInt64) : stdgo.GoUInt64) == ((0i64 : stdgo.GoUInt64)) : Bool);
        var _upperdelta:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        {
            var _ui = (0 : stdgo.GoInt);
            while (true) {
                var _mi = ((_ui - (@:checkr _upper ?? throw "null pointer dereference")._dp : stdgo.GoInt) + (@:checkr _d ?? throw "null pointer dereference")._dp : stdgo.GoInt);
if ((_mi >= (@:checkr _d ?? throw "null pointer dereference")._nd : Bool)) {
                    break;
                };
var _li = ((_ui - (@:checkr _upper ?? throw "null pointer dereference")._dp : stdgo.GoInt) + (@:checkr _lower ?? throw "null pointer dereference")._dp : stdgo.GoInt);
var _l = ((48 : stdgo.GoUInt8) : stdgo.GoUInt8);
if (((_li >= (0 : stdgo.GoInt) : Bool) && (_li < (@:checkr _lower ?? throw "null pointer dereference")._nd : Bool) : Bool)) {
                    _l = (@:checkr _lower ?? throw "null pointer dereference")._d[(_li : stdgo.GoInt)];
                };
var _m = ((48 : stdgo.GoUInt8) : stdgo.GoUInt8);
if ((_mi >= (0 : stdgo.GoInt) : Bool)) {
                    _m = (@:checkr _d ?? throw "null pointer dereference")._d[(_mi : stdgo.GoInt)];
                };
var _u = ((48 : stdgo.GoUInt8) : stdgo.GoUInt8);
if ((_ui < (@:checkr _upper ?? throw "null pointer dereference")._nd : Bool)) {
                    _u = (@:checkr _upper ?? throw "null pointer dereference")._d[(_ui : stdgo.GoInt)];
                };
var _okdown = ((_l != _m) || (_inclusive && (_li + (1 : stdgo.GoInt) : stdgo.GoInt) == ((@:checkr _lower ?? throw "null pointer dereference")._nd) : Bool) : Bool);
if (((_upperdelta == (0 : stdgo.GoUInt8)) && ((_m + (1 : stdgo.GoUInt8) : stdgo.GoUInt8) < _u : Bool) : Bool)) {
                    _upperdelta = (2 : stdgo.GoUInt8);
                } else if (((_upperdelta == (0 : stdgo.GoUInt8)) && (_m != _u) : Bool)) {
                    _upperdelta = (1 : stdgo.GoUInt8);
                } else if (((_upperdelta == (1 : stdgo.GoUInt8)) && (((_m != (57 : stdgo.GoUInt8)) || (_u != (48 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                    _upperdelta = (2 : stdgo.GoUInt8);
                };
var _okup = ((_upperdelta > (0 : stdgo.GoUInt8) : Bool) && (((_inclusive || (_upperdelta > (1 : stdgo.GoUInt8) : Bool) : Bool) || ((_ui + (1 : stdgo.GoInt) : stdgo.GoInt) < (@:checkr _upper ?? throw "null pointer dereference")._nd : Bool) : Bool)) : Bool);
if ((_okdown && _okup : Bool)) {
                    @:check2r _d.round((_mi + (1 : stdgo.GoInt) : stdgo.GoInt));
                    return;
                } else if (_okdown) {
                    @:check2r _d.roundDown((_mi + (1 : stdgo.GoInt) : stdgo.GoInt));
                    return;
                } else if (_okup) {
                    @:check2r _d.roundUp((_mi + (1 : stdgo.GoInt) : stdgo.GoInt));
                    return;
                };
                _ui++;
            };
        };
    }
