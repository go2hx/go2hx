package stdgo._internal.encoding.gob;
import stdgo._internal.flag.Flag;
import stdgo._internal.errors.Errors;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.strings.Strings;
import stdgo._internal.time.Time;
import stdgo._internal.math.rand.Rand;
import stdgo._internal.testing.Testing;
import stdgo._internal.io.Io;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.math.Math;
import stdgo._internal.internal.saferio.Saferio;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.encoding.hex.Hex;
import stdgo._internal.sort.Sort;
import stdgo._internal.os.Os;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.encoding.binary.Binary;
@:structInit @:using(stdgo._internal.encoding.gob.Gob_T_typeInfo_static_extension.T_typeInfo_static_extension) class T_typeInfo {
    public var _id : stdgo._internal.encoding.gob.Gob_T_typeId.T_typeId = ((0 : stdgo.GoInt32) : stdgo._internal.encoding.gob.Gob_T_typeId.T_typeId);
    public var _encInit : stdgo._internal.sync.Sync_Mutex.Mutex = ({} : stdgo._internal.sync.Sync_Mutex.Mutex);
    public var _encoder : _internal.sync.atomic_.Atomic__Pointer_.Pointer_<stdgo._internal.encoding.gob.Gob_T_encEngine.T_encEngine> = ({} : _internal.sync.atomic_.Atomic__Pointer_.Pointer_<stdgo._internal.encoding.gob.Gob_T_encEngine.T_encEngine>);
    public var _wire : stdgo._internal.encoding.gob.Gob_T_wireType.T_wireType = ({} : stdgo._internal.encoding.gob.Gob_T_wireType.T_wireType);
    public function new(?_id:stdgo._internal.encoding.gob.Gob_T_typeId.T_typeId, ?_encInit:stdgo._internal.sync.Sync_Mutex.Mutex, ?_encoder:_internal.sync.atomic_.Atomic__Pointer_.Pointer_<stdgo._internal.encoding.gob.Gob_T_encEngine.T_encEngine>, ?_wire:stdgo._internal.encoding.gob.Gob_T_wireType.T_wireType) {
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
