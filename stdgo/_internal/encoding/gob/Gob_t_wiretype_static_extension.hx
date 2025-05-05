package stdgo._internal.encoding.gob;
@:keep @:allow(stdgo._internal.encoding.gob.Gob.T_wireType_asInterface) class T_wireType_static_extension {
    @:keep
    @:tdfield
    static public function _string( _w:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_wiretype.T_wireType>):stdgo.GoString {
        @:recv var _w:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_wiretype.T_wireType> = _w;
        {};
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/type.go#L663"
        if (({
            final value = _w;
            (value == null || (value : Dynamic).__nil__);
        })) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/type.go#L664"
            return ("unknown type" : stdgo.GoString);
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/type.go#L666"
        if (({
            final value = (@:checkr _w ?? throw "null pointer dereference").arrayT;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        })) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/type.go#L668"
            return (@:checkr (@:checkr _w ?? throw "null pointer dereference").arrayT ?? throw "null pointer dereference").commonType.name?.__copy__();
        } else if (({
            final value = (@:checkr _w ?? throw "null pointer dereference").sliceT;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        })) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/type.go#L670"
            return (@:checkr (@:checkr _w ?? throw "null pointer dereference").sliceT ?? throw "null pointer dereference").commonType.name?.__copy__();
        } else if (({
            final value = (@:checkr _w ?? throw "null pointer dereference").structT;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        })) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/type.go#L672"
            return (@:checkr (@:checkr _w ?? throw "null pointer dereference").structT ?? throw "null pointer dereference").commonType.name?.__copy__();
        } else if (({
            final value = (@:checkr _w ?? throw "null pointer dereference").mapT;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        })) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/type.go#L674"
            return (@:checkr (@:checkr _w ?? throw "null pointer dereference").mapT ?? throw "null pointer dereference").commonType.name?.__copy__();
        } else if (({
            final value = (@:checkr _w ?? throw "null pointer dereference").gobEncoderT;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        })) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/type.go#L676"
            return (@:checkr (@:checkr _w ?? throw "null pointer dereference").gobEncoderT ?? throw "null pointer dereference").commonType.name?.__copy__();
        } else if (({
            final value = (@:checkr _w ?? throw "null pointer dereference").binaryMarshalerT;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        })) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/type.go#L678"
            return (@:checkr (@:checkr _w ?? throw "null pointer dereference").binaryMarshalerT ?? throw "null pointer dereference").commonType.name?.__copy__();
        } else if (({
            final value = (@:checkr _w ?? throw "null pointer dereference").textMarshalerT;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        })) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/type.go#L680"
            return (@:checkr (@:checkr _w ?? throw "null pointer dereference").textMarshalerT ?? throw "null pointer dereference").commonType.name?.__copy__();
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/type.go#L682"
        return ("unknown type" : stdgo.GoString);
    }
}
