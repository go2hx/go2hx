package stdgo._internal.runtime;
@:structInit @:using(stdgo._internal.runtime.Runtime_picontroller_static_extension.PIController_static_extension) class PIController {
    @:embedded
    public var _piController : stdgo._internal.runtime.Runtime_t_picontroller.T_piController = ({} : stdgo._internal.runtime.Runtime_t_picontroller.T_piController);
    public function new(?_piController:stdgo._internal.runtime.Runtime_t_picontroller.T_piController) {
        if (_piController != null) this._piController = _piController;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public var _next(get, never) : (stdgo.GoFloat64, stdgo.GoFloat64, stdgo.GoFloat64) -> { var _0 : stdgo.GoFloat64; var _1 : Bool; };
    @:embedded
    @:embeddededffieldsffun
    public function get__next():(stdgo.GoFloat64, stdgo.GoFloat64, stdgo.GoFloat64) -> { var _0 : stdgo.GoFloat64; var _1 : Bool; } return @:check32 this._piController._next;
    public var _reset(get, never) : () -> Void;
    @:embedded
    @:embeddededffieldsffun
    public function get__reset():() -> Void return @:check32 this._piController._reset;
    public function __copy__() {
        return new PIController(_piController);
    }
}
