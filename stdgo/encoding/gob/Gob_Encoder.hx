package stdgo.encoding.gob;
@:structInit @:using(stdgo.encoding.gob.Gob.Encoder_static_extension) abstract Encoder(stdgo._internal.encoding.gob.Gob_Encoder.Encoder) from stdgo._internal.encoding.gob.Gob_Encoder.Encoder to stdgo._internal.encoding.gob.Gob_Encoder.Encoder {
    public var _mutex(get, set) : stdgo._internal.sync.Sync_Mutex.Mutex;
    function get__mutex():stdgo._internal.sync.Sync_Mutex.Mutex return this._mutex;
    function set__mutex(v:stdgo._internal.sync.Sync_Mutex.Mutex):stdgo._internal.sync.Sync_Mutex.Mutex {
        this._mutex = v;
        return v;
    }
    public var _w(get, set) : Array<stdgo._internal.io.Io_Writer.Writer>;
    function get__w():Array<stdgo._internal.io.Io_Writer.Writer> return [for (i in this._w) i];
    function set__w(v:Array<stdgo._internal.io.Io_Writer.Writer>):Array<stdgo._internal.io.Io_Writer.Writer> {
        this._w = ([for (i in v) i] : stdgo.Slice<stdgo._internal.io.Io_Writer.Writer>);
        return v;
    }
    public var _sent(get, set) : stdgo.GoMap<stdgo._internal.reflect.Reflect_Type_.Type_, stdgo._internal.encoding.gob.Gob_T_typeId.T_typeId>;
    function get__sent():stdgo.GoMap<stdgo._internal.reflect.Reflect_Type_.Type_, stdgo._internal.encoding.gob.Gob_T_typeId.T_typeId> return this._sent;
    function set__sent(v:stdgo.GoMap<stdgo._internal.reflect.Reflect_Type_.Type_, stdgo._internal.encoding.gob.Gob_T_typeId.T_typeId>):stdgo.GoMap<stdgo._internal.reflect.Reflect_Type_.Type_, stdgo._internal.encoding.gob.Gob_T_typeId.T_typeId> {
        this._sent = (v : stdgo.GoMap<stdgo._internal.reflect.Reflect_Type_.Type_, stdgo._internal.encoding.gob.Gob_T_typeId.T_typeId>);
        return v;
    }
    public var _countState(get, set) : T_encoderState;
    function get__countState():T_encoderState return this._countState;
    function set__countState(v:T_encoderState):T_encoderState {
        this._countState = (v : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_encoderState.T_encoderState>);
        return v;
    }
    public var _freeList(get, set) : T_encoderState;
    function get__freeList():T_encoderState return this._freeList;
    function set__freeList(v:T_encoderState):T_encoderState {
        this._freeList = (v : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_encoderState.T_encoderState>);
        return v;
    }
    public var _byteBuf(get, set) : T_encBuffer;
    function get__byteBuf():T_encBuffer return this._byteBuf;
    function set__byteBuf(v:T_encBuffer):T_encBuffer {
        this._byteBuf = v;
        return v;
    }
    public var _err(get, set) : stdgo.Error;
    function get__err():stdgo.Error return this._err;
    function set__err(v:stdgo.Error):stdgo.Error {
        this._err = (v : stdgo.Error);
        return v;
    }
    public function new(?_mutex:stdgo._internal.sync.Sync_Mutex.Mutex, ?_w:Array<stdgo._internal.io.Io_Writer.Writer>, ?_sent:stdgo.GoMap<stdgo._internal.reflect.Reflect_Type_.Type_, stdgo._internal.encoding.gob.Gob_T_typeId.T_typeId>, ?_countState:T_encoderState, ?_freeList:T_encoderState, ?_byteBuf:T_encBuffer, ?_err:stdgo.Error) this = new stdgo._internal.encoding.gob.Gob_Encoder.Encoder(_mutex, ([for (i in _w) i] : stdgo.Slice<stdgo._internal.io.Io_Writer.Writer>), (_sent : stdgo.GoMap<stdgo._internal.reflect.Reflect_Type_.Type_, stdgo._internal.encoding.gob.Gob_T_typeId.T_typeId>), (_countState : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_encoderState.T_encoderState>), (_freeList : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_encoderState.T_encoderState>), _byteBuf, (_err : stdgo.Error));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
