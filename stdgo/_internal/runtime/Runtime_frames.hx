package stdgo._internal.runtime;
@:structInit @:using(stdgo._internal.runtime.Runtime_frames_static_extension.Frames_static_extension) class Frames {
    public function new() {}
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Frames();
    }
}
