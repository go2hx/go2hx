package stdgo._internal.go.build.constraint;
@:structInit @:using(stdgo._internal.go.build.constraint.Constraint_syntaxerror_static_extension.SyntaxError_static_extension) class SyntaxError {
    public var offset : stdgo.GoInt = 0;
    public var err : stdgo.GoString = "";
    public function new(?offset:stdgo.GoInt, ?err:stdgo.GoString) {
        if (offset != null) this.offset = offset;
        if (err != null) this.err = err;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new SyntaxError(offset, err);
    }
}
