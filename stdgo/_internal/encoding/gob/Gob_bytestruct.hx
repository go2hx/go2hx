package stdgo._internal.encoding.gob;
@:structInit @:using(stdgo._internal.encoding.gob.Gob_bytestruct_static_extension.ByteStruct_static_extension) class ByteStruct {
    public var _a : stdgo.GoUInt8 = 0;
    public function new(?_a:stdgo.GoUInt8) {
        if (_a != null) this._a = _a;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new ByteStruct(_a);
    }
}
