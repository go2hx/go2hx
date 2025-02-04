package stdgo._internal.encoding.gob;
@:structInit @:using(stdgo._internal.encoding.gob.Gob_decoder_static_extension.Decoder_static_extension) class Decoder {
    public var _mutex : stdgo._internal.sync.Sync_mutex.Mutex = ({} : stdgo._internal.sync.Sync_mutex.Mutex);
    public var _r : stdgo._internal.io.Io_reader.Reader = (null : stdgo._internal.io.Io_reader.Reader);
    public var _buf : stdgo._internal.encoding.gob.Gob_t_decbuffer.T_decBuffer = ({} : stdgo._internal.encoding.gob.Gob_t_decbuffer.T_decBuffer);
    public var _wireType : stdgo.GoMap<stdgo._internal.encoding.gob.Gob_t_typeid.T_typeId, stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_wiretype.T_wireType>> = (null : stdgo.GoMap<stdgo._internal.encoding.gob.Gob_t_typeid.T_typeId, stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_wiretype.T_wireType>>);
    public var _decoderCache : stdgo.GoMap<stdgo._internal.reflect.Reflect_type_.Type_, stdgo.GoMap<stdgo._internal.encoding.gob.Gob_t_typeid.T_typeId, stdgo.Ref<stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decengine.T_decEngine>>>> = (null : stdgo.GoMap<stdgo._internal.reflect.Reflect_type_.Type_, stdgo.GoMap<stdgo._internal.encoding.gob.Gob_t_typeid.T_typeId, stdgo.Ref<stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decengine.T_decEngine>>>>);
    public var _ignorerCache : stdgo.GoMap<stdgo._internal.encoding.gob.Gob_t_typeid.T_typeId, stdgo.Ref<stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decengine.T_decEngine>>> = (null : stdgo.GoMap<stdgo._internal.encoding.gob.Gob_t_typeid.T_typeId, stdgo.Ref<stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decengine.T_decEngine>>>);
    public var _freeList : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decoderstate.T_decoderState> = (null : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decoderstate.T_decoderState>);
    public var _countBuf : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _err : stdgo.Error = (null : stdgo.Error);
    public function new(?_mutex:stdgo._internal.sync.Sync_mutex.Mutex, ?_r:stdgo._internal.io.Io_reader.Reader, ?_buf:stdgo._internal.encoding.gob.Gob_t_decbuffer.T_decBuffer, ?_wireType:stdgo.GoMap<stdgo._internal.encoding.gob.Gob_t_typeid.T_typeId, stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_wiretype.T_wireType>>, ?_decoderCache:stdgo.GoMap<stdgo._internal.reflect.Reflect_type_.Type_, stdgo.GoMap<stdgo._internal.encoding.gob.Gob_t_typeid.T_typeId, stdgo.Ref<stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decengine.T_decEngine>>>>, ?_ignorerCache:stdgo.GoMap<stdgo._internal.encoding.gob.Gob_t_typeid.T_typeId, stdgo.Ref<stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decengine.T_decEngine>>>, ?_freeList:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decoderstate.T_decoderState>, ?_countBuf:stdgo.Slice<stdgo.GoUInt8>, ?_err:stdgo.Error) {
        if (_mutex != null) this._mutex = _mutex;
        if (_r != null) this._r = _r;
        if (_buf != null) this._buf = _buf;
        if (_wireType != null) this._wireType = _wireType;
        if (_decoderCache != null) this._decoderCache = _decoderCache;
        if (_ignorerCache != null) this._ignorerCache = _ignorerCache;
        if (_freeList != null) this._freeList = _freeList;
        if (_countBuf != null) this._countBuf = _countBuf;
        if (_err != null) this._err = _err;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Decoder(_mutex, _r, _buf, _wireType, _decoderCache, _ignorerCache, _freeList, _countBuf, _err);
    }
}
