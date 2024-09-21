package _internal.vendor.golang_dot_org.x.crypto.cryptobyte;
@:structInit class BuildError {
    public var err : stdgo.Error = (null : stdgo.Error);
    public function new(?err:stdgo.Error) {
        if (err != null) this.err = err;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new BuildError(err);
    }
}
