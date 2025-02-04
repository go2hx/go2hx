package stdgo._internal.strconv;
function _bigFtoa(_dst:stdgo.Slice<stdgo.GoUInt8>, _prec:stdgo.GoInt, _fmt:stdgo.GoUInt8, _neg:Bool, _mant:stdgo.GoUInt64, _exp:stdgo.GoInt, _flt:stdgo.Ref<stdgo._internal.strconv.Strconv_t_floatinfo.T_floatInfo>):stdgo.Slice<stdgo.GoUInt8> {
        var _d = (stdgo.Go.setRef(({} : stdgo._internal.strconv.Strconv_t_decimal.T_decimal)) : stdgo.Ref<stdgo._internal.strconv.Strconv_t_decimal.T_decimal>);
        @:check2r _d.assign(_mant);
        @:check2r _d.shift((_exp - ((@:checkr _flt ?? throw "null pointer dereference")._mantbits : stdgo.GoInt) : stdgo.GoInt));
        var _digs:stdgo._internal.strconv.Strconv_t_decimalslice.T_decimalSlice = ({} : stdgo._internal.strconv.Strconv_t_decimalslice.T_decimalSlice);
        var _shortest = (_prec < (0 : stdgo.GoInt) : Bool);
        if (_shortest) {
            stdgo._internal.strconv.Strconv__roundshortest._roundShortest(_d, _mant, _exp, _flt);
            _digs = ({ _d : ((@:checkr _d ?? throw "null pointer dereference")._d.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>), _nd : (@:checkr _d ?? throw "null pointer dereference")._nd, _dp : (@:checkr _d ?? throw "null pointer dereference")._dp } : stdgo._internal.strconv.Strconv_t_decimalslice.T_decimalSlice);
            {
                final __value__ = _fmt;
                if (__value__ == ((101 : stdgo.GoUInt8)) || __value__ == ((69 : stdgo.GoUInt8))) {
                    _prec = (_digs._nd - (1 : stdgo.GoInt) : stdgo.GoInt);
                } else if (__value__ == ((102 : stdgo.GoUInt8))) {
                    _prec = stdgo._internal.strconv.Strconv__max._max((_digs._nd - _digs._dp : stdgo.GoInt), (0 : stdgo.GoInt));
                } else if (__value__ == ((103 : stdgo.GoUInt8)) || __value__ == ((71 : stdgo.GoUInt8))) {
                    _prec = _digs._nd;
                };
            };
        } else {
            {
                final __value__ = _fmt;
                if (__value__ == ((101 : stdgo.GoUInt8)) || __value__ == ((69 : stdgo.GoUInt8))) {
                    @:check2r _d.round((_prec + (1 : stdgo.GoInt) : stdgo.GoInt));
                } else if (__value__ == ((102 : stdgo.GoUInt8))) {
                    @:check2r _d.round(((@:checkr _d ?? throw "null pointer dereference")._dp + _prec : stdgo.GoInt));
                } else if (__value__ == ((103 : stdgo.GoUInt8)) || __value__ == ((71 : stdgo.GoUInt8))) {
                    if (_prec == ((0 : stdgo.GoInt))) {
                        _prec = (1 : stdgo.GoInt);
                    };
                    @:check2r _d.round(_prec);
                };
            };
            _digs = ({ _d : ((@:checkr _d ?? throw "null pointer dereference")._d.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>), _nd : (@:checkr _d ?? throw "null pointer dereference")._nd, _dp : (@:checkr _d ?? throw "null pointer dereference")._dp } : stdgo._internal.strconv.Strconv_t_decimalslice.T_decimalSlice);
        };
        return stdgo._internal.strconv.Strconv__formatdigits._formatDigits(_dst, _shortest, _neg, _digs?.__copy__(), _prec, _fmt);
    }
