package stdgo._internal.encoding.asn1;
import stdgo._internal.math.big.Big;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.time.Time;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.errors.Errors;
import stdgo._internal.unicode.utf16.Utf16;
import stdgo._internal.strings.Strings;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.sort.Sort;
import stdgo._internal.bytes.Bytes;
@:structInit @:using(stdgo._internal.encoding.asn1.Asn1_RawValue_static_extension.RawValue_static_extension) class RawValue {
    public var class_ : stdgo.GoInt = 0;
    public var tag : stdgo.GoInt = 0;
    public var isCompound : Bool = false;
    public var bytes : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var fullBytes : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public function new(?class_:stdgo.GoInt, ?tag:stdgo.GoInt, ?isCompound:Bool, ?bytes:stdgo.Slice<stdgo.GoUInt8>, ?fullBytes:stdgo.Slice<stdgo.GoUInt8>) {
        if (class_ != null) this.class_ = class_;
        if (tag != null) this.tag = tag;
        if (isCompound != null) this.isCompound = isCompound;
        if (bytes != null) this.bytes = bytes;
        if (fullBytes != null) this.fullBytes = fullBytes;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new RawValue(class_, tag, isCompound, bytes, fullBytes);
    }
}
