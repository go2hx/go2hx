package stdgo._internal.encoding.binary;
@:structInit @:using(stdgo._internal.encoding.binary.Binary_T_nativeEndian_static_extension.T_nativeEndian_static_extension) class T_nativeEndian {
    @:embedded
    public var _littleEndian : stdgo._internal.encoding.binary.Binary_T_littleEndian.T_littleEndian = ({} : stdgo._internal.encoding.binary.Binary_T_littleEndian.T_littleEndian);
    public function new(?_littleEndian:stdgo._internal.encoding.binary.Binary_T_littleEndian.T_littleEndian) {
        if (_littleEndian != null) this._littleEndian = _littleEndian;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    @:embedded
    public function appendUint16(__0:stdgo.Slice<stdgo.GoUInt8>, __1:stdgo.GoUInt16):stdgo.Slice<stdgo.GoUInt8> return this._littleEndian.appendUint16(__0, __1);
    @:embedded
    public function appendUint32(__0:stdgo.Slice<stdgo.GoUInt8>, __1:stdgo.GoUInt32):stdgo.Slice<stdgo.GoUInt8> return this._littleEndian.appendUint32(__0, __1);
    @:embedded
    public function appendUint64(__0:stdgo.Slice<stdgo.GoUInt8>, __1:stdgo.GoUInt64):stdgo.Slice<stdgo.GoUInt8> return this._littleEndian.appendUint64(__0, __1);
    @:embedded
    public function putUint16(__0:stdgo.Slice<stdgo.GoUInt8>, __1:stdgo.GoUInt16) this._littleEndian.putUint16(__0, __1);
    @:embedded
    public function putUint32(__0:stdgo.Slice<stdgo.GoUInt8>, __1:stdgo.GoUInt32) this._littleEndian.putUint32(__0, __1);
    @:embedded
    public function putUint64(__0:stdgo.Slice<stdgo.GoUInt8>, __1:stdgo.GoUInt64) this._littleEndian.putUint64(__0, __1);
    @:embedded
    public function uint16(__0:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoUInt16 return this._littleEndian.uint16(__0);
    @:embedded
    public function uint32(__0:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoUInt32 return this._littleEndian.uint32(__0);
    @:embedded
    public function uint64(__0:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoUInt64 return this._littleEndian.uint64(__0);
    public function __copy__() {
        return new T_nativeEndian(_littleEndian);
    }
}
