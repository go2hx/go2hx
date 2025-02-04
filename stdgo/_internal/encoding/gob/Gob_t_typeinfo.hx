package stdgo._internal.encoding.gob;
@:structInit @:using(stdgo._internal.encoding.gob.Gob_t_typeinfo_static_extension.T_typeInfo_static_extension) class T_typeInfo {
    public var _id : stdgo._internal.encoding.gob.Gob_t_typeid.T_typeId = ((0 : stdgo.GoInt32) : stdgo._internal.encoding.gob.Gob_t_typeid.T_typeId);
    public var _encInit : stdgo._internal.sync.Sync_mutex.Mutex = ({} : stdgo._internal.sync.Sync_mutex.Mutex);
    public var _encoder : stdgo._internal.sync.atomic_.Atomic__pointer_.Pointer_<stdgo._internal.encoding.gob.Gob_t_encengine.T_encEngine> = ({} : stdgo._internal.sync.atomic_.Atomic__pointer_.Pointer_<stdgo._internal.encoding.gob.Gob_t_encengine.T_encEngine>);
    public var _wire : stdgo._internal.encoding.gob.Gob_t_wiretype.T_wireType = ({} : stdgo._internal.encoding.gob.Gob_t_wiretype.T_wireType);
    public function new(?_id:stdgo._internal.encoding.gob.Gob_t_typeid.T_typeId, ?_encInit:stdgo._internal.sync.Sync_mutex.Mutex, ?_encoder:stdgo._internal.sync.atomic_.Atomic__pointer_.Pointer_<stdgo._internal.encoding.gob.Gob_t_encengine.T_encEngine>, ?_wire:stdgo._internal.encoding.gob.Gob_t_wiretype.T_wireType) {
        if (_id != null) this._id = _id;
        if (_encInit != null) this._encInit = _encInit;
        if (_encoder != null) this._encoder = _encoder;
        if (_wire != null) this._wire = _wire;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_typeInfo(_id, _encInit, _encoder, _wire);
    }
}
