package stdgo._internal.internal.abi;
@:structInit @:using(stdgo._internal.internal.abi.Abi_type__static_extension.Type__static_extension) class Type_ {
    public var size_ : stdgo.GoUIntptr = new stdgo.GoUIntptr(0);
    public var ptrBytes : stdgo.GoUIntptr = new stdgo.GoUIntptr(0);
    public var hash : stdgo.GoUInt32 = 0;
    public var tFlag : stdgo._internal.internal.abi.Abi_tflag.TFlag = ((0 : stdgo.GoUInt8) : stdgo._internal.internal.abi.Abi_tflag.TFlag);
    public var align_ : stdgo.GoUInt8 = 0;
    public var fieldAlign_ : stdgo.GoUInt8 = 0;
    public var kind_ : stdgo.GoUInt8 = 0;
    public var equal : (stdgo._internal.unsafe.Unsafe.UnsafePointer, stdgo._internal.unsafe.Unsafe.UnsafePointer) -> Bool = null;
    public var gCData : stdgo.Pointer<stdgo.GoUInt8> = (null : stdgo.Pointer<stdgo.GoUInt8>);
    public var str : stdgo._internal.internal.abi.Abi_nameoff.NameOff = ((0 : stdgo.GoInt32) : stdgo._internal.internal.abi.Abi_nameoff.NameOff);
    public var ptrToThis : stdgo._internal.internal.abi.Abi_typeoff.TypeOff = ((0 : stdgo.GoInt32) : stdgo._internal.internal.abi.Abi_typeoff.TypeOff);
    public function new(?size_:stdgo.GoUIntptr, ?ptrBytes:stdgo.GoUIntptr, ?hash:stdgo.GoUInt32, ?tFlag:stdgo._internal.internal.abi.Abi_tflag.TFlag, ?align_:stdgo.GoUInt8, ?fieldAlign_:stdgo.GoUInt8, ?kind_:stdgo.GoUInt8, ?equal:(stdgo._internal.unsafe.Unsafe.UnsafePointer, stdgo._internal.unsafe.Unsafe.UnsafePointer) -> Bool, ?gCData:stdgo.Pointer<stdgo.GoUInt8>, ?str:stdgo._internal.internal.abi.Abi_nameoff.NameOff, ?ptrToThis:stdgo._internal.internal.abi.Abi_typeoff.TypeOff) {
        if (size_ != null) this.size_ = size_;
        if (ptrBytes != null) this.ptrBytes = ptrBytes;
        if (hash != null) this.hash = hash;
        if (tFlag != null) this.tFlag = tFlag;
        if (align_ != null) this.align_ = align_;
        if (fieldAlign_ != null) this.fieldAlign_ = fieldAlign_;
        if (kind_ != null) this.kind_ = kind_;
        if (equal != null) this.equal = equal;
        if (gCData != null) this.gCData = gCData;
        if (str != null) this.str = str;
        if (ptrToThis != null) this.ptrToThis = ptrToThis;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Type_(
size_,
ptrBytes,
hash,
tFlag,
align_,
fieldAlign_,
kind_,
equal,
gCData,
str,
ptrToThis);
    }
}
