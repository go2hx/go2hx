package stdgo._internal.encoding.gob;
@:structInit @:using(stdgo._internal.encoding.gob.Gob_ArrayStruct_static_extension.ArrayStruct_static_extension) class ArrayStruct {
    public var _a : stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(8192, 8192, ...[for (i in 0 ... 8192) (0 : stdgo.GoUInt8)]);
    public function new(?_a:stdgo.GoArray<stdgo.GoUInt8>) {
        if (_a != null) this._a = _a;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new ArrayStruct(_a);
    }
}
