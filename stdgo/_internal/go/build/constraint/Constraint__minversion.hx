package stdgo._internal.go.build.constraint;
function _minVersion(_z:stdgo._internal.go.build.constraint.Constraint_expr.Expr, _sign:stdgo.GoInt):stdgo.GoInt {
        //"file:///home/runner/.go/go1.21.3/src/go/build/constraint/vers.go#L44"
        {
            final __type__ = _z;
            if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.build.constraint.Constraint_andexpr.AndExpr>))) {
                var _z:stdgo.Ref<stdgo._internal.go.build.constraint.Constraint_andexpr.AndExpr> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.build.constraint.Constraint_andexpr.AndExpr>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.build.constraint.Constraint_andexpr.AndExpr>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.build.constraint.Constraint_andexpr.AndExpr>) : __type__.__underlying__().value);
                var _op = (stdgo._internal.go.build.constraint.Constraint__andversion._andVersion : (stdgo.GoInt, stdgo.GoInt) -> stdgo.GoInt);
                //"file:///home/runner/.go/go1.21.3/src/go/build/constraint/vers.go#L49"
                if ((_sign < (0 : stdgo.GoInt) : Bool)) {
                    _op = stdgo._internal.go.build.constraint.Constraint__orversion._orVersion;
                };
                //"file:///home/runner/.go/go1.21.3/src/go/build/constraint/vers.go#L52"
                return _op(stdgo._internal.go.build.constraint.Constraint__minversion._minVersion((@:checkr _z ?? throw "null pointer dereference").x, _sign), stdgo._internal.go.build.constraint.Constraint__minversion._minVersion((@:checkr _z ?? throw "null pointer dereference").y, _sign));
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.build.constraint.Constraint_orexpr.OrExpr>))) {
                var _z:stdgo.Ref<stdgo._internal.go.build.constraint.Constraint_orexpr.OrExpr> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.build.constraint.Constraint_orexpr.OrExpr>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.build.constraint.Constraint_orexpr.OrExpr>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.build.constraint.Constraint_orexpr.OrExpr>) : __type__.__underlying__().value);
                var _op = (stdgo._internal.go.build.constraint.Constraint__orversion._orVersion : (stdgo.GoInt, stdgo.GoInt) -> stdgo.GoInt);
                //"file:///home/runner/.go/go1.21.3/src/go/build/constraint/vers.go#L55"
                if ((_sign < (0 : stdgo.GoInt) : Bool)) {
                    _op = stdgo._internal.go.build.constraint.Constraint__andversion._andVersion;
                };
                //"file:///home/runner/.go/go1.21.3/src/go/build/constraint/vers.go#L58"
                return _op(stdgo._internal.go.build.constraint.Constraint__minversion._minVersion((@:checkr _z ?? throw "null pointer dereference").x, _sign), stdgo._internal.go.build.constraint.Constraint__minversion._minVersion((@:checkr _z ?? throw "null pointer dereference").y, _sign));
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.build.constraint.Constraint_notexpr.NotExpr>))) {
                var _z:stdgo.Ref<stdgo._internal.go.build.constraint.Constraint_notexpr.NotExpr> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.build.constraint.Constraint_notexpr.NotExpr>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.build.constraint.Constraint_notexpr.NotExpr>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.build.constraint.Constraint_notexpr.NotExpr>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/go/build/constraint/vers.go#L60"
                return stdgo._internal.go.build.constraint.Constraint__minversion._minVersion((@:checkr _z ?? throw "null pointer dereference").x, -_sign);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.build.constraint.Constraint_tagexpr.TagExpr>))) {
                var _z:stdgo.Ref<stdgo._internal.go.build.constraint.Constraint_tagexpr.TagExpr> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.build.constraint.Constraint_tagexpr.TagExpr>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.build.constraint.Constraint_tagexpr.TagExpr>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.build.constraint.Constraint_tagexpr.TagExpr>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/go/build/constraint/vers.go#L62"
                if ((_sign < (0 : stdgo.GoInt) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/build/constraint/vers.go#L64"
                    return (-1 : stdgo.GoInt);
                };
                //"file:///home/runner/.go/go1.21.3/src/go/build/constraint/vers.go#L66"
                if ((@:checkr _z ?? throw "null pointer dereference").tag == (("go1" : stdgo.GoString))) {
                    //"file:///home/runner/.go/go1.21.3/src/go/build/constraint/vers.go#L67"
                    return (0 : stdgo.GoInt);
                };
                var __tmp__ = stdgo._internal.go.build.constraint.Constraint__stringscut._stringsCut((@:checkr _z ?? throw "null pointer dereference").tag?.__copy__(), ("go1." : stdgo.GoString)), __0:stdgo.GoString = __tmp__._0, _v:stdgo.GoString = __tmp__._1, __1:Bool = __tmp__._2;
                var __tmp__ = stdgo._internal.strconv.Strconv_atoi.atoi(_v?.__copy__()), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                //"file:///home/runner/.go/go1.21.3/src/go/build/constraint/vers.go#L71"
                if (_err != null) {
                    //"file:///home/runner/.go/go1.21.3/src/go/build/constraint/vers.go#L73"
                    return (-1 : stdgo.GoInt);
                };
                //"file:///home/runner/.go/go1.21.3/src/go/build/constraint/vers.go#L75"
                return _n;
            } else {
                var _z:stdgo._internal.go.build.constraint.Constraint_expr.Expr = __type__ == null ? (null : stdgo._internal.go.build.constraint.Constraint_expr.Expr) : cast __type__;
                //"file:///home/runner/.go/go1.21.3/src/go/build/constraint/vers.go#L46"
                return (-1 : stdgo.GoInt);
            };
        };
    }
