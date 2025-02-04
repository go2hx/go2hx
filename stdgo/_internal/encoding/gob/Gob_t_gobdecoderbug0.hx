package stdgo._internal.encoding.gob;
@:structInit @:using(stdgo._internal.encoding.gob.Gob_t_gobdecoderbug0_static_extension.T_gobDecoderBug0_static_extension) class T_gobDecoderBug0 {
    public var _foo : stdgo.GoString = "";
    public var _bar : stdgo.GoString = "";
    public function new(?_foo:stdgo.GoString, ?_bar:stdgo.GoString) {
        if (_foo != null) this._foo = _foo;
        if (_bar != null) this._bar = _bar;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_gobDecoderBug0(_foo, _bar);
    }
}
