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
@:structInit @:using(stdgo._internal.debug.dwarf.Dwarf_FuncType_static_extension.FuncType_static_extension) class FuncType {
    @:embedded
    public var commonType : stdgo._internal.debug.dwarf.Dwarf_CommonType.CommonType = ({} : stdgo._internal.debug.dwarf.Dwarf_CommonType.CommonType);
    public var returnType : stdgo._internal.debug.dwarf.Dwarf_Type_.Type_ = (null : stdgo._internal.debug.dwarf.Dwarf_Type_.Type_);
    public var paramType : stdgo.Slice<stdgo._internal.debug.dwarf.Dwarf_Type_.Type_> = (null : stdgo.Slice<stdgo._internal.debug.dwarf.Dwarf_Type_.Type_>);
    public function new(?commonType:stdgo._internal.debug.dwarf.Dwarf_CommonType.CommonType, ?returnType:stdgo._internal.debug.dwarf.Dwarf_Type_.Type_, ?paramType:stdgo.Slice<stdgo._internal.debug.dwarf.Dwarf_Type_.Type_>) {
        if (commonType != null) this.commonType = commonType;
        if (returnType != null) this.returnType = returnType;
        if (paramType != null) this.paramType = paramType;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public var common(get, never) : () -> stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_CommonType.CommonType>;
    @:embedded
    @:embeddededffieldsffun
    public function get_common():() -> stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_CommonType.CommonType> return @:check32 this.commonType.common;
    public var size(get, never) : () -> stdgo.GoInt64;
    @:embedded
    @:embeddededffieldsffun
    public function get_size():() -> stdgo.GoInt64 return @:check32 this.commonType.size;
    public function __copy__() {
        return new FuncType(commonType, returnType, paramType);
    }
}
