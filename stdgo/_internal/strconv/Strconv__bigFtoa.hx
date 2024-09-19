package stdgo._internal.strconv;
function _bigFtoa(_dst:stdgo.Slice<stdgo.GoUInt8>, _prec:stdgo.GoInt, _fmt:stdgo.GoUInt8, _neg:Bool, _mant:stdgo.GoUInt64, _exp:stdgo.GoInt, _flt:stdgo.Ref<stdgo._internal.strconv.Strconv_T_floatInfo.T_floatInfo>):stdgo.Slice<stdgo.GoUInt8> {
        var _d = (stdgo.Go.setRef(({} : stdgo._internal.strconv.Strconv_T_decimal.T_decimal)) : stdgo.Ref<stdgo._internal.strconv.Strconv_T_decimal.T_decimal>);
        _d.assign(_mant);
        _d.shift((_exp - (_flt._mantbits : stdgo.GoInt) : stdgo.GoInt));
        var _digs:stdgo._internal.strconv.Strconv_T_decimalSlice.T_decimalSlice = ({} : stdgo._internal.strconv.Strconv_T_decimalSlice.T_decimalSlice);
        var _shortest = (_prec < (0 : stdgo.GoInt) : Bool);
        if (_shortest) {
            stdgo._internal.strconv.Strconv__roundShortest._roundShortest(_d, _mant, _exp, _flt);
            _digs = ({ _d : (_d._d.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>), _nd : _d._nd, _dp : _d._dp } : stdgo._internal.strconv.Strconv_T_decimalSlice.T_decimalSlice);
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
                    _d.round((_prec + (1 : stdgo.GoInt) : stdgo.GoInt));
                } else if (__value__ == ((102 : stdgo.GoUInt8))) {
                    _d.round((_d._dp + _prec : stdgo.GoInt));
                } else if (__value__ == ((103 : stdgo.GoUInt8)) || __value__ == ((71 : stdgo.GoUInt8))) {
                    if (_prec == ((0 : stdgo.GoInt))) {
                        _prec = (1 : stdgo.GoInt);
                    };
                    _d.round(_prec);
                };
            };
            _digs = ({ _d : (_d._d.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>), _nd : _d._nd, _dp : _d._dp } : stdgo._internal.strconv.Strconv_T_decimalSlice.T_decimalSlice);
        };
        return stdgo._internal.strconv.Strconv__formatDigits._formatDigits(_dst, _shortest, _neg, _digs?.__copy__(), _prec, _fmt);
    }