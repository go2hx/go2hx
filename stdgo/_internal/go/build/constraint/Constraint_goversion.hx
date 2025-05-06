package stdgo._internal.go.build.constraint;
function goVersion(_x:stdgo._internal.go.build.constraint.Constraint_expr.Expr):stdgo.GoString {
        var _v = (stdgo._internal.go.build.constraint.Constraint__minversion._minVersion(_x, (1 : stdgo.GoInt)) : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/go/build/constraint/vers.go#L32"
        if ((_v < (0 : stdgo.GoInt) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/go/build/constraint/vers.go#L33"
            return (stdgo.Go.str() : stdgo.GoString)?.__copy__();
        };
        //"file:///home/runner/.go/go1.21.3/src/go/build/constraint/vers.go#L35"
        if (_v == ((0 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/go/build/constraint/vers.go#L36"
            return ("go1" : stdgo.GoString);
        };
        //"file:///home/runner/.go/go1.21.3/src/go/build/constraint/vers.go#L38"
        return (("go1." : stdgo.GoString) + stdgo._internal.strconv.Strconv_itoa.itoa(_v)?.__copy__() : stdgo.GoString)?.__copy__();
    }
