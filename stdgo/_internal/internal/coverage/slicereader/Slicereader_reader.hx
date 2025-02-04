package stdgo._internal.internal.coverage.slicereader;
@:structInit @:using(stdgo._internal.internal.coverage.slicereader.Slicereader_reader_static_extension.Reader_static_extension) class Reader {
    public var _b : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _readonly : Bool = false;
    public var _off : stdgo.GoInt64 = 0;
    public function new(?_b:stdgo.Slice<stdgo.GoUInt8>, ?_readonly:Bool, ?_off:stdgo.GoInt64) {
        if (_b != null) this._b = _b;
        if (_readonly != null) this._readonly = _readonly;
        if (_off != null) this._off = _off;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Reader(_b, _readonly, _off);
    }
}
