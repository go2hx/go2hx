package stdgo._internal.go.build;
@:structInit @:using(stdgo._internal.go.build.Build_nogoerror_static_extension.NoGoError_static_extension) class NoGoError {
    public var dir : stdgo.GoString = "";
    public function new(?dir:stdgo.GoString) {
        if (dir != null) this.dir = dir;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new NoGoError(dir);
    }
}
