package stdgo._internal.encoding.gob;
@:keep @:allow(stdgo._internal.encoding.gob.Gob.T_wireType_asInterface) class T_wireType_static_extension {
    @:keep
    static public function _string( _w:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_wireType.T_wireType>):stdgo.GoString {
        @:recv var _w:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_wireType.T_wireType> = _w;
        {};
        if (_w == null || (_w : Dynamic).__nil__) {
            return ("unknown type" : stdgo.GoString);
        };
        if (_w.arrayT != null && ((_w.arrayT : Dynamic).__nil__ == null || !(_w.arrayT : Dynamic).__nil__)) {
            return _w.arrayT.commonType.name?.__copy__();
        } else if (_w.sliceT != null && ((_w.sliceT : Dynamic).__nil__ == null || !(_w.sliceT : Dynamic).__nil__)) {
            return _w.sliceT.commonType.name?.__copy__();
        } else if (_w.structT != null && ((_w.structT : Dynamic).__nil__ == null || !(_w.structT : Dynamic).__nil__)) {
            return _w.structT.commonType.name?.__copy__();
        } else if (_w.mapT != null && ((_w.mapT : Dynamic).__nil__ == null || !(_w.mapT : Dynamic).__nil__)) {
            return _w.mapT.commonType.name?.__copy__();
        } else if (_w.gobEncoderT != null && ((_w.gobEncoderT : Dynamic).__nil__ == null || !(_w.gobEncoderT : Dynamic).__nil__)) {
            return _w.gobEncoderT.commonType.name?.__copy__();
        } else if (_w.binaryMarshalerT != null && ((_w.binaryMarshalerT : Dynamic).__nil__ == null || !(_w.binaryMarshalerT : Dynamic).__nil__)) {
            return _w.binaryMarshalerT.commonType.name?.__copy__();
        } else if (_w.textMarshalerT != null && ((_w.textMarshalerT : Dynamic).__nil__ == null || !(_w.textMarshalerT : Dynamic).__nil__)) {
            return _w.textMarshalerT.commonType.name?.__copy__();
        };
        return ("unknown type" : stdgo.GoString);
    }
}
