package stdgo._internal.strconv;
function _atofHex(_s:stdgo.GoString, _flt:stdgo.Ref<stdgo._internal.strconv.Strconv_t_floatinfo.T_floatInfo>, _mantissa:stdgo.GoUInt64, _exp:stdgo.GoInt, _neg:Bool, _trunc:Bool):{ var _0 : stdgo.GoFloat64; var _1 : stdgo.Error; } {
        var _maxExp = ((((1 : stdgo.GoInt) << (@:checkr _flt ?? throw "null pointer dereference")._expbits : stdgo.GoInt) + (@:checkr _flt ?? throw "null pointer dereference")._bias : stdgo.GoInt) - (2 : stdgo.GoInt) : stdgo.GoInt);
        var _minExp = ((@:checkr _flt ?? throw "null pointer dereference")._bias + (1 : stdgo.GoInt) : stdgo.GoInt);
        _exp = (_exp + (((@:checkr _flt ?? throw "null pointer dereference")._mantbits : stdgo.GoInt)) : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/strconv/atof.go#L510"
        while (((_mantissa != (0i64 : stdgo.GoUInt64)) && ((_mantissa >> (((@:checkr _flt ?? throw "null pointer dereference")._mantbits + (2u32 : stdgo.GoUInt) : stdgo.GoUInt)) : stdgo.GoUInt64) == (0i64 : stdgo.GoUInt64)) : Bool)) {
            _mantissa = (_mantissa << ((1i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
            //"file:///home/runner/.go/go1.21.3/src/strconv/atof.go#L512"
            _exp--;
        };
        //"file:///home/runner/.go/go1.21.3/src/strconv/atof.go#L514"
        if (_trunc) {
            _mantissa = (_mantissa | ((1i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
        };
        //"file:///home/runner/.go/go1.21.3/src/strconv/atof.go#L517"
        while ((_mantissa >> ((((1u32 : stdgo.GoUInt) + (@:checkr _flt ?? throw "null pointer dereference")._mantbits : stdgo.GoUInt) + (2u32 : stdgo.GoUInt) : stdgo.GoUInt)) : stdgo.GoUInt64) != ((0i64 : stdgo.GoUInt64))) {
            _mantissa = ((_mantissa >> (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64) | (_mantissa & (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64);
            //"file:///home/runner/.go/go1.21.3/src/strconv/atof.go#L519"
            _exp++;
        };
        //"file:///home/runner/.go/go1.21.3/src/strconv/atof.go#L525"
        while (((_mantissa > (1i64 : stdgo.GoUInt64) : Bool) && (_exp < (_minExp - (2 : stdgo.GoInt) : stdgo.GoInt) : Bool) : Bool)) {
            _mantissa = ((_mantissa >> (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64) | (_mantissa & (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64);
            //"file:///home/runner/.go/go1.21.3/src/strconv/atof.go#L527"
            _exp++;
        };
        var _round = (_mantissa & (3i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
        _mantissa = (_mantissa >> ((2i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
        _round = (_round | ((_mantissa & (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) : stdgo.GoUInt64);
        _exp = (_exp + ((2 : stdgo.GoInt)) : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/strconv/atof.go#L535"
        if (_round == ((3i64 : stdgo.GoUInt64))) {
            //"file:///home/runner/.go/go1.21.3/src/strconv/atof.go#L536"
            _mantissa++;
            //"file:///home/runner/.go/go1.21.3/src/strconv/atof.go#L537"
            if (_mantissa == (((1i64 : stdgo.GoUInt64) << (((1u32 : stdgo.GoUInt) + (@:checkr _flt ?? throw "null pointer dereference")._mantbits : stdgo.GoUInt)) : stdgo.GoUInt64))) {
                _mantissa = (_mantissa >> ((1i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
                //"file:///home/runner/.go/go1.21.3/src/strconv/atof.go#L539"
                _exp++;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/strconv/atof.go#L543"
        if ((_mantissa >> (@:checkr _flt ?? throw "null pointer dereference")._mantbits : stdgo.GoUInt64) == ((0i64 : stdgo.GoUInt64))) {
            _exp = (@:checkr _flt ?? throw "null pointer dereference")._bias;
        };
        var _err:stdgo.Error = (null : stdgo.Error);
        //"file:///home/runner/.go/go1.21.3/src/strconv/atof.go#L547"
        if ((_exp > _maxExp : Bool)) {
            _mantissa = ((1i64 : stdgo.GoUInt64) << (@:checkr _flt ?? throw "null pointer dereference")._mantbits : stdgo.GoUInt64);
            _exp = (_maxExp + (1 : stdgo.GoInt) : stdgo.GoInt);
            _err = stdgo.Go.asInterface(stdgo._internal.strconv.Strconv__rangeerror._rangeError(("ParseFloat" : stdgo.GoString), _s?.__copy__()));
        };
        var _bits = (_mantissa & ((((1i64 : stdgo.GoUInt64) << (@:checkr _flt ?? throw "null pointer dereference")._mantbits : stdgo.GoUInt64) - (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) : stdgo.GoUInt64);
        _bits = (_bits | ((((((_exp - (@:checkr _flt ?? throw "null pointer dereference")._bias : stdgo.GoInt)) & ((((1 : stdgo.GoInt) << (@:checkr _flt ?? throw "null pointer dereference")._expbits : stdgo.GoInt) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt) : stdgo.GoUInt64) << (@:checkr _flt ?? throw "null pointer dereference")._mantbits : stdgo.GoUInt64)) : stdgo.GoUInt64);
        //"file:///home/runner/.go/go1.21.3/src/strconv/atof.go#L555"
        if (_neg) {
            _bits = (_bits | ((((1i64 : stdgo.GoUInt64) << (@:checkr _flt ?? throw "null pointer dereference")._mantbits : stdgo.GoUInt64) << (@:checkr _flt ?? throw "null pointer dereference")._expbits : stdgo.GoUInt64)) : stdgo.GoUInt64);
        };
        //"file:///home/runner/.go/go1.21.3/src/strconv/atof.go#L558"
        if (_flt == ((stdgo.Go.setRef(stdgo._internal.strconv.Strconv__float32info._float32info) : stdgo.Ref<stdgo._internal.strconv.Strconv_t_floatinfo.T_floatInfo>))) {
            //"file:///home/runner/.go/go1.21.3/src/strconv/atof.go#L559"
            return { _0 : (stdgo._internal.math.Math_float32frombits.float32frombits((_bits : stdgo.GoUInt32)) : stdgo.GoFloat64), _1 : _err };
        };
        //"file:///home/runner/.go/go1.21.3/src/strconv/atof.go#L561"
        return { _0 : stdgo._internal.math.Math_float64frombits.float64frombits(_bits), _1 : _err };
    }
