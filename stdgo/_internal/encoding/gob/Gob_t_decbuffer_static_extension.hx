package stdgo._internal.encoding.gob;
@:keep @:allow(stdgo._internal.encoding.gob.Gob.T_decBuffer_asInterface) class T_decBuffer_static_extension {
    @:keep
    @:tdfield
    static public function reset( _d:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decbuffer.T_decBuffer>):Void {
        @:recv var _d:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decbuffer.T_decBuffer> = _d;
        (@:checkr _d ?? throw "null pointer dereference")._data = ((@:checkr _d ?? throw "null pointer dereference")._data.__slice__((0 : stdgo.GoInt), (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        (@:checkr _d ?? throw "null pointer dereference")._offset = (0 : stdgo.GoInt);
    }
    @:keep
    @:tdfield
    static public function setBytes( _d:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decbuffer.T_decBuffer>, _data:stdgo.Slice<stdgo.GoUInt8>):Void {
        @:recv var _d:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decbuffer.T_decBuffer> = _d;
        (@:checkr _d ?? throw "null pointer dereference")._data = _data;
        (@:checkr _d ?? throw "null pointer dereference")._offset = (0 : stdgo.GoInt);
    }
    @:keep
    @:tdfield
    static public function bytes( _d:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decbuffer.T_decBuffer>):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _d:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decbuffer.T_decBuffer> = _d;
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/decode.go#L75"
        return ((@:checkr _d ?? throw "null pointer dereference")._data.__slice__((@:checkr _d ?? throw "null pointer dereference")._offset) : stdgo.Slice<stdgo.GoUInt8>);
    }
    @:keep
    @:tdfield
    static public function len( _d:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decbuffer.T_decBuffer>):stdgo.GoInt {
        @:recv var _d:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decbuffer.T_decBuffer> = _d;
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/decode.go#L71"
        return (((@:checkr _d ?? throw "null pointer dereference")._data.length) - (@:checkr _d ?? throw "null pointer dereference")._offset : stdgo.GoInt);
    }
    @:keep
    @:tdfield
    static public function readByte( _d:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decbuffer.T_decBuffer>):{ var _0 : stdgo.GoUInt8; var _1 : stdgo.Error; } {
        @:recv var _d:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decbuffer.T_decBuffer> = _d;
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/decode.go#L62"
        if (((@:checkr _d ?? throw "null pointer dereference")._offset >= ((@:checkr _d ?? throw "null pointer dereference")._data.length) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/decode.go#L63"
            return { _0 : (0 : stdgo.GoUInt8), _1 : stdgo._internal.io.Io_eof.eOF };
        };
        var _c = ((@:checkr _d ?? throw "null pointer dereference")._data[((@:checkr _d ?? throw "null pointer dereference")._offset : stdgo.GoInt)] : stdgo.GoUInt8);
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/decode.go#L66"
        (@:checkr _d ?? throw "null pointer dereference")._offset++;
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/decode.go#L67"
        return { _0 : _c, _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function drop( _d:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decbuffer.T_decBuffer>, _n:stdgo.GoInt):Void {
        @:recv var _d:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decbuffer.T_decBuffer> = _d;
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/decode.go#L55"
        if ((_n > _d.len() : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/decode.go#L56"
            throw stdgo.Go.toInterface(("drop" : stdgo.GoString));
        };
        (@:checkr _d ?? throw "null pointer dereference")._offset = ((@:checkr _d ?? throw "null pointer dereference")._offset + (_n) : stdgo.GoInt);
    }
    @:keep
    @:tdfield
    static public function read( _d:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decbuffer.T_decBuffer>, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _d:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decbuffer.T_decBuffer> = _d;
        var _n = (_p.__copyTo__(((@:checkr _d ?? throw "null pointer dereference")._data.__slice__((@:checkr _d ?? throw "null pointer dereference")._offset) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/decode.go#L47"
        if (((_n == (0 : stdgo.GoInt)) && (_p.length != (0 : stdgo.GoInt)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/decode.go#L48"
            return { _0 : (0 : stdgo.GoInt), _1 : stdgo._internal.io.Io_eof.eOF };
        };
        (@:checkr _d ?? throw "null pointer dereference")._offset = ((@:checkr _d ?? throw "null pointer dereference")._offset + (_n) : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/decode.go#L51"
        return { _0 : _n, _1 : (null : stdgo.Error) };
    }
}
