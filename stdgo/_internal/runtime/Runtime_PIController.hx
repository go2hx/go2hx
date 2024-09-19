package stdgo._internal.runtime;
@:structInit @:using(stdgo._internal.runtime.Runtime_PIController_static_extension.PIController_static_extension) class PIController {
    public function new() {}
    public function __underlying__() return stdgo.Go.toInterface(this);
    @:embedded
    public function _next(_input:stdgo.GoFloat64, _setpoint:stdgo.GoFloat64, _period:stdgo.GoFloat64):{ var _0 : stdgo.GoFloat64; var _1 : Bool; } return this.new._next(_input, _setpoint, _period);
    @:embedded
    public function _reset() this.new._reset();
    public function __copy__() {
        return new PIController();
    }
}
