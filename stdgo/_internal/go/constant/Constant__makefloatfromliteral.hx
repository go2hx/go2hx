package stdgo._internal.go.constant;
function _makeFloatFromLiteral(_lit:stdgo.GoString):stdgo._internal.go.constant.Constant_value.Value {
        //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L329"
        {
            var __tmp__ = stdgo._internal.go.constant.Constant__newfloat._newFloat().setString(_lit?.__copy__()), _f:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_> = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_ok) {
                //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L330"
                if (stdgo._internal.go.constant.Constant__smallfloat._smallFloat(_f)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L332"
                    if (_f.sign() == ((0 : stdgo.GoInt))) {
                        _lit = ("0" : stdgo.GoString);
                    };
                    //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L339"
                    {
                        var __tmp__ = stdgo._internal.go.constant.Constant__newrat._newRat().setString(_lit?.__copy__()), _r:stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat> = __tmp__._0, _ok:Bool = __tmp__._1;
                        if (_ok) {
                            //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L340"
                            return stdgo.Go.asInterface((new stdgo._internal.go.constant.Constant_t_ratval.T_ratVal(_r) : stdgo._internal.go.constant.Constant_t_ratval.T_ratVal));
                        };
                    };
                };
                //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L344"
                return stdgo._internal.go.constant.Constant__makefloat._makeFloat(_f);
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L346"
        return (null : stdgo._internal.go.constant.Constant_value.Value);
    }
