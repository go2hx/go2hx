package stdgo._internal.encoding.gob;
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
