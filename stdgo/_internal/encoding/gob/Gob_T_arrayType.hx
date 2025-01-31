package stdgo._internal.encoding.gob;
import stdgo._internal.flag.Flag;
import stdgo._internal.errors.Errors;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.strings.Strings;
import stdgo._internal.time.Time;
import stdgo._internal.math.rand.Rand;
import stdgo._internal.testing.Testing;
import stdgo._internal.io.Io;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.math.Math;
import stdgo._internal.internal.saferio.Saferio;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.encoding.hex.Hex;
import stdgo._internal.sort.Sort;
import stdgo._internal.os.Os;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.encoding.binary.Binary;
@:structInit @:using(stdgo._internal.encoding.gob.Gob_T_arrayType_static_extension.T_arrayType_static_extension) class T_arrayType {
    @:embedded
    public var commonType : stdgo._internal.encoding.gob.Gob_CommonType.CommonType = ({} : stdgo._internal.encoding.gob.Gob_CommonType.CommonType);
    public var elem : stdgo._internal.encoding.gob.Gob_T_typeId.T_typeId = ((0 : stdgo.GoInt32) : stdgo._internal.encoding.gob.Gob_T_typeId.T_typeId);
    public var len : stdgo.GoInt = 0;
    public function new(?commonType:stdgo._internal.encoding.gob.Gob_CommonType.CommonType, ?elem:stdgo._internal.encoding.gob.Gob_T_typeId.T_typeId, ?len:stdgo.GoInt) {
        if (commonType != null) this.commonType = commonType;
        if (elem != null) this.elem = elem;
        if (len != null) this.len = len;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public var _id(get, never) : () -> stdgo._internal.encoding.gob.Gob_T_typeId.T_typeId;
    @:embedded
    @:embeddededffieldsffun
    public function get__id():() -> stdgo._internal.encoding.gob.Gob_T_typeId.T_typeId return @:check32 this.commonType._id;
    public var _name(get, never) : () -> stdgo.GoString;
    @:embedded
    @:embeddededffieldsffun
    public function get__name():() -> stdgo.GoString return @:check32 this.commonType._name;
    public var _setId(get, never) : stdgo._internal.encoding.gob.Gob_T_typeId.T_typeId -> Void;
    @:embedded
    @:embeddededffieldsffun
    public function get__setId():stdgo._internal.encoding.gob.Gob_T_typeId.T_typeId -> Void return @:check32 this.commonType._setId;
    public function __copy__() {
        return new T_arrayType(commonType, elem, len);
    }
}
