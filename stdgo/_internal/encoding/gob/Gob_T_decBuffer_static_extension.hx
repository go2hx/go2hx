package stdgo._internal.encoding.gob;
@:keep @:allow(stdgo._internal.encoding.gob.Gob.T_decBuffer_asInterface) class T_decBuffer_static_extension {
    @:keep
    static public function reset( _d:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_decBuffer.T_decBuffer>):Void {
        @:recv var _d:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_decBuffer.T_decBuffer> = _d;
        _d._data = (_d._data.__slice__((0 : stdgo.GoInt), (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        _d._offset = (0 : stdgo.GoInt);
    }
    @:keep
    static public function setBytes( _d:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_decBuffer.T_decBuffer>, _data:stdgo.Slice<stdgo.GoUInt8>):Void {
        @:recv var _d:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_decBuffer.T_decBuffer> = _d;
        _d._data = _data;
        _d._offset = (0 : stdgo.GoInt);
    }
    @:keep
    static public function bytes( _d:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_decBuffer.T_decBuffer>):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _d:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_decBuffer.T_decBuffer> = _d;
        return (_d._data.__slice__(_d._offset) : stdgo.Slice<stdgo.GoUInt8>);
    }
    @:keep
    static public function len( _d:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_decBuffer.T_decBuffer>):stdgo.GoInt {
        @:recv var _d:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_decBuffer.T_decBuffer> = _d;
        return ((_d._data.length) - _d._offset : stdgo.GoInt);
    }
    @:keep
    static public function readByte( _d:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_decBuffer.T_decBuffer>):{ var _0 : stdgo.GoUInt8; var _1 : stdgo.Error; } {
        @:recv var _d:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_decBuffer.T_decBuffer> = _d;
        if ((_d._offset >= (_d._data.length) : Bool)) {
            return { _0 : (0 : stdgo.GoUInt8), _1 : stdgo._internal.io.Io_eof.eof };
        };
        var _c = (_d._data[(_d._offset : stdgo.GoInt)] : stdgo.GoUInt8);
        _d._offset++;
        return { _0 : _c, _1 : (null : stdgo.Error) };
    }
    @:keep
    static public function drop( _d:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_decBuffer.T_decBuffer>, _n:stdgo.GoInt):Void {
        @:recv var _d:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_decBuffer.T_decBuffer> = _d;
        if ((_n > _d.len() : Bool)) {
            throw stdgo.Go.toInterface(("drop" : stdgo.GoString));
        };
        _d._offset = (_d._offset + (_n) : stdgo.GoInt);
    }
    @:keep
    static public function read( _d:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_decBuffer.T_decBuffer>, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _d:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_decBuffer.T_decBuffer> = _d;
        var _n = (stdgo.Go.copySlice(_p, (_d._data.__slice__(_d._offset) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoInt);
        if (((_n == (0 : stdgo.GoInt)) && (_p.length != (0 : stdgo.GoInt)) : Bool)) {
            return { _0 : (0 : stdgo.GoInt), _1 : stdgo._internal.io.Io_eof.eof };
        };
        _d._offset = (_d._offset + (_n) : stdgo.GoInt);
        return { _0 : _n, _1 : (null : stdgo.Error) };
    }
}
