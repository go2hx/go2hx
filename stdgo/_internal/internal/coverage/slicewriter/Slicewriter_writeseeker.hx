package stdgo._internal.internal.coverage.slicewriter;
@:structInit @:using(stdgo._internal.internal.coverage.slicewriter.Slicewriter_writeseeker_static_extension.WriteSeeker_static_extension) class WriteSeeker {
    public var _payload : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _off : stdgo.GoInt64 = 0;
    public function new(?_payload:stdgo.Slice<stdgo.GoUInt8>, ?_off:stdgo.GoInt64) {
        if (_payload != null) this._payload = _payload;
        if (_off != null) this._off = _off;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new WriteSeeker(_payload, _off);
    }
}
