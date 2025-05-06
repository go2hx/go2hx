package stdgo._internal.go.types;
@:structInit @:using(stdgo._internal.go.types.Types_argumenterror_static_extension.ArgumentError_static_extension) class ArgumentError {
    public var index : stdgo.GoInt = 0;
    public var err : stdgo.Error = (null : stdgo.Error);
    public function new(?index:stdgo.GoInt, ?err:stdgo.Error) {
        if (index != null) this.index = index;
        if (err != null) this.err = err;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new ArgumentError(index, err);
    }
}
