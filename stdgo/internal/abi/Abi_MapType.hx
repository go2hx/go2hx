package stdgo.internal.abi;
@:structInit @:using(stdgo.internal.abi.Abi.MapType_static_extension) abstract MapType(stdgo._internal.internal.abi.Abi_MapType.MapType) from stdgo._internal.internal.abi.Abi_MapType.MapType to stdgo._internal.internal.abi.Abi_MapType.MapType {
    public var type(get, set) : Type_;
    function get_type():Type_ return this.type;
    function set_type(v:Type_):Type_ {
        this.type = v;
        return v;
    }
    public var key(get, set) : Type_;
    function get_key():Type_ return this.key;
    function set_key(v:Type_):Type_ {
        this.key = (v : stdgo.Ref<stdgo._internal.internal.abi.Abi_Type_.Type_>);
        return v;
    }
    public var elem(get, set) : Type_;
    function get_elem():Type_ return this.elem;
    function set_elem(v:Type_):Type_ {
        this.elem = (v : stdgo.Ref<stdgo._internal.internal.abi.Abi_Type_.Type_>);
        return v;
    }
    public var bucket(get, set) : Type_;
    function get_bucket():Type_ return this.bucket;
    function set_bucket(v:Type_):Type_ {
        this.bucket = (v : stdgo.Ref<stdgo._internal.internal.abi.Abi_Type_.Type_>);
        return v;
    }
    public var hasher(get, set) : (stdgo._internal.unsafe.Unsafe.UnsafePointer, stdgo.GoUIntptr) -> stdgo.GoUIntptr;
    function get_hasher():(stdgo._internal.unsafe.Unsafe.UnsafePointer, stdgo.GoUIntptr) -> stdgo.GoUIntptr return (_0, _1) -> this.hasher(_0, _1);
    function set_hasher(v:(stdgo._internal.unsafe.Unsafe.UnsafePointer, stdgo.GoUIntptr) -> stdgo.GoUIntptr):(stdgo._internal.unsafe.Unsafe.UnsafePointer, stdgo.GoUIntptr) -> stdgo.GoUIntptr {
        this.hasher = v;
        return v;
    }
    public var keySize(get, set) : std.UInt;
    function get_keySize():std.UInt return this.keySize;
    function set_keySize(v:std.UInt):std.UInt {
        this.keySize = (v : stdgo.GoUInt8);
        return v;
    }
    public var valueSize(get, set) : std.UInt;
    function get_valueSize():std.UInt return this.valueSize;
    function set_valueSize(v:std.UInt):std.UInt {
        this.valueSize = (v : stdgo.GoUInt8);
        return v;
    }
    public var bucketSize(get, set) : std.UInt;
    function get_bucketSize():std.UInt return this.bucketSize;
    function set_bucketSize(v:std.UInt):std.UInt {
        this.bucketSize = (v : stdgo.GoUInt16);
        return v;
    }
    public var flags(get, set) : std.UInt;
    function get_flags():std.UInt return this.flags;
    function set_flags(v:std.UInt):std.UInt {
        this.flags = (v : stdgo.GoUInt32);
        return v;
    }
    public function new(?type:Type_, ?key:Type_, ?elem:Type_, ?bucket:Type_, ?hasher:(stdgo._internal.unsafe.Unsafe.UnsafePointer, stdgo.GoUIntptr) -> stdgo.GoUIntptr, ?keySize:std.UInt, ?valueSize:std.UInt, ?bucketSize:std.UInt, ?flags:std.UInt) this = new stdgo._internal.internal.abi.Abi_MapType.MapType(type, (key : stdgo.Ref<stdgo._internal.internal.abi.Abi_Type_.Type_>), (elem : stdgo.Ref<stdgo._internal.internal.abi.Abi_Type_.Type_>), (bucket : stdgo.Ref<stdgo._internal.internal.abi.Abi_Type_.Type_>), hasher, (keySize : stdgo.GoUInt8), (valueSize : stdgo.GoUInt8), (bucketSize : stdgo.GoUInt16), (flags : stdgo.GoUInt32));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
