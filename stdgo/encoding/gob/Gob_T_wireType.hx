package stdgo.encoding.gob;
@:structInit @:using(stdgo.encoding.gob.Gob.T_wireType_static_extension) abstract T_wireType(stdgo._internal.encoding.gob.Gob_T_wireType.T_wireType) from stdgo._internal.encoding.gob.Gob_T_wireType.T_wireType to stdgo._internal.encoding.gob.Gob_T_wireType.T_wireType {
    public var arrayT(get, set) : T_arrayType;
    function get_arrayT():T_arrayType return this.arrayT;
    function set_arrayT(v:T_arrayType):T_arrayType {
        this.arrayT = (v : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_arrayType.T_arrayType>);
        return v;
    }
    public var sliceT(get, set) : T_sliceType;
    function get_sliceT():T_sliceType return this.sliceT;
    function set_sliceT(v:T_sliceType):T_sliceType {
        this.sliceT = (v : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_sliceType.T_sliceType>);
        return v;
    }
    public var structT(get, set) : T_structType;
    function get_structT():T_structType return this.structT;
    function set_structT(v:T_structType):T_structType {
        this.structT = (v : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_structType.T_structType>);
        return v;
    }
    public var mapT(get, set) : T_mapType;
    function get_mapT():T_mapType return this.mapT;
    function set_mapT(v:T_mapType):T_mapType {
        this.mapT = (v : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_mapType.T_mapType>);
        return v;
    }
    public var gobEncoderT(get, set) : T_gobEncoderType;
    function get_gobEncoderT():T_gobEncoderType return this.gobEncoderT;
    function set_gobEncoderT(v:T_gobEncoderType):T_gobEncoderType {
        this.gobEncoderT = (v : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_gobEncoderType.T_gobEncoderType>);
        return v;
    }
    public var binaryMarshalerT(get, set) : T_gobEncoderType;
    function get_binaryMarshalerT():T_gobEncoderType return this.binaryMarshalerT;
    function set_binaryMarshalerT(v:T_gobEncoderType):T_gobEncoderType {
        this.binaryMarshalerT = (v : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_gobEncoderType.T_gobEncoderType>);
        return v;
    }
    public var textMarshalerT(get, set) : T_gobEncoderType;
    function get_textMarshalerT():T_gobEncoderType return this.textMarshalerT;
    function set_textMarshalerT(v:T_gobEncoderType):T_gobEncoderType {
        this.textMarshalerT = (v : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_gobEncoderType.T_gobEncoderType>);
        return v;
    }
    public function new(?arrayT:T_arrayType, ?sliceT:T_sliceType, ?structT:T_structType, ?mapT:T_mapType, ?gobEncoderT:T_gobEncoderType, ?binaryMarshalerT:T_gobEncoderType, ?textMarshalerT:T_gobEncoderType) this = new stdgo._internal.encoding.gob.Gob_T_wireType.T_wireType((arrayT : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_arrayType.T_arrayType>), (sliceT : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_sliceType.T_sliceType>), (structT : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_structType.T_structType>), (mapT : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_mapType.T_mapType>), (gobEncoderT : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_gobEncoderType.T_gobEncoderType>), (binaryMarshalerT : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_gobEncoderType.T_gobEncoderType>), (textMarshalerT : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_gobEncoderType.T_gobEncoderType>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
