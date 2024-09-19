package stdgo._internal.encoding.gob;
@:keep @:allow(stdgo._internal.encoding.gob.Gob.T_encBuffer_asInterface) class T_encBuffer_static_extension {
    @:keep
    static public function reset( _e:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_encBuffer.T_encBuffer>):Void {
        @:recv var _e:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_encBuffer.T_encBuffer> = _e;
        if (((_e._data.length) >= (1073741824 : stdgo.GoInt) : Bool)) {
            _e._data = (_e._scratch.__slice__((0 : stdgo.GoInt), (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        } else {
            _e._data = (_e._data.__slice__((0 : stdgo.GoInt), (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        };
    }
    @:keep
    static public function bytes( _e:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_encBuffer.T_encBuffer>):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _e:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_encBuffer.T_encBuffer> = _e;
        return _e._data;
    }
    @:keep
    static public function len( _e:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_encBuffer.T_encBuffer>):stdgo.GoInt {
        @:recv var _e:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_encBuffer.T_encBuffer> = _e;
        return (_e._data.length);
    }
    @:keep
    static public function writeString( _e:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_encBuffer.T_encBuffer>, _s:stdgo.GoString):Void {
        @:recv var _e:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_encBuffer.T_encBuffer> = _e;
        _e._data = (_e._data.__append__(...(_s : Array<stdgo.GoUInt8>)));
    }
    @:keep
    static public function write( _e:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_encBuffer.T_encBuffer>, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _e:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_encBuffer.T_encBuffer> = _e;
        _e._data = (_e._data.__append__(...(_p : Array<stdgo.GoUInt8>)));
        return { _0 : (_p.length), _1 : (null : stdgo.Error) };
    }
    @:keep
    static public function _writeByte( _e:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_encBuffer.T_encBuffer>, _c:stdgo.GoUInt8):Void {
        @:recv var _e:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_encBuffer.T_encBuffer> = _e;
        _e._data = (_e._data.__append__(_c));
    }
}
