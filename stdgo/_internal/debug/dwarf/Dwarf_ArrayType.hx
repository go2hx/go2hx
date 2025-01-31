package stdgo._internal.debug.dwarf;
import stdgo._internal.errors.Errors;
import stdgo._internal.path.Path;
import stdgo._internal.strings.Strings;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.io.Io;
import stdgo._internal.sort.Sort;
@:structInit @:using(stdgo._internal.debug.dwarf.Dwarf_ArrayType_static_extension.ArrayType_static_extension) class ArrayType {
    @:embedded
    public var commonType : stdgo._internal.debug.dwarf.Dwarf_CommonType.CommonType = ({} : stdgo._internal.debug.dwarf.Dwarf_CommonType.CommonType);
    public var type : stdgo._internal.debug.dwarf.Dwarf_Type_.Type_ = (null : stdgo._internal.debug.dwarf.Dwarf_Type_.Type_);
    public var strideBitSize : stdgo.GoInt64 = 0;
    public var count : stdgo.GoInt64 = 0;
    public function new(?commonType:stdgo._internal.debug.dwarf.Dwarf_CommonType.CommonType, ?type:stdgo._internal.debug.dwarf.Dwarf_Type_.Type_, ?strideBitSize:stdgo.GoInt64, ?count:stdgo.GoInt64) {
        if (commonType != null) this.commonType = commonType;
        if (type != null) this.type = type;
        if (strideBitSize != null) this.strideBitSize = strideBitSize;
        if (count != null) this.count = count;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public var common(get, never) : () -> stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_CommonType.CommonType>;
    @:embedded
    @:embeddededffieldsffun
    public function get_common():() -> stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_CommonType.CommonType> return @:check32 this.commonType.common;
    public function __copy__() {
        return new ArrayType(commonType, type, strideBitSize, count);
    }
}
