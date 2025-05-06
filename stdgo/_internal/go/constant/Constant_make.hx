package stdgo._internal.go.constant;
function make(_x:stdgo.AnyInterface):stdgo._internal.go.constant.Constant_value.Value {
        //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L624"
        {
            final __type__ = _x;
            if (stdgo.Go.typeEquals((__type__ : Bool))) {
                var _x:Bool = __type__ == null ? false : __type__.__underlying__() == null ? false : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? false : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L626"
                return stdgo.Go.asInterface((_x : stdgo._internal.go.constant.Constant_t_boolval.T_boolVal));
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.GoString))) {
                var _x:stdgo.GoString = __type__ == null ? "" : __type__.__underlying__() == null ? "" : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? "" : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L628"
                return stdgo.Go.asInterface((stdgo.Go.setRef(({ _s : _x?.__copy__() } : stdgo._internal.go.constant.Constant_t_stringval.T_stringVal)) : stdgo.Ref<stdgo._internal.go.constant.Constant_t_stringval.T_stringVal>));
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.GoInt64))) {
                var _x:stdgo.GoInt64 = __type__ == null ? 0 : __type__.__underlying__() == null ? 0 : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? 0 : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L630"
                return stdgo.Go.asInterface((_x : stdgo._internal.go.constant.Constant_t_int64val.T_int64Val));
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>))) {
                var _x:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L632"
                return stdgo._internal.go.constant.Constant__makeint._makeInt(_x);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>))) {
                var _x:stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L634"
                return stdgo._internal.go.constant.Constant__makerat._makeRat(_x);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>))) {
                var _x:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L636"
                return stdgo._internal.go.constant.Constant__makefloat._makeFloat(_x);
            } else {
                var _x:stdgo.AnyInterface = __type__?.__underlying__();
                //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L638"
                return stdgo.Go.asInterface((new stdgo._internal.go.constant.Constant_t_unknownval.T_unknownVal() : stdgo._internal.go.constant.Constant_t_unknownval.T_unknownVal));
            };
        };
    }
