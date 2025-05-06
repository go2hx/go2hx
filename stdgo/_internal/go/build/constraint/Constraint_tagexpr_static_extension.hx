package stdgo._internal.go.build.constraint;
@:keep @:allow(stdgo._internal.go.build.constraint.Constraint.TagExpr_asInterface) class TagExpr_static_extension {
    @:keep
    @:tdfield
    static public function string( _x:stdgo.Ref<stdgo._internal.go.build.constraint.Constraint_tagexpr.TagExpr>):stdgo.GoString {
        @:recv var _x:stdgo.Ref<stdgo._internal.go.build.constraint.Constraint_tagexpr.TagExpr> = _x;
        //"file:///home/runner/.go/go1.21.3/src/go/build/constraint/expr.go#L48"
        return (@:checkr _x ?? throw "null pointer dereference").tag?.__copy__();
    }
    @:keep
    @:tdfield
    static public function eval( _x:stdgo.Ref<stdgo._internal.go.build.constraint.Constraint_tagexpr.TagExpr>, _ok:stdgo.GoString -> Bool):Bool {
        @:recv var _x:stdgo.Ref<stdgo._internal.go.build.constraint.Constraint_tagexpr.TagExpr> = _x;
        //"file:///home/runner/.go/go1.21.3/src/go/build/constraint/expr.go#L44"
        return _ok((@:checkr _x ?? throw "null pointer dereference").tag?.__copy__());
    }
    @:keep
    @:tdfield
    static public function _isExpr( _x:stdgo.Ref<stdgo._internal.go.build.constraint.Constraint_tagexpr.TagExpr>):Void {
        @:recv var _x:stdgo.Ref<stdgo._internal.go.build.constraint.Constraint_tagexpr.TagExpr> = _x;
    }
}
