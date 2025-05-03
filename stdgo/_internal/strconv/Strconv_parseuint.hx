package stdgo._internal.strconv;
function parseUint(_s:stdgo.GoString, _base:stdgo.GoInt, _bitSize:stdgo.GoInt):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.Error; } {
        {};
        //"file:///home/runner/.go/go1.21.3/src/strconv/atoi.go#L81"
        if (_s == ((stdgo.Go.str() : stdgo.GoString))) {
            //"file:///home/runner/.go/go1.21.3/src/strconv/atoi.go#L82"
            return { _0 : (0i64 : stdgo.GoUInt64), _1 : stdgo.Go.asInterface(stdgo._internal.strconv.Strconv__syntaxerror._syntaxError(("ParseUint" : stdgo.GoString), _s?.__copy__())) };
        };
        var _base0 = (_base == ((0 : stdgo.GoInt)) : Bool);
        var _s0 = (_s?.__copy__() : stdgo.GoString);
        //"file:///home/runner/.go/go1.21.3/src/strconv/atoi.go#L88"
        if ((((2 : stdgo.GoInt) <= _base : Bool) && (_base <= (36 : stdgo.GoInt) : Bool) : Bool)) {} else if (_base == ((0 : stdgo.GoInt))) {
            _base = (10 : stdgo.GoInt);
            //"file:///home/runner/.go/go1.21.3/src/strconv/atoi.go#L95"
            if (_s[(0 : stdgo.GoInt)] == ((48 : stdgo.GoUInt8))) {
                //"file:///home/runner/.go/go1.21.3/src/strconv/atoi.go#L96"
                if ((((_s.length) >= (3 : stdgo.GoInt) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(1 : stdgo.GoInt)]) == (98 : stdgo.GoUInt8)) : Bool)) {
                    _base = (2 : stdgo.GoInt);
                    _s = (_s.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                } else if ((((_s.length) >= (3 : stdgo.GoInt) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(1 : stdgo.GoInt)]) == (111 : stdgo.GoUInt8)) : Bool)) {
                    _base = (8 : stdgo.GoInt);
                    _s = (_s.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                } else if ((((_s.length) >= (3 : stdgo.GoInt) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(1 : stdgo.GoInt)]) == (120 : stdgo.GoUInt8)) : Bool)) {
                    _base = (16 : stdgo.GoInt);
                    _s = (_s.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                } else {
                    _base = (8 : stdgo.GoInt);
                    _s = (_s.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                };
            };
        } else {
            //"file:///home/runner/.go/go1.21.3/src/strconv/atoi.go#L113"
            return { _0 : (0i64 : stdgo.GoUInt64), _1 : stdgo.Go.asInterface(stdgo._internal.strconv.Strconv__baseerror._baseError(("ParseUint" : stdgo.GoString), _s0?.__copy__(), _base)) };
        };
        //"file:///home/runner/.go/go1.21.3/src/strconv/atoi.go#L116"
        if (_bitSize == ((0 : stdgo.GoInt))) {
            _bitSize = (32 : stdgo.GoInt);
        } else if (((_bitSize < (0 : stdgo.GoInt) : Bool) || (_bitSize > (64 : stdgo.GoInt) : Bool) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/strconv/atoi.go#L119"
            return { _0 : (0i64 : stdgo.GoUInt64), _1 : stdgo.Go.asInterface(stdgo._internal.strconv.Strconv__bitsizeerror._bitSizeError(("ParseUint" : stdgo.GoString), _s0?.__copy__(), _bitSize)) };
        };
        var _cutoff:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        //"file:///home/runner/.go/go1.21.3/src/strconv/atoi.go#L125"
        {
            final __value__ = _base;
            if (__value__ == ((10 : stdgo.GoInt))) {
                _cutoff = (1844674407370955162i64 : stdgo.GoUInt64);
            } else if (__value__ == ((16 : stdgo.GoInt))) {
                _cutoff = (1152921504606846976i64 : stdgo.GoUInt64);
            } else {
                _cutoff = (((-1i64 : stdgo.GoUInt64) / (_base : stdgo.GoUInt64) : stdgo.GoUInt64) + (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
            };
        };
        var _maxVal = (((1i64 : stdgo.GoUInt64) << (_bitSize : stdgo.GoUInt) : stdgo.GoUInt64) - (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
        var _underscores = (false : Bool);
        var _n:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        //"file:///home/runner/.go/go1.21.3/src/strconv/atoi.go#L138"
        for (__0 => _c in (_s : stdgo.Slice<stdgo.GoUInt8>)) {
            var _d:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
            //"file:///home/runner/.go/go1.21.3/src/strconv/atoi.go#L140"
            if (((_c == (95 : stdgo.GoUInt8)) && _base0 : Bool)) {
                _underscores = true;
                //"file:///home/runner/.go/go1.21.3/src/strconv/atoi.go#L143"
                continue;
            } else if ((((48 : stdgo.GoUInt8) <= _c : Bool) && (_c <= (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                _d = (_c - (48 : stdgo.GoUInt8) : stdgo.GoUInt8);
            } else if ((((97 : stdgo.GoUInt8) <= stdgo._internal.strconv.Strconv__lower._lower(_c) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_c) <= (122 : stdgo.GoUInt8) : Bool) : Bool)) {
                _d = ((stdgo._internal.strconv.Strconv__lower._lower(_c) - (97 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8);
            } else {
                //"file:///home/runner/.go/go1.21.3/src/strconv/atoi.go#L149"
                return { _0 : (0i64 : stdgo.GoUInt64), _1 : stdgo.Go.asInterface(stdgo._internal.strconv.Strconv__syntaxerror._syntaxError(("ParseUint" : stdgo.GoString), _s0?.__copy__())) };
            };
            //"file:///home/runner/.go/go1.21.3/src/strconv/atoi.go#L152"
            if ((_d >= (_base : stdgo.GoUInt8) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/strconv/atoi.go#L153"
                return { _0 : (0i64 : stdgo.GoUInt64), _1 : stdgo.Go.asInterface(stdgo._internal.strconv.Strconv__syntaxerror._syntaxError(("ParseUint" : stdgo.GoString), _s0?.__copy__())) };
            };
            //"file:///home/runner/.go/go1.21.3/src/strconv/atoi.go#L156"
            if ((_n >= _cutoff : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/strconv/atoi.go#L158"
                return { _0 : _maxVal, _1 : stdgo.Go.asInterface(stdgo._internal.strconv.Strconv__rangeerror._rangeError(("ParseUint" : stdgo.GoString), _s0?.__copy__())) };
            };
            _n = (_n * ((_base : stdgo.GoUInt64)) : stdgo.GoUInt64);
            var _n1 = (_n + (_d : stdgo.GoUInt64) : stdgo.GoUInt64);
            //"file:///home/runner/.go/go1.21.3/src/strconv/atoi.go#L163"
            if (((_n1 < _n : Bool) || (_n1 > _maxVal : Bool) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/strconv/atoi.go#L165"
                return { _0 : _maxVal, _1 : stdgo.Go.asInterface(stdgo._internal.strconv.Strconv__rangeerror._rangeError(("ParseUint" : stdgo.GoString), _s0?.__copy__())) };
            };
            _n = _n1;
        };
        //"file:///home/runner/.go/go1.21.3/src/strconv/atoi.go#L170"
        if ((_underscores && !stdgo._internal.strconv.Strconv__underscoreok._underscoreOK(_s0?.__copy__()) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/strconv/atoi.go#L171"
            return { _0 : (0i64 : stdgo.GoUInt64), _1 : stdgo.Go.asInterface(stdgo._internal.strconv.Strconv__syntaxerror._syntaxError(("ParseUint" : stdgo.GoString), _s0?.__copy__())) };
        };
        //"file:///home/runner/.go/go1.21.3/src/strconv/atoi.go#L174"
        return { _0 : _n, _1 : (null : stdgo.Error) };
    }
