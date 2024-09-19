package stdgo._internal.strconv;
function parseInt(_s:stdgo.GoString, _base:stdgo.GoInt, _bitSize:stdgo.GoInt):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } {
        var _i = (0 : stdgo.GoInt64), _err = (null : stdgo.Error);
        {};
        if (_s == (stdgo.Go.str())) {
            return { _0 : (0i64 : stdgo.GoInt64), _1 : stdgo.Go.asInterface(stdgo._internal.strconv.Strconv__syntaxError._syntaxError(("ParseInt" : stdgo.GoString), _s?.__copy__())) };
        };
        var _s0 = (_s?.__copy__() : stdgo.GoString);
        var _neg = (false : Bool);
        if (_s[(0 : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
            _s = (_s.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
        } else if (_s[(0 : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
            _neg = true;
            _s = (_s.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
        };
        var _un:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.strconv.Strconv_parseUint.parseUint(_s?.__copy__(), _base, _bitSize);
            _un = __tmp__._0;
            _err = __tmp__._1;
        };
        if (((_err != null) && (stdgo.Go.toInterface((stdgo.Go.typeAssert((stdgo.Go.toInterface(_err) : stdgo.Ref<stdgo._internal.strconv.Strconv_NumError.NumError>)) : stdgo.Ref<stdgo._internal.strconv.Strconv_NumError.NumError>).err) != stdgo.Go.toInterface(stdgo._internal.strconv.Strconv_errRange.errRange)) : Bool)) {
            (stdgo.Go.typeAssert((stdgo.Go.toInterface(_err) : stdgo.Ref<stdgo._internal.strconv.Strconv_NumError.NumError>)) : stdgo.Ref<stdgo._internal.strconv.Strconv_NumError.NumError>).func = ("ParseInt" : stdgo.GoString);
            (stdgo.Go.typeAssert((stdgo.Go.toInterface(_err) : stdgo.Ref<stdgo._internal.strconv.Strconv_NumError.NumError>)) : stdgo.Ref<stdgo._internal.strconv.Strconv_NumError.NumError>).num = stdgo._internal.strconv.Strconv__cloneString._cloneString(_s0?.__copy__())?.__copy__();
            return { _0 : (0i64 : stdgo.GoInt64), _1 : _err };
        };
        if (_bitSize == ((0 : stdgo.GoInt))) {
            _bitSize = (32 : stdgo.GoInt);
        };
        var _cutoff = (((1i64 : stdgo.GoUInt64) << ((_bitSize - (1 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt) : stdgo.GoUInt64) : stdgo.GoUInt64);
        if ((!_neg && (_un >= _cutoff : Bool) : Bool)) {
            return { _0 : ((_cutoff - (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoInt64), _1 : stdgo.Go.asInterface(stdgo._internal.strconv.Strconv__rangeError._rangeError(("ParseInt" : stdgo.GoString), _s0?.__copy__())) };
        };
        if ((_neg && (_un > _cutoff : Bool) : Bool)) {
            return { _0 : -(_cutoff : stdgo.GoInt64), _1 : stdgo.Go.asInterface(stdgo._internal.strconv.Strconv__rangeError._rangeError(("ParseInt" : stdgo.GoString), _s0?.__copy__())) };
        };
        var _n = (_un : stdgo.GoInt64);
        if (_neg) {
            _n = -_n;
        };
        return { _0 : _n, _1 : (null : stdgo.Error) };
    }