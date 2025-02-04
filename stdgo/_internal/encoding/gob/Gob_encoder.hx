package stdgo._internal.encoding.gob;
@:structInit @:using(stdgo._internal.encoding.gob.Gob_encoder_static_extension.Encoder_static_extension) class Encoder {
    public var _mutex : stdgo._internal.sync.Sync_mutex.Mutex = ({} : stdgo._internal.sync.Sync_mutex.Mutex);
    public var _w : stdgo.Slice<stdgo._internal.io.Io_writer.Writer> = (null : stdgo.Slice<stdgo._internal.io.Io_writer.Writer>);
    public var _sent : stdgo.GoMap<stdgo._internal.reflect.Reflect_type_.Type_, stdgo._internal.encoding.gob.Gob_t_typeid.T_typeId> = (null : stdgo.GoMap<stdgo._internal.reflect.Reflect_type_.Type_, stdgo._internal.encoding.gob.Gob_t_typeid.T_typeId>);
    public var _countState : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_encoderstate.T_encoderState> = (null : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_encoderstate.T_encoderState>);
    public var _freeList : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_encoderstate.T_encoderState> = (null : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_encoderstate.T_encoderState>);
    public var _byteBuf : stdgo._internal.encoding.gob.Gob_t_encbuffer.T_encBuffer = ({} : stdgo._internal.encoding.gob.Gob_t_encbuffer.T_encBuffer);
    public var _err : stdgo.Error = (null : stdgo.Error);
    public function new(?_mutex:stdgo._internal.sync.Sync_mutex.Mutex, ?_w:stdgo.Slice<stdgo._internal.io.Io_writer.Writer>, ?_sent:stdgo.GoMap<stdgo._internal.reflect.Reflect_type_.Type_, stdgo._internal.encoding.gob.Gob_t_typeid.T_typeId>, ?_countState:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_encoderstate.T_encoderState>, ?_freeList:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_encoderstate.T_encoderState>, ?_byteBuf:stdgo._internal.encoding.gob.Gob_t_encbuffer.T_encBuffer, ?_err:stdgo.Error) {
        if (_mutex != null) this._mutex = _mutex;
        if (_w != null) this._w = _w;
        if (_sent != null) this._sent = _sent;
        if (_countState != null) this._countState = _countState;
        if (_freeList != null) this._freeList = _freeList;
        if (_byteBuf != null) this._byteBuf = _byteBuf;
        if (_err != null) this._err = _err;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Encoder(_mutex, _w, _sent, _countState, _freeList, _byteBuf, _err);
    }
}
