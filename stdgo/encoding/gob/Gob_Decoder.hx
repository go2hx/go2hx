package stdgo.encoding.gob;
@:structInit @:using(stdgo.encoding.gob.Gob.Decoder_static_extension) abstract Decoder(stdgo._internal.encoding.gob.Gob_Decoder.Decoder) from stdgo._internal.encoding.gob.Gob_Decoder.Decoder to stdgo._internal.encoding.gob.Gob_Decoder.Decoder {
    public var _mutex(get, set) : stdgo._internal.sync.Sync_Mutex.Mutex;
    function get__mutex():stdgo._internal.sync.Sync_Mutex.Mutex return this._mutex;
    function set__mutex(v:stdgo._internal.sync.Sync_Mutex.Mutex):stdgo._internal.sync.Sync_Mutex.Mutex {
        this._mutex = v;
        return v;
    }
    public var _r(get, set) : stdgo._internal.io.Io_Reader.Reader;
    function get__r():stdgo._internal.io.Io_Reader.Reader return this._r;
    function set__r(v:stdgo._internal.io.Io_Reader.Reader):stdgo._internal.io.Io_Reader.Reader {
        this._r = v;
        return v;
    }
    public var _buf(get, set) : T_decBuffer;
    function get__buf():T_decBuffer return this._buf;
    function set__buf(v:T_decBuffer):T_decBuffer {
        this._buf = v;
        return v;
    }
    public var _wireType(get, set) : stdgo.GoMap<stdgo._internal.encoding.gob.Gob_T_typeId.T_typeId, stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_wireType.T_wireType>>;
    function get__wireType():stdgo.GoMap<stdgo._internal.encoding.gob.Gob_T_typeId.T_typeId, stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_wireType.T_wireType>> return this._wireType;
    function set__wireType(v:stdgo.GoMap<stdgo._internal.encoding.gob.Gob_T_typeId.T_typeId, stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_wireType.T_wireType>>):stdgo.GoMap<stdgo._internal.encoding.gob.Gob_T_typeId.T_typeId, stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_wireType.T_wireType>> {
        this._wireType = (v : stdgo.GoMap<stdgo._internal.encoding.gob.Gob_T_typeId.T_typeId, stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_wireType.T_wireType>>);
        return v;
    }
    public var _decoderCache(get, set) : stdgo.GoMap<stdgo._internal.reflect.Reflect_Type_.Type_, stdgo.GoMap<stdgo._internal.encoding.gob.Gob_T_typeId.T_typeId, stdgo.Ref<stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_decEngine.T_decEngine>>>>;
    function get__decoderCache():stdgo.GoMap<stdgo._internal.reflect.Reflect_Type_.Type_, stdgo.GoMap<stdgo._internal.encoding.gob.Gob_T_typeId.T_typeId, stdgo.Ref<stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_decEngine.T_decEngine>>>> return this._decoderCache;
    function set__decoderCache(v:stdgo.GoMap<stdgo._internal.reflect.Reflect_Type_.Type_, stdgo.GoMap<stdgo._internal.encoding.gob.Gob_T_typeId.T_typeId, stdgo.Ref<stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_decEngine.T_decEngine>>>>):stdgo.GoMap<stdgo._internal.reflect.Reflect_Type_.Type_, stdgo.GoMap<stdgo._internal.encoding.gob.Gob_T_typeId.T_typeId, stdgo.Ref<stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_decEngine.T_decEngine>>>> {
        this._decoderCache = (v : stdgo.GoMap<stdgo._internal.reflect.Reflect_Type_.Type_, stdgo.GoMap<stdgo._internal.encoding.gob.Gob_T_typeId.T_typeId, stdgo.Ref<stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_decEngine.T_decEngine>>>>);
        return v;
    }
    public var _ignorerCache(get, set) : stdgo.GoMap<stdgo._internal.encoding.gob.Gob_T_typeId.T_typeId, stdgo.Ref<stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_decEngine.T_decEngine>>>;
    function get__ignorerCache():stdgo.GoMap<stdgo._internal.encoding.gob.Gob_T_typeId.T_typeId, stdgo.Ref<stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_decEngine.T_decEngine>>> return this._ignorerCache;
    function set__ignorerCache(v:stdgo.GoMap<stdgo._internal.encoding.gob.Gob_T_typeId.T_typeId, stdgo.Ref<stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_decEngine.T_decEngine>>>):stdgo.GoMap<stdgo._internal.encoding.gob.Gob_T_typeId.T_typeId, stdgo.Ref<stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_decEngine.T_decEngine>>> {
        this._ignorerCache = (v : stdgo.GoMap<stdgo._internal.encoding.gob.Gob_T_typeId.T_typeId, stdgo.Ref<stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_decEngine.T_decEngine>>>);
        return v;
    }
    public var _freeList(get, set) : T_decoderState;
    function get__freeList():T_decoderState return this._freeList;
    function set__freeList(v:T_decoderState):T_decoderState {
        this._freeList = (v : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_decoderState.T_decoderState>);
        return v;
    }
    public var _countBuf(get, set) : Array<std.UInt>;
    function get__countBuf():Array<std.UInt> return [for (i in this._countBuf) i];
    function set__countBuf(v:Array<std.UInt>):Array<std.UInt> {
        this._countBuf = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var _err(get, set) : stdgo.Error;
    function get__err():stdgo.Error return this._err;
    function set__err(v:stdgo.Error):stdgo.Error {
        this._err = (v : stdgo.Error);
        return v;
    }
    public function new(?_mutex:stdgo._internal.sync.Sync_Mutex.Mutex, ?_r:stdgo._internal.io.Io_Reader.Reader, ?_buf:T_decBuffer, ?_wireType:stdgo.GoMap<stdgo._internal.encoding.gob.Gob_T_typeId.T_typeId, stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_wireType.T_wireType>>, ?_decoderCache:stdgo.GoMap<stdgo._internal.reflect.Reflect_Type_.Type_, stdgo.GoMap<stdgo._internal.encoding.gob.Gob_T_typeId.T_typeId, stdgo.Ref<stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_decEngine.T_decEngine>>>>, ?_ignorerCache:stdgo.GoMap<stdgo._internal.encoding.gob.Gob_T_typeId.T_typeId, stdgo.Ref<stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_decEngine.T_decEngine>>>, ?_freeList:T_decoderState, ?_countBuf:Array<std.UInt>, ?_err:stdgo.Error) this = new stdgo._internal.encoding.gob.Gob_Decoder.Decoder(_mutex, _r, _buf, (_wireType : stdgo.GoMap<stdgo._internal.encoding.gob.Gob_T_typeId.T_typeId, stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_wireType.T_wireType>>), (_decoderCache : stdgo.GoMap<stdgo._internal.reflect.Reflect_Type_.Type_, stdgo.GoMap<stdgo._internal.encoding.gob.Gob_T_typeId.T_typeId, stdgo.Ref<stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_decEngine.T_decEngine>>>>), (_ignorerCache : stdgo.GoMap<stdgo._internal.encoding.gob.Gob_T_typeId.T_typeId, stdgo.Ref<stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_decEngine.T_decEngine>>>), (_freeList : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_decoderState.T_decoderState>), ([for (i in _countBuf) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>), (_err : stdgo.Error));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
