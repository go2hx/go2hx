package stdgo._internal.encoding.gob;
@:structInit @:using(stdgo._internal.encoding.gob.Gob_basicinterfaceitem_static_extension.BasicInterfaceItem_static_extension) class BasicInterfaceItem {
    public var int_ : stdgo.AnyInterface = (null : stdgo.AnyInterface);
    public var int8 : stdgo.AnyInterface = (null : stdgo.AnyInterface);
    public var int16 : stdgo.AnyInterface = (null : stdgo.AnyInterface);
    public var int32 : stdgo.AnyInterface = (null : stdgo.AnyInterface);
    public var int64 : stdgo.AnyInterface = (null : stdgo.AnyInterface);
    public var uint : stdgo.AnyInterface = (null : stdgo.AnyInterface);
    public var uint8 : stdgo.AnyInterface = (null : stdgo.AnyInterface);
    public var uint16 : stdgo.AnyInterface = (null : stdgo.AnyInterface);
    public var uint32 : stdgo.AnyInterface = (null : stdgo.AnyInterface);
    public var uint64 : stdgo.AnyInterface = (null : stdgo.AnyInterface);
    public var float32 : stdgo.AnyInterface = (null : stdgo.AnyInterface);
    public var float64 : stdgo.AnyInterface = (null : stdgo.AnyInterface);
    public var complex64 : stdgo.AnyInterface = (null : stdgo.AnyInterface);
    public var complex128 : stdgo.AnyInterface = (null : stdgo.AnyInterface);
    public var bool_ : stdgo.AnyInterface = (null : stdgo.AnyInterface);
    public var string : stdgo.AnyInterface = (null : stdgo.AnyInterface);
    public var bytes : stdgo.AnyInterface = (null : stdgo.AnyInterface);
    public function new(?int_:stdgo.AnyInterface, ?int8:stdgo.AnyInterface, ?int16:stdgo.AnyInterface, ?int32:stdgo.AnyInterface, ?int64:stdgo.AnyInterface, ?uint:stdgo.AnyInterface, ?uint8:stdgo.AnyInterface, ?uint16:stdgo.AnyInterface, ?uint32:stdgo.AnyInterface, ?uint64:stdgo.AnyInterface, ?float32:stdgo.AnyInterface, ?float64:stdgo.AnyInterface, ?complex64:stdgo.AnyInterface, ?complex128:stdgo.AnyInterface, ?bool_:stdgo.AnyInterface, ?string:stdgo.AnyInterface, ?bytes:stdgo.AnyInterface) {
        if (int_ != null) this.int_ = int_;
        if (int8 != null) this.int8 = int8;
        if (int16 != null) this.int16 = int16;
        if (int32 != null) this.int32 = int32;
        if (int64 != null) this.int64 = int64;
        if (uint != null) this.uint = uint;
        if (uint8 != null) this.uint8 = uint8;
        if (uint16 != null) this.uint16 = uint16;
        if (uint32 != null) this.uint32 = uint32;
        if (uint64 != null) this.uint64 = uint64;
        if (float32 != null) this.float32 = float32;
        if (float64 != null) this.float64 = float64;
        if (complex64 != null) this.complex64 = complex64;
        if (complex128 != null) this.complex128 = complex128;
        if (bool_ != null) this.bool_ = bool_;
        if (string != null) this.string = string;
        if (bytes != null) this.bytes = bytes;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new BasicInterfaceItem(
int_,
int8,
int16,
int32,
int64,
uint,
uint8,
uint16,
uint32,
uint64,
float32,
float64,
complex64,
complex128,
bool_,
string,
bytes);
    }
}
