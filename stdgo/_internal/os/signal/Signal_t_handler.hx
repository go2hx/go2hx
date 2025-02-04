package stdgo._internal.os.signal;
@:structInit @:using(stdgo._internal.os.signal.Signal_t_handler_static_extension.T_handler_static_extension) class T_handler {
    public var _mask : stdgo.GoArray<stdgo.GoUInt32> = new stdgo.GoArray<stdgo.GoUInt32>(3, 3).__setNumber32__();
    public function new(?_mask:stdgo.GoArray<stdgo.GoUInt32>) {
        if (_mask != null) this._mask = _mask;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_handler(_mask);
    }
}
