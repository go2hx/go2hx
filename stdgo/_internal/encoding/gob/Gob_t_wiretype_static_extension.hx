package stdgo._internal.encoding.gob;
@:keep @:allow(stdgo._internal.encoding.gob.Gob.T_wireType_asInterface) class T_wireType_static_extension {
    @:keep
    @:tdfield
    static public function _string( _w:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_wiretype.T_wireType>):stdgo.GoString {
        @:recv var _w:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_wiretype.T_wireType> = _w;
        {};
        if ((_w == null || (_w : Dynamic).__nil__)) {
            return ("unknown type" : stdgo.GoString);
        };
        if (((@:checkr _w ?? throw "null pointer dereference").arrayT != null && (((@:checkr _w ?? throw "null pointer dereference").arrayT : Dynamic).__nil__ == null || !((@:checkr _w ?? throw "null pointer dereference").arrayT : Dynamic).__nil__))) {
            return (@:checkr (@:checkr _w ?? throw "null pointer dereference").arrayT ?? throw "null pointer dereference").commonType.name?.__copy__();
        } else if (((@:checkr _w ?? throw "null pointer dereference").sliceT != null && (((@:checkr _w ?? throw "null pointer dereference").sliceT : Dynamic).__nil__ == null || !((@:checkr _w ?? throw "null pointer dereference").sliceT : Dynamic).__nil__))) {
            return (@:checkr (@:checkr _w ?? throw "null pointer dereference").sliceT ?? throw "null pointer dereference").commonType.name?.__copy__();
        } else if (((@:checkr _w ?? throw "null pointer dereference").structT != null && (((@:checkr _w ?? throw "null pointer dereference").structT : Dynamic).__nil__ == null || !((@:checkr _w ?? throw "null pointer dereference").structT : Dynamic).__nil__))) {
            return (@:checkr (@:checkr _w ?? throw "null pointer dereference").structT ?? throw "null pointer dereference").commonType.name?.__copy__();
        } else if (((@:checkr _w ?? throw "null pointer dereference").mapT != null && (((@:checkr _w ?? throw "null pointer dereference").mapT : Dynamic).__nil__ == null || !((@:checkr _w ?? throw "null pointer dereference").mapT : Dynamic).__nil__))) {
            return (@:checkr (@:checkr _w ?? throw "null pointer dereference").mapT ?? throw "null pointer dereference").commonType.name?.__copy__();
        } else if (((@:checkr _w ?? throw "null pointer dereference").gobEncoderT != null && (((@:checkr _w ?? throw "null pointer dereference").gobEncoderT : Dynamic).__nil__ == null || !((@:checkr _w ?? throw "null pointer dereference").gobEncoderT : Dynamic).__nil__))) {
            return (@:checkr (@:checkr _w ?? throw "null pointer dereference").gobEncoderT ?? throw "null pointer dereference").commonType.name?.__copy__();
        } else if (((@:checkr _w ?? throw "null pointer dereference").binaryMarshalerT != null && (((@:checkr _w ?? throw "null pointer dereference").binaryMarshalerT : Dynamic).__nil__ == null || !((@:checkr _w ?? throw "null pointer dereference").binaryMarshalerT : Dynamic).__nil__))) {
            return (@:checkr (@:checkr _w ?? throw "null pointer dereference").binaryMarshalerT ?? throw "null pointer dereference").commonType.name?.__copy__();
        } else if (((@:checkr _w ?? throw "null pointer dereference").textMarshalerT != null && (((@:checkr _w ?? throw "null pointer dereference").textMarshalerT : Dynamic).__nil__ == null || !((@:checkr _w ?? throw "null pointer dereference").textMarshalerT : Dynamic).__nil__))) {
            return (@:checkr (@:checkr _w ?? throw "null pointer dereference").textMarshalerT ?? throw "null pointer dereference").commonType.name?.__copy__();
        };
        return ("unknown type" : stdgo.GoString);
    }
}
