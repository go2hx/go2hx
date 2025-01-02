package stdgo._internal.encoding.json;
@:structInit @:using(stdgo._internal.encoding.json.Json_T_encodeState_static_extension.T_encodeState_static_extension) class T_encodeState {
    @:embedded
    public var buffer : stdgo._internal.bytes.Bytes_Buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_Buffer.Buffer);
    public var _ptrLevel : stdgo.GoUInt = 0;
    public var _ptrSeen : stdgo.GoMap<stdgo.AnyInterface, stdgo._internal.encoding.json.Json_T_unquotedValue.T_unquotedValue> = (null : stdgo.GoMap<stdgo.AnyInterface, stdgo._internal.encoding.json.Json_T_unquotedValue.T_unquotedValue>);
    public function new(?buffer:stdgo._internal.bytes.Bytes_Buffer.Buffer, ?_ptrLevel:stdgo.GoUInt, ?_ptrSeen:stdgo.GoMap<stdgo.AnyInterface, stdgo._internal.encoding.json.Json_T_unquotedValue.T_unquotedValue>) {
        if (buffer != null) this.buffer = buffer;
        if (_ptrLevel != null) this._ptrLevel = _ptrLevel;
        if (_ptrSeen != null) this._ptrSeen = _ptrSeen;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public var available(get, never) : () -> stdgo.GoInt;
    @:embedded
    @:embeddededffieldsffun
    public function get_available():() -> stdgo.GoInt return @:check3 (this.buffer ?? throw "null pointer derefrence").available;
    public var availableBuffer(get, never) : () -> stdgo.Slice<stdgo.GoUInt8>;
    @:embedded
    @:embeddededffieldsffun
    public function get_availableBuffer():() -> stdgo.Slice<stdgo.GoUInt8> return @:check3 (this.buffer ?? throw "null pointer derefrence").availableBuffer;
    public var bytes(get, never) : () -> stdgo.Slice<stdgo.GoUInt8>;
    @:embedded
    @:embeddededffieldsffun
    public function get_bytes():() -> stdgo.Slice<stdgo.GoUInt8> return @:check3 (this.buffer ?? throw "null pointer derefrence").bytes;
    public var cap(get, never) : () -> stdgo.GoInt;
    @:embedded
    @:embeddededffieldsffun
    public function get_cap():() -> stdgo.GoInt return @:check3 (this.buffer ?? throw "null pointer derefrence").cap;
    public var grow(get, never) : stdgo.GoInt -> Void;
    @:embedded
    @:embeddededffieldsffun
    public function get_grow():stdgo.GoInt -> Void return @:check3 (this.buffer ?? throw "null pointer derefrence").grow;
    public var len(get, never) : () -> stdgo.GoInt;
    @:embedded
    @:embeddededffieldsffun
    public function get_len():() -> stdgo.GoInt return @:check3 (this.buffer ?? throw "null pointer derefrence").len;
    public var next(get, never) : stdgo.GoInt -> stdgo.Slice<stdgo.GoUInt8>;
    @:embedded
    @:embeddededffieldsffun
    public function get_next():stdgo.GoInt -> stdgo.Slice<stdgo.GoUInt8> return @:check3 (this.buffer ?? throw "null pointer derefrence").next;
    public var read(get, never) : stdgo.Slice<stdgo.GoUInt8> -> { var _0 : stdgo.GoInt; var _1 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    public function get_read():stdgo.Slice<stdgo.GoUInt8> -> { var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:check3 (this.buffer ?? throw "null pointer derefrence").read;
    public var readByte(get, never) : () -> { var _0 : stdgo.GoUInt8; var _1 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    public function get_readByte():() -> { var _0 : stdgo.GoUInt8; var _1 : stdgo.Error; } return @:check3 (this.buffer ?? throw "null pointer derefrence").readByte;
    public var readBytes(get, never) : stdgo.GoUInt8 -> { var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    public function get_readBytes():stdgo.GoUInt8 -> { var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return @:check3 (this.buffer ?? throw "null pointer derefrence").readBytes;
    public var readFrom(get, never) : stdgo._internal.io.Io_Reader.Reader -> { var _0 : stdgo.GoInt64; var _1 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    public function get_readFrom():stdgo._internal.io.Io_Reader.Reader -> { var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } return @:check3 (this.buffer ?? throw "null pointer derefrence").readFrom;
    public var readRune(get, never) : () -> { var _0 : stdgo.GoInt32; var _1 : stdgo.GoInt; var _2 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    public function get_readRune():() -> { var _0 : stdgo.GoInt32; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } return @:check3 (this.buffer ?? throw "null pointer derefrence").readRune;
    public var readString(get, never) : stdgo.GoUInt8 -> { var _0 : stdgo.GoString; var _1 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    public function get_readString():stdgo.GoUInt8 -> { var _0 : stdgo.GoString; var _1 : stdgo.Error; } return @:check3 (this.buffer ?? throw "null pointer derefrence").readString;
    public var reset(get, never) : () -> Void;
    @:embedded
    @:embeddededffieldsffun
    public function get_reset():() -> Void return @:check3 (this.buffer ?? throw "null pointer derefrence").reset;
    public var string(get, never) : () -> stdgo.GoString;
    @:embedded
    @:embeddededffieldsffun
    public function get_string():() -> stdgo.GoString return @:check3 (this.buffer ?? throw "null pointer derefrence").string;
    public var truncate(get, never) : stdgo.GoInt -> Void;
    @:embedded
    @:embeddededffieldsffun
    public function get_truncate():stdgo.GoInt -> Void return @:check3 (this.buffer ?? throw "null pointer derefrence").truncate;
    public var unreadByte(get, never) : () -> stdgo.Error;
    @:embedded
    @:embeddededffieldsffun
    public function get_unreadByte():() -> stdgo.Error return @:check3 (this.buffer ?? throw "null pointer derefrence").unreadByte;
    public var unreadRune(get, never) : () -> stdgo.Error;
    @:embedded
    @:embeddededffieldsffun
    public function get_unreadRune():() -> stdgo.Error return @:check3 (this.buffer ?? throw "null pointer derefrence").unreadRune;
    public var write(get, never) : stdgo.Slice<stdgo.GoUInt8> -> { var _0 : stdgo.GoInt; var _1 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    public function get_write():stdgo.Slice<stdgo.GoUInt8> -> { var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:check3 (this.buffer ?? throw "null pointer derefrence").write;
    public var writeByte(get, never) : stdgo.GoUInt8 -> stdgo.Error;
    @:embedded
    @:embeddededffieldsffun
    public function get_writeByte():stdgo.GoUInt8 -> stdgo.Error return @:check3 (this.buffer ?? throw "null pointer derefrence").writeByte;
    public var writeRune(get, never) : stdgo.GoInt32 -> { var _0 : stdgo.GoInt; var _1 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    public function get_writeRune():stdgo.GoInt32 -> { var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:check3 (this.buffer ?? throw "null pointer derefrence").writeRune;
    public var writeString(get, never) : stdgo.GoString -> { var _0 : stdgo.GoInt; var _1 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    public function get_writeString():stdgo.GoString -> { var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:check3 (this.buffer ?? throw "null pointer derefrence").writeString;
    public var writeTo(get, never) : stdgo._internal.io.Io_Writer.Writer -> { var _0 : stdgo.GoInt64; var _1 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    public function get_writeTo():stdgo._internal.io.Io_Writer.Writer -> { var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } return @:check3 (this.buffer ?? throw "null pointer derefrence").writeTo;
    public var _empty(get, never) : () -> Bool;
    @:embedded
    @:embeddededffieldsffun
    public function get__empty():() -> Bool return @:check3 (this.buffer ?? throw "null pointer derefrence")._empty;
    public var _grow(get, never) : stdgo.GoInt -> stdgo.GoInt;
    @:embedded
    @:embeddededffieldsffun
    public function get__grow():stdgo.GoInt -> stdgo.GoInt return @:check3 (this.buffer ?? throw "null pointer derefrence")._grow;
    public var _readSlice(get, never) : stdgo.GoUInt8 -> { var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    public function get__readSlice():stdgo.GoUInt8 -> { var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return @:check3 (this.buffer ?? throw "null pointer derefrence")._readSlice;
    public var _tryGrowByReslice(get, never) : stdgo.GoInt -> { var _0 : stdgo.GoInt; var _1 : Bool; };
    @:embedded
    @:embeddededffieldsffun
    public function get__tryGrowByReslice():stdgo.GoInt -> { var _0 : stdgo.GoInt; var _1 : Bool; } return @:check3 (this.buffer ?? throw "null pointer derefrence")._tryGrowByReslice;
    public function __copy__() {
        return new T_encodeState(buffer, _ptrLevel, _ptrSeen);
    }
}
