package stdgo._internal.runtime;
@:structInit @:using(stdgo._internal.runtime.Runtime_Pinner_static_extension.Pinner_static_extension) class Pinner {
    public function new() {}
    public function __underlying__() return stdgo.Go.toInterface(this);
    public var _unpin(get, never) : () -> Void;
    @:embedded
    @:embeddededffieldsffun
    public function get__unpin():() -> Void return @:check3 (this.new ?? throw "null pointer derefrence")._unpin;
    public function __copy__() {
        return new Pinner();
    }
}
