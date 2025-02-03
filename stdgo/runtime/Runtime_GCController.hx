package stdgo.runtime;
@:structInit @:using(stdgo.runtime.Runtime.GCController_static_extension) abstract GCController(stdgo._internal.runtime.Runtime_GCController.GCController) from stdgo._internal.runtime.Runtime_GCController.GCController to stdgo._internal.runtime.Runtime_GCController.GCController {
    public function new() this = new stdgo._internal.runtime.Runtime_GCController.GCController();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
