package stdgo._internal.go.build.constraint;
@:keep @:allow(stdgo._internal.go.build.constraint.Constraint.AndExpr_asInterface) class AndExpr_static_extension {
    @:keep
    @:tdfield
    static public function string( _x:stdgo.Ref<stdgo._internal.go.build.constraint.Constraint_andexpr.AndExpr>):stdgo.GoString {
        @:recv var _x:stdgo.Ref<stdgo._internal.go.build.constraint.Constraint_andexpr.AndExpr> = _x;
        //"file:///home/runner/.go/go1.21.3/src/go/build/constraint/expr.go#L90"
        return ((stdgo._internal.go.build.constraint.Constraint__andarg._andArg((@:checkr _x ?? throw "null pointer dereference").x) + (" && " : stdgo.GoString)?.__copy__() : stdgo.GoString) + stdgo._internal.go.build.constraint.Constraint__andarg._andArg((@:checkr _x ?? throw "null pointer dereference").y)?.__copy__() : stdgo.GoString)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function eval( _x:stdgo.Ref<stdgo._internal.go.build.constraint.Constraint_andexpr.AndExpr>, _ok:stdgo.GoString -> Bool):Bool {
        @:recv var _x:stdgo.Ref<stdgo._internal.go.build.constraint.Constraint_andexpr.AndExpr> = _x;
        var _xok = ((@:checkr _x ?? throw "null pointer dereference").x.eval(_ok) : Bool);
        var _yok = ((@:checkr _x ?? throw "null pointer dereference").y.eval(_ok) : Bool);
        //"file:///home/runner/.go/go1.21.3/src/go/build/constraint/expr.go#L86"
        return (_xok && _yok : Bool);
    }
    @:keep
    @:tdfield
    static public function _isExpr( _x:stdgo.Ref<stdgo._internal.go.build.constraint.Constraint_andexpr.AndExpr>):Void {
        @:recv var _x:stdgo.Ref<stdgo._internal.go.build.constraint.Constraint_andexpr.AndExpr> = _x;
    }
}
