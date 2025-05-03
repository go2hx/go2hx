package stdgo._internal.strconv;
function _mult128bitPow10(_m:stdgo.GoUInt64, _e2:stdgo.GoInt, _q:stdgo.GoInt):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.GoInt; var _2 : Bool; } {
        var _resM = (0 : stdgo.GoUInt64), _resE = (0 : stdgo.GoInt), _exact = false;
        //"file:///home/runner/.go/go1.21.3/src/strconv/ftoaryu.go#L523"
        if (_q == ((0 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/strconv/ftoaryu.go#L525"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoUInt64; var _1 : stdgo.GoInt; var _2 : Bool; } = { _0 : (_m << (8i64 : stdgo.GoUInt64) : stdgo.GoUInt64), _1 : (_e2 - (8 : stdgo.GoInt) : stdgo.GoInt), _2 : true };
                _resM = __tmp__._0;
                _resE = __tmp__._1;
                _exact = __tmp__._2;
                __tmp__;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/strconv/ftoaryu.go#L527"
        if (((_q < (-348 : stdgo.GoInt) : Bool) || ((347 : stdgo.GoInt) < _q : Bool) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/strconv/ftoaryu.go#L529"
            throw stdgo.Go.toInterface(("mult128bitPow10: power of 10 is out of range" : stdgo.GoString));
        };
        var _pow = stdgo._internal.strconv.Strconv__detailedpowersoften._detailedPowersOfTen[(_q - (-348 : stdgo.GoInt) : stdgo.GoInt)]?.__copy__();
        //"file:///home/runner/.go/go1.21.3/src/strconv/ftoaryu.go#L532"
        if ((_q < (0 : stdgo.GoInt) : Bool)) {
            _pow[(0 : stdgo.GoInt)] = (_pow[(0 : stdgo.GoInt)] + ((1i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
        };
        _e2 = (_e2 + (((stdgo._internal.strconv.Strconv__mulbylog10log2._mulByLog10Log2(_q) - (127 : stdgo.GoInt) : stdgo.GoInt) + (119 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt);
        var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_m, _pow[(0 : stdgo.GoInt)]), _l1:stdgo.GoUInt64 = __tmp__._0, _l0:stdgo.GoUInt64 = __tmp__._1;
        var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_m, _pow[(1 : stdgo.GoInt)]), _h1:stdgo.GoUInt64 = __tmp__._0, _h0:stdgo.GoUInt64 = __tmp__._1;
        var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_l1, _h0, (0i64 : stdgo.GoUInt64)), _mid:stdgo.GoUInt64 = __tmp__._0, _carry:stdgo.GoUInt64 = __tmp__._1;
        _h1 = (_h1 + (_carry) : stdgo.GoUInt64);
        //"file:///home/runner/.go/go1.21.3/src/strconv/ftoaryu.go#L543"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoUInt64; var _1 : stdgo.GoInt; var _2 : Bool; } = { _0 : ((_h1 << (9i64 : stdgo.GoUInt64) : stdgo.GoUInt64) | (_mid >> (55i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64), _1 : _e2, _2 : (((_mid << (9i64 : stdgo.GoUInt64) : stdgo.GoUInt64) == (0i64 : stdgo.GoUInt64)) && (_l0 == (0i64 : stdgo.GoUInt64)) : Bool) };
            _resM = __tmp__._0;
            _resE = __tmp__._1;
            _exact = __tmp__._2;
            __tmp__;
        };
    }
