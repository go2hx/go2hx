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
@:structInit @:using(stdgo._internal.encoding.gob.Gob_T_wireType_static_extension.T_wireType_static_extension) class T_wireType {
    public var arrayT : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_arrayType.T_arrayType> = (null : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_arrayType.T_arrayType>);
    public var sliceT : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_sliceType.T_sliceType> = (null : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_sliceType.T_sliceType>);
    public var structT : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_structType.T_structType> = (null : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_structType.T_structType>);
    public var mapT : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_mapType.T_mapType> = (null : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_mapType.T_mapType>);
    public var gobEncoderT : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_gobEncoderType.T_gobEncoderType> = (null : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_gobEncoderType.T_gobEncoderType>);
    public var binaryMarshalerT : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_gobEncoderType.T_gobEncoderType> = (null : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_gobEncoderType.T_gobEncoderType>);
    public var textMarshalerT : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_gobEncoderType.T_gobEncoderType> = (null : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_gobEncoderType.T_gobEncoderType>);
    public function new(?arrayT:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_arrayType.T_arrayType>, ?sliceT:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_sliceType.T_sliceType>, ?structT:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_structType.T_structType>, ?mapT:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_mapType.T_mapType>, ?gobEncoderT:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_gobEncoderType.T_gobEncoderType>, ?binaryMarshalerT:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_gobEncoderType.T_gobEncoderType>, ?textMarshalerT:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_gobEncoderType.T_gobEncoderType>) {
        if (arrayT != null) this.arrayT = arrayT;
        if (sliceT != null) this.sliceT = sliceT;
        if (structT != null) this.structT = structT;
        if (mapT != null) this.mapT = mapT;
        if (gobEncoderT != null) this.gobEncoderT = gobEncoderT;
        if (binaryMarshalerT != null) this.binaryMarshalerT = binaryMarshalerT;
        if (textMarshalerT != null) this.textMarshalerT = textMarshalerT;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_wireType(arrayT, sliceT, structT, mapT, gobEncoderT, binaryMarshalerT, textMarshalerT);
    }
}
