package stdgo.runtime;
@:structInit @:using(stdgo.runtime.Runtime.PIController_static_extension) abstract PIController(stdgo._internal.runtime.Runtime_PIController.PIController) from stdgo._internal.runtime.Runtime_PIController.PIController to stdgo._internal.runtime.Runtime_PIController.PIController {
    public function new() this = new stdgo._internal.runtime.Runtime_PIController.PIController();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
