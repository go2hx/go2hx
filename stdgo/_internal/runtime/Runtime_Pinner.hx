package stdgo._internal.runtime;
@:structInit @:using(stdgo._internal.runtime.Runtime_Pinner_static_extension.Pinner_static_extension) class Pinner {
    public function new() {}
    public function __underlying__() return stdgo.Go.toInterface(this);
    @:embedded
    public function _unpin() this.new._unpin();
    public function __copy__() {
        return new Pinner();
    }
}
