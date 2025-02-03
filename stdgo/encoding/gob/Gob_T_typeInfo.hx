package stdgo.encoding.gob;
@:structInit @:using(stdgo.encoding.gob.Gob.T_typeInfo_static_extension) abstract T_typeInfo(stdgo._internal.encoding.gob.Gob_T_typeInfo.T_typeInfo) from stdgo._internal.encoding.gob.Gob_T_typeInfo.T_typeInfo to stdgo._internal.encoding.gob.Gob_T_typeInfo.T_typeInfo {
    public var _id(get, set) : T_typeId;
    function get__id():T_typeId return this._id;
    function set__id(v:T_typeId):T_typeId {
        this._id = v;
        return v;
    }
    public var _encInit(get, set) : stdgo._internal.sync.Sync_Mutex.Mutex;
    function get__encInit():stdgo._internal.sync.Sync_Mutex.Mutex return this._encInit;
    function set__encInit(v:stdgo._internal.sync.Sync_Mutex.Mutex):stdgo._internal.sync.Sync_Mutex.Mutex {
        this._encInit = v;
        return v;
    }
    public var _encoder(get, set) : stdgo._internal.sync.atomic_.Atomic__Pointer_.Pointer_<stdgo._internal.encoding.gob.Gob_T_encEngine.T_encEngine>;
    function get__encoder():stdgo._internal.sync.atomic_.Atomic__Pointer_.Pointer_<stdgo._internal.encoding.gob.Gob_T_encEngine.T_encEngine> return this._encoder;
    function set__encoder(v:stdgo._internal.sync.atomic_.Atomic__Pointer_.Pointer_<stdgo._internal.encoding.gob.Gob_T_encEngine.T_encEngine>):stdgo._internal.sync.atomic_.Atomic__Pointer_.Pointer_<stdgo._internal.encoding.gob.Gob_T_encEngine.T_encEngine> {
        this._encoder = v;
        return v;
    }
    public var _wire(get, set) : T_wireType;
    function get__wire():T_wireType return this._wire;
    function set__wire(v:T_wireType):T_wireType {
        this._wire = v;
        return v;
    }
    public function new(?_id:T_typeId, ?_encInit:stdgo._internal.sync.Sync_Mutex.Mutex, ?_encoder:stdgo._internal.sync.atomic_.Atomic__Pointer_.Pointer_<stdgo._internal.encoding.gob.Gob_T_encEngine.T_encEngine>, ?_wire:T_wireType) this = new stdgo._internal.encoding.gob.Gob_T_typeInfo.T_typeInfo(_id, _encInit, _encoder, _wire);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
