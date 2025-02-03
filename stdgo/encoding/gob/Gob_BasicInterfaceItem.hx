package stdgo.encoding.gob;
@:structInit @:using(stdgo.encoding.gob.Gob.BasicInterfaceItem_static_extension) abstract BasicInterfaceItem(stdgo._internal.encoding.gob.Gob_BasicInterfaceItem.BasicInterfaceItem) from stdgo._internal.encoding.gob.Gob_BasicInterfaceItem.BasicInterfaceItem to stdgo._internal.encoding.gob.Gob_BasicInterfaceItem.BasicInterfaceItem {
    public var int_(get, set) : stdgo.AnyInterface;
    function get_int_():stdgo.AnyInterface return this.int_;
    function set_int_(v:stdgo.AnyInterface):stdgo.AnyInterface {
        this.int_ = (v : stdgo.AnyInterface);
        return v;
    }
    public var int8(get, set) : stdgo.AnyInterface;
    function get_int8():stdgo.AnyInterface return this.int8;
    function set_int8(v:stdgo.AnyInterface):stdgo.AnyInterface {
        this.int8 = (v : stdgo.AnyInterface);
        return v;
    }
    public var int16(get, set) : stdgo.AnyInterface;
    function get_int16():stdgo.AnyInterface return this.int16;
    function set_int16(v:stdgo.AnyInterface):stdgo.AnyInterface {
        this.int16 = (v : stdgo.AnyInterface);
        return v;
    }
    public var int32(get, set) : stdgo.AnyInterface;
    function get_int32():stdgo.AnyInterface return this.int32;
    function set_int32(v:stdgo.AnyInterface):stdgo.AnyInterface {
        this.int32 = (v : stdgo.AnyInterface);
        return v;
    }
    public var int64(get, set) : stdgo.AnyInterface;
    function get_int64():stdgo.AnyInterface return this.int64;
    function set_int64(v:stdgo.AnyInterface):stdgo.AnyInterface {
        this.int64 = (v : stdgo.AnyInterface);
        return v;
    }
    public var uint(get, set) : stdgo.AnyInterface;
    function get_uint():stdgo.AnyInterface return this.uint;
    function set_uint(v:stdgo.AnyInterface):stdgo.AnyInterface {
        this.uint = (v : stdgo.AnyInterface);
        return v;
    }
    public var uint8(get, set) : stdgo.AnyInterface;
    function get_uint8():stdgo.AnyInterface return this.uint8;
    function set_uint8(v:stdgo.AnyInterface):stdgo.AnyInterface {
        this.uint8 = (v : stdgo.AnyInterface);
        return v;
    }
    public var uint16(get, set) : stdgo.AnyInterface;
    function get_uint16():stdgo.AnyInterface return this.uint16;
    function set_uint16(v:stdgo.AnyInterface):stdgo.AnyInterface {
        this.uint16 = (v : stdgo.AnyInterface);
        return v;
    }
    public var uint32(get, set) : stdgo.AnyInterface;
    function get_uint32():stdgo.AnyInterface return this.uint32;
    function set_uint32(v:stdgo.AnyInterface):stdgo.AnyInterface {
        this.uint32 = (v : stdgo.AnyInterface);
        return v;
    }
    public var uint64(get, set) : stdgo.AnyInterface;
    function get_uint64():stdgo.AnyInterface return this.uint64;
    function set_uint64(v:stdgo.AnyInterface):stdgo.AnyInterface {
        this.uint64 = (v : stdgo.AnyInterface);
        return v;
    }
    public var float32(get, set) : stdgo.AnyInterface;
    function get_float32():stdgo.AnyInterface return this.float32;
    function set_float32(v:stdgo.AnyInterface):stdgo.AnyInterface {
        this.float32 = (v : stdgo.AnyInterface);
        return v;
    }
    public var float64(get, set) : stdgo.AnyInterface;
    function get_float64():stdgo.AnyInterface return this.float64;
    function set_float64(v:stdgo.AnyInterface):stdgo.AnyInterface {
        this.float64 = (v : stdgo.AnyInterface);
        return v;
    }
    public var complex64(get, set) : stdgo.AnyInterface;
    function get_complex64():stdgo.AnyInterface return this.complex64;
    function set_complex64(v:stdgo.AnyInterface):stdgo.AnyInterface {
        this.complex64 = (v : stdgo.AnyInterface);
        return v;
    }
    public var complex128(get, set) : stdgo.AnyInterface;
    function get_complex128():stdgo.AnyInterface return this.complex128;
    function set_complex128(v:stdgo.AnyInterface):stdgo.AnyInterface {
        this.complex128 = (v : stdgo.AnyInterface);
        return v;
    }
    public var bool_(get, set) : stdgo.AnyInterface;
    function get_bool_():stdgo.AnyInterface return this.bool_;
    function set_bool_(v:stdgo.AnyInterface):stdgo.AnyInterface {
        this.bool_ = (v : stdgo.AnyInterface);
        return v;
    }
    public var string(get, set) : stdgo.AnyInterface;
    function get_string():stdgo.AnyInterface return this.string;
    function set_string(v:stdgo.AnyInterface):stdgo.AnyInterface {
        this.string = (v : stdgo.AnyInterface);
        return v;
    }
    public var bytes(get, set) : stdgo.AnyInterface;
    function get_bytes():stdgo.AnyInterface return this.bytes;
    function set_bytes(v:stdgo.AnyInterface):stdgo.AnyInterface {
        this.bytes = (v : stdgo.AnyInterface);
        return v;
    }
    public function new(?int_:stdgo.AnyInterface, ?int8:stdgo.AnyInterface, ?int16:stdgo.AnyInterface, ?int32:stdgo.AnyInterface, ?int64:stdgo.AnyInterface, ?uint:stdgo.AnyInterface, ?uint8:stdgo.AnyInterface, ?uint16:stdgo.AnyInterface, ?uint32:stdgo.AnyInterface, ?uint64:stdgo.AnyInterface, ?float32:stdgo.AnyInterface, ?float64:stdgo.AnyInterface, ?complex64:stdgo.AnyInterface, ?complex128:stdgo.AnyInterface, ?bool_:stdgo.AnyInterface, ?string:stdgo.AnyInterface, ?bytes:stdgo.AnyInterface) this = new stdgo._internal.encoding.gob.Gob_BasicInterfaceItem.BasicInterfaceItem(
(int_ : stdgo.AnyInterface),
(int8 : stdgo.AnyInterface),
(int16 : stdgo.AnyInterface),
(int32 : stdgo.AnyInterface),
(int64 : stdgo.AnyInterface),
(uint : stdgo.AnyInterface),
(uint8 : stdgo.AnyInterface),
(uint16 : stdgo.AnyInterface),
(uint32 : stdgo.AnyInterface),
(uint64 : stdgo.AnyInterface),
(float32 : stdgo.AnyInterface),
(float64 : stdgo.AnyInterface),
(complex64 : stdgo.AnyInterface),
(complex128 : stdgo.AnyInterface),
(bool_ : stdgo.AnyInterface),
(string : stdgo.AnyInterface),
(bytes : stdgo.AnyInterface));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
