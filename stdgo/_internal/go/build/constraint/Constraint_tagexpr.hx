package stdgo._internal.go.build.constraint;
@:structInit @:using(stdgo._internal.go.build.constraint.Constraint_tagexpr_static_extension.TagExpr_static_extension) class TagExpr {
    public var tag : stdgo.GoString = "";
    public function new(?tag:stdgo.GoString) {
        if (tag != null) this.tag = tag;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new TagExpr(tag);
    }
}
