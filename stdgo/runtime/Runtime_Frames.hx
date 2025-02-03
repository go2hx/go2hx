package stdgo.runtime;
@:structInit @:using(stdgo.runtime.Runtime.Frames_static_extension) abstract Frames(stdgo._internal.runtime.Runtime_Frames.Frames) from stdgo._internal.runtime.Runtime_Frames.Frames to stdgo._internal.runtime.Runtime_Frames.Frames {
    public function new() this = new stdgo._internal.runtime.Runtime_Frames.Frames();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
