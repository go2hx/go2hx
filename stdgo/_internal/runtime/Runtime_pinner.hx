package stdgo._internal.runtime;
@:structInit @:using(stdgo._internal.runtime.Runtime_pinner_static_extension.Pinner_static_extension) class Pinner {
    public function new() {}
    public function __underlying__() return stdgo.Go.toInterface(this);
    public var _unpin(get, never) : () -> Void;
    @:embedded
    @:embeddededffieldsffun
    public function get__unpin():() -> Void return @:check32 this.new._unpin;
    public function __copy__() {
        return new Pinner();
    }
}
