package stdgo._internal.math;
function pow10(_n:stdgo.GoInt):stdgo.GoFloat64 {
        //"file:///home/runner/.go/go1.21.3/src/math/pow10.go#L32"
        if ((((0 : stdgo.GoInt) <= _n : Bool) && (_n <= (308 : stdgo.GoInt) : Bool) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/math/pow10.go#L33"
            return (stdgo._internal.math.Math__pow10postab32._pow10postab32[(((_n : stdgo.GoUInt) / (32u32 : stdgo.GoUInt) : stdgo.GoUInt) : stdgo.GoInt)] * stdgo._internal.math.Math__pow10tab._pow10tab[(((_n : stdgo.GoUInt) % (32u32 : stdgo.GoUInt) : stdgo.GoUInt) : stdgo.GoInt)] : stdgo.GoFloat64);
        };
        //"file:///home/runner/.go/go1.21.3/src/math/pow10.go#L36"
        if ((((-323 : stdgo.GoInt) <= _n : Bool) && (_n <= (0 : stdgo.GoInt) : Bool) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/math/pow10.go#L37"
            return (stdgo._internal.math.Math__pow10negtab32._pow10negtab32[(((-_n : stdgo.GoUInt) / (32u32 : stdgo.GoUInt) : stdgo.GoUInt) : stdgo.GoInt)] / stdgo._internal.math.Math__pow10tab._pow10tab[(((-_n : stdgo.GoUInt) % (32u32 : stdgo.GoUInt) : stdgo.GoUInt) : stdgo.GoInt)] : stdgo.GoFloat64);
        };
        //"file:///home/runner/.go/go1.21.3/src/math/pow10.go#L41"
        if ((_n > (0 : stdgo.GoInt) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/math/pow10.go#L42"
            return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
        };
        //"file:///home/runner/.go/go1.21.3/src/math/pow10.go#L46"
        return (0 : stdgo.GoFloat64);
    }
