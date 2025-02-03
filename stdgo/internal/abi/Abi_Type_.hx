package stdgo.internal.abi;
@:structInit @:using(stdgo.internal.abi.Abi.Type__static_extension) abstract Type_(stdgo._internal.internal.abi.Abi_Type_.Type_) from stdgo._internal.internal.abi.Abi_Type_.Type_ to stdgo._internal.internal.abi.Abi_Type_.Type_ {
    public var size_(get, set) : stdgo.GoUIntptr;
    function get_size_():stdgo.GoUIntptr return this.size_;
    function set_size_(v:stdgo.GoUIntptr):stdgo.GoUIntptr {
        this.size_ = (v : stdgo.GoUIntptr);
        return v;
    }
    public var ptrBytes(get, set) : stdgo.GoUIntptr;
    function get_ptrBytes():stdgo.GoUIntptr return this.ptrBytes;
    function set_ptrBytes(v:stdgo.GoUIntptr):stdgo.GoUIntptr {
        this.ptrBytes = (v : stdgo.GoUIntptr);
        return v;
    }
    public var hash(get, set) : std.UInt;
    function get_hash():std.UInt return this.hash;
    function set_hash(v:std.UInt):std.UInt {
        this.hash = (v : stdgo.GoUInt32);
        return v;
    }
    public var tFlag(get, set) : TFlag;
    function get_tFlag():TFlag return this.tFlag;
    function set_tFlag(v:TFlag):TFlag {
        this.tFlag = v;
        return v;
    }
    public var align_(get, set) : std.UInt;
    function get_align_():std.UInt return this.align_;
    function set_align_(v:std.UInt):std.UInt {
        this.align_ = (v : stdgo.GoUInt8);
        return v;
    }
    public var fieldAlign_(get, set) : std.UInt;
    function get_fieldAlign_():std.UInt return this.fieldAlign_;
    function set_fieldAlign_(v:std.UInt):std.UInt {
        this.fieldAlign_ = (v : stdgo.GoUInt8);
        return v;
    }
    public var kind_(get, set) : std.UInt;
    function get_kind_():std.UInt return this.kind_;
    function set_kind_(v:std.UInt):std.UInt {
        this.kind_ = (v : stdgo.GoUInt8);
        return v;
    }
    public var equal(get, set) : (stdgo._internal.unsafe.Unsafe.UnsafePointer, stdgo._internal.unsafe.Unsafe.UnsafePointer) -> Bool;
    function get_equal():(stdgo._internal.unsafe.Unsafe.UnsafePointer, stdgo._internal.unsafe.Unsafe.UnsafePointer) -> Bool return (_0, _1) -> this.equal(_0, _1);
    function set_equal(v:(stdgo._internal.unsafe.Unsafe.UnsafePointer, stdgo._internal.unsafe.Unsafe.UnsafePointer) -> Bool):(stdgo._internal.unsafe.Unsafe.UnsafePointer, stdgo._internal.unsafe.Unsafe.UnsafePointer) -> Bool {
        this.equal = v;
        return v;
    }
    public var gCData(get, set) : stdgo.Pointer<std.UInt>;
    function get_gCData():stdgo.Pointer<std.UInt> return this.gCData;
    function set_gCData(v:stdgo.Pointer<std.UInt>):stdgo.Pointer<std.UInt> {
        this.gCData = v;
        return v;
    }
    public var str(get, set) : NameOff;
    function get_str():NameOff return this.str;
    function set_str(v:NameOff):NameOff {
        this.str = v;
        return v;
    }
    public var ptrToThis(get, set) : TypeOff;
    function get_ptrToThis():TypeOff return this.ptrToThis;
    function set_ptrToThis(v:TypeOff):TypeOff {
        this.ptrToThis = v;
        return v;
    }
    public function new(?size_:stdgo.GoUIntptr, ?ptrBytes:stdgo.GoUIntptr, ?hash:std.UInt, ?tFlag:TFlag, ?align_:std.UInt, ?fieldAlign_:std.UInt, ?kind_:std.UInt, ?equal:(stdgo._internal.unsafe.Unsafe.UnsafePointer, stdgo._internal.unsafe.Unsafe.UnsafePointer) -> Bool, ?gCData:stdgo.Pointer<std.UInt>, ?str:NameOff, ?ptrToThis:TypeOff) this = new stdgo._internal.internal.abi.Abi_Type_.Type_(
(size_ : stdgo.GoUIntptr),
(ptrBytes : stdgo.GoUIntptr),
(hash : stdgo.GoUInt32),
tFlag,
(align_ : stdgo.GoUInt8),
(fieldAlign_ : stdgo.GoUInt8),
(kind_ : stdgo.GoUInt8),
equal,
gCData,
str,
ptrToThis);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
