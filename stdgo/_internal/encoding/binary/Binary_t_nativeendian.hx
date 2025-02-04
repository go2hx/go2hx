package stdgo._internal.encoding.binary;
@:structInit @:using(stdgo._internal.encoding.binary.Binary_t_nativeendian_static_extension.T_nativeEndian_static_extension) class T_nativeEndian {
    @:embedded
    public var _littleEndian : stdgo._internal.encoding.binary.Binary_t_littleendian.T_littleEndian = ({} : stdgo._internal.encoding.binary.Binary_t_littleendian.T_littleEndian);
    public function new(?_littleEndian:stdgo._internal.encoding.binary.Binary_t_littleendian.T_littleEndian) {
        if (_littleEndian != null) this._littleEndian = _littleEndian;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public var appendUint16(get, never) : (stdgo.Slice<stdgo.GoUInt8>, stdgo.GoUInt16) -> stdgo.Slice<stdgo.GoUInt8>;
    @:embedded
    @:embeddededffieldsffun
    public function get_appendUint16():(stdgo.Slice<stdgo.GoUInt8>, stdgo.GoUInt16) -> stdgo.Slice<stdgo.GoUInt8> return @:check31 (this._littleEndian ?? throw "null pointer dereference").appendUint16;
    public var appendUint32(get, never) : (stdgo.Slice<stdgo.GoUInt8>, stdgo.GoUInt32) -> stdgo.Slice<stdgo.GoUInt8>;
    @:embedded
    @:embeddededffieldsffun
    public function get_appendUint32():(stdgo.Slice<stdgo.GoUInt8>, stdgo.GoUInt32) -> stdgo.Slice<stdgo.GoUInt8> return @:check31 (this._littleEndian ?? throw "null pointer dereference").appendUint32;
    public var appendUint64(get, never) : (stdgo.Slice<stdgo.GoUInt8>, stdgo.GoUInt64) -> stdgo.Slice<stdgo.GoUInt8>;
    @:embedded
    @:embeddededffieldsffun
    public function get_appendUint64():(stdgo.Slice<stdgo.GoUInt8>, stdgo.GoUInt64) -> stdgo.Slice<stdgo.GoUInt8> return @:check31 (this._littleEndian ?? throw "null pointer dereference").appendUint64;
    public var putUint16(get, never) : (stdgo.Slice<stdgo.GoUInt8>, stdgo.GoUInt16) -> Void;
    @:embedded
    @:embeddededffieldsffun
    public function get_putUint16():(stdgo.Slice<stdgo.GoUInt8>, stdgo.GoUInt16) -> Void return @:check31 (this._littleEndian ?? throw "null pointer dereference").putUint16;
    public var putUint32(get, never) : (stdgo.Slice<stdgo.GoUInt8>, stdgo.GoUInt32) -> Void;
    @:embedded
    @:embeddededffieldsffun
    public function get_putUint32():(stdgo.Slice<stdgo.GoUInt8>, stdgo.GoUInt32) -> Void return @:check31 (this._littleEndian ?? throw "null pointer dereference").putUint32;
    public var putUint64(get, never) : (stdgo.Slice<stdgo.GoUInt8>, stdgo.GoUInt64) -> Void;
    @:embedded
    @:embeddededffieldsffun
    public function get_putUint64():(stdgo.Slice<stdgo.GoUInt8>, stdgo.GoUInt64) -> Void return @:check31 (this._littleEndian ?? throw "null pointer dereference").putUint64;
    public var uint16(get, never) : stdgo.Slice<stdgo.GoUInt8> -> stdgo.GoUInt16;
    @:embedded
    @:embeddededffieldsffun
    public function get_uint16():stdgo.Slice<stdgo.GoUInt8> -> stdgo.GoUInt16 return @:check31 (this._littleEndian ?? throw "null pointer dereference").uint16;
    public var uint32(get, never) : stdgo.Slice<stdgo.GoUInt8> -> stdgo.GoUInt32;
    @:embedded
    @:embeddededffieldsffun
    public function get_uint32():stdgo.Slice<stdgo.GoUInt8> -> stdgo.GoUInt32 return @:check31 (this._littleEndian ?? throw "null pointer dereference").uint32;
    public var uint64(get, never) : stdgo.Slice<stdgo.GoUInt8> -> stdgo.GoUInt64;
    @:embedded
    @:embeddededffieldsffun
    public function get_uint64():stdgo.Slice<stdgo.GoUInt8> -> stdgo.GoUInt64 return @:check31 (this._littleEndian ?? throw "null pointer dereference").uint64;
    public function __copy__() {
        return new T_nativeEndian(_littleEndian);
    }
}
