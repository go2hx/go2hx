package stdgo._internal.time;
@:structInit @:using(stdgo._internal.time.Time_t_dataio_static_extension.T_dataIO_static_extension) class T_dataIO {
    public var _p : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _error : Bool = false;
    public function new(?_p:stdgo.Slice<stdgo.GoUInt8>, ?_error:Bool) {
        if (_p != null) this._p = _p;
        if (_error != null) this._error = _error;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_dataIO(_p, _error);
    }
}
