package stdgo._internal.go.build.constraint;
function isGoBuild(_line:stdgo.GoString):Bool {
        var __tmp__ = stdgo._internal.go.build.constraint.Constraint__splitgobuild._splitGoBuild(_line?.__copy__()), __0:stdgo.GoString = __tmp__._0, _ok:Bool = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/go/build/constraint/expr.go#L163"
        return _ok;
    }
