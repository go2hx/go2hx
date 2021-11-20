package stdgo.encoding.gob;
import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;
typedef T_gobType = StructType & {
    public function _id():T_typeId;
    public function _setId(_id:T_typeId):Void;
    public function _name():GoString;
    public function _string():GoString;
    public function _safeString(_seen:GoMap<T_typeId, Bool>):GoString;
};
typedef GobEncoder = StructType & {
    public function gobEncode():{ var _0 : Slice<GoByte>; var _1 : Error; };
};
typedef GobDecoder = StructType & {
    public function gobDecode(arg0:Slice<GoByte>):Error;
};
@:named class T_decHelper {
    public var __t__ : (Pointer<T_decoderState>, stdgo.reflect.Reflect.Value, GoInt, stdgo.Error) -> Bool;
    public function new(?t:(Pointer<T_decoderState>, stdgo.reflect.Reflect.Value, GoInt, stdgo.Error) -> Bool) {
        __t__ = t == null ? null : t;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    @:implicit
    public function toString():GoString return Go.string(__t__);
    public function __copy__() return new T_decHelper(__t__);
}
@:structInit class T_decoderState {
    public function _getLength():{ var _0 : GoInt; var _1 : Bool; } {
        var _state = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _n:GoInt = ((_state.value._decodeUint() : GoInt));
        if (_n < ((0 : GoInt)) || _state.value._b.value.len() < _n || _tooBig <= _n) {
            return { _0 : ((0 : GoInt)), _1 : false };
        };
        return { _0 : _n, _1 : true };
    }
    public function _decodeInt():GoInt64 {
        var _state = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _x:GoUInt64 = _state.value._decodeUint();
        if (_x & ((1 : GoUInt64)) != ((0 : GoUInt64))) {
            return -1 ^ (((_x >> ((1 : GoUnTypedInt))) : GoInt64));
        };
        return (((_x >> ((1 : GoUnTypedInt))) : GoInt64));
    }
    public function _decodeUint():GoUInt64 {
        var _state = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _x:GoUInt64 = ((0 : GoUInt64));
        var __tmp__ = _state.value._b.value.readByte(), _b:GoUInt8 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _error_(_err);
        };
        if (_b <= ((127 : GoUInt8))) {
            return ((_b : GoUInt64));
        };
        var _n:GoInt = -((((_b : GoInt8)) : GoInt));
        if (_n > _uint64Size) {
            _error_(_errBadUint);
        };
        var _buf:Slice<GoUInt8> = _state.value._b.value.bytes();
        if (_buf.length < _n) {
            _errorf("invalid uint data length %d: exceeds input size %d", Go.toInterface(_n), Go.toInterface(_buf.length));
        };
        for (_b in _buf.__slice__(((0 : GoInt)), _n)) {
            _x = (_x << ((8 : GoUnTypedInt))) | ((_b : GoUInt64));
        };
        _state.value._b.value.drop(_n);
        return _x;
    }
    public var _dec : Pointer<Decoder> = new Pointer<Decoder>().nil();
    public var _b : Pointer<T_decBuffer> = new Pointer<T_decBuffer>().nil();
    public var _fieldnum : GoInt = ((0 : GoInt));
    public var _next : Pointer<T_decoderState> = new Pointer<T_decoderState>().nil();
    public function new(?_dec:Pointer<Decoder>, ?_b:Pointer<T_decBuffer>, ?_fieldnum:GoInt, ?_next:Pointer<T_decoderState>) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(_dec) + " " + Go.string(_b) + " " + Go.string(_fieldnum) + " " + Go.string(_next) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_decoderState(_dec, _b, _fieldnum, _next);
    }
    public function __set__(__tmp__) {
        this._dec = __tmp__._dec;
        this._b = __tmp__._b;
        this._fieldnum = __tmp__._fieldnum;
        this._next = __tmp__._next;
        return this;
    }
}
@:structInit class T_decBuffer {
    public function reset():Void {
        var _d = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        _d.value._data = _d.value._data.__slice__(((0 : GoInt)), ((0 : GoInt)));
        _d.value._offset = ((0 : GoInt));
    }
    public function bytes():Slice<GoByte> {
        var _d = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return _d.value._data.__slice__(_d.value._offset);
    }
    public function len():GoInt {
        var _d = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return _d.value._data.length - _d.value._offset;
    }
    public function readByte():{ var _0 : GoByte; var _1 : Error; } {
        var _d = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_d.value._offset >= _d.value._data.length) {
            return { _0 : ((0 : GoUInt8)), _1 : stdgo.io.Io.eof };
        };
        var _c:GoUInt8 = _d.value._data[_d.value._offset];
        _d.value._offset++;
        return { _0 : _c, _1 : ((null : stdgo.Error)) };
    }
    public function size(_n:GoInt):Void {
        var _d = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        _d.value.reset();
        if (_d.value._data.cap() < _n) {
            _d.value._data = new Slice<GoUInt8>(...[for (i in 0 ... ((_n : GoInt)).toBasic()) ((0 : GoUInt8))]);
        } else {
            _d.value._data = _d.value._data.__slice__(((0 : GoInt)), _n);
        };
    }
    public function drop(_n:GoInt):Void {
        var _d = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_n > _d.value.len()) {
            throw "drop";
        };
        _d.value._offset = _d.value._offset + (_n);
    }
    public function read(_p:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var _d = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _n:GoInt = Go.copy(_p, _d.value._data.__slice__(_d.value._offset));
        if (_n == ((0 : GoInt)) && _p.length != ((0 : GoInt))) {
            return { _0 : ((0 : GoInt)), _1 : stdgo.io.Io.eof };
        };
        _d.value._offset = _d.value._offset + (_n);
        return { _0 : _n, _1 : ((null : stdgo.Error)) };
    }
    public var _data : Slice<GoUInt8> = new Slice<GoUInt8>().nil();
    public var _offset : GoInt = ((0 : GoInt));
    public function new(?_data:Slice<GoUInt8>, ?_offset:GoInt) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(_data) + " " + Go.string(_offset) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_decBuffer(_data, _offset);
    }
    public function __set__(__tmp__) {
        this._data = __tmp__._data;
        this._offset = __tmp__._offset;
        return this;
    }
}
@:named class T_decOp {
    public var __t__ : (Pointer<T_decInstr>, Pointer<T_decoderState>, stdgo.reflect.Reflect.Value) -> Void;
    public function new(?t:(Pointer<T_decInstr>, Pointer<T_decoderState>, stdgo.reflect.Reflect.Value) -> Void) {
        __t__ = t == null ? null : t;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    @:implicit
    public function toString():GoString return Go.string(__t__);
    public function __copy__() return new T_decOp(__t__);
}
@:structInit class T_decInstr {
    public var _op : T_decOp = new T_decOp();
    public var _field : GoInt = ((0 : GoInt));
    public var _index : Slice<GoInt> = new Slice<GoInt>().nil();
    public var _ovfl : stdgo.Error = ((null : stdgo.Error));
    public function new(?_op:T_decOp, ?_field:GoInt, ?_index:Slice<GoInt>, ?_ovfl:stdgo.Error) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(_op) + " " + Go.string(_field) + " " + Go.string(_index) + " " + Go.string(_ovfl) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_decInstr(_op, _field, _index, _ovfl);
    }
    public function __set__(__tmp__) {
        this._op = __tmp__._op;
        this._field = __tmp__._field;
        this._index = __tmp__._index;
        this._ovfl = __tmp__._ovfl;
        return this;
    }
}
@:structInit class T_decEngine {
    public var _instr : Slice<T_decInstr> = new Slice<T_decInstr>().nil();
    public var _numInstr : GoInt = ((0 : GoInt));
    public function new(?_instr:Slice<T_decInstr>, ?_numInstr:GoInt) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(_instr) + " " + Go.string(_numInstr) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_decEngine(_instr, _numInstr);
    }
    public function __set__(__tmp__) {
        this._instr = __tmp__._instr;
        this._numInstr = __tmp__._numInstr;
        return this;
    }
}
@:structInit class T_emptyStruct {
    public function new() stdgo.internal.Macro.initLocals();
    public function toString() {
        return "{}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_emptyStruct();
    }
    public function __set__(__tmp__) {
        return this;
    }
}
@:structInit class Decoder {
    public function decodeValue(_v:stdgo.reflect.Reflect.Value):Error {
        var _dec = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var recover_exception:Error = null;
        var deferstack:Array<Void -> Void> = [];
        if (_v.isValid()) {
            if (_v.kind().__t__ == stdgo.reflect.Reflect.ptr.__t__ && !_v.isNil()) {} else if (!_v.canSet()) {
                return stdgo.errors.Errors.new_("gob: DecodeValue of unassignable value");
            };
        };
        try {
            _dec.value._mutex.lock();
            deferstack.unshift(() -> _dec.value._mutex.unlock());
            _dec.value._buf.reset();
            _dec.value._err = ((null : stdgo.Error));
            var _id:T_typeId = _dec.value._decodeTypeSequence(false);
            if (_dec.value._err == null) {
                _dec.value._decodeValue(_id, _v.__copy__());
            };
            {
                for (defer in deferstack) {
                    defer();
                };
                return _dec.value._err;
            };
            for (defer in deferstack) {
                defer();
            };
        } catch(e) {
            recover_exception = stdgo.runtime.Runtime.newRuntime(e.message);
            {
                for (defer in deferstack) {
                    defer();
                };
                if (recover_exception != null) throw recover_exception;
                return ((null : stdgo.Error));
            };
        };
    }
    public function decode(_e:AnyInterface):Error {
        var _dec = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_e == null) {
            return _dec.value.decodeValue(new stdgo.reflect.Reflect.Value().__copy__());
        };
        var _value:stdgo.reflect.Reflect.Value = stdgo.reflect.Reflect.valueOf(Go.toInterface(_e)).__copy__();
        if (_value.type().kind().__t__ != stdgo.reflect.Reflect.ptr.__t__) {
            _dec.value._err = stdgo.errors.Errors.new_("gob: attempt to decode into a non-pointer");
            return _dec.value._err;
        };
        return _dec.value.decodeValue(_value.__copy__());
    }
    public function _decodeTypeSequence(_isInterface:Bool):T_typeId {
        var _dec = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        while (_dec.value._err == null) {
            if (_dec.value._buf.len() == ((0 : GoInt))) {
                if (!_dec.value._recvMessage()) {
                    break;
                };
            };
            var _id:T_typeId = new T_typeId(_dec.value._nextInt());
            if (_id.__t__ >= ((0 : GoInt32))) {
                return _id;
            };
            _dec.value._recvType(new T_typeId(-_id.__t__));
            if (_dec.value._err != null) {
                break;
            };
            if (_dec.value._buf.len() > ((0 : GoInt))) {
                if (!_isInterface) {
                    _dec.value._err = stdgo.errors.Errors.new_("extra data in buffer");
                    break;
                };
                _dec.value._nextUint();
            };
        };
        return new T_typeId(-((1 : GoUnTypedInt)));
    }
    public function _nextUint():GoUInt64 {
        var _dec = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var __tmp__ = _decodeUintReader(Go.pointer(_dec.value._buf).value, _dec.value._countBuf), _n:GoUInt64 = __tmp__._0, _:GoInt = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        if (_err != null) {
            _dec.value._err = _err;
        };
        return _n;
    }
    public function _nextInt():GoInt64 {
        var _dec = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var __tmp__ = _decodeUintReader(Go.pointer(_dec.value._buf).value, _dec.value._countBuf), _n:GoUInt64 = __tmp__._0, _:GoInt = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        if (_err != null) {
            _dec.value._err = _err;
        };
        return _toInt(_n);
    }
    public function _readMessage(_nbytes:GoInt):Void {
        var _dec = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_dec.value._buf.len() != ((0 : GoInt))) {
            throw "non-empty decoder buffer";
        };
        _dec.value._buf.size(_nbytes);
        {
            var __tmp__ = stdgo.io.Io.readFull(_dec.value._r, _dec.value._buf.bytes());
            _dec.value._err = __tmp__._1;
        };
        if (Go.toInterface(_dec.value._err) == Go.toInterface(stdgo.io.Io.eof)) {
            _dec.value._err = stdgo.io.Io.errUnexpectedEOF;
        };
    }
    public function _recvMessage():Bool {
        var _dec = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var __tmp__ = _decodeUintReader(_dec.value._r, _dec.value._countBuf), _nbytes:GoUInt64 = __tmp__._0, _:GoInt = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        if (_err != null) {
            _dec.value._err = _err;
            return false;
        };
        if (_nbytes >= _tooBig) {
            _dec.value._err = _errBadCount;
            return false;
        };
        _dec.value._readMessage(((_nbytes : GoInt)));
        return _dec.value._err == null;
    }
    public function _recvType(_id:T_typeId):Void {
        var _dec = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_id.__t__ < _firstUserId || _dec.value._wireType[_id] != null && !_dec.value._wireType[_id].isNil()) {
            _dec.value._err = stdgo.errors.Errors.new_("gob: duplicate type received");
            return;
        };
        var _wire:Pointer<T_wireType> = Go.pointer(new T_wireType());
        _dec.value._decodeValue(_tWireType, stdgo.reflect.Reflect.valueOf(Go.toInterface(_wire)).__copy__());
        if (_dec.value._err != null) {
            return;
        };
        _dec.value._wireType[_id] = _wire;
    }
    public function _decodeIgnoredValue(_wireId:T_typeId):Void {
        var _dec = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _enginePtr:Pointer<Pointer<T_decEngine>> = new Pointer<Pointer<T_decEngine>>().nil();
        {
            var __tmp__ = _dec.value._getIgnoreEnginePtr(_wireId);
            _enginePtr = __tmp__._0;
            _dec.value._err = __tmp__._1;
        };
        if (_dec.value._err != null) {
            return;
        };
        var _wire:Pointer<T_wireType> = _dec.value._wireType[_wireId];
        if (_wire != null && !_wire.isNil() && _wire.value.structT != null && !_wire.value.structT.isNil()) {
            _dec.value._ignoreStruct(_enginePtr.value);
        } else {
            _dec.value._ignoreSingle(_enginePtr.value);
        };
    }
    public function _decodeValue(_wireId:T_typeId, _value:stdgo.reflect.Reflect.Value):Void {
        var _dec = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var recover_exception:Error = null;
        var deferstack:Array<Void -> Void> = [];
        try {
            {
                var a0 = Go.pointer(_dec.value._err);
                deferstack.unshift(() -> _catchError(a0));
            };
            if (!_value.isValid()) {
                _dec.value._decodeIgnoredValue(_wireId);
                {
                    for (defer in deferstack) {
                        defer();
                    };
                    return;
                };
            };
            var _ut:Pointer<T_userTypeInfo> = _userType(_value.type());
            var _base:stdgo.reflect.Reflect.Type = _ut.value._base;
            var _enginePtr:Pointer<Pointer<T_decEngine>> = new Pointer<Pointer<T_decEngine>>().nil();
            {
                var __tmp__ = _dec.value._getDecEnginePtr(_wireId, _ut);
                _enginePtr = __tmp__._0;
                _dec.value._err = __tmp__._1;
            };
            if (_dec.value._err != null) {
                {
                    for (defer in deferstack) {
                        defer();
                    };
                    return;
                };
            };
            _value = _decAlloc(_value.__copy__()).__copy__();
            var _engine:Pointer<T_decEngine> = _enginePtr.value;
            {
                var _st:stdgo.reflect.Reflect.Type = _base;
                if (_st.kind().__t__ == stdgo.reflect.Reflect.struct.__t__ && _ut.value._externalDec == ((0 : GoInt))) {
                    var _wt:Pointer<T_wireType> = _dec.value._wireType[_wireId];
                    if (_engine.value._numInstr == ((0 : GoInt)) && _st.numField() > ((0 : GoInt)) && _wt != null && !_wt.isNil() && _wt.value.structT.value.field.length > ((0 : GoInt))) {
                        var _name:GoString = _base.name();
                        _errorf("type mismatch: no fields matched compiling decoder for %s", Go.toInterface(_name));
                    };
                    _dec.value._decodeStruct(_engine, _value.__copy__());
                } else {
                    _dec.value._decodeSingle(_engine, _value.__copy__());
                };
            };
            for (defer in deferstack) {
                defer();
            };
        } catch(e) {
            recover_exception = stdgo.runtime.Runtime.newRuntime(e.message);
            {
                for (defer in deferstack) {
                    defer();
                };
                if (recover_exception != null) throw recover_exception;
                return;
            };
        };
    }
    public function _getIgnoreEnginePtr(_wireId:T_typeId):{ var _0 : Pointer<Pointer<T_decEngine>>; var _1 : Error; } {
        var _dec = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _enginePtr:Pointer<Pointer<T_decEngine>> = new Pointer<Pointer<T_decEngine>>().nil(), _err:Error = ((null : stdgo.Error));
        var _ok:Bool = false;
        {
            {
                var __tmp__ = _dec.value._ignorerCache.exists(_wireId) ? { value : _dec.value._ignorerCache[_wireId], ok : true } : { value : _dec.value._ignorerCache.defaultValue(), ok : false };
                _enginePtr = __tmp__.value;
                _ok = __tmp__.ok;
            };
            if (!_ok) {
                _enginePtr = Go.pointer(new Pointer<T_decEngine>().nil());
                _dec.value._ignorerCache[_wireId] = _enginePtr;
                var _wire:Pointer<T_wireType> = _dec.value._wireType[_wireId];
                if (_wire != null && !_wire.isNil() && _wire.value.structT != null && !_wire.value.structT.isNil()) {
                    {
                        var __tmp__ = _dec.value._compileDec(_wireId, _userType(_emptyStructType));
                        _enginePtr.value = __tmp__._0;
                        _err = __tmp__._1;
                    };
                } else {
                    _enginePtr.value = _dec.value._compileIgnoreSingle(_wireId);
                };
                if (_err != null) {
                    _dec.value._ignorerCache.remove(_wireId);
                };
            };
        };
        return { _0 : _enginePtr, _1 : _err };
    }
    public function _getDecEnginePtr(_remoteId:T_typeId, _ut:Pointer<T_userTypeInfo>):{ var _0 : Pointer<Pointer<T_decEngine>>; var _1 : Error; } {
        var _dec = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _enginePtr:Pointer<Pointer<T_decEngine>> = new Pointer<Pointer<T_decEngine>>().nil(), _err:Error = ((null : stdgo.Error));
        var _rt:stdgo.reflect.Reflect.Type = _ut.value._user;
        var __tmp__ = _dec.value._decoderCache.exists(_rt) ? { value : _dec.value._decoderCache[_rt], ok : true } : { value : _dec.value._decoderCache.defaultValue(), ok : false }, _decoderMap:GoMap<T_typeId, Pointer<Pointer<T_decEngine>>> = __tmp__.value, _ok:Bool = __tmp__.ok;
        if (!_ok) {
            _decoderMap = new GoMap<T_typeId, Pointer<Pointer<T_decEngine>>>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.named("encoding/gob.typeId", [], stdgo.reflect.Reflect.GoType.basic(int32_kind)), stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("encoding/gob.decEngine", [], stdgo.reflect.Reflect.GoType.named("encoding/gob.decEngine", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_instr", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("encoding/gob.decInstr", [], stdgo.reflect.Reflect.GoType.named("encoding/gob.decInstr", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_op", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("encoding/gob.decOp", [], stdgo.reflect.Reflect.GoType.signature(false, [], [], stdgo.reflect.Reflect.GoType.invalidType)) }, { name : "_field", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) }, { name : "_index", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(int_kind)) }, { name : "_ovfl", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("error", [], stdgo.reflect.Reflect.GoType.interfaceType(false, [])) }])))) }, { name : "_numInstr", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) }]))))))));
            _dec.value._decoderCache[_rt] = _decoderMap;
        };
        {
            {
                var __tmp__ = _decoderMap.exists(_remoteId) ? { value : _decoderMap[_remoteId], ok : true } : { value : _decoderMap.defaultValue(), ok : false };
                _enginePtr = __tmp__.value;
                _ok = __tmp__.ok;
            };
            if (!_ok) {
                _enginePtr = Go.pointer(new Pointer<T_decEngine>().nil());
                _decoderMap[_remoteId] = _enginePtr;
                {
                    var __tmp__ = _dec.value._compileDec(_remoteId, _ut);
                    _enginePtr.value = __tmp__._0;
                    _err = __tmp__._1;
                };
                if (_err != null) {
                    _decoderMap.remove(_remoteId);
                };
            };
        };
        return { _0 : _enginePtr, _1 : _err };
    }
    public function _compileDec(_remoteId:T_typeId, _ut:Pointer<T_userTypeInfo>):{ var _0 : Pointer<T_decEngine>; var _1 : Error; } {
        var _dec = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var recover_exception:Error = null;
        var deferstack:Array<Void -> Void> = [];
        var _engine:Pointer<T_decEngine> = new Pointer<T_decEngine>().nil(), _err:Error = ((null : stdgo.Error));
        {
            var a0 = Go.pointer(_err);
            deferstack.unshift(() -> _catchError(a0));
        };
        try {
            var _rt:stdgo.reflect.Reflect.Type = _ut.value._base;
            var _srt:stdgo.reflect.Reflect.Type = _rt;
            if (_srt.kind().__t__ != stdgo.reflect.Reflect.struct.__t__ || _ut.value._externalDec != ((0 : GoInt))) {
                {
                    for (defer in deferstack) {
                        defer();
                    };
                    return _dec.value._compileSingle(_remoteId, _ut);
                };
            };
            var _wireStruct:Pointer<T_structType> = new Pointer<T_structType>().nil();
            {
                var __tmp__ = _builtinIdToType.exists(_remoteId) ? { value : _builtinIdToType[_remoteId], ok : true } : { value : _builtinIdToType.defaultValue(), ok : false }, _t:T_gobType = __tmp__.value, _ok:Bool = __tmp__.ok;
                if (_ok) {
                    {
                        var __tmp__ = try {
                            { value : ((_t.__underlying__().value : T_structType)), ok : true };
                        } catch(_) {
                            { value : new Pointer<T_structType>().nil(), ok : false };
                        };
                        _wireStruct = __tmp__.value;
                    };
                } else {
                    var _wire:Pointer<T_wireType> = _dec.value._wireType[_remoteId];
                    if (_wire == null || _wire.isNil()) {
                        _error_(_errBadType);
                    };
                    _wireStruct = _wire.value.structT;
                };
            };
            if (_wireStruct == null || _wireStruct.isNil()) {
                _errorf("type mismatch in decoder: want struct type %s; got non-struct", Go.toInterface(_rt));
            };
            _engine = Go.pointer(new T_decEngine());
            _engine.value._instr = new Slice<T_decInstr>(...[for (i in 0 ... ((_wireStruct.value.field.length : GoInt)).toBasic()) new T_decInstr()]);
            var _seen:GoMap<stdgo.reflect.Reflect.Type, Pointer<T_decOp>> = new GoMap<stdgo.reflect.Reflect.Type, Pointer<T_decOp>>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.named("reflect.Type", [], stdgo.reflect.Reflect.GoType.interfaceType(false, [])), stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("encoding/gob.decOp", [], stdgo.reflect.Reflect.GoType.signature(false, [], [], stdgo.reflect.Reflect.GoType.invalidType))))));
            {
                var _fieldnum:GoInt = ((0 : GoInt));
                Go.cfor(_fieldnum < _wireStruct.value.field.length, _fieldnum++, {
                    var _wireField:Pointer<T_fieldType> = _wireStruct.value.field[_fieldnum];
                    if (_wireField.value.name == (("" : GoString))) {
                        _errorf("empty name for remote field of type %s", Go.toInterface(_wireStruct.value.commonType.name));
                    };
                    var _ovfl:stdgo.Error = _overflow(_wireField.value.name);
                    var __tmp__ = _srt.fieldByName(_wireField.value.name), _localField:stdgo.reflect.Reflect.StructField = __tmp__._0, _present:Bool = __tmp__._1;
                    if (!_present || !_isExported(_wireField.value.name)) {
                        var _op:Pointer<T_decOp> = _dec.value._decIgnoreOpFor(_wireField.value.id, new GoMap<T_typeId, Pointer<T_decOp>>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.named("encoding/gob.typeId", [], stdgo.reflect.Reflect.GoType.basic(int32_kind)), stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("encoding/gob.decOp", [], stdgo.reflect.Reflect.GoType.signature(false, [], [], stdgo.reflect.Reflect.GoType.invalidType)))))));
                        _engine.value._instr[_fieldnum] = new T_decInstr(_op.value.__copy__(), _fieldnum, new Slice<GoInt>().nil(), _ovfl).__copy__();
                        continue;
                    };
                    if (!_dec.value._compatibleType(_localField.type, _wireField.value.id, new GoMap<stdgo.reflect.Reflect.Type, T_typeId>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.named("reflect.Type", [], stdgo.reflect.Reflect.GoType.interfaceType(false, [])), stdgo.reflect.Reflect.GoType.named("encoding/gob.typeId", [], stdgo.reflect.Reflect.GoType.basic(int32_kind))))))) {
                        _errorf("wrong type (%s) for received field %s.%s", Go.toInterface(_localField.type), Go.toInterface(_wireStruct.value.commonType.name), Go.toInterface(_wireField.value.name));
                    };
                    var _op:Pointer<T_decOp> = _dec.value._decOpFor(_wireField.value.id, _localField.type, _localField.name, _seen);
                    _engine.value._instr[_fieldnum] = new T_decInstr(_op.value.__copy__(), _fieldnum, _localField.index, _ovfl).__copy__();
                    _engine.value._numInstr++;
                });
            };
            {
                for (defer in deferstack) {
                    defer();
                };
                return { _0 : _engine, _1 : _err };
            };
            for (defer in deferstack) {
                defer();
            };
        } catch(e) {
            recover_exception = stdgo.runtime.Runtime.newRuntime(e.message);
            {
                for (defer in deferstack) {
                    defer();
                };
                if (recover_exception != null) throw recover_exception;
                return { _0 : _engine, _1 : _err };
            };
        };
    }
    public function _compileIgnoreSingle(_remoteId:T_typeId):Pointer<T_decEngine> {
        var _dec = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _engine:Pointer<T_decEngine> = Go.pointer(new T_decEngine());
        _engine.value._instr = new Slice<T_decInstr>(...[for (i in 0 ... ((((1 : GoInt)) : GoInt)).toBasic()) new T_decInstr()]);
        var _op:Pointer<T_decOp> = _dec.value._decIgnoreOpFor(_remoteId, new GoMap<T_typeId, Pointer<T_decOp>>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.named("encoding/gob.typeId", [], stdgo.reflect.Reflect.GoType.basic(int32_kind)), stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("encoding/gob.decOp", [], stdgo.reflect.Reflect.GoType.signature(false, [], [], stdgo.reflect.Reflect.GoType.invalidType)))))));
        var _ovfl:stdgo.Error = _overflow(_dec.value._typeString(_remoteId));
        _engine.value._instr[((0 : GoInt))] = new T_decInstr(_op.value.__copy__(), ((0 : GoInt)), new Slice<GoInt>().nil(), _ovfl).__copy__();
        _engine.value._numInstr = ((1 : GoInt));
        return _engine;
    }
    public function _compileSingle(_remoteId:T_typeId, _ut:Pointer<T_userTypeInfo>):{ var _0 : Pointer<T_decEngine>; var _1 : Error; } {
        var _dec = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _engine:Pointer<T_decEngine> = new Pointer<T_decEngine>().nil(), _err:Error = ((null : stdgo.Error));
        var _rt:stdgo.reflect.Reflect.Type = _ut.value._user;
        _engine = Go.pointer(new T_decEngine());
        _engine.value._instr = new Slice<T_decInstr>(...[for (i in 0 ... ((((1 : GoInt)) : GoInt)).toBasic()) new T_decInstr()]);
        var _name:GoString = _rt.toString();
        if (!_dec.value._compatibleType(_rt, _remoteId, new GoMap<stdgo.reflect.Reflect.Type, T_typeId>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.named("reflect.Type", [], stdgo.reflect.Reflect.GoType.interfaceType(false, [])), stdgo.reflect.Reflect.GoType.named("encoding/gob.typeId", [], stdgo.reflect.Reflect.GoType.basic(int32_kind))))))) {
            var _remoteType:GoString = _dec.value._typeString(_remoteId);
            if (_ut.value._base.kind().__t__ == stdgo.reflect.Reflect.interface_.__t__ && _remoteId.__t__ != _tInterface.__t__) {
                return { _0 : new Pointer<T_decEngine>().nil(), _1 : stdgo.errors.Errors.new_((("gob: local interface type " : GoString)) + _name + ((" can only be decoded from remote interface type; received concrete type " : GoString)) + _remoteType) };
            };
            return { _0 : new Pointer<T_decEngine>().nil(), _1 : stdgo.errors.Errors.new_((("gob: decoding into local type " : GoString)) + _name + ((", received remote type " : GoString)) + _remoteType) };
        };
        var _op:Pointer<T_decOp> = _dec.value._decOpFor(_remoteId, _rt, _name, new GoMap<stdgo.reflect.Reflect.Type, Pointer<T_decOp>>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.named("reflect.Type", [], stdgo.reflect.Reflect.GoType.interfaceType(false, [])), stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("encoding/gob.decOp", [], stdgo.reflect.Reflect.GoType.signature(false, [], [], stdgo.reflect.Reflect.GoType.invalidType)))))));
        var _ovfl:stdgo.Error = stdgo.errors.Errors.new_((("value for \"" : GoString)) + _name + (("\" out of range" : GoString)));
        _engine.value._instr[_singletonField] = new T_decInstr(_op.value.__copy__(), _singletonField, new Slice<GoInt>().nil(), _ovfl).__copy__();
        _engine.value._numInstr = ((1 : GoInt));
        return { _0 : _engine, _1 : _err };
    }
    public function _typeString(_remoteId:T_typeId):GoString {
        var _dec = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var recover_exception:Error = null;
        var deferstack:Array<Void -> Void> = [];
        _typeLock.lock();
        try {
            deferstack.unshift(() -> _typeLock.unlock());
            {
                var _t:T_gobType = _idToType[_remoteId];
                if (_t != null) {
                    {
                        for (defer in deferstack) {
                            defer();
                        };
                        return _t._string();
                    };
                };
            };
            {
                for (defer in deferstack) {
                    defer();
                };
                return _dec.value._wireType[_remoteId].value._string();
            };
            for (defer in deferstack) {
                defer();
            };
        } catch(e) {
            recover_exception = stdgo.runtime.Runtime.newRuntime(e.message);
            {
                for (defer in deferstack) {
                    defer();
                };
                if (recover_exception != null) throw recover_exception;
                return (("" : GoString));
            };
        };
    }
    public function _compatibleType(_fr:stdgo.reflect.Reflect.Type, _fw:T_typeId, _inProgress:GoMap<stdgo.reflect.Reflect.Type, T_typeId>):Bool {
        var _dec = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        {
            var __tmp__ = _inProgress.exists(_fr) ? { value : _inProgress[_fr], ok : true } : { value : _inProgress.defaultValue(), ok : false }, _rhs:T_typeId = __tmp__.value, _ok:Bool = __tmp__.ok;
            if (_ok) {
                return _rhs.__t__ == _fw.__t__;
            };
        };
        _inProgress[_fr] = _fw;
        var _ut:Pointer<T_userTypeInfo> = _userType(_fr);
        var __tmp__ = _dec.value._wireType.exists(_fw) ? { value : _dec.value._wireType[_fw], ok : true } : { value : _dec.value._wireType.defaultValue(), ok : false }, _wire:Pointer<T_wireType> = __tmp__.value, _ok:Bool = __tmp__.ok;
        if ((_ut.value._externalDec == _xGob) != (_ok && _wire.value.gobEncoderT != null && !_wire.value.gobEncoderT.isNil()) || (_ut.value._externalDec == _xBinary) != (_ok && _wire.value.binaryMarshalerT != null && !_wire.value.binaryMarshalerT.isNil()) || (_ut.value._externalDec == _xText) != (_ok && _wire.value.textMarshalerT != null && !_wire.value.textMarshalerT.isNil())) {
            return false;
        };
        if (_ut.value._externalDec != ((0 : GoInt))) {
            return true;
        };
        {
            var _t:stdgo.reflect.Reflect.Type = _ut.value._base;
            if (_t.kind().__t__ == stdgo.reflect.Reflect.bool.__t__) {
                return _fw.__t__ == _tBool.__t__;
            } else if (_t.kind().__t__ == stdgo.reflect.Reflect.int.__t__ || _t.kind().__t__ == stdgo.reflect.Reflect.int8.__t__ || _t.kind().__t__ == stdgo.reflect.Reflect.int16.__t__ || _t.kind().__t__ == stdgo.reflect.Reflect.int32.__t__ || _t.kind().__t__ == stdgo.reflect.Reflect.int64.__t__) {
                return _fw.__t__ == _tInt.__t__;
            } else if (_t.kind().__t__ == stdgo.reflect.Reflect.uint.__t__ || _t.kind().__t__ == stdgo.reflect.Reflect.uint8.__t__ || _t.kind().__t__ == stdgo.reflect.Reflect.uint16.__t__ || _t.kind().__t__ == stdgo.reflect.Reflect.uint32.__t__ || _t.kind().__t__ == stdgo.reflect.Reflect.uint64.__t__ || _t.kind().__t__ == stdgo.reflect.Reflect.uintptr.__t__) {
                return _fw.__t__ == _tUint.__t__;
            } else if (_t.kind().__t__ == stdgo.reflect.Reflect.float32.__t__ || _t.kind().__t__ == stdgo.reflect.Reflect.float64.__t__) {
                return _fw.__t__ == _tFloat.__t__;
            } else if (_t.kind().__t__ == stdgo.reflect.Reflect.complex64.__t__ || _t.kind().__t__ == stdgo.reflect.Reflect.complex128.__t__) {
                return _fw.__t__ == _tComplex.__t__;
            } else if (_t.kind().__t__ == stdgo.reflect.Reflect.toString.__t__) {
                return _fw.__t__ == _tString.__t__;
            } else if (_t.kind().__t__ == stdgo.reflect.Reflect.interface_.__t__) {
                return _fw.__t__ == _tInterface.__t__;
            } else if (_t.kind().__t__ == stdgo.reflect.Reflect.array.__t__) {
                if (!_ok || _wire.value.arrayT == null || _wire.value.arrayT.isNil()) {
                    return false;
                };
                var _array:Pointer<T_arrayType> = _wire.value.arrayT;
                return _t.len() == _array.value.len && _dec.value._compatibleType(_t.elem(), _array.value.elem, _inProgress);
            } else if (_t.kind().__t__ == stdgo.reflect.Reflect.map.__t__) {
                if (!_ok || _wire.value.mapT == null || _wire.value.mapT.isNil()) {
                    return false;
                };
                var mapType:Pointer<T_mapType> = _wire.value.mapT;
                return _dec.value._compatibleType(_t.key(), mapType.value.key, _inProgress) && _dec.value._compatibleType(_t.elem(), mapType.value.elem, _inProgress);
            } else if (_t.kind().__t__ == stdgo.reflect.Reflect.slice.__t__) {
                if (_t.elem().kind().__t__ == stdgo.reflect.Reflect.uint8.__t__) {
                    return _fw.__t__ == _tBytes.__t__;
                };
                var _sw:Pointer<T_sliceType> = new Pointer<T_sliceType>().nil();
                {
                    var __tmp__ = _builtinIdToType.exists(_fw) ? { value : _builtinIdToType[_fw], ok : true } : { value : _builtinIdToType.defaultValue(), ok : false }, _tt:T_gobType = __tmp__.value, _ok:Bool = __tmp__.ok;
                    if (_ok) {
                        {
                            var __tmp__ = try {
                                { value : ((_tt.__underlying__().value : T_sliceType)), ok : true };
                            } catch(_) {
                                { value : new Pointer<T_sliceType>().nil(), ok : false };
                            };
                            _sw = __tmp__.value;
                        };
                    } else if (_wire != null && !_wire.isNil()) {
                        _sw = _wire.value.sliceT;
                    };
                };
                var _elem:stdgo.reflect.Reflect.Type = _userType(_t.elem()).value._base;
                return _sw != null && !_sw.isNil() && _dec.value._compatibleType(_elem, _sw.value.elem, _inProgress);
            } else if (_t.kind().__t__ == stdgo.reflect.Reflect.struct.__t__) {
                return true;
            };
        };
    }
    public function _gobDecodeOpFor(_ut:Pointer<T_userTypeInfo>):Pointer<T_decOp> {
        var _dec = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _rcvrType:stdgo.reflect.Reflect.Type = _ut.value._user;
        if (_ut.value._decIndir == -((1 : GoUnTypedInt))) {
            _rcvrType = stdgo.reflect.Reflect.ptrTo(_rcvrType);
        } else if (_ut.value._decIndir > ((0 : GoInt8))) {
            {
                var _i:GoInt8 = ((((0 : GoInt8)) : GoInt8));
                Go.cfor(_i < _ut.value._decIndir, _i++, {
                    _rcvrType = _rcvrType.elem();
                });
            };
        };
        var _op:T_decOp = new T_decOp();
        _op = new T_decOp(function(_i:Pointer<T_decInstr>, _state:Pointer<T_decoderState>, _value:stdgo.reflect.Reflect.Value):Void {
            if (_value.kind().__t__ != stdgo.reflect.Reflect.ptr.__t__ && _rcvrType.kind().__t__ == stdgo.reflect.Reflect.ptr.__t__) {
                _value = _value.addr().__copy__();
            };
            _state.value._dec.value._decodeGobDecoder(_ut, _state, _value.__copy__());
        });
        return Go.pointer(_op);
    }
    public function _decIgnoreOpFor(_wireId:T_typeId, _inProgress:GoMap<T_typeId, Pointer<T_decOp>>):Pointer<T_decOp> {
        var _dec = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        {
            var _opPtr:Pointer<T_decOp> = _inProgress[_wireId];
            if (_opPtr != null && !_opPtr.isNil()) {
                return _opPtr;
            };
        };
        var __tmp__ = _decIgnoreOpMap.exists(_wireId) ? { value : _decIgnoreOpMap[_wireId], ok : true } : { value : _decIgnoreOpMap.defaultValue(), ok : false }, _op:T_decOp = __tmp__.value, _ok:Bool = __tmp__.ok;
        if (!_ok) {
            _inProgress[_wireId] = Go.pointer(_op);
            if (_wireId.__t__ == _tInterface.__t__) {
                _op = new T_decOp(function(_i:Pointer<T_decInstr>, _state:Pointer<T_decoderState>, _value:stdgo.reflect.Reflect.Value):Void {
                    _state.value._dec.value._ignoreInterface(_state);
                });
                return Go.pointer(_op);
            };
            var _wire:Pointer<T_wireType> = _dec.value._wireType[_wireId];
            if (_wire == null || _wire.isNil()) {
                _errorf("bad data: undefined type %s", Go.toInterface(_wireId._string()));
            } else if (_wire.value.arrayT != null && !_wire.value.arrayT.isNil()) {
                var _elemId:T_typeId = _wire.value.arrayT.value.elem;
                var _elemOp:Pointer<T_decOp> = _dec.value._decIgnoreOpFor(_elemId, _inProgress);
                _op = new T_decOp(function(_i:Pointer<T_decInstr>, _state:Pointer<T_decoderState>, _value:stdgo.reflect.Reflect.Value):Void {
                    _state.value._dec.value._ignoreArray(_state, _elemOp.value.__copy__(), _wire.value.arrayT.value.len);
                });
            } else if (_wire.value.mapT != null && !_wire.value.mapT.isNil()) {
                var _keyId:T_typeId = _dec.value._wireType[_wireId].value.mapT.value.key;
                var _elemId:T_typeId = _dec.value._wireType[_wireId].value.mapT.value.elem;
                var _keyOp:Pointer<T_decOp> = _dec.value._decIgnoreOpFor(_keyId, _inProgress);
                var _elemOp:Pointer<T_decOp> = _dec.value._decIgnoreOpFor(_elemId, _inProgress);
                _op = new T_decOp(function(_i:Pointer<T_decInstr>, _state:Pointer<T_decoderState>, _value:stdgo.reflect.Reflect.Value):Void {
                    _state.value._dec.value._ignoreMap(_state, _keyOp.value.__copy__(), _elemOp.value.__copy__());
                });
            } else if (_wire.value.sliceT != null && !_wire.value.sliceT.isNil()) {
                var _elemId:T_typeId = _wire.value.sliceT.value.elem;
                var _elemOp:Pointer<T_decOp> = _dec.value._decIgnoreOpFor(_elemId, _inProgress);
                _op = new T_decOp(function(_i:Pointer<T_decInstr>, _state:Pointer<T_decoderState>, _value:stdgo.reflect.Reflect.Value):Void {
                    _state.value._dec.value._ignoreSlice(_state, _elemOp.value.__copy__());
                });
            } else if (_wire.value.structT != null && !_wire.value.structT.isNil()) {
                var __tmp__ = _dec.value._getIgnoreEnginePtr(_wireId), _enginePtr:Pointer<Pointer<T_decEngine>> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    _error_(_err);
                };
                _op = new T_decOp(function(_i:Pointer<T_decInstr>, _state:Pointer<T_decoderState>, _value:stdgo.reflect.Reflect.Value):Void {
                    _state.value._dec.value._ignoreStruct(_enginePtr.value);
                });
            } else if (_wire.value.gobEncoderT != null && !_wire.value.gobEncoderT.isNil() || _wire.value.binaryMarshalerT != null && !_wire.value.binaryMarshalerT.isNil() || _wire.value.textMarshalerT != null && !_wire.value.textMarshalerT.isNil()) {
                _op = new T_decOp(function(_i:Pointer<T_decInstr>, _state:Pointer<T_decoderState>, _value:stdgo.reflect.Reflect.Value):Void {
                    _state.value._dec.value._ignoreGobDecoder(_state);
                });
            };
        };
        if (_op.__t__ == null) {
            _errorf("bad data: ignore can\'t handle type %s", Go.toInterface(_wireId._string()));
        };
        return Go.pointer(_op);
    }
    public function _decOpFor(_wireId:T_typeId, _rt:stdgo.reflect.Reflect.Type, _name:GoString, _inProgress:GoMap<stdgo.reflect.Reflect.Type, Pointer<T_decOp>>):Pointer<T_decOp> {
        var _dec = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _ut:Pointer<T_userTypeInfo> = _userType(_rt);
        if (_ut.value._externalDec != ((0 : GoInt))) {
            return _dec.value._gobDecodeOpFor(_ut);
        };
        {
            var _opPtr:Pointer<T_decOp> = _inProgress[_rt];
            if (_opPtr != null && !_opPtr.isNil()) {
                return _opPtr;
            };
        };
        var _typ:stdgo.reflect.Reflect.Type = _ut.value._base;
        var _op:T_decOp = new T_decOp();
        var _k:stdgo.reflect.Reflect.Kind = _typ.kind();
        if (_k.__t__ < _decOpTable.length) {
            _op = _decOpTable[_k.__t__].__copy__();
        };
        if (_op.__t__ == null) {
            _inProgress[_rt] = Go.pointer(_op);
            {
                var _t:stdgo.reflect.Reflect.Type = _typ;
                {
                    var __switchIndex__ = -1;
                    while (true) {
                        if (_t.kind().__t__ == stdgo.reflect.Reflect.array.__t__) {
                            _name = (("element of " : GoString)) + _name;
                            var _elemId:T_typeId = _dec.value._wireType[_wireId].value.arrayT.value.elem;
                            var _elemOp:Pointer<T_decOp> = _dec.value._decOpFor(_elemId, _t.elem(), _name, _inProgress);
                            var _ovfl:stdgo.Error = _overflow(_name);
                            var _helper:T_decHelper = _decArrayHelper[_t.elem().kind()].__copy__();
                            _op = new T_decOp(function(_i:Pointer<T_decInstr>, _state:Pointer<T_decoderState>, _value:stdgo.reflect.Reflect.Value):Void {
                                _state.value._dec.value._decodeArray(_state, _value.__copy__(), _elemOp.value.__copy__(), _t.len(), _ovfl, _helper.__copy__());
                            });
                            break;
                        } else if (_t.kind().__t__ == stdgo.reflect.Reflect.map.__t__) {
                            var _keyId:T_typeId = _dec.value._wireType[_wireId].value.mapT.value.key;
                            var _elemId:T_typeId = _dec.value._wireType[_wireId].value.mapT.value.elem;
                            var _keyOp:Pointer<T_decOp> = _dec.value._decOpFor(_keyId, _t.key(), (("key of " : GoString)) + _name, _inProgress);
                            var _elemOp:Pointer<T_decOp> = _dec.value._decOpFor(_elemId, _t.elem(), (("element of " : GoString)) + _name, _inProgress);
                            var _ovfl:stdgo.Error = _overflow(_name);
                            _op = new T_decOp(function(_i:Pointer<T_decInstr>, _state:Pointer<T_decoderState>, _value:stdgo.reflect.Reflect.Value):Void {
                                _state.value._dec.value._decodeMap(_t, _state, _value.__copy__(), _keyOp.value.__copy__(), _elemOp.value.__copy__(), _ovfl);
                            });
                            break;
                        } else if (_t.kind().__t__ == stdgo.reflect.Reflect.slice.__t__) {
                            _name = (("element of " : GoString)) + _name;
                            if (_t.elem().kind().__t__ == stdgo.reflect.Reflect.uint8.__t__) {
                                _op = new T_decOp(_decUint8Slice);
                                break;
                            };
                            var _elemId:T_typeId = new T_typeId();
                            {
                                var __tmp__ = _builtinIdToType.exists(_wireId) ? { value : _builtinIdToType[_wireId], ok : true } : { value : _builtinIdToType.defaultValue(), ok : false }, _tt:T_gobType = __tmp__.value, _ok:Bool = __tmp__.ok;
                                if (_ok) {
                                    _elemId = ((_tt.__underlying__().value : T_sliceType)).value.elem;
                                } else {
                                    _elemId = _dec.value._wireType[_wireId].value.sliceT.value.elem;
                                };
                            };
                            var _elemOp:Pointer<T_decOp> = _dec.value._decOpFor(_elemId, _t.elem(), _name, _inProgress);
                            var _ovfl:stdgo.Error = _overflow(_name);
                            var _helper:T_decHelper = _decSliceHelper[_t.elem().kind()].__copy__();
                            _op = new T_decOp(function(_i:Pointer<T_decInstr>, _state:Pointer<T_decoderState>, _value:stdgo.reflect.Reflect.Value):Void {
                                _state.value._dec.value._decodeSlice(_state, _value.__copy__(), _elemOp.value.__copy__(), _ovfl, _helper.__copy__());
                            });
                            break;
                        } else if (_t.kind().__t__ == stdgo.reflect.Reflect.struct.__t__) {
                            var _ut:Pointer<T_userTypeInfo> = _userType(_typ);
                            var __tmp__ = _dec.value._getDecEnginePtr(_wireId, _ut), _enginePtr:Pointer<Pointer<T_decEngine>> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                            if (_err != null) {
                                _error_(_err);
                            };
                            _op = new T_decOp(function(_i:Pointer<T_decInstr>, _state:Pointer<T_decoderState>, _value:stdgo.reflect.Reflect.Value):Void {
                                _dec.value._decodeStruct(_enginePtr.value, _value.__copy__());
                            });
                            break;
                        } else if (_t.kind().__t__ == stdgo.reflect.Reflect.interface_.__t__) {
                            _op = new T_decOp(function(_i:Pointer<T_decInstr>, _state:Pointer<T_decoderState>, _value:stdgo.reflect.Reflect.Value):Void {
                                _state.value._dec.value._decodeInterface(_t, _state, _value.__copy__());
                            });
                            break;
                        };
                        break;
                    };
                };
            };
        };
        if (_op.__t__ == null) {
            _errorf("decode can\'t handle type %s", Go.toInterface(_rt));
        };
        return Go.pointer(_op);
    }
    public function _ignoreGobDecoder(_state:Pointer<T_decoderState>):Void {
        var _dec = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var __tmp__ = _state.value._getLength(), _n:GoInt = __tmp__._0, _ok:Bool = __tmp__._1;
        if (!_ok) {
            _errorf("GobDecoder: length too large for buffer");
        };
        var _bn:GoInt = _state.value._b.value.len();
        if (_bn < _n) {
            _errorf("GobDecoder: invalid data length %d: exceeds input size %d", Go.toInterface(_n), Go.toInterface(_bn));
        };
        _state.value._b.value.drop(_n);
    }
    public function _decodeGobDecoder(_ut:Pointer<T_userTypeInfo>, _state:Pointer<T_decoderState>, _value:stdgo.reflect.Reflect.Value):Void {
        var _dec = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var __tmp__ = _state.value._getLength(), _n:GoInt = __tmp__._0, _ok:Bool = __tmp__._1;
        if (!_ok) {
            _errorf("GobDecoder: length too large for buffer");
        };
        var _b:Slice<GoUInt8> = _state.value._b.value.bytes();
        if (_b.length < _n) {
            _errorf("GobDecoder: invalid data length %d: exceeds input size %d", Go.toInterface(_n), Go.toInterface(_b.length));
        };
        _b = _b.__slice__(0, _n);
        _state.value._b.value.drop(_n);
        var _err:Error = ((null : stdgo.Error));
        if (_ut.value._externalDec == _xGob) {
            _err = ((_value.interface_().value : GobDecoder)).gobDecode(_b);
        } else if (_ut.value._externalDec == _xBinary) {
            _err = ((_value.interface_().value : stdgo.encoding.Encoding.BinaryUnmarshaler)).unmarshalBinary(_b);
        } else if (_ut.value._externalDec == _xText) {
            _err = ((_value.interface_().value : stdgo.encoding.Encoding.TextUnmarshaler)).unmarshalText(_b);
        };
        if (_err != null) {
            _error_(_err);
        };
    }
    public function _ignoreInterface(_state:Pointer<T_decoderState>):Void {
        var _dec = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var __tmp__ = _state.value._getLength(), _n:GoInt = __tmp__._0, _ok:Bool = __tmp__._1;
        if (!_ok) {
            _errorf("bad interface encoding: name too large for buffer");
        };
        var _bn:GoInt = _state.value._b.value.len();
        if (_bn < _n) {
            _errorf("invalid interface value length %d: exceeds input size %d", Go.toInterface(_n), Go.toInterface(_bn));
        };
        _state.value._b.value.drop(_n);
        var _id:T_typeId = _dec.value._decodeTypeSequence(true);
        if (_id.__t__ < ((0 : GoInt32))) {
            _error_(_dec.value._err);
        };
        {
            var __tmp__ = _state.value._getLength();
            _n = __tmp__._0;
            _ok = __tmp__._1;
        };
        if (!_ok) {
            _errorf("bad interface encoding: data length too large for buffer");
        };
        _state.value._b.value.drop(_n);
    }
    public function _decodeInterface(_ityp:stdgo.reflect.Reflect.Type, _state:Pointer<T_decoderState>, _value:stdgo.reflect.Reflect.Value):Void {
        var _dec = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _nr:GoUInt64 = _state.value._decodeUint();
        if (_nr > (((1 : GoUnTypedInt)) << ((31 : GoUnTypedInt)))) {
            _errorf("invalid type name length %d", Go.toInterface(_nr));
        };
        if (_nr > ((_state.value._b.value.len() : GoUInt64))) {
            _errorf("invalid type name length %d: exceeds input size", Go.toInterface(_nr));
        };
        var _n:GoInt = ((_nr : GoInt));
        var _name:Slice<GoUInt8> = _state.value._b.value.bytes().__slice__(0, _n);
        _state.value._b.value.drop(_n);
        if (_name.length == ((0 : GoInt))) {
            _value.set(stdgo.reflect.Reflect.zero(_value.type()).__copy__());
            return;
        };
        if (_name.length > ((1024 : GoInt))) {
            _errorf("name too long (%d bytes): %.20q...", Go.toInterface(_name.length), Go.toInterface(_name));
        };
        var __tmp__ = _nameToConcreteType.load(Go.toInterface(((_name : GoString)))), _typi:AnyInterface = __tmp__._0, _ok:Bool = __tmp__._1;
        if (!_ok) {
            _errorf("name not registered for interface: %q", Go.toInterface(_name));
        };
        var _typ:stdgo.reflect.Reflect.Type = ((_typi.value : stdgo.reflect.Reflect.Type));
        var _concreteId:T_typeId = _dec.value._decodeTypeSequence(true);
        if (_concreteId.__t__ < ((0 : GoInt32))) {
            _error_(_dec.value._err);
        };
        _state.value._decodeUint();
        var _v:stdgo.reflect.Reflect.Value = _allocValue(_typ).__copy__();
        _dec.value._decodeValue(_concreteId, _v.__copy__());
        if (_dec.value._err != null) {
            _error_(_dec.value._err);
        };
        if (!_typ.assignableTo(_ityp)) {
            _errorf("%s is not assignable to type %s", Go.toInterface(_typ), Go.toInterface(_ityp));
        };
        _value.set(_v.__copy__());
    }
    public function _ignoreSlice(_state:Pointer<T_decoderState>, _elemOp:T_decOp):Void {
        var _dec = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        _dec.value._ignoreArrayHelper(_state, _elemOp.__copy__(), ((_state.value._decodeUint() : GoInt)));
    }
    public function _decodeSlice(_state:Pointer<T_decoderState>, _value:stdgo.reflect.Reflect.Value, _elemOp:T_decOp, _ovfl:Error, _helper:T_decHelper):Void {
        var _dec = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _u:GoUInt64 = _state.value._decodeUint();
        var _typ:stdgo.reflect.Reflect.Type = _value.type();
        var _size:GoUInt64 = ((_typ.elem().size() : GoUInt64));
        var _nBytes:GoUInt64 = _u * _size;
        var _n:GoInt = ((_u : GoInt));
        if (_n < ((0 : GoInt)) || ((_n : GoUInt64)) != _u || _nBytes > _tooBig || (_size > ((0 : GoUInt64)) && _nBytes / _size != _u)) {
            _errorf("%s slice too big: %d elements of %d bytes", Go.toInterface(_typ.elem()), Go.toInterface(_u), Go.toInterface(_size));
        };
        if (_value.cap() < _n) {
            _value.set(stdgo.reflect.Reflect.makeSlice(_typ, _n, _n).__copy__());
        } else {
            _value.set(_value.slice(((0 : GoInt)), _n).__copy__());
        };
        _dec.value._decodeArrayHelper(_state, _value.__copy__(), _elemOp.__copy__(), _n, _ovfl, _helper.__copy__());
    }
    public function _ignoreMap(_state:Pointer<T_decoderState>, _keyOp:T_decOp, _elemOp:T_decOp):Void {
        var _dec = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _n:GoInt = ((_state.value._decodeUint() : GoInt));
        var _keyInstr:Pointer<T_decInstr> = Go.pointer(new T_decInstr(_keyOp.__copy__(), ((0 : GoInt)), new Slice<GoInt>().nil(), stdgo.errors.Errors.new_("no error")));
        var _elemInstr:Pointer<T_decInstr> = Go.pointer(new T_decInstr(_elemOp.__copy__(), ((0 : GoInt)), new Slice<GoInt>().nil(), stdgo.errors.Errors.new_("no error")));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _n, _i++, {
                _keyOp.__t__(_keyInstr, _state, _noValue.__copy__());
                _elemOp.__t__(_elemInstr, _state, _noValue.__copy__());
            });
        };
    }
    public function _ignoreArray(_state:Pointer<T_decoderState>, _elemOp:T_decOp, _length:GoInt):Void {
        var _dec = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        {
            var _n:GoUInt64 = _state.value._decodeUint();
            if (_n != ((_length : GoUInt64))) {
                _errorf("length mismatch in ignoreArray");
            };
        };
        _dec.value._ignoreArrayHelper(_state, _elemOp.__copy__(), _length);
    }
    public function _ignoreArrayHelper(_state:Pointer<T_decoderState>, _elemOp:T_decOp, _length:GoInt):Void {
        var _dec = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _instr:Pointer<T_decInstr> = Go.pointer(new T_decInstr(_elemOp.__copy__(), ((0 : GoInt)), new Slice<GoInt>().nil(), stdgo.errors.Errors.new_("no error")));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _length, _i++, {
                if (_state.value._b.value.len() == ((0 : GoInt))) {
                    _errorf("decoding array or slice: length exceeds input size (%d elements)", Go.toInterface(_length));
                };
                _elemOp.__t__(_instr, _state, _noValue.__copy__());
            });
        };
    }
    public function _decodeMap(_mtyp:stdgo.reflect.Reflect.Type, _state:Pointer<T_decoderState>, _value:stdgo.reflect.Reflect.Value, _keyOp:T_decOp, _elemOp:T_decOp, _ovfl:Error):Void {
        var _dec = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _n:GoInt = ((_state.value._decodeUint() : GoInt));
        if (_value.isNil()) {
            _value.set(stdgo.reflect.Reflect.makeMapWithSize(_mtyp, _n).__copy__());
        };
        var _keyIsPtr:Bool = _mtyp.key().kind().__t__ == stdgo.reflect.Reflect.ptr.__t__;
        var _elemIsPtr:Bool = _mtyp.elem().kind().__t__ == stdgo.reflect.Reflect.ptr.__t__;
        var _keyInstr:Pointer<T_decInstr> = Go.pointer(new T_decInstr(_keyOp.__copy__(), ((0 : GoInt)), new Slice<GoInt>().nil(), _ovfl));
        var _elemInstr:Pointer<T_decInstr> = Go.pointer(new T_decInstr(_elemOp.__copy__(), ((0 : GoInt)), new Slice<GoInt>().nil(), _ovfl));
        var _keyP:stdgo.reflect.Reflect.Value = stdgo.reflect.Reflect.new_(_mtyp.key()).__copy__();
        var _keyZ:stdgo.reflect.Reflect.Value = stdgo.reflect.Reflect.zero(_mtyp.key()).__copy__();
        var _elemP:stdgo.reflect.Reflect.Value = stdgo.reflect.Reflect.new_(_mtyp.elem()).__copy__();
        var _elemZ:stdgo.reflect.Reflect.Value = stdgo.reflect.Reflect.zero(_mtyp.elem()).__copy__();
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _n, _i++, {
                var _key:stdgo.reflect.Reflect.Value = _decodeIntoValue(_state, _keyOp.__copy__(), _keyIsPtr, _keyP.elem().__copy__(), _keyInstr).__copy__();
                var _elem:stdgo.reflect.Reflect.Value = _decodeIntoValue(_state, _elemOp.__copy__(), _elemIsPtr, _elemP.elem().__copy__(), _elemInstr).__copy__();
                _value.setMapIndex(_key.__copy__(), _elem.__copy__());
                _keyP.elem().set(_keyZ.__copy__());
                _elemP.elem().set(_elemZ.__copy__());
            });
        };
    }
    public function _decodeArray(_state:Pointer<T_decoderState>, _value:stdgo.reflect.Reflect.Value, _elemOp:T_decOp, _length:GoInt, _ovfl:Error, _helper:T_decHelper):Void {
        var _dec = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        {
            var _n:GoUInt64 = _state.value._decodeUint();
            if (_n != ((_length : GoUInt64))) {
                _errorf("length mismatch in decodeArray");
            };
        };
        _dec.value._decodeArrayHelper(_state, _value.__copy__(), _elemOp.__copy__(), _length, _ovfl, _helper.__copy__());
    }
    public function _decodeArrayHelper(_state:Pointer<T_decoderState>, _value:stdgo.reflect.Reflect.Value, _elemOp:T_decOp, _length:GoInt, _ovfl:Error, _helper:T_decHelper):Void {
        var _dec = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_helper.__t__ != null && _helper.__t__(_state, new stdgo.reflect.Reflect.Value(_value.__copy__().__copy__()), _length, new stdgo.Error(_ovfl))) {
            return;
        };
        var _instr:Pointer<T_decInstr> = Go.pointer(new T_decInstr(_elemOp.__copy__(), ((0 : GoInt)), new Slice<GoInt>().nil(), _ovfl));
        var _isPtr:Bool = _value.type().elem().kind().__t__ == stdgo.reflect.Reflect.ptr.__t__;
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _length, _i++, {
                if (_state.value._b.value.len() == ((0 : GoInt))) {
                    _errorf("decoding array or slice: length exceeds input size (%d elements)", Go.toInterface(_length));
                };
                var _v:stdgo.reflect.Reflect.Value = _value.index(_i).__copy__();
                if (_isPtr) {
                    _v = _decAlloc(_v.__copy__()).__copy__();
                };
                _elemOp.__t__(_instr, _state, _v.__copy__());
            });
        };
    }
    public function _ignoreSingle(_engine:Pointer<T_decEngine>):Void {
        var _dec = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var recover_exception:Error = null;
        var deferstack:Array<Void -> Void> = [];
        try {
            var _state:Pointer<T_decoderState> = _dec.value._newDecoderState(Go.pointer(_dec.value._buf));
            {
                var a0 = _state;
                deferstack.unshift(() -> _dec.value._freeDecoderState(a0));
            };
            _state.value._fieldnum = _singletonField;
            var _delta:GoInt = ((_state.value._decodeUint() : GoInt));
            if (_delta != ((0 : GoInt))) {
                _errorf("decode: corrupted data: non-zero delta for singleton");
            };
            var _instr:Pointer<T_decInstr> = Go.pointer(_engine.value._instr[_singletonField]);
            _instr.value._op.__t__(_instr, _state, _noValue.__copy__());
            for (defer in deferstack) {
                defer();
            };
        } catch(e) {
            recover_exception = stdgo.runtime.Runtime.newRuntime(e.message);
            {
                for (defer in deferstack) {
                    defer();
                };
                if (recover_exception != null) throw recover_exception;
                return;
            };
        };
    }
    public function _ignoreStruct(_engine:Pointer<T_decEngine>):Void {
        var _dec = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var recover_exception:Error = null;
        var deferstack:Array<Void -> Void> = [];
        try {
            var _state:Pointer<T_decoderState> = _dec.value._newDecoderState(Go.pointer(_dec.value._buf));
            {
                var a0 = _state;
                deferstack.unshift(() -> _dec.value._freeDecoderState(a0));
            };
            _state.value._fieldnum = -((1 : GoUnTypedInt));
            while (_state.value._b.value.len() > ((0 : GoInt))) {
                var _delta:GoInt = ((_state.value._decodeUint() : GoInt));
                if (_delta < ((0 : GoInt))) {
                    _errorf("ignore decode: corrupted data: negative delta");
                };
                if (_delta == ((0 : GoInt))) {
                    break;
                };
                var _fieldnum:GoInt = _state.value._fieldnum + _delta;
                if (_fieldnum >= _engine.value._instr.length) {
                    _error_(_errRange);
                };
                var _instr:Pointer<T_decInstr> = Go.pointer(_engine.value._instr[_fieldnum]);
                _instr.value._op.__t__(_instr, _state, _noValue.__copy__());
                _state.value._fieldnum = _fieldnum;
            };
            for (defer in deferstack) {
                defer();
            };
        } catch(e) {
            recover_exception = stdgo.runtime.Runtime.newRuntime(e.message);
            {
                for (defer in deferstack) {
                    defer();
                };
                if (recover_exception != null) throw recover_exception;
                return;
            };
        };
    }
    public function _decodeStruct(_engine:Pointer<T_decEngine>, _value:stdgo.reflect.Reflect.Value):Void {
        var _dec = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var recover_exception:Error = null;
        var deferstack:Array<Void -> Void> = [];
        try {
            var _state:Pointer<T_decoderState> = _dec.value._newDecoderState(Go.pointer(_dec.value._buf));
            {
                var a0 = _state;
                deferstack.unshift(() -> _dec.value._freeDecoderState(a0));
            };
            _state.value._fieldnum = -((1 : GoUnTypedInt));
            while (_state.value._b.value.len() > ((0 : GoInt))) {
                var _delta:GoInt = ((_state.value._decodeUint() : GoInt));
                if (_delta < ((0 : GoInt))) {
                    _errorf("decode: corrupted data: negative delta");
                };
                if (_delta == ((0 : GoInt))) {
                    break;
                };
                var _fieldnum:GoInt = _state.value._fieldnum + _delta;
                if (_fieldnum >= _engine.value._instr.length) {
                    _error_(_errRange);
                    break;
                };
                var _instr:Pointer<T_decInstr> = Go.pointer(_engine.value._instr[_fieldnum]);
                var _field:stdgo.reflect.Reflect.Value = new stdgo.reflect.Reflect.Value();
                if (_instr.value._index != null && !_instr.value._index.isNil()) {
                    _field = _value.fieldByIndex(_instr.value._index).__copy__();
                    if (_field.kind().__t__ == stdgo.reflect.Reflect.ptr.__t__) {
                        _field = _decAlloc(_field.__copy__()).__copy__();
                    };
                };
                _instr.value._op.__t__(_instr, _state, _field.__copy__());
                _state.value._fieldnum = _fieldnum;
            };
            for (defer in deferstack) {
                defer();
            };
        } catch(e) {
            recover_exception = stdgo.runtime.Runtime.newRuntime(e.message);
            {
                for (defer in deferstack) {
                    defer();
                };
                if (recover_exception != null) throw recover_exception;
                return;
            };
        };
    }
    public function _decodeSingle(_engine:Pointer<T_decEngine>, _value:stdgo.reflect.Reflect.Value):Void {
        var _dec = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var recover_exception:Error = null;
        var deferstack:Array<Void -> Void> = [];
        try {
            var _state:Pointer<T_decoderState> = _dec.value._newDecoderState(Go.pointer(_dec.value._buf));
            {
                var a0 = _state;
                deferstack.unshift(() -> _dec.value._freeDecoderState(a0));
            };
            _state.value._fieldnum = _singletonField;
            if (_state.value._decodeUint() != ((0 : GoUInt64))) {
                _errorf("decode: corrupted data: non-zero delta for singleton");
            };
            var _instr:Pointer<T_decInstr> = Go.pointer(_engine.value._instr[_singletonField]);
            _instr.value._op.__t__(_instr, _state, _value.__copy__());
            for (defer in deferstack) {
                defer();
            };
        } catch(e) {
            recover_exception = stdgo.runtime.Runtime.newRuntime(e.message);
            {
                for (defer in deferstack) {
                    defer();
                };
                if (recover_exception != null) throw recover_exception;
                return;
            };
        };
    }
    public function _freeDecoderState(_d:Pointer<T_decoderState>):Void {
        var _dec = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        _d.value._next = _dec.value._freeList;
        _dec.value._freeList = _d;
    }
    public function _newDecoderState(_buf:Pointer<T_decBuffer>):Pointer<T_decoderState> {
        var _dec = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _d:Pointer<T_decoderState> = _dec.value._freeList;
        if (_d == null || _d.isNil()) {
            _d = Go.pointer(new T_decoderState());
            _d.value._dec = _dec;
        } else {
            _dec.value._freeList = _d.value._next;
        };
        _d.value._b = _buf;
        return _d;
    }
    public var _mutex : stdgo.sync.Sync.Mutex = new stdgo.sync.Sync.Mutex();
    public var _r : stdgo.io.Io.Reader = ((null : stdgo.io.Io.Reader));
    public var _buf : T_decBuffer = new T_decBuffer();
    public var _wireType : GoMap<T_typeId, Pointer<T_wireType>> = new GoMap<T_typeId, Pointer<T_wireType>>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.named("encoding/gob.typeId", [], stdgo.reflect.Reflect.GoType.basic(int32_kind)), stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("encoding/gob.wireType", [], stdgo.reflect.Reflect.GoType.structType([{ name : "arrayT", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("encoding/gob.arrayType", [], stdgo.reflect.Reflect.GoType.structType([{ name : "commonType", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("encoding/gob.CommonType", [], stdgo.reflect.Reflect.GoType.structType([{ name : "name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "id", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("encoding/gob.typeId", [], stdgo.reflect.Reflect.GoType.basic(int32_kind)) }])) }, { name : "elem", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("encoding/gob.typeId", [], stdgo.reflect.Reflect.GoType.invalidType) }, { name : "len", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) }]))) }, { name : "sliceT", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("encoding/gob.sliceType", [], stdgo.reflect.Reflect.GoType.structType([{ name : "commonType", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("encoding/gob.CommonType", [], stdgo.reflect.Reflect.GoType.invalidType) }, { name : "elem", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("encoding/gob.typeId", [], stdgo.reflect.Reflect.GoType.invalidType) }]))) }, { name : "structT", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("encoding/gob.structType", [], stdgo.reflect.Reflect.GoType.structType([{ name : "commonType", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("encoding/gob.CommonType", [], stdgo.reflect.Reflect.GoType.invalidType) }, { name : "field", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("encoding/gob.fieldType", [], stdgo.reflect.Reflect.GoType.structType([{ name : "name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "id", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("encoding/gob.typeId", [], stdgo.reflect.Reflect.GoType.invalidType) }])))) }]))) }, { name : "mapT", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("encoding/gob.mapType", [], stdgo.reflect.Reflect.GoType.structType([{ name : "commonType", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("encoding/gob.CommonType", [], stdgo.reflect.Reflect.GoType.invalidType) }, { name : "key", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("encoding/gob.typeId", [], stdgo.reflect.Reflect.GoType.invalidType) }, { name : "elem", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("encoding/gob.typeId", [], stdgo.reflect.Reflect.GoType.invalidType) }]))) }, { name : "gobEncoderT", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("encoding/gob.gobEncoderType", [], stdgo.reflect.Reflect.GoType.structType([{ name : "commonType", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("encoding/gob.CommonType", [], stdgo.reflect.Reflect.GoType.invalidType) }]))) }, { name : "binaryMarshalerT", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("encoding/gob.gobEncoderType", [], stdgo.reflect.Reflect.GoType.invalidType)) }, { name : "textMarshalerT", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("encoding/gob.gobEncoderType", [], stdgo.reflect.Reflect.GoType.invalidType)) }])))))).nil();
    public var _decoderCache : GoMap<stdgo.reflect.Reflect.Type, GoMap<T_typeId, Pointer<Pointer<T_decEngine>>>> = new GoMap<stdgo.reflect.Reflect.Type, GoMap<T_typeId, Pointer<Pointer<T_decEngine>>>>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.named("reflect.Type", [], stdgo.reflect.Reflect.GoType.interfaceType(false, [])), stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.named("encoding/gob.typeId", [], stdgo.reflect.Reflect.GoType.basic(int32_kind)), stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("encoding/gob.decEngine", [], stdgo.reflect.Reflect.GoType.named("encoding/gob.decEngine", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_instr", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("encoding/gob.decInstr", [], stdgo.reflect.Reflect.GoType.named("encoding/gob.decInstr", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_op", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("encoding/gob.decOp", [], stdgo.reflect.Reflect.GoType.signature(false, [], [], stdgo.reflect.Reflect.GoType.invalidType)) }, { name : "_field", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) }, { name : "_index", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(int_kind)) }, { name : "_ovfl", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("error", [], stdgo.reflect.Reflect.GoType.interfaceType(false, [])) }])))) }, { name : "_numInstr", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) }]))))))))).nil();
    public var _ignorerCache : GoMap<T_typeId, Pointer<Pointer<T_decEngine>>> = new GoMap<T_typeId, Pointer<Pointer<T_decEngine>>>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.named("encoding/gob.typeId", [], stdgo.reflect.Reflect.GoType.basic(int32_kind)), stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("encoding/gob.decEngine", [], stdgo.reflect.Reflect.GoType.named("encoding/gob.decEngine", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_instr", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("encoding/gob.decInstr", [], stdgo.reflect.Reflect.GoType.named("encoding/gob.decInstr", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_op", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("encoding/gob.decOp", [], stdgo.reflect.Reflect.GoType.signature(false, [], [], stdgo.reflect.Reflect.GoType.invalidType)) }, { name : "_field", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) }, { name : "_index", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(int_kind)) }, { name : "_ovfl", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("error", [], stdgo.reflect.Reflect.GoType.interfaceType(false, [])) }])))) }, { name : "_numInstr", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) }])))))))).nil();
    public var _freeList : Pointer<T_decoderState> = new Pointer<T_decoderState>().nil();
    public var _countBuf : Slice<GoUInt8> = new Slice<GoUInt8>().nil();
    public var _err : stdgo.Error = ((null : stdgo.Error));
    public function new(?_mutex:stdgo.sync.Sync.Mutex, ?_r:stdgo.io.Io.Reader, ?_buf:T_decBuffer, ?_wireType:GoMap<T_typeId, Pointer<T_wireType>>, ?_decoderCache:GoMap<stdgo.reflect.Reflect.Type, GoMap<T_typeId, Pointer<Pointer<T_decEngine>>>>, ?_ignorerCache:GoMap<T_typeId, Pointer<Pointer<T_decEngine>>>, ?_freeList:Pointer<T_decoderState>, ?_countBuf:Slice<GoUInt8>, ?_err:stdgo.Error) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(_mutex) + " " + Go.string(_r) + " " + Go.string(_buf) + " " + Go.string(_wireType) + " " + Go.string(_decoderCache) + " " + Go.string(_ignorerCache) + " " + Go.string(_freeList) + " " + Go.string(_countBuf) + " " + Go.string(_err) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new Decoder(_mutex, _r, _buf, _wireType, _decoderCache, _ignorerCache, _freeList, _countBuf, _err);
    }
    public function __set__(__tmp__) {
        this._mutex = __tmp__._mutex;
        this._r = __tmp__._r;
        this._buf = __tmp__._buf;
        this._wireType = __tmp__._wireType;
        this._decoderCache = __tmp__._decoderCache;
        this._ignorerCache = __tmp__._ignorerCache;
        this._freeList = __tmp__._freeList;
        this._countBuf = __tmp__._countBuf;
        this._err = __tmp__._err;
        return this;
    }
}
@:named class T_encHelper {
    public var __t__ : (Pointer<T_encoderState>, stdgo.reflect.Reflect.Value) -> Bool;
    public function new(?t:(Pointer<T_encoderState>, stdgo.reflect.Reflect.Value) -> Bool) {
        __t__ = t == null ? null : t;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    @:implicit
    public function toString():GoString return Go.string(__t__);
    public function __copy__() return new T_encHelper(__t__);
}
@:structInit class T_encoderState {
    public function _update(_instr:Pointer<T_encInstr>):Void {
        var _state = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_instr != null && !_instr.isNil()) {
            _state.value._encodeUint((((_instr.value._field - _state.value._fieldnum) : GoUInt64)));
            _state.value._fieldnum = _instr.value._field;
        };
    }
    public function _encodeInt(_i:GoInt64):Void {
        var _state = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _x:GoUInt64 = ((0 : GoUInt64));
        if (_i < ((0 : GoInt64))) {
            _x = (((-1 ^ _i << ((1 : GoUnTypedInt))) : GoUInt64)) | ((1 : GoUInt64));
        } else {
            _x = (((_i << ((1 : GoUnTypedInt))) : GoUInt64));
        };
        _state.value._encodeUint(_x);
    }
    public function _encodeUint(_x:GoUInt64):Void {
        var _state = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_x <= ((127 : GoUInt64))) {
            _state.value._b.value._writeByte(((_x : GoUInt8)));
            return;
        };
        stdgo.encoding.binary.Binary.bigEndian.putUint64(_state.value._buf.__slice__(((1 : GoInt))), _x);
        var _bc:GoInt = (stdgo.math.bits.Bits.leadingZeros64(_x) >> ((3 : GoUnTypedInt)));
        _state.value._buf[_bc] = (((_bc - _uint64Size) : GoUInt8));
        _state.value._b.value.write(_state.value._buf.__slice__(_bc, _uint64Size + ((1 : GoUnTypedInt))));
    }
    public var _enc : Pointer<Encoder> = new Pointer<Encoder>().nil();
    public var _b : Pointer<T_encBuffer> = new Pointer<T_encBuffer>().nil();
    public var _sendZero : Bool = false;
    public var _fieldnum : GoInt = ((0 : GoInt));
    public var _buf : GoArray<GoUInt8> = new GoArray<GoUInt8>(...[for (i in 0 ... 9) ((0 : GoUInt8))]);
    public var _next : Pointer<T_encoderState> = new Pointer<T_encoderState>().nil();
    public function new(?_enc:Pointer<Encoder>, ?_b:Pointer<T_encBuffer>, ?_sendZero:Bool, ?_fieldnum:GoInt, ?_buf:GoArray<GoUInt8>, ?_next:Pointer<T_encoderState>) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(_enc) + " " + Go.string(_b) + " " + Go.string(_sendZero) + " " + Go.string(_fieldnum) + " " + Go.string(_buf) + " " + Go.string(_next) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_encoderState(_enc, _b, _sendZero, _fieldnum, _buf, _next);
    }
    public function __set__(__tmp__) {
        this._enc = __tmp__._enc;
        this._b = __tmp__._b;
        this._sendZero = __tmp__._sendZero;
        this._fieldnum = __tmp__._fieldnum;
        this._buf = __tmp__._buf;
        this._next = __tmp__._next;
        return this;
    }
}
@:structInit class T_encBuffer {
    public function reset():Void {
        var _e = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_e.value._data.length >= _tooBig) {
            _e.value._data = _e.value._scratch.__slice__(((0 : GoInt)), ((0 : GoInt)));
        } else {
            _e.value._data = _e.value._data.__slice__(((0 : GoInt)), ((0 : GoInt)));
        };
    }
    public function bytes():Slice<GoByte> {
        var _e = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return _e.value._data;
    }
    public function len():GoInt {
        var _e = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return _e.value._data.length;
    }
    public function writeString(_s:GoString):Void {
        var _e = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        _e.value._data = _e.value._data.__append__(..._s.toArray());
    }
    public function write(_p:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var _e = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        _e.value._data = _e.value._data.__append__(..._p.toArray());
        return { _0 : _p.length, _1 : ((null : stdgo.Error)) };
    }
    public function _writeByte(_c:GoByte):Void {
        var _e = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        _e.value._data = _e.value._data.__append__(_c);
    }
    public var _data : Slice<GoUInt8> = new Slice<GoUInt8>().nil();
    public var _scratch : GoArray<GoUInt8> = new GoArray<GoUInt8>(...[for (i in 0 ... 64) ((0 : GoUInt8))]);
    public function new(?_data:Slice<GoUInt8>, ?_scratch:GoArray<GoUInt8>) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(_data) + " " + Go.string(_scratch) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_encBuffer(_data, _scratch);
    }
    public function __set__(__tmp__) {
        this._data = __tmp__._data;
        this._scratch = __tmp__._scratch;
        return this;
    }
}
@:named class T_encOp {
    public var __t__ : (Pointer<T_encInstr>, Pointer<T_encoderState>, stdgo.reflect.Reflect.Value) -> Void;
    public function new(?t:(Pointer<T_encInstr>, Pointer<T_encoderState>, stdgo.reflect.Reflect.Value) -> Void) {
        __t__ = t == null ? null : t;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    @:implicit
    public function toString():GoString return Go.string(__t__);
    public function __copy__() return new T_encOp(__t__);
}
@:structInit class T_encInstr {
    public var _op : T_encOp = new T_encOp();
    public var _field : GoInt = ((0 : GoInt));
    public var _index : Slice<GoInt> = new Slice<GoInt>().nil();
    public var _indir : GoInt = ((0 : GoInt));
    public function new(?_op:T_encOp, ?_field:GoInt, ?_index:Slice<GoInt>, ?_indir:GoInt) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(_op) + " " + Go.string(_field) + " " + Go.string(_index) + " " + Go.string(_indir) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_encInstr(_op, _field, _index, _indir);
    }
    public function __set__(__tmp__) {
        this._op = __tmp__._op;
        this._field = __tmp__._field;
        this._index = __tmp__._index;
        this._indir = __tmp__._indir;
        return this;
    }
}
@:structInit class T_encEngine {
    public var _instr : Slice<T_encInstr> = new Slice<T_encInstr>().nil();
    public function new(?_instr:Slice<T_encInstr>) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(_instr) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_encEngine(_instr);
    }
    public function __set__(__tmp__) {
        this._instr = __tmp__._instr;
        return this;
    }
}
@:structInit class Encoder {
    public function encodeValue(_value:stdgo.reflect.Reflect.Value):Error {
        var _enc = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var recover_exception:Error = null;
        var deferstack:Array<Void -> Void> = [];
        if (_value.kind().__t__ == stdgo.reflect.Reflect.invalid.__t__) {
            return stdgo.errors.Errors.new_("gob: cannot encode nil value");
        };
        try {
            if (_value.kind().__t__ == stdgo.reflect.Reflect.ptr.__t__ && _value.isNil()) {
                throw (("gob: cannot encode nil pointer of type " : GoString)) + _value.type().toString();
            };
            _enc.value._mutex.lock();
            deferstack.unshift(() -> _enc.value._mutex.unlock());
            _enc.value._w = _enc.value._w.__slice__(((0 : GoInt)), ((1 : GoInt)));
            var __tmp__ = _validUserType(_value.type()), _ut:Pointer<T_userTypeInfo> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                {
                    for (defer in deferstack) {
                        defer();
                    };
                    return _err;
                };
            };
            _enc.value._err = ((null : stdgo.Error));
            _enc.value._byteBuf.reset();
            _enc.value._byteBuf.write(_spaceForLength);
            var _state:Pointer<T_encoderState> = _enc.value._newEncoderState(Go.pointer(_enc.value._byteBuf));
            _enc.value._sendTypeDescriptor(_enc.value._writer(), _state, _ut);
            _enc.value._sendTypeId(_state, _ut);
            if (_enc.value._err != null) {
                {
                    for (defer in deferstack) {
                        defer();
                    };
                    return _enc.value._err;
                };
            };
            _enc.value._encode(_state.value._b, _value.__copy__(), _ut);
            if (_enc.value._err == null) {
                _enc.value._writeMessage(_enc.value._writer(), _state.value._b);
            };
            _enc.value._freeEncoderState(_state);
            {
                for (defer in deferstack) {
                    defer();
                };
                return _enc.value._err;
            };
            for (defer in deferstack) {
                defer();
            };
        } catch(e) {
            recover_exception = stdgo.runtime.Runtime.newRuntime(e.message);
            {
                for (defer in deferstack) {
                    defer();
                };
                if (recover_exception != null) throw recover_exception;
                return ((null : stdgo.Error));
            };
        };
    }
    public function _sendTypeId(_state:Pointer<T_encoderState>, _ut:Pointer<T_userTypeInfo>):Void {
        var _enc = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        _state.value._encodeInt(_enc.value._sent[_ut.value._base].__t__);
    }
    public function _sendTypeDescriptor(_w:stdgo.io.Io.Writer, _state:Pointer<T_encoderState>, _ut:Pointer<T_userTypeInfo>):Void {
        var _enc = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _rt:stdgo.reflect.Reflect.Type = _ut.value._base;
        if (_ut.value._externalEnc != ((0 : GoInt))) {
            _rt = _ut.value._user;
        };
        {
            var __tmp__ = _enc.value._sent.exists(_rt) ? { value : _enc.value._sent[_rt], ok : true } : { value : _enc.value._sent.defaultValue(), ok : false }, _:T_typeId = __tmp__.value, _alreadySent:Bool = __tmp__.ok;
            if (!_alreadySent) {
                var _sent:Bool = _enc.value._sendType(_w, _state, _rt);
                if (_enc.value._err != null) {
                    return;
                };
                if (!_sent) {
                    var __tmp__ = _getTypeInfo(_ut), _info:Pointer<T_typeInfo> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err != null) {
                        _enc.value._setError(_err);
                        return;
                    };
                    _enc.value._sent[_rt] = _info.value._id;
                };
            };
        };
    }
    public function encode(_e:AnyInterface):Error {
        var _enc = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return _enc.value.encodeValue(stdgo.reflect.Reflect.valueOf(Go.toInterface(_e)).__copy__());
    }
    public function _sendType(_w:stdgo.io.Io.Writer, _state:Pointer<T_encoderState>, _origt:stdgo.reflect.Reflect.Type):Bool {
        var _enc = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _sent:Bool = false;
        var _ut:Pointer<T_userTypeInfo> = _userType(_origt);
        if (_ut.value._externalEnc != ((0 : GoInt))) {
            return _enc.value._sendActualType(_w, _state, _ut, _ut.value._base);
        };
        {
            var _rt:stdgo.reflect.Reflect.Type = _ut.value._base;
            {
                var __switchIndex__ = -1;
                while (true) {
                    if (_rt.kind().__t__ == stdgo.reflect.Reflect.slice.__t__) {
                        if (_rt.elem().kind().__t__ == stdgo.reflect.Reflect.uint8.__t__) {
                            return _sent;
                        };
                        break;
                        break;
                    } else if (_rt.kind().__t__ == stdgo.reflect.Reflect.array.__t__) {
                        break;
                        break;
                    } else if (_rt.kind().__t__ == stdgo.reflect.Reflect.map.__t__) {
                        break;
                        break;
                    } else if (_rt.kind().__t__ == stdgo.reflect.Reflect.struct.__t__) {
                        break;
                        break;
                    } else if (_rt.kind().__t__ == stdgo.reflect.Reflect.chan.__t__ || _rt.kind().__t__ == stdgo.reflect.Reflect.func.__t__) {
                        return _sent;
                        break;
                    };
                    break;
                };
            };
        };
        return _enc.value._sendActualType(_w, _state, _ut, _ut.value._base);
    }
    public function _sendActualType(_w:stdgo.io.Io.Writer, _state:Pointer<T_encoderState>, _ut:Pointer<T_userTypeInfo>, _actual:stdgo.reflect.Reflect.Type):Bool {
        var _enc = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _sent:Bool = false;
        {
            var __tmp__ = _enc.value._sent.exists(_actual) ? { value : _enc.value._sent[_actual], ok : true } : { value : _enc.value._sent.defaultValue(), ok : false }, _:T_typeId = __tmp__.value, _alreadySent:Bool = __tmp__.ok;
            if (_alreadySent) {
                return false;
            };
        };
        var __tmp__ = _getTypeInfo(_ut), _info:Pointer<T_typeInfo> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _enc.value._setError(_err);
            return _sent;
        };
        _state.value._encodeInt(-_info.value._id.__t__);
        _enc.value._encode(_state.value._b, stdgo.reflect.Reflect.valueOf(Go.toInterface(_info.value._wire)).__copy__(), _wireTypeUserInfo);
        _enc.value._writeMessage(_w, _state.value._b);
        if (_enc.value._err != null) {
            return _sent;
        };
        _enc.value._sent[_ut.value._base] = _info.value._id;
        if (!(_ut.value._user.toString() == _ut.value._base.toString())) {
            _enc.value._sent[_ut.value._user] = _info.value._id;
        };
        {
            var _st:stdgo.reflect.Reflect.Type = _actual;
            if (_st.kind().__t__ == stdgo.reflect.Reflect.struct.__t__) {
                {
                    var _i:GoInt = ((0 : GoInt));
                    Go.cfor(_i < _st.numField(), _i++, {
                        if (_isExported(_st.field(_i).name)) {
                            _enc.value._sendType(_w, _state, _st.field(_i).type);
                        };
                    });
                };
            } else if (_st.kind().__t__ == stdgo.reflect.Reflect.array.__t__ || _st.kind().__t__ == stdgo.reflect.Reflect.slice.__t__) {
                _enc.value._sendType(_w, _state, _st.elem());
            } else if (_st.kind().__t__ == stdgo.reflect.Reflect.map.__t__) {
                _enc.value._sendType(_w, _state, _st.key());
                _enc.value._sendType(_w, _state, _st.elem());
            };
        };
        return true;
    }
    public function _writeMessage(_w:stdgo.io.Io.Writer, _b:Pointer<T_encBuffer>):Void {
        var _enc = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _message:Slice<GoUInt8> = _b.value.bytes();
        var _messageLen:GoInt = _message.length - _maxLength;
        if (_messageLen >= _tooBig) {
            _enc.value._setError(stdgo.errors.Errors.new_("gob: encoder: message too big"));
            return;
        };
        _enc.value._countState.value._b.value.reset();
        _enc.value._countState.value._encodeUint(((_messageLen : GoUInt64)));
        var _offset:GoInt = _maxLength - _enc.value._countState.value._b.value.len();
        Go.copy(_message.__slice__(_offset), _enc.value._countState.value._b.value.bytes());
        var __tmp__ = _w.write(_message.__slice__(_offset)), _:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        _b.value.reset();
        _b.value.write(_spaceForLength);
        if (_err != null) {
            _enc.value._setError(_err);
        };
    }
    public function _setError(_err:Error):Void {
        var _enc = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_enc.value._err == null) {
            _enc.value._err = _err;
        };
    }
    public function _popWriter():Void {
        var _enc = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        _enc.value._w = _enc.value._w.__slice__(((0 : GoInt)), _enc.value._w.length - ((1 : GoInt)));
    }
    public function _pushWriter(_w:stdgo.io.Io.Writer):Void {
        var _enc = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        _enc.value._w = _enc.value._w.__append__(_w);
    }
    public function _writer():stdgo.io.Io.Writer {
        var _enc = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return _enc.value._w[_enc.value._w.length - ((1 : GoInt))];
    }
    public function _encode(_b:Pointer<T_encBuffer>, _value:stdgo.reflect.Reflect.Value, _ut:Pointer<T_userTypeInfo>):Void {
        var _enc = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var recover_exception:Error = null;
        var deferstack:Array<Void -> Void> = [];
        try {
            {
                var a0 = Go.pointer(_enc.value._err);
                deferstack.unshift(() -> _catchError(a0));
            };
            var _engine:Pointer<T_encEngine> = _getEncEngine(_ut, new GoMap<Pointer<T_typeInfo>, Bool>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("encoding/gob.typeInfo", [], stdgo.reflect.Reflect.GoType.named("encoding/gob.typeInfo", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_id", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("encoding/gob.typeId", [], stdgo.reflect.Reflect.GoType.basic(int32_kind)) }, { name : "_encInit", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("sync.Mutex", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_state", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int32_kind) }, { name : "_sema", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint32_kind) }])) }, { name : "_encoder", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("sync/atomic.Value", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_v", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.interfaceType(true, []) }])) }, { name : "_wire", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("encoding/gob.wireType", [], stdgo.reflect.Reflect.GoType.named("encoding/gob.wireType", [], stdgo.reflect.Reflect.GoType.structType([{ name : "arrayT", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("encoding/gob.arrayType", [], stdgo.reflect.Reflect.GoType.named("encoding/gob.arrayType", [], stdgo.reflect.Reflect.GoType.structType([{ name : "commonType", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("encoding/gob.CommonType", [], stdgo.reflect.Reflect.GoType.named("encoding/gob.CommonType", [], stdgo.reflect.Reflect.GoType.structType([{ name : "name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "id", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("encoding/gob.typeId", [], stdgo.reflect.Reflect.GoType.basic(int32_kind)) }]))) }, { name : "elem", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("encoding/gob.typeId", [], stdgo.reflect.Reflect.GoType.basic(int32_kind)) }, { name : "len", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) }])))) }, { name : "sliceT", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("encoding/gob.sliceType", [], stdgo.reflect.Reflect.GoType.named("encoding/gob.sliceType", [], stdgo.reflect.Reflect.GoType.structType([{ name : "commonType", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("encoding/gob.CommonType", [], stdgo.reflect.Reflect.GoType.named("encoding/gob.CommonType", [], stdgo.reflect.Reflect.GoType.structType([{ name : "name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "id", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("encoding/gob.typeId", [], stdgo.reflect.Reflect.GoType.basic(int32_kind)) }]))) }, { name : "elem", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("encoding/gob.typeId", [], stdgo.reflect.Reflect.GoType.basic(int32_kind)) }])))) }, { name : "structT", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("encoding/gob.structType", [], stdgo.reflect.Reflect.GoType.named("encoding/gob.structType", [], stdgo.reflect.Reflect.GoType.structType([{ name : "commonType", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("encoding/gob.CommonType", [], stdgo.reflect.Reflect.GoType.named("encoding/gob.CommonType", [], stdgo.reflect.Reflect.GoType.structType([{ name : "name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "id", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("encoding/gob.typeId", [], stdgo.reflect.Reflect.GoType.basic(int32_kind)) }]))) }, { name : "field", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("encoding/gob.fieldType", [], stdgo.reflect.Reflect.GoType.named("encoding/gob.CommonType", [], stdgo.reflect.Reflect.GoType.structType([{ name : "name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "id", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("encoding/gob.typeId", [], stdgo.reflect.Reflect.GoType.basic(int32_kind)) }]))))) }])))) }, { name : "mapT", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("encoding/gob.mapType", [], stdgo.reflect.Reflect.GoType.named("encoding/gob.mapType", [], stdgo.reflect.Reflect.GoType.structType([{ name : "commonType", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("encoding/gob.CommonType", [], stdgo.reflect.Reflect.GoType.named("encoding/gob.CommonType", [], stdgo.reflect.Reflect.GoType.structType([{ name : "name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "id", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("encoding/gob.typeId", [], stdgo.reflect.Reflect.GoType.basic(int32_kind)) }]))) }, { name : "key", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("encoding/gob.typeId", [], stdgo.reflect.Reflect.GoType.basic(int32_kind)) }, { name : "elem", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("encoding/gob.typeId", [], stdgo.reflect.Reflect.GoType.basic(int32_kind)) }])))) }, { name : "gobEncoderT", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("encoding/gob.gobEncoderType", [], stdgo.reflect.Reflect.GoType.named("encoding/gob.gobEncoderType", [], stdgo.reflect.Reflect.GoType.structType([{ name : "commonType", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("encoding/gob.CommonType", [], stdgo.reflect.Reflect.GoType.named("encoding/gob.CommonType", [], stdgo.reflect.Reflect.GoType.structType([{ name : "name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "id", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("encoding/gob.typeId", [], stdgo.reflect.Reflect.GoType.basic(int32_kind)) }]))) }])))) }, { name : "binaryMarshalerT", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("encoding/gob.gobEncoderType", [], stdgo.reflect.Reflect.GoType.named("encoding/gob.gobEncoderType", [], stdgo.reflect.Reflect.GoType.structType([{ name : "commonType", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("encoding/gob.CommonType", [], stdgo.reflect.Reflect.GoType.named("encoding/gob.CommonType", [], stdgo.reflect.Reflect.GoType.structType([{ name : "name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "id", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("encoding/gob.typeId", [], stdgo.reflect.Reflect.GoType.basic(int32_kind)) }]))) }])))) }, { name : "textMarshalerT", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("encoding/gob.gobEncoderType", [], stdgo.reflect.Reflect.GoType.named("encoding/gob.gobEncoderType", [], stdgo.reflect.Reflect.GoType.structType([{ name : "commonType", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("encoding/gob.CommonType", [], stdgo.reflect.Reflect.GoType.named("encoding/gob.CommonType", [], stdgo.reflect.Reflect.GoType.structType([{ name : "name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "id", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("encoding/gob.typeId", [], stdgo.reflect.Reflect.GoType.basic(int32_kind)) }]))) }])))) }])))) }])))), stdgo.reflect.Reflect.GoType.basic(bool_kind)))).nil());
            var _indir:GoInt = _ut.value._indir;
            if (_ut.value._externalEnc != ((0 : GoInt))) {
                _indir = ((_ut.value._encIndir : GoInt));
            };
            {
                var _i:GoInt = ((0 : GoInt));
                Go.cfor(_i < _indir, _i++, {
                    _value = stdgo.reflect.Reflect.indirect(_value.__copy__()).__copy__();
                });
            };
            if (_ut.value._externalEnc == ((0 : GoInt)) && _value.type().kind().__t__ == stdgo.reflect.Reflect.struct.__t__) {
                _enc.value._encodeStruct(_b, _engine, _value.__copy__());
            } else {
                _enc.value._encodeSingle(_b, _engine, _value.__copy__());
            };
            for (defer in deferstack) {
                defer();
            };
        } catch(e) {
            recover_exception = stdgo.runtime.Runtime.newRuntime(e.message);
            {
                for (defer in deferstack) {
                    defer();
                };
                if (recover_exception != null) throw recover_exception;
                return;
            };
        };
    }
    public function _encodeGobEncoder(_b:Pointer<T_encBuffer>, _ut:Pointer<T_userTypeInfo>, _v:stdgo.reflect.Reflect.Value):Void {
        var _enc = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _data:Slice<GoByte> = new Slice<GoUInt8>().nil();
        var _err:Error = ((null : stdgo.Error));
        if (_ut.value._externalEnc == _xGob) {
            {
                var __tmp__ = ((_v.interface_().value : GobEncoder)).gobEncode();
                _data = __tmp__._0;
                _err = __tmp__._1;
            };
        } else if (_ut.value._externalEnc == _xBinary) {
            {
                var __tmp__ = ((_v.interface_().value : stdgo.encoding.Encoding.BinaryMarshaler)).marshalBinary();
                _data = __tmp__._0;
                _err = __tmp__._1;
            };
        } else if (_ut.value._externalEnc == _xText) {
            {
                var __tmp__ = ((_v.interface_().value : stdgo.encoding.Encoding.TextMarshaler)).marshalText();
                _data = __tmp__._0;
                _err = __tmp__._1;
            };
        };
        if (_err != null) {
            _error_(_err);
        };
        var _state:Pointer<T_encoderState> = _enc.value._newEncoderState(_b);
        _state.value._fieldnum = -((1 : GoUnTypedInt));
        _state.value._encodeUint(((_data.length : GoUInt64)));
        _state.value._b.value.write(_data);
        _enc.value._freeEncoderState(_state);
    }
    public function _encodeInterface(_b:Pointer<T_encBuffer>, _iv:stdgo.reflect.Reflect.Value):Void {
        var _enc = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _elem:stdgo.reflect.Reflect.Value = _iv.elem().__copy__();
        if (_elem.kind().__t__ == stdgo.reflect.Reflect.ptr.__t__ && _elem.isNil()) {
            _errorf("gob: cannot encode nil pointer of type %s inside interface", Go.toInterface(_iv.elem().type()));
        };
        var _state:Pointer<T_encoderState> = _enc.value._newEncoderState(_b);
        _state.value._fieldnum = -((1 : GoUnTypedInt));
        _state.value._sendZero = true;
        if (_iv.isNil()) {
            _state.value._encodeUint(((0 : GoUInt64)));
            return;
        };
        var _ut:Pointer<T_userTypeInfo> = _userType(_iv.elem().type());
        var __tmp__ = _concreteTypeToName.load(Go.toInterface(_ut.value._base)), _namei:AnyInterface = __tmp__._0, _ok:Bool = __tmp__._1;
        if (!_ok) {
            _errorf("type not registered for interface: %s", Go.toInterface(_ut.value._base));
        };
        var _name:GoString = ((_namei.value : GoString));
        _state.value._encodeUint(((_name.length : GoUInt64)));
        _state.value._b.value.writeString(_name);
        _enc.value._sendTypeDescriptor(_enc.value._writer(), _state, _ut);
        _enc.value._sendTypeId(_state, _ut);
        _enc.value._pushWriter(_b.value);
        var _data:Pointer<T_encBuffer> = ((_encBufferPool.get().value : Pointer<T_encBuffer>));
        _data.value.write(_spaceForLength);
        _enc.value._encode(_data, _elem.__copy__(), _ut);
        if (_enc.value._err != null) {
            _error_(_enc.value._err);
        };
        _enc.value._popWriter();
        _enc.value._writeMessage(_b.value, _data);
        _data.value.reset();
        _encBufferPool.put(Go.toInterface(_data));
        if (_enc.value._err != null) {
            _error_(_enc.value._err);
        };
        _enc.value._freeEncoderState(_state);
    }
    public function _encodeMap(_b:Pointer<T_encBuffer>, _mv:stdgo.reflect.Reflect.Value, _keyOp:T_encOp, _elemOp:T_encOp, _keyIndir:GoInt, _elemIndir:GoInt):Void {
        var _enc = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _state:Pointer<T_encoderState> = _enc.value._newEncoderState(_b);
        _state.value._fieldnum = -((1 : GoUnTypedInt));
        _state.value._sendZero = true;
        var _keys:Slice<stdgo.reflect.Reflect.Value> = _mv.mapKeys();
        _state.value._encodeUint(((_keys.length : GoUInt64)));
        for (_key in _keys) {
            _encodeReflectValue(_state, _key.__copy__(), _keyOp.__copy__(), _keyIndir);
            _encodeReflectValue(_state, _mv.mapIndex(_key.__copy__()).__copy__(), _elemOp.__copy__(), _elemIndir);
        };
        _enc.value._freeEncoderState(_state);
    }
    public function _encodeArray(_b:Pointer<T_encBuffer>, _value:stdgo.reflect.Reflect.Value, _op:T_encOp, _elemIndir:GoInt, _length:GoInt, _helper:T_encHelper):Void {
        var _enc = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var recover_exception:Error = null;
        var deferstack:Array<Void -> Void> = [];
        try {
            var _state:Pointer<T_encoderState> = _enc.value._newEncoderState(_b);
            {
                var a0 = _state;
                deferstack.unshift(() -> _enc.value._freeEncoderState(a0));
            };
            _state.value._fieldnum = -((1 : GoUnTypedInt));
            _state.value._sendZero = true;
            _state.value._encodeUint(((_length : GoUInt64)));
            if (_helper.__t__ != null && _helper.__t__(_state, _value.__copy__())) {
                {
                    for (defer in deferstack) {
                        defer();
                    };
                    return;
                };
            };
            {
                var _i:GoInt = ((0 : GoInt));
                Go.cfor(_i < _length, _i++, {
                    var _elem:stdgo.reflect.Reflect.Value = _value.index(_i).__copy__();
                    if (_elemIndir > ((0 : GoInt))) {
                        _elem = _encIndirect(_elem.__copy__(), _elemIndir).__copy__();
                        if (!_valid(_elem.__copy__())) {
                            _errorf("encodeArray: nil element");
                        };
                    };
                    _op.__t__(new Pointer<T_encInstr>().nil(), _state, _elem.__copy__());
                });
            };
            for (defer in deferstack) {
                defer();
            };
        } catch(e) {
            recover_exception = stdgo.runtime.Runtime.newRuntime(e.message);
            {
                for (defer in deferstack) {
                    defer();
                };
                if (recover_exception != null) throw recover_exception;
                return;
            };
        };
    }
    public function _encodeStruct(_b:Pointer<T_encBuffer>, _engine:Pointer<T_encEngine>, _value:stdgo.reflect.Reflect.Value):Void {
        var _enc = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var recover_exception:Error = null;
        var deferstack:Array<Void -> Void> = [];
        try {
            if (!_valid(_value.__copy__())) {
                return;
            };
            var _state:Pointer<T_encoderState> = _enc.value._newEncoderState(_b);
            {
                var a0 = _state;
                deferstack.unshift(() -> _enc.value._freeEncoderState(a0));
            };
            _state.value._fieldnum = -((1 : GoUnTypedInt));
            {
                var _i:GoInt = ((0 : GoInt));
                Go.cfor(_i < _engine.value._instr.length, _i++, {
                    var _instr:Pointer<T_encInstr> = Go.pointer(_engine.value._instr[_i]);
                    if (_i >= _value.numField()) {
                        _instr.value._op.__t__(_instr, _state, new stdgo.reflect.Reflect.Value().__copy__());
                        break;
                    };
                    var _field:stdgo.reflect.Reflect.Value = _value.fieldByIndex(_instr.value._index).__copy__();
                    if (_instr.value._indir > ((0 : GoInt))) {
                        _field = _encIndirect(_field.__copy__(), _instr.value._indir).__copy__();
                        if (!_valid(_field.__copy__())) {
                            continue;
                        };
                    };
                    _instr.value._op.__t__(_instr, _state, _field.__copy__());
                });
            };
            for (defer in deferstack) {
                defer();
            };
        } catch(e) {
            recover_exception = stdgo.runtime.Runtime.newRuntime(e.message);
            {
                for (defer in deferstack) {
                    defer();
                };
                if (recover_exception != null) throw recover_exception;
                return;
            };
        };
    }
    public function _encodeSingle(_b:Pointer<T_encBuffer>, _engine:Pointer<T_encEngine>, _value:stdgo.reflect.Reflect.Value):Void {
        var _enc = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var recover_exception:Error = null;
        var deferstack:Array<Void -> Void> = [];
        try {
            var _state:Pointer<T_encoderState> = _enc.value._newEncoderState(_b);
            {
                var a0 = _state;
                deferstack.unshift(() -> _enc.value._freeEncoderState(a0));
            };
            _state.value._fieldnum = _singletonField;
            _state.value._sendZero = true;
            var _instr:Pointer<T_encInstr> = Go.pointer(_engine.value._instr[_singletonField]);
            if (_instr.value._indir > ((0 : GoInt))) {
                _value = _encIndirect(_value.__copy__(), _instr.value._indir).__copy__();
            };
            if (_valid(_value.__copy__())) {
                _instr.value._op.__t__(_instr, _state, _value.__copy__());
            };
            for (defer in deferstack) {
                defer();
            };
        } catch(e) {
            recover_exception = stdgo.runtime.Runtime.newRuntime(e.message);
            {
                for (defer in deferstack) {
                    defer();
                };
                if (recover_exception != null) throw recover_exception;
                return;
            };
        };
    }
    public function _freeEncoderState(_e:Pointer<T_encoderState>):Void {
        var _enc = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        _e.value._next = _enc.value._freeList;
        _enc.value._freeList = _e;
    }
    public function _newEncoderState(_b:Pointer<T_encBuffer>):Pointer<T_encoderState> {
        var _enc = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _e:Pointer<T_encoderState> = _enc.value._freeList;
        if (_e == null || _e.isNil()) {
            _e = Go.pointer(new T_encoderState());
            _e.value._enc = _enc;
        } else {
            _enc.value._freeList = _e.value._next;
        };
        _e.value._sendZero = false;
        _e.value._fieldnum = ((0 : GoInt));
        _e.value._b = _b;
        if (_b.value._data.length == ((0 : GoInt))) {
            _b.value._data = _b.value._scratch.__slice__(((0 : GoInt)), ((0 : GoInt)));
        };
        return _e;
    }
    public var _mutex : stdgo.sync.Sync.Mutex = new stdgo.sync.Sync.Mutex();
    public var _w : Slice<stdgo.io.Io.Writer> = new Slice<stdgo.io.Io.Writer>().nil();
    public var _sent : GoMap<stdgo.reflect.Reflect.Type, T_typeId> = new GoMap<stdgo.reflect.Reflect.Type, T_typeId>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.named("reflect.Type", [], stdgo.reflect.Reflect.GoType.interfaceType(false, [])), stdgo.reflect.Reflect.GoType.named("encoding/gob.typeId", [], stdgo.reflect.Reflect.GoType.basic(int32_kind))))).nil();
    public var _countState : Pointer<T_encoderState> = new Pointer<T_encoderState>().nil();
    public var _freeList : Pointer<T_encoderState> = new Pointer<T_encoderState>().nil();
    public var _byteBuf : T_encBuffer = new T_encBuffer();
    public var _err : stdgo.Error = ((null : stdgo.Error));
    public function new(?_mutex:stdgo.sync.Sync.Mutex, ?_w:Slice<stdgo.io.Io.Writer>, ?_sent:GoMap<stdgo.reflect.Reflect.Type, T_typeId>, ?_countState:Pointer<T_encoderState>, ?_freeList:Pointer<T_encoderState>, ?_byteBuf:T_encBuffer, ?_err:stdgo.Error) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(_mutex) + " " + Go.string(_w) + " " + Go.string(_sent) + " " + Go.string(_countState) + " " + Go.string(_freeList) + " " + Go.string(_byteBuf) + " " + Go.string(_err) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new Encoder(_mutex, _w, _sent, _countState, _freeList, _byteBuf, _err);
    }
    public function __set__(__tmp__) {
        this._mutex = __tmp__._mutex;
        this._w = __tmp__._w;
        this._sent = __tmp__._sent;
        this._countState = __tmp__._countState;
        this._freeList = __tmp__._freeList;
        this._byteBuf = __tmp__._byteBuf;
        this._err = __tmp__._err;
        return this;
    }
}
@:structInit class T_gobError {
    public var _err : stdgo.Error = ((null : stdgo.Error));
    public function new(?_err:stdgo.Error) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(_err) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_gobError(_err);
    }
    public function __set__(__tmp__) {
        this._err = __tmp__._err;
        return this;
    }
}
@:structInit class T_userTypeInfo {
    public var _user : stdgo.reflect.Reflect.Type = ((null : stdgo.reflect.Reflect.Type));
    public var _base : stdgo.reflect.Reflect.Type = ((null : stdgo.reflect.Reflect.Type));
    public var _indir : GoInt = ((0 : GoInt));
    public var _externalEnc : GoInt = ((0 : GoInt));
    public var _externalDec : GoInt = ((0 : GoInt));
    public var _encIndir : GoInt8 = ((0 : GoInt8));
    public var _decIndir : GoInt8 = ((0 : GoInt8));
    public function new(?_user:stdgo.reflect.Reflect.Type, ?_base:stdgo.reflect.Reflect.Type, ?_indir:GoInt, ?_externalEnc:GoInt, ?_externalDec:GoInt, ?_encIndir:GoInt8, ?_decIndir:GoInt8) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(_user) + " " + Go.string(_base) + " " + Go.string(_indir) + " " + Go.string(_externalEnc) + " " + Go.string(_externalDec) + " " + Go.string(_encIndir) + " " + Go.string(_decIndir) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_userTypeInfo(_user, _base, _indir, _externalEnc, _externalDec, _encIndir, _decIndir);
    }
    public function __set__(__tmp__) {
        this._user = __tmp__._user;
        this._base = __tmp__._base;
        this._indir = __tmp__._indir;
        this._externalEnc = __tmp__._externalEnc;
        this._externalDec = __tmp__._externalDec;
        this._encIndir = __tmp__._encIndir;
        this._decIndir = __tmp__._decIndir;
        return this;
    }
}
@:named class T_typeId {
    public function _name():GoString {
        var _t = this.__copy__();
        if (_t._gobType() == null) {
            return "<nil>";
        };
        return _t._gobType()._name();
    }
    public function _string():GoString {
        var _t = this.__copy__();
        if (_t._gobType() == null) {
            return "<nil>";
        };
        return _t._gobType()._string();
    }
    public function _gobType():T_gobType {
        var _t = this.__copy__();
        if (_t.__t__ == ((0 : GoInt32))) {
            return ((null : T_gobType));
        };
        return _idToType[_t];
    }
    public var __t__ : GoInt32;
    public function new(?t:GoInt32) {
        __t__ = t == null ? 0 : t;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    @:implicit
    public function toString():GoString return Go.string(__t__);
    public function __copy__() return new T_typeId(__t__);
}
@:structInit class CommonType {
    public function _name():GoString {
        var _t = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return _t.value.name;
    }
    public function _safeString(_seen:GoMap<T_typeId, Bool>):GoString {
        var _t = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return _t.value.name;
    }
    public function _string():GoString {
        var _t = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return _t.value.name;
    }
    public function _setId(_id:T_typeId):Void {
        var _t = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        _t.value.id = _id;
    }
    public function _id():T_typeId {
        var _t = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return _t.value.id;
    }
    public var name : GoString = (("" : GoString));
    public var id : T_typeId = new T_typeId();
    public function new(?name:GoString, ?id:T_typeId) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(name) + " " + Go.string(id) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new CommonType(name, id);
    }
    public function __set__(__tmp__) {
        this.name = __tmp__.name;
        this.id = __tmp__.id;
        return this;
    }
}
@:structInit class T_arrayType {
    public function _string():GoString {
        var _a = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return _a.value._safeString(new GoMap<T_typeId, Bool>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.named("encoding/gob.typeId", [], stdgo.reflect.Reflect.GoType.basic(int32_kind)), stdgo.reflect.Reflect.GoType.basic(bool_kind)))));
    }
    public function _safeString(_seen:GoMap<T_typeId, Bool>):GoString {
        var _a = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_seen[_a.value.commonType.id]) {
            return _a.value.commonType.name;
        };
        _seen[_a.value.commonType.id] = true;
        return stdgo.fmt.Fmt.sprintf("[%d]%s", Go.toInterface(_a.value.len), Go.toInterface(_a.value.elem._gobType()._safeString(_seen)));
    }
    public function _init(_elem:T_gobType, _len:GoInt):Void {
        var _a = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        _setTypeId(_a.value);
        _a.value.elem = _elem._id();
        _a.value.len = _len;
    }
    @:embedded
    public var commonType : CommonType = new CommonType();
    public var elem : T_typeId = new T_typeId();
    public var len : GoInt = ((0 : GoInt));
    public function new(?commonType:CommonType, ?elem:T_typeId, ?len:GoInt) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(commonType) + " " + Go.string(elem) + " " + Go.string(len) + "}";
    }
    public function _id():T_typeId return commonType._id();
    public function _name():GoString return commonType._name();
    public function _setId(_id:T_typeId) commonType._setId(_0);
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_arrayType(commonType, elem, len);
    }
    public function __set__(__tmp__) {
        this.commonType = __tmp__.commonType;
        this.elem = __tmp__.elem;
        this.len = __tmp__.len;
        return this;
    }
}
@:structInit class T_gobEncoderType {
    public function _string():GoString {
        var _g = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return _g.value.commonType.name;
    }
    public function _safeString(_seen:GoMap<T_typeId, Bool>):GoString {
        var _g = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return _g.value.commonType.name;
    }
    @:embedded
    public var commonType : CommonType = new CommonType();
    public function new(?commonType:CommonType) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(commonType) + "}";
    }
    public function _id():T_typeId return commonType._id();
    public function _name():GoString return commonType._name();
    public function _setId(_id:T_typeId) commonType._setId(_0);
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_gobEncoderType(commonType);
    }
    public function __set__(__tmp__) {
        this.commonType = __tmp__.commonType;
        return this;
    }
}
@:structInit class T_mapType {
    public function _string():GoString {
        var _m = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return _m.value._safeString(new GoMap<T_typeId, Bool>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.named("encoding/gob.typeId", [], stdgo.reflect.Reflect.GoType.basic(int32_kind)), stdgo.reflect.Reflect.GoType.basic(bool_kind)))));
    }
    public function _safeString(_seen:GoMap<T_typeId, Bool>):GoString {
        var _m = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_seen[_m.value.commonType.id]) {
            return _m.value.commonType.name;
        };
        _seen[_m.value.commonType.id] = true;
        var _key:GoString = _m.value.key._gobType()._safeString(_seen);
        var _elem:GoString = _m.value.elem._gobType()._safeString(_seen);
        return stdgo.fmt.Fmt.sprintf("map[%s]%s", Go.toInterface(_key), Go.toInterface(_elem));
    }
    public function _init(_key:T_gobType, _elem:T_gobType):Void {
        var _m = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        _setTypeId(_m.value);
        _m.value.key = _key._id();
        _m.value.elem = _elem._id();
    }
    @:embedded
    public var commonType : CommonType = new CommonType();
    public var key : T_typeId = new T_typeId();
    public var elem : T_typeId = new T_typeId();
    public function new(?commonType:CommonType, ?key:T_typeId, ?elem:T_typeId) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(commonType) + " " + Go.string(key) + " " + Go.string(elem) + "}";
    }
    public function _id():T_typeId return commonType._id();
    public function _name():GoString return commonType._name();
    public function _setId(_id:T_typeId) commonType._setId(_0);
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_mapType(commonType, key, elem);
    }
    public function __set__(__tmp__) {
        this.commonType = __tmp__.commonType;
        this.key = __tmp__.key;
        this.elem = __tmp__.elem;
        return this;
    }
}
@:structInit class T_sliceType {
    public function _string():GoString {
        var _s = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return _s.value._safeString(new GoMap<T_typeId, Bool>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.named("encoding/gob.typeId", [], stdgo.reflect.Reflect.GoType.basic(int32_kind)), stdgo.reflect.Reflect.GoType.basic(bool_kind)))));
    }
    public function _safeString(_seen:GoMap<T_typeId, Bool>):GoString {
        var _s = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_seen[_s.value.commonType.id]) {
            return _s.value.commonType.name;
        };
        _seen[_s.value.commonType.id] = true;
        return stdgo.fmt.Fmt.sprintf("[]%s", Go.toInterface(_s.value.elem._gobType()._safeString(_seen)));
    }
    public function _init(_elem:T_gobType):Void {
        var _s = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        _setTypeId(_s.value);
        if (_elem._id().__t__ == ((0 : GoInt32))) {
            _setTypeId(_elem);
        };
        _s.value.elem = _elem._id();
    }
    @:embedded
    public var commonType : CommonType = new CommonType();
    public var elem : T_typeId = new T_typeId();
    public function new(?commonType:CommonType, ?elem:T_typeId) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(commonType) + " " + Go.string(elem) + "}";
    }
    public function _id():T_typeId return commonType._id();
    public function _name():GoString return commonType._name();
    public function _setId(_id:T_typeId) commonType._setId(_0);
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_sliceType(commonType, elem);
    }
    public function __set__(__tmp__) {
        this.commonType = __tmp__.commonType;
        this.elem = __tmp__.elem;
        return this;
    }
}
@:structInit class T_fieldType {
    public var name : GoString = (("" : GoString));
    public var id : T_typeId = new T_typeId();
    public function new(?name:GoString, ?id:T_typeId) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(name) + " " + Go.string(id) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_fieldType(name, id);
    }
    public function __set__(__tmp__) {
        this.name = __tmp__.name;
        this.id = __tmp__.id;
        return this;
    }
}
@:structInit class T_structType {
    public function _string():GoString {
        var _s = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return _s.value._safeString(new GoMap<T_typeId, Bool>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.named("encoding/gob.typeId", [], stdgo.reflect.Reflect.GoType.basic(int32_kind)), stdgo.reflect.Reflect.GoType.basic(bool_kind)))));
    }
    public function _safeString(_seen:GoMap<T_typeId, Bool>):GoString {
        var _s = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_s == null || _s.isNil()) {
            return "<nil>";
        };
        {
            var __tmp__ = _seen.exists(_s.value.commonType.id) ? { value : _seen[_s.value.commonType.id], ok : true } : { value : _seen.defaultValue(), ok : false }, _:Bool = __tmp__.value, _ok:Bool = __tmp__.ok;
            if (_ok) {
                return _s.value.commonType.name;
            };
        };
        _seen[_s.value.commonType.id] = true;
        var _str:GoString = _s.value.commonType.name + ((" = struct { " : GoString));
        for (_f in _s.value.field) {
            _str = _str + (stdgo.fmt.Fmt.sprintf("%s %s; ", Go.toInterface(_f.value.name), Go.toInterface(_f.value.id._gobType()._safeString(_seen))));
        };
        _str = _str + ("}");
        return _str;
    }
    @:embedded
    public var commonType : CommonType = new CommonType();
    public var field : Slice<Pointer<T_fieldType>> = new Slice<Pointer<T_fieldType>>().nil();
    public function new(?commonType:CommonType, ?field:Slice<Pointer<T_fieldType>>) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(commonType) + " " + Go.string(field) + "}";
    }
    public function _id():T_typeId return commonType._id();
    public function _name():GoString return commonType._name();
    public function _setId(_id:T_typeId) commonType._setId(_0);
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_structType(commonType, field);
    }
    public function __set__(__tmp__) {
        this.commonType = __tmp__.commonType;
        this.field = __tmp__.field;
        return this;
    }
}
@:structInit class T_wireType {
    public function _string():GoString {
        var _w = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        final _unknown:GoString = "unknown type";
        if (_w == null || _w.isNil()) {
            return _unknown;
        };
        if (_w.value.arrayT != null && !_w.value.arrayT.isNil()) {
            return _w.value.arrayT.value.commonType.name;
        } else if (_w.value.sliceT != null && !_w.value.sliceT.isNil()) {
            return _w.value.sliceT.value.commonType.name;
        } else if (_w.value.structT != null && !_w.value.structT.isNil()) {
            return _w.value.structT.value.commonType.name;
        } else if (_w.value.mapT != null && !_w.value.mapT.isNil()) {
            return _w.value.mapT.value.commonType.name;
        } else if (_w.value.gobEncoderT != null && !_w.value.gobEncoderT.isNil()) {
            return _w.value.gobEncoderT.value.commonType.name;
        } else if (_w.value.binaryMarshalerT != null && !_w.value.binaryMarshalerT.isNil()) {
            return _w.value.binaryMarshalerT.value.commonType.name;
        } else if (_w.value.textMarshalerT != null && !_w.value.textMarshalerT.isNil()) {
            return _w.value.textMarshalerT.value.commonType.name;
        };
        return _unknown;
    }
    public var arrayT : Pointer<T_arrayType> = new Pointer<T_arrayType>().nil();
    public var sliceT : Pointer<T_sliceType> = new Pointer<T_sliceType>().nil();
    public var structT : Pointer<T_structType> = new Pointer<T_structType>().nil();
    public var mapT : Pointer<T_mapType> = new Pointer<T_mapType>().nil();
    public var gobEncoderT : Pointer<T_gobEncoderType> = new Pointer<T_gobEncoderType>().nil();
    public var binaryMarshalerT : Pointer<T_gobEncoderType> = new Pointer<T_gobEncoderType>().nil();
    public var textMarshalerT : Pointer<T_gobEncoderType> = new Pointer<T_gobEncoderType>().nil();
    public function new(?arrayT:Pointer<T_arrayType>, ?sliceT:Pointer<T_sliceType>, ?structT:Pointer<T_structType>, ?mapT:Pointer<T_mapType>, ?gobEncoderT:Pointer<T_gobEncoderType>, ?binaryMarshalerT:Pointer<T_gobEncoderType>, ?textMarshalerT:Pointer<T_gobEncoderType>) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(arrayT) + " " + Go.string(sliceT) + " " + Go.string(structT) + " " + Go.string(mapT) + " " + Go.string(gobEncoderT) + " " + Go.string(binaryMarshalerT) + " " + Go.string(textMarshalerT) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_wireType(arrayT, sliceT, structT, mapT, gobEncoderT, binaryMarshalerT, textMarshalerT);
    }
    public function __set__(__tmp__) {
        this.arrayT = __tmp__.arrayT;
        this.sliceT = __tmp__.sliceT;
        this.structT = __tmp__.structT;
        this.mapT = __tmp__.mapT;
        this.gobEncoderT = __tmp__.gobEncoderT;
        this.binaryMarshalerT = __tmp__.binaryMarshalerT;
        this.textMarshalerT = __tmp__.textMarshalerT;
        return this;
    }
}
@:structInit class T_typeInfo {
    public var _id : T_typeId = new T_typeId();
    public var _encInit : stdgo.sync.Sync.Mutex = new stdgo.sync.Sync.Mutex();
    public var _encoder : stdgo.sync.atomic.Atomic.Value = new stdgo.sync.atomic.Atomic.Value();
    public var _wire : Pointer<T_wireType> = new Pointer<T_wireType>().nil();
    public function new(?_id:T_typeId, ?_encInit:stdgo.sync.Sync.Mutex, ?_encoder:stdgo.sync.atomic.Atomic.Value, ?_wire:Pointer<T_wireType>) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(_id) + " " + Go.string(_encInit) + " " + Go.string(_encoder) + " " + Go.string(_wire) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_typeInfo(_id, _encInit, _encoder, _wire);
    }
    public function __set__(__tmp__) {
        this._id = __tmp__._id;
        this._encInit = __tmp__._encInit;
        this._encoder = __tmp__._encoder;
        this._wire = __tmp__._wire;
        return this;
    }
}
@:structInit @:local class T__struct_43 {
    public var _r7 : GoInt = ((0 : GoInt));
    public function new(?_r7:GoInt) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(_r7) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T__struct_43(_r7);
    }
    public function __set__(__tmp__) {
        this._r7 = __tmp__._r7;
        return this;
    }
}
@:structInit @:local class T__struct_44 {
    public var _r6 : GoInt = ((0 : GoInt));
    public function new(?_r6:GoInt) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(_r6) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T__struct_44(_r6);
    }
    public function __set__(__tmp__) {
        this._r6 = __tmp__._r6;
        return this;
    }
}
@:structInit @:local class T__struct_45 {
    public var _r5 : GoInt = ((0 : GoInt));
    public function new(?_r5:GoInt) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(_r5) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T__struct_45(_r5);
    }
    public function __set__(__tmp__) {
        this._r5 = __tmp__._r5;
        return this;
    }
}
@:structInit @:local class T__struct_46 {
    public var _r4 : GoInt = ((0 : GoInt));
    public function new(?_r4:GoInt) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(_r4) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T__struct_46(_r4);
    }
    public function __set__(__tmp__) {
        this._r4 = __tmp__._r4;
        return this;
    }
}
@:structInit @:local class T__struct_47 {
    public var _r3 : GoInt = ((0 : GoInt));
    public function new(?_r3:GoInt) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(_r3) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T__struct_47(_r3);
    }
    public function __set__(__tmp__) {
        this._r3 = __tmp__._r3;
        return this;
    }
}
@:structInit @:local class T__struct_48 {
    public var _r2 : GoInt = ((0 : GoInt));
    public function new(?_r2:GoInt) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(_r2) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T__struct_48(_r2);
    }
    public function __set__(__tmp__) {
        this._r2 = __tmp__._r2;
        return this;
    }
}
@:structInit @:local class T__struct_49 {
    public var _r1 : GoInt = ((0 : GoInt));
    public function new(?_r1:GoInt) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(_r1) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T__struct_49(_r1);
    }
    public function __set__(__tmp__) {
        this._r1 = __tmp__._r1;
        return this;
    }
}
var _noValue : stdgo.reflect.Reflect.Value = new stdgo.reflect.Reflect.Value();
var _tReserved1 : T_typeId = _bootstrapType("_reserved1", Go.toInterface(((new Pointer<T__struct_49>().nil() : Pointer<T__struct_49>))), new T_typeId(((15 : GoInt32))));
var _tUint : T_typeId = _bootstrapType("uint", Go.toInterface(((new Pointer<GoUInt>().nil() : Pointer<GoUInt>))), new T_typeId(((3 : GoInt32))));
var _encOpTable : GoArray<T_encOp> = {
        var s = new GoArray<T_encOp>(...[for (i in 0 ... 25) new T_encOp()]);
        s[0] = new T_encOp(_encBool);
        s[1] = new T_encOp(_encInt);
        s[2] = new T_encOp(_encInt);
        s[3] = new T_encOp(_encInt);
        s[4] = new T_encOp(_encInt);
        s[5] = new T_encOp(_encInt);
        s[6] = new T_encOp(_encUint);
        s[7] = new T_encOp(_encUint);
        s[8] = new T_encOp(_encUint);
        s[9] = new T_encOp(_encUint);
        s[10] = new T_encOp(_encUint);
        s[11] = new T_encOp(_encUint);
        s[12] = new T_encOp(_encFloat);
        s[13] = new T_encOp(_encFloat);
        s[14] = new T_encOp(_encComplex);
        s[15] = new T_encOp(_encComplex);
        s[16] = new T_encOp(_encString);
        s;
    };
var _encBufferPool : stdgo.sync.Sync.Pool = (({ new_ : function():AnyInterface {
        var _e:Pointer<T_encBuffer> = Go.pointer(new T_encBuffer());
        _e.value._data = _e.value._scratch.__slice__(((0 : GoInt)), ((0 : GoInt)));
        return Go.toInterface(_e);
    }, _noCopy : new stdgo.sync.Sync.T_noCopy(), _local : null, _localSize : 0, _victim : null, _victimSize : 0 } : stdgo.sync.Sync.Pool)).__copy__();
var _typeInfoMap : stdgo.sync.atomic.Atomic.Value = new stdgo.sync.atomic.Atomic.Value();
var _tReserved2 : T_typeId = _bootstrapType("_reserved1", Go.toInterface(((new Pointer<T__struct_48>().nil() : Pointer<T__struct_48>))), new T_typeId(((14 : GoInt32))));
final _firstUserId : GoInt64 = ((64 : GoUnTypedInt));
var _binaryUnmarshalerInterfaceType : stdgo.reflect.Reflect.Type = stdgo.reflect.Reflect.typeOf(Go.toInterface(((new Pointer<stdgo.encoding.Encoding.BinaryUnmarshaler>().nil() : Pointer<stdgo.encoding.Encoding.BinaryUnmarshaler>)))).elem();
var _errBadType : stdgo.Error = stdgo.errors.Errors.new_("gob: unknown type id or corrupted data");
var _binaryMarshalerInterfaceType : stdgo.reflect.Reflect.Type = stdgo.reflect.Reflect.typeOf(Go.toInterface(((new Pointer<stdgo.encoding.Encoding.BinaryMarshaler>().nil() : Pointer<stdgo.encoding.Encoding.BinaryMarshaler>)))).elem();
var _concreteTypeToName : stdgo.sync.Sync.Map_ = new stdgo.sync.Sync.Map_();
var _tReserved3 : T_typeId = _bootstrapType("_reserved1", Go.toInterface(((new Pointer<T__struct_47>().nil() : Pointer<T__struct_47>))), new T_typeId(((13 : GoInt32))));
var _tBool : T_typeId = _bootstrapType("bool", Go.toInterface(((new Pointer<Bool>().nil() : Pointer<Bool>))), new T_typeId(((1 : GoInt32))));
final _xGob : GoUnTypedInt = ((1 : GoUnTypedInt)) + (0 : GoUnTypedInt);
var _tReserved4 : T_typeId = _bootstrapType("_reserved1", Go.toInterface(((new Pointer<T__struct_46>().nil() : Pointer<T__struct_46>))), new T_typeId(((12 : GoInt32))));
var _typeLock : stdgo.sync.Sync.Mutex = new stdgo.sync.Sync.Mutex();
var _emptyStructType : stdgo.reflect.Reflect.Type = stdgo.reflect.Reflect.typeOf(Go.toInterface(new T_emptyStruct().__copy__()));
final _uint64Size : GoInt64 = ((8 : GoUnTypedInt));
var _tReserved5 : T_typeId = _bootstrapType("_reserved1", Go.toInterface(((new Pointer<T__struct_45>().nil() : Pointer<T__struct_45>))), new T_typeId(((11 : GoInt32))));
var _tString : T_typeId = _bootstrapType("string", Go.toInterface(((new Pointer<GoString>().nil() : Pointer<GoString>))), new T_typeId(((6 : GoInt32))));
var _gobDecoderInterfaceType : stdgo.reflect.Reflect.Type = stdgo.reflect.Reflect.typeOf(Go.toInterface(((new Pointer<GobDecoder>().nil() : Pointer<GobDecoder>)))).elem();
final _xText = ((1 : GoUnTypedInt)) + (2 : GoUnTypedInt);
var _errBadCount : stdgo.Error = stdgo.errors.Errors.new_("invalid message length");
var _decArrayHelper : GoMap<stdgo.reflect.Reflect.Kind, T_decHelper> = new GoMap<stdgo.reflect.Reflect.Kind, T_decHelper>(
new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.named("reflect.Kind", [], stdgo.reflect.Reflect.GoType.basic(uint_kind)), stdgo.reflect.Reflect.GoType.named("encoding/gob.decHelper", [], stdgo.reflect.Reflect.GoType.signature(false, [], [], stdgo.reflect.Reflect.GoType.invalidType)))),
{ key : stdgo.reflect.Reflect.bool, value : new T_decHelper(_decBoolArray) },
{ key : stdgo.reflect.Reflect.complex64, value : new T_decHelper(_decComplex64Array) },
{ key : stdgo.reflect.Reflect.complex128, value : new T_decHelper(_decComplex128Array) },
{ key : stdgo.reflect.Reflect.float32, value : new T_decHelper(_decFloat32Array) },
{ key : stdgo.reflect.Reflect.float64, value : new T_decHelper(_decFloat64Array) },
{ key : stdgo.reflect.Reflect.int, value : new T_decHelper(_decIntArray) },
{ key : stdgo.reflect.Reflect.int16, value : new T_decHelper(_decInt16Array) },
{ key : stdgo.reflect.Reflect.int32, value : new T_decHelper(_decInt32Array) },
{ key : stdgo.reflect.Reflect.int64, value : new T_decHelper(_decInt64Array) },
{ key : stdgo.reflect.Reflect.int8, value : new T_decHelper(_decInt8Array) },
{ key : stdgo.reflect.Reflect.toString, value : new T_decHelper(_decStringArray) },
{ key : stdgo.reflect.Reflect.uint, value : new T_decHelper(_decUintArray) },
{ key : stdgo.reflect.Reflect.uint16, value : new T_decHelper(_decUint16Array) },
{ key : stdgo.reflect.Reflect.uint32, value : new T_decHelper(_decUint32Array) },
{ key : stdgo.reflect.Reflect.uint64, value : new T_decHelper(_decUint64Array) },
{ key : stdgo.reflect.Reflect.uintptr, value : new T_decHelper(_decUintptrArray) });
var _tReserved6 : T_typeId = _bootstrapType("_reserved1", Go.toInterface(((new Pointer<T__struct_44>().nil() : Pointer<T__struct_44>))), new T_typeId(((10 : GoInt32))));
var _nameToConcreteType : stdgo.sync.Sync.Map_ = new stdgo.sync.Sync.Map_();
var _tReserved7 : T_typeId = _bootstrapType("_reserved1", Go.toInterface(((new Pointer<T__struct_43>().nil() : Pointer<T__struct_43>))), new T_typeId(((9 : GoInt32))));
var _userTypeCache : stdgo.sync.Sync.Map_ = new stdgo.sync.Sync.Map_();
var _types : GoMap<stdgo.reflect.Reflect.Type, T_gobType> = new GoMap<stdgo.reflect.Reflect.Type, T_gobType>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.named("reflect.Type", [], stdgo.reflect.Reflect.GoType.interfaceType(false, [])), stdgo.reflect.Reflect.GoType.named("encoding/gob.gobType", [], stdgo.reflect.Reflect.GoType.named("encoding/gob.gobType", [], stdgo.reflect.Reflect.GoType.interfaceType(false, []))))));
var _errBadUint : stdgo.Error = stdgo.errors.Errors.new_("gob: encoded unsigned integer out of range");
var _tFloat : T_typeId = _bootstrapType("float", Go.toInterface(((new Pointer<GoFloat64>().nil() : Pointer<GoFloat64>))), new T_typeId(((4 : GoInt32))));
final _xBinary = ((1 : GoUnTypedInt)) + (1 : GoUnTypedInt);
var _debugFunc : stdgo.io.Io.Reader -> Void = null;
var _tWireType : T_typeId = _mustGetTypeInfo(stdgo.reflect.Reflect.typeOf(Go.toInterface(new T_wireType().__copy__()))).value._id;
var _tComplex : T_typeId = _bootstrapType("complex", Go.toInterface(((new Pointer<GoComplex128>().nil() : Pointer<GoComplex128>))), new T_typeId(((7 : GoInt32))));
final _singletonField : GoInt64 = ((0 : GoUnTypedInt));
final _maxLength : GoInt64 = ((9 : GoUnTypedInt));
var _spaceForLength : Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((_maxLength : GoInt)).toBasic()) ((0 : GoUInt8))]);
var _tBytes : T_typeId = _bootstrapType("bytes", Go.toInterface(((new Pointer<Slice<GoUInt8>>().nil() : Pointer<Slice<GoByte>>))), new T_typeId(((5 : GoInt32))));
var _textMarshalerInterfaceType : stdgo.reflect.Reflect.Type = stdgo.reflect.Reflect.typeOf(Go.toInterface(((new Pointer<stdgo.encoding.Encoding.TextMarshaler>().nil() : Pointer<stdgo.encoding.Encoding.TextMarshaler>)))).elem();
var _encArrayHelper : GoMap<stdgo.reflect.Reflect.Kind, T_encHelper> = new GoMap<stdgo.reflect.Reflect.Kind, T_encHelper>(
new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.named("reflect.Kind", [], stdgo.reflect.Reflect.GoType.basic(uint_kind)), stdgo.reflect.Reflect.GoType.named("encoding/gob.encHelper", [], stdgo.reflect.Reflect.GoType.signature(false, [], [], stdgo.reflect.Reflect.GoType.invalidType)))),
{ key : stdgo.reflect.Reflect.bool, value : new T_encHelper(_encBoolArray) },
{ key : stdgo.reflect.Reflect.complex64, value : new T_encHelper(_encComplex64Array) },
{ key : stdgo.reflect.Reflect.complex128, value : new T_encHelper(_encComplex128Array) },
{ key : stdgo.reflect.Reflect.float32, value : new T_encHelper(_encFloat32Array) },
{ key : stdgo.reflect.Reflect.float64, value : new T_encHelper(_encFloat64Array) },
{ key : stdgo.reflect.Reflect.int, value : new T_encHelper(_encIntArray) },
{ key : stdgo.reflect.Reflect.int16, value : new T_encHelper(_encInt16Array) },
{ key : stdgo.reflect.Reflect.int32, value : new T_encHelper(_encInt32Array) },
{ key : stdgo.reflect.Reflect.int64, value : new T_encHelper(_encInt64Array) },
{ key : stdgo.reflect.Reflect.int8, value : new T_encHelper(_encInt8Array) },
{ key : stdgo.reflect.Reflect.toString, value : new T_encHelper(_encStringArray) },
{ key : stdgo.reflect.Reflect.uint, value : new T_encHelper(_encUintArray) },
{ key : stdgo.reflect.Reflect.uint16, value : new T_encHelper(_encUint16Array) },
{ key : stdgo.reflect.Reflect.uint32, value : new T_encHelper(_encUint32Array) },
{ key : stdgo.reflect.Reflect.uint64, value : new T_encHelper(_encUint64Array) },
{ key : stdgo.reflect.Reflect.uintptr, value : new T_encHelper(_encUintptrArray) });
var _tInt : T_typeId = _bootstrapType("int", Go.toInterface(((new Pointer<GoInt>().nil() : Pointer<GoInt>))), new T_typeId(((2 : GoInt32))));
var _encSliceHelper : GoMap<stdgo.reflect.Reflect.Kind, T_encHelper> = new GoMap<stdgo.reflect.Reflect.Kind, T_encHelper>(
new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.named("reflect.Kind", [], stdgo.reflect.Reflect.GoType.basic(uint_kind)), stdgo.reflect.Reflect.GoType.named("encoding/gob.encHelper", [], stdgo.reflect.Reflect.GoType.signature(false, [], [], stdgo.reflect.Reflect.GoType.invalidType)))),
{ key : stdgo.reflect.Reflect.bool, value : new T_encHelper(_encBoolSlice) },
{ key : stdgo.reflect.Reflect.complex64, value : new T_encHelper(_encComplex64Slice) },
{ key : stdgo.reflect.Reflect.complex128, value : new T_encHelper(_encComplex128Slice) },
{ key : stdgo.reflect.Reflect.float32, value : new T_encHelper(_encFloat32Slice) },
{ key : stdgo.reflect.Reflect.float64, value : new T_encHelper(_encFloat64Slice) },
{ key : stdgo.reflect.Reflect.int, value : new T_encHelper(_encIntSlice) },
{ key : stdgo.reflect.Reflect.int16, value : new T_encHelper(_encInt16Slice) },
{ key : stdgo.reflect.Reflect.int32, value : new T_encHelper(_encInt32Slice) },
{ key : stdgo.reflect.Reflect.int64, value : new T_encHelper(_encInt64Slice) },
{ key : stdgo.reflect.Reflect.int8, value : new T_encHelper(_encInt8Slice) },
{ key : stdgo.reflect.Reflect.toString, value : new T_encHelper(_encStringSlice) },
{ key : stdgo.reflect.Reflect.uint, value : new T_encHelper(_encUintSlice) },
{ key : stdgo.reflect.Reflect.uint16, value : new T_encHelper(_encUint16Slice) },
{ key : stdgo.reflect.Reflect.uint32, value : new T_encHelper(_encUint32Slice) },
{ key : stdgo.reflect.Reflect.uint64, value : new T_encHelper(_encUint64Slice) },
{ key : stdgo.reflect.Reflect.uintptr, value : new T_encHelper(_encUintptrSlice) });
var _textUnmarshalerInterfaceType : stdgo.reflect.Reflect.Type = stdgo.reflect.Reflect.typeOf(Go.toInterface(((new Pointer<stdgo.encoding.Encoding.TextUnmarshaler>().nil() : Pointer<stdgo.encoding.Encoding.TextUnmarshaler>)))).elem();
var _errRange : stdgo.Error = stdgo.errors.Errors.new_("gob: bad data: field numbers out of bounds");
var _gobEncoderInterfaceType : stdgo.reflect.Reflect.Type = stdgo.reflect.Reflect.typeOf(Go.toInterface(((new Pointer<GobEncoder>().nil() : Pointer<GobEncoder>)))).elem();
var _builtinIdToType : GoMap<T_typeId, T_gobType> = new GoMap<T_typeId, T_gobType>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.named("encoding/gob.typeId", [], stdgo.reflect.Reflect.GoType.basic(int32_kind)), stdgo.reflect.Reflect.GoType.named("encoding/gob.gobType", [], stdgo.reflect.Reflect.GoType.named("encoding/gob.gobType", [], stdgo.reflect.Reflect.GoType.interfaceType(false, [])))))).nil();
var _idToType : GoMap<T_typeId, T_gobType> = new GoMap<T_typeId, T_gobType>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.named("encoding/gob.typeId", [], stdgo.reflect.Reflect.GoType.basic(int32_kind)), stdgo.reflect.Reflect.GoType.named("encoding/gob.gobType", [], stdgo.reflect.Reflect.GoType.named("encoding/gob.gobType", [], stdgo.reflect.Reflect.GoType.interfaceType(false, []))))));
var _decIgnoreOpMap : GoMap<T_typeId, T_decOp> = new GoMap<T_typeId, T_decOp>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.named("encoding/gob.typeId", [], stdgo.reflect.Reflect.GoType.basic(int32_kind)), stdgo.reflect.Reflect.GoType.named("encoding/gob.decOp", [], stdgo.reflect.Reflect.GoType.signature(false, [], [], stdgo.reflect.Reflect.GoType.invalidType)))), { key : _tBool, value : new T_decOp(_ignoreUint) }, { key : _tInt, value : new T_decOp(_ignoreUint) }, { key : _tUint, value : new T_decOp(_ignoreUint) }, { key : _tFloat, value : new T_decOp(_ignoreUint) }, { key : _tBytes, value : new T_decOp(_ignoreUint8Array) }, { key : _tString, value : new T_decOp(_ignoreUint8Array) }, { key : _tComplex, value : new T_decOp(_ignoreTwoUints) });
final _tooBig : GoUnTypedInt = (((((1 : GoUnTypedInt)) << ((30 : GoUnTypedInt)))) << ((-1 ^ ((((0 : GoUInt)) : GoUInt)) >> ((62 : GoUnTypedInt)))));
var _wireTypeUserInfo : Pointer<T_userTypeInfo> = new Pointer<T_userTypeInfo>().nil();
var _tInterface : T_typeId = _bootstrapType("interface", Go.toInterface(((new Pointer<AnyInterface>().nil() : Pointer<AnyInterface>))), new T_typeId(((8 : GoInt32))));
var _nextId : T_typeId = new T_typeId();
var _decSliceHelper : GoMap<stdgo.reflect.Reflect.Kind, T_decHelper> = new GoMap<stdgo.reflect.Reflect.Kind, T_decHelper>(
new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.named("reflect.Kind", [], stdgo.reflect.Reflect.GoType.basic(uint_kind)), stdgo.reflect.Reflect.GoType.named("encoding/gob.decHelper", [], stdgo.reflect.Reflect.GoType.signature(false, [], [], stdgo.reflect.Reflect.GoType.invalidType)))),
{ key : stdgo.reflect.Reflect.bool, value : new T_decHelper(_decBoolSlice) },
{ key : stdgo.reflect.Reflect.complex64, value : new T_decHelper(_decComplex64Slice) },
{ key : stdgo.reflect.Reflect.complex128, value : new T_decHelper(_decComplex128Slice) },
{ key : stdgo.reflect.Reflect.float32, value : new T_decHelper(_decFloat32Slice) },
{ key : stdgo.reflect.Reflect.float64, value : new T_decHelper(_decFloat64Slice) },
{ key : stdgo.reflect.Reflect.int, value : new T_decHelper(_decIntSlice) },
{ key : stdgo.reflect.Reflect.int16, value : new T_decHelper(_decInt16Slice) },
{ key : stdgo.reflect.Reflect.int32, value : new T_decHelper(_decInt32Slice) },
{ key : stdgo.reflect.Reflect.int64, value : new T_decHelper(_decInt64Slice) },
{ key : stdgo.reflect.Reflect.int8, value : new T_decHelper(_decInt8Slice) },
{ key : stdgo.reflect.Reflect.toString, value : new T_decHelper(_decStringSlice) },
{ key : stdgo.reflect.Reflect.uint, value : new T_decHelper(_decUintSlice) },
{ key : stdgo.reflect.Reflect.uint16, value : new T_decHelper(_decUint16Slice) },
{ key : stdgo.reflect.Reflect.uint32, value : new T_decHelper(_decUint32Slice) },
{ key : stdgo.reflect.Reflect.uint64, value : new T_decHelper(_decUint64Slice) },
{ key : stdgo.reflect.Reflect.uintptr, value : new T_decHelper(_decUintptrSlice) });
var _decOpTable : GoArray<T_decOp> = {
        var s = new GoArray<T_decOp>(...[for (i in 0 ... 25) new T_decOp()]);
        s[0] = new T_decOp(_decBool);
        s[1] = new T_decOp(_decInt8);
        s[2] = new T_decOp(_decInt16);
        s[3] = new T_decOp(_decInt32);
        s[4] = new T_decOp(_decInt64);
        s[5] = new T_decOp(_decUint8);
        s[6] = new T_decOp(_decUint16);
        s[7] = new T_decOp(_decUint32);
        s[8] = new T_decOp(_decUint64);
        s[9] = new T_decOp(_decFloat32);
        s[10] = new T_decOp(_decFloat64);
        s[11] = new T_decOp(_decComplex64);
        s[12] = new T_decOp(_decComplex128);
        s[13] = new T_decOp(_decString);
        s;
    };
function _decBoolArray(_state:Pointer<T_decoderState>, _v:stdgo.reflect.Reflect.Value, _length:GoInt, _ovfl:Error):Bool {
        if (!_v.canAddr()) {
            return false;
        };
        return _decBoolSlice(_state, _v.slice(((0 : GoInt)), _v.len()).__copy__(), _length, _ovfl);
    }
function _decBoolSlice(_state:Pointer<T_decoderState>, _v:stdgo.reflect.Reflect.Value, _length:GoInt, _ovfl:Error):Bool {
        var __tmp__ = try {
            { value : ((_v.interface_().value : Slice<Bool>)), ok : true };
        } catch(_) {
            { value : new Slice<Bool>().nil(), ok : false };
        }, _slice = __tmp__.value, _ok = __tmp__.ok;
        if (!_ok) {
            return false;
        };
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _length, _i++, {
                if (_state.value._b.value.len() == ((0 : GoInt))) {
                    _errorf("decoding bool array or slice: length exceeds input size (%d elements)", Go.toInterface(_length));
                };
                _slice[_i] = _state.value._decodeUint() != ((0 : GoUInt64));
            });
        };
        return true;
    }
function _decComplex64Array(_state:Pointer<T_decoderState>, _v:stdgo.reflect.Reflect.Value, _length:GoInt, _ovfl:Error):Bool {
        if (!_v.canAddr()) {
            return false;
        };
        return _decComplex64Slice(_state, _v.slice(((0 : GoInt)), _v.len()).__copy__(), _length, _ovfl);
    }
function _decComplex64Slice(_state:Pointer<T_decoderState>, _v:stdgo.reflect.Reflect.Value, _length:GoInt, _ovfl:Error):Bool {
        var __tmp__ = try {
            { value : ((_v.interface_().value : Slice<GoComplex64>)), ok : true };
        } catch(_) {
            { value : new Slice<GoComplex64>().nil(), ok : false };
        }, _slice = __tmp__.value, _ok = __tmp__.ok;
        if (!_ok) {
            return false;
        };
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _length, _i++, {
                if (_state.value._b.value.len() == ((0 : GoInt))) {
                    _errorf("decoding complex64 array or slice: length exceeds input size (%d elements)", Go.toInterface(_length));
                };
                var _real:GoFloat64 = _float32FromBits(_state.value._decodeUint(), _ovfl);
                var _imag:GoFloat64 = _float32FromBits(_state.value._decodeUint(), _ovfl);
                _slice[_i] = new GoComplex128(((_real : GoFloat32)), ((_imag : GoFloat32)));
            });
        };
        return true;
    }
function _decComplex128Array(_state:Pointer<T_decoderState>, _v:stdgo.reflect.Reflect.Value, _length:GoInt, _ovfl:Error):Bool {
        if (!_v.canAddr()) {
            return false;
        };
        return _decComplex128Slice(_state, _v.slice(((0 : GoInt)), _v.len()).__copy__(), _length, _ovfl);
    }
function _decComplex128Slice(_state:Pointer<T_decoderState>, _v:stdgo.reflect.Reflect.Value, _length:GoInt, _ovfl:Error):Bool {
        var __tmp__ = try {
            { value : ((_v.interface_().value : Slice<GoComplex128>)), ok : true };
        } catch(_) {
            { value : new Slice<GoComplex128>().nil(), ok : false };
        }, _slice = __tmp__.value, _ok = __tmp__.ok;
        if (!_ok) {
            return false;
        };
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _length, _i++, {
                if (_state.value._b.value.len() == ((0 : GoInt))) {
                    _errorf("decoding complex128 array or slice: length exceeds input size (%d elements)", Go.toInterface(_length));
                };
                var _real:GoFloat64 = _float64FromBits(_state.value._decodeUint());
                var _imag:GoFloat64 = _float64FromBits(_state.value._decodeUint());
                _slice[_i] = new GoComplex128(_real, _imag);
            });
        };
        return true;
    }
function _decFloat32Array(_state:Pointer<T_decoderState>, _v:stdgo.reflect.Reflect.Value, _length:GoInt, _ovfl:Error):Bool {
        if (!_v.canAddr()) {
            return false;
        };
        return _decFloat32Slice(_state, _v.slice(((0 : GoInt)), _v.len()).__copy__(), _length, _ovfl);
    }
function _decFloat32Slice(_state:Pointer<T_decoderState>, _v:stdgo.reflect.Reflect.Value, _length:GoInt, _ovfl:Error):Bool {
        var __tmp__ = try {
            { value : ((_v.interface_().value : Slice<GoFloat32>)), ok : true };
        } catch(_) {
            { value : new Slice<GoFloat32>().nil(), ok : false };
        }, _slice = __tmp__.value, _ok = __tmp__.ok;
        if (!_ok) {
            return false;
        };
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _length, _i++, {
                if (_state.value._b.value.len() == ((0 : GoInt))) {
                    _errorf("decoding float32 array or slice: length exceeds input size (%d elements)", Go.toInterface(_length));
                };
                _slice[_i] = ((_float32FromBits(_state.value._decodeUint(), _ovfl) : GoFloat32));
            });
        };
        return true;
    }
function _decFloat64Array(_state:Pointer<T_decoderState>, _v:stdgo.reflect.Reflect.Value, _length:GoInt, _ovfl:Error):Bool {
        if (!_v.canAddr()) {
            return false;
        };
        return _decFloat64Slice(_state, _v.slice(((0 : GoInt)), _v.len()).__copy__(), _length, _ovfl);
    }
function _decFloat64Slice(_state:Pointer<T_decoderState>, _v:stdgo.reflect.Reflect.Value, _length:GoInt, _ovfl:Error):Bool {
        var __tmp__ = try {
            { value : ((_v.interface_().value : Slice<GoFloat64>)), ok : true };
        } catch(_) {
            { value : new Slice<GoFloat64>().nil(), ok : false };
        }, _slice = __tmp__.value, _ok = __tmp__.ok;
        if (!_ok) {
            return false;
        };
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _length, _i++, {
                if (_state.value._b.value.len() == ((0 : GoInt))) {
                    _errorf("decoding float64 array or slice: length exceeds input size (%d elements)", Go.toInterface(_length));
                };
                _slice[_i] = _float64FromBits(_state.value._decodeUint());
            });
        };
        return true;
    }
function _decIntArray(_state:Pointer<T_decoderState>, _v:stdgo.reflect.Reflect.Value, _length:GoInt, _ovfl:Error):Bool {
        if (!_v.canAddr()) {
            return false;
        };
        return _decIntSlice(_state, _v.slice(((0 : GoInt)), _v.len()).__copy__(), _length, _ovfl);
    }
function _decIntSlice(_state:Pointer<T_decoderState>, _v:stdgo.reflect.Reflect.Value, _length:GoInt, _ovfl:Error):Bool {
        var __tmp__ = try {
            { value : ((_v.interface_().value : Slice<GoInt>)), ok : true };
        } catch(_) {
            { value : new Slice<GoInt>().nil(), ok : false };
        }, _slice = __tmp__.value, _ok = __tmp__.ok;
        if (!_ok) {
            return false;
        };
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _length, _i++, {
                if (_state.value._b.value.len() == ((0 : GoInt))) {
                    _errorf("decoding int array or slice: length exceeds input size (%d elements)", Go.toInterface(_length));
                };
                var _x:GoInt64 = _state.value._decodeInt();
                if (_x < -1 ^ (((-1 ^ ((((0 : GoUInt)) : GoUInt)) >> ((1 : GoUnTypedInt))) : GoInt64)) || (((-1 ^ ((((0 : GoUInt)) : GoUInt)) >> ((1 : GoUnTypedInt))) : GoInt64)) < _x) {
                    _error_(_ovfl);
                };
                _slice[_i] = ((_x : GoInt));
            });
        };
        return true;
    }
function _decInt16Array(_state:Pointer<T_decoderState>, _v:stdgo.reflect.Reflect.Value, _length:GoInt, _ovfl:Error):Bool {
        if (!_v.canAddr()) {
            return false;
        };
        return _decInt16Slice(_state, _v.slice(((0 : GoInt)), _v.len()).__copy__(), _length, _ovfl);
    }
function _decInt16Slice(_state:Pointer<T_decoderState>, _v:stdgo.reflect.Reflect.Value, _length:GoInt, _ovfl:Error):Bool {
        var __tmp__ = try {
            { value : ((_v.interface_().value : Slice<GoInt16>)), ok : true };
        } catch(_) {
            { value : new Slice<GoInt16>().nil(), ok : false };
        }, _slice = __tmp__.value, _ok = __tmp__.ok;
        if (!_ok) {
            return false;
        };
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _length, _i++, {
                if (_state.value._b.value.len() == ((0 : GoInt))) {
                    _errorf("decoding int16 array or slice: length exceeds input size (%d elements)", Go.toInterface(_length));
                };
                var _x:GoInt64 = _state.value._decodeInt();
                if (_x < stdgo.math.Math.minInt16 || stdgo.math.Math.maxInt16 < _x) {
                    _error_(_ovfl);
                };
                _slice[_i] = ((_x : GoInt16));
            });
        };
        return true;
    }
function _decInt32Array(_state:Pointer<T_decoderState>, _v:stdgo.reflect.Reflect.Value, _length:GoInt, _ovfl:Error):Bool {
        if (!_v.canAddr()) {
            return false;
        };
        return _decInt32Slice(_state, _v.slice(((0 : GoInt)), _v.len()).__copy__(), _length, _ovfl);
    }
function _decInt32Slice(_state:Pointer<T_decoderState>, _v:stdgo.reflect.Reflect.Value, _length:GoInt, _ovfl:Error):Bool {
        var __tmp__ = try {
            { value : ((_v.interface_().value : Slice<GoInt32>)), ok : true };
        } catch(_) {
            { value : new Slice<GoInt32>().nil(), ok : false };
        }, _slice = __tmp__.value, _ok = __tmp__.ok;
        if (!_ok) {
            return false;
        };
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _length, _i++, {
                if (_state.value._b.value.len() == ((0 : GoInt))) {
                    _errorf("decoding int32 array or slice: length exceeds input size (%d elements)", Go.toInterface(_length));
                };
                var _x:GoInt64 = _state.value._decodeInt();
                if (_x < stdgo.math.Math.minInt32 || stdgo.math.Math.maxInt32 < _x) {
                    _error_(_ovfl);
                };
                _slice[_i] = ((_x : GoInt32));
            });
        };
        return true;
    }
function _decInt64Array(_state:Pointer<T_decoderState>, _v:stdgo.reflect.Reflect.Value, _length:GoInt, _ovfl:Error):Bool {
        if (!_v.canAddr()) {
            return false;
        };
        return _decInt64Slice(_state, _v.slice(((0 : GoInt)), _v.len()).__copy__(), _length, _ovfl);
    }
function _decInt64Slice(_state:Pointer<T_decoderState>, _v:stdgo.reflect.Reflect.Value, _length:GoInt, _ovfl:Error):Bool {
        var __tmp__ = try {
            { value : ((_v.interface_().value : Slice<GoInt64>)), ok : true };
        } catch(_) {
            { value : new Slice<GoInt64>().nil(), ok : false };
        }, _slice = __tmp__.value, _ok = __tmp__.ok;
        if (!_ok) {
            return false;
        };
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _length, _i++, {
                if (_state.value._b.value.len() == ((0 : GoInt))) {
                    _errorf("decoding int64 array or slice: length exceeds input size (%d elements)", Go.toInterface(_length));
                };
                _slice[_i] = _state.value._decodeInt();
            });
        };
        return true;
    }
function _decInt8Array(_state:Pointer<T_decoderState>, _v:stdgo.reflect.Reflect.Value, _length:GoInt, _ovfl:Error):Bool {
        if (!_v.canAddr()) {
            return false;
        };
        return _decInt8Slice(_state, _v.slice(((0 : GoInt)), _v.len()).__copy__(), _length, _ovfl);
    }
function _decInt8Slice(_state:Pointer<T_decoderState>, _v:stdgo.reflect.Reflect.Value, _length:GoInt, _ovfl:Error):Bool {
        var __tmp__ = try {
            { value : ((_v.interface_().value : Slice<GoInt8>)), ok : true };
        } catch(_) {
            { value : new Slice<GoInt8>().nil(), ok : false };
        }, _slice = __tmp__.value, _ok = __tmp__.ok;
        if (!_ok) {
            return false;
        };
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _length, _i++, {
                if (_state.value._b.value.len() == ((0 : GoInt))) {
                    _errorf("decoding int8 array or slice: length exceeds input size (%d elements)", Go.toInterface(_length));
                };
                var _x:GoInt64 = _state.value._decodeInt();
                if (_x < stdgo.math.Math.minInt8 || stdgo.math.Math.maxInt8 < _x) {
                    _error_(_ovfl);
                };
                _slice[_i] = ((_x : GoInt8));
            });
        };
        return true;
    }
function _decStringArray(_state:Pointer<T_decoderState>, _v:stdgo.reflect.Reflect.Value, _length:GoInt, _ovfl:Error):Bool {
        if (!_v.canAddr()) {
            return false;
        };
        return _decStringSlice(_state, _v.slice(((0 : GoInt)), _v.len()).__copy__(), _length, _ovfl);
    }
function _decStringSlice(_state:Pointer<T_decoderState>, _v:stdgo.reflect.Reflect.Value, _length:GoInt, _ovfl:Error):Bool {
        var __tmp__ = try {
            { value : ((_v.interface_().value : Slice<GoString>)), ok : true };
        } catch(_) {
            { value : new Slice<GoString>().nil(), ok : false };
        }, _slice = __tmp__.value, _ok = __tmp__.ok;
        if (!_ok) {
            return false;
        };
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _length, _i++, {
                if (_state.value._b.value.len() == ((0 : GoInt))) {
                    _errorf("decoding string array or slice: length exceeds input size (%d elements)", Go.toInterface(_length));
                };
                var _u:GoUInt64 = _state.value._decodeUint();
                var _n:GoInt = ((_u : GoInt));
                if (_n < ((0 : GoInt)) || ((_n : GoUInt64)) != _u || _n > _state.value._b.value.len()) {
                    _errorf("length of string exceeds input size (%d bytes)", Go.toInterface(_u));
                };
                if (_n > _state.value._b.value.len()) {
                    _errorf("string data too long for buffer: %d", Go.toInterface(_n));
                };
                var _data:Slice<GoUInt8> = _state.value._b.value.bytes();
                if (_data.length < _n) {
                    _errorf("invalid string length %d: exceeds input size %d", Go.toInterface(_n), Go.toInterface(_data.length));
                };
                _slice[_i] = ((_data.__slice__(0, _n) : GoString));
                _state.value._b.value.drop(_n);
            });
        };
        return true;
    }
function _decUintArray(_state:Pointer<T_decoderState>, _v:stdgo.reflect.Reflect.Value, _length:GoInt, _ovfl:Error):Bool {
        if (!_v.canAddr()) {
            return false;
        };
        return _decUintSlice(_state, _v.slice(((0 : GoInt)), _v.len()).__copy__(), _length, _ovfl);
    }
function _decUintSlice(_state:Pointer<T_decoderState>, _v:stdgo.reflect.Reflect.Value, _length:GoInt, _ovfl:Error):Bool {
        var __tmp__ = try {
            { value : ((_v.interface_().value : Slice<GoUInt>)), ok : true };
        } catch(_) {
            { value : new Slice<GoUInt>().nil(), ok : false };
        }, _slice = __tmp__.value, _ok = __tmp__.ok;
        if (!_ok) {
            return false;
        };
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _length, _i++, {
                if (_state.value._b.value.len() == ((0 : GoInt))) {
                    _errorf("decoding uint array or slice: length exceeds input size (%d elements)", Go.toInterface(_length));
                };
                var _x:GoUInt64 = _state.value._decodeUint();
                _slice[_i] = ((_x : GoUInt));
            });
        };
        return true;
    }
function _decUint16Array(_state:Pointer<T_decoderState>, _v:stdgo.reflect.Reflect.Value, _length:GoInt, _ovfl:Error):Bool {
        if (!_v.canAddr()) {
            return false;
        };
        return _decUint16Slice(_state, _v.slice(((0 : GoInt)), _v.len()).__copy__(), _length, _ovfl);
    }
function _decUint16Slice(_state:Pointer<T_decoderState>, _v:stdgo.reflect.Reflect.Value, _length:GoInt, _ovfl:Error):Bool {
        var __tmp__ = try {
            { value : ((_v.interface_().value : Slice<GoUInt16>)), ok : true };
        } catch(_) {
            { value : new Slice<GoUInt16>().nil(), ok : false };
        }, _slice = __tmp__.value, _ok = __tmp__.ok;
        if (!_ok) {
            return false;
        };
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _length, _i++, {
                if (_state.value._b.value.len() == ((0 : GoInt))) {
                    _errorf("decoding uint16 array or slice: length exceeds input size (%d elements)", Go.toInterface(_length));
                };
                var _x:GoUInt64 = _state.value._decodeUint();
                if (stdgo.math.Math.maxUint16 < _x) {
                    _error_(_ovfl);
                };
                _slice[_i] = ((_x : GoUInt16));
            });
        };
        return true;
    }
function _decUint32Array(_state:Pointer<T_decoderState>, _v:stdgo.reflect.Reflect.Value, _length:GoInt, _ovfl:Error):Bool {
        if (!_v.canAddr()) {
            return false;
        };
        return _decUint32Slice(_state, _v.slice(((0 : GoInt)), _v.len()).__copy__(), _length, _ovfl);
    }
function _decUint32Slice(_state:Pointer<T_decoderState>, _v:stdgo.reflect.Reflect.Value, _length:GoInt, _ovfl:Error):Bool {
        var __tmp__ = try {
            { value : ((_v.interface_().value : Slice<GoUInt32>)), ok : true };
        } catch(_) {
            { value : new Slice<GoUInt32>().nil(), ok : false };
        }, _slice = __tmp__.value, _ok = __tmp__.ok;
        if (!_ok) {
            return false;
        };
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _length, _i++, {
                if (_state.value._b.value.len() == ((0 : GoInt))) {
                    _errorf("decoding uint32 array or slice: length exceeds input size (%d elements)", Go.toInterface(_length));
                };
                var _x:GoUInt64 = _state.value._decodeUint();
                if (stdgo.math.Math.maxUint32 < _x) {
                    _error_(_ovfl);
                };
                _slice[_i] = ((_x : GoUInt32));
            });
        };
        return true;
    }
function _decUint64Array(_state:Pointer<T_decoderState>, _v:stdgo.reflect.Reflect.Value, _length:GoInt, _ovfl:Error):Bool {
        if (!_v.canAddr()) {
            return false;
        };
        return _decUint64Slice(_state, _v.slice(((0 : GoInt)), _v.len()).__copy__(), _length, _ovfl);
    }
function _decUint64Slice(_state:Pointer<T_decoderState>, _v:stdgo.reflect.Reflect.Value, _length:GoInt, _ovfl:Error):Bool {
        var __tmp__ = try {
            { value : ((_v.interface_().value : Slice<GoUInt64>)), ok : true };
        } catch(_) {
            { value : new Slice<GoUInt64>().nil(), ok : false };
        }, _slice = __tmp__.value, _ok = __tmp__.ok;
        if (!_ok) {
            return false;
        };
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _length, _i++, {
                if (_state.value._b.value.len() == ((0 : GoInt))) {
                    _errorf("decoding uint64 array or slice: length exceeds input size (%d elements)", Go.toInterface(_length));
                };
                _slice[_i] = _state.value._decodeUint();
            });
        };
        return true;
    }
function _decUintptrArray(_state:Pointer<T_decoderState>, _v:stdgo.reflect.Reflect.Value, _length:GoInt, _ovfl:Error):Bool {
        if (!_v.canAddr()) {
            return false;
        };
        return _decUintptrSlice(_state, _v.slice(((0 : GoInt)), _v.len()).__copy__(), _length, _ovfl);
    }
function _decUintptrSlice(_state:Pointer<T_decoderState>, _v:stdgo.reflect.Reflect.Value, _length:GoInt, _ovfl:Error):Bool {
        var __tmp__ = try {
            { value : ((_v.interface_().value : Slice<GoUIntptr>)), ok : true };
        } catch(_) {
            { value : new Slice<GoUIntptr>().nil(), ok : false };
        }, _slice = __tmp__.value, _ok = __tmp__.ok;
        if (!_ok) {
            return false;
        };
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _length, _i++, {
                if (_state.value._b.value.len() == ((0 : GoInt))) {
                    _errorf("decoding uintptr array or slice: length exceeds input size (%d elements)", Go.toInterface(_length));
                };
                var _x:GoUInt64 = _state.value._decodeUint();
                if ((((-1 ^ ((((0 : GoUIntptr)) : GoUIntptr))) : GoUInt64)) < _x) {
                    _error_(_ovfl);
                };
                _slice[_i] = ((_x : GoUIntptr));
            });
        };
        return true;
    }
function _overflow(_name:GoString):Error {
        return stdgo.errors.Errors.new_((("value for \"" : GoString)) + _name + (("\" out of range" : GoString)));
    }
/**
    // decodeUintReader reads an encoded unsigned integer from an io.Reader.
    // Used only by the Decoder to read the message length.
**/
function _decodeUintReader(_r:stdgo.io.Io.Reader, _buf:Slice<GoByte>):{ var _0 : GoUInt64; var _1 : GoInt; var _2 : Error; } {
        var _x:GoUInt64 = ((0 : GoUInt64)), _width:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
        _width = ((1 : GoInt));
        var __tmp__ = stdgo.io.Io.readFull(_r, _buf.__slice__(((0 : GoInt)), _width)), _n:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_n == ((0 : GoInt))) {
            return { _0 : _x, _1 : _width, _2 : _err };
        };
        var _b:GoUInt8 = _buf[((0 : GoInt))];
        if (_b <= ((127 : GoUInt8))) {
            return { _0 : ((_b : GoUInt64)), _1 : _width, _2 : ((null : stdgo.Error)) };
        };
        _n = -((((_b : GoInt8)) : GoInt));
        if (_n > _uint64Size) {
            _err = _errBadUint;
            return { _0 : _x, _1 : _width, _2 : _err };
        };
        {
            var __tmp__ = stdgo.io.Io.readFull(_r, _buf.__slice__(((0 : GoInt)), _n));
            _width = __tmp__._0;
            _err = __tmp__._1;
        };
        if (_err != null) {
            if (Go.toInterface(_err) == Go.toInterface(stdgo.io.Io.eof)) {
                _err = stdgo.io.Io.errUnexpectedEOF;
            };
            return { _0 : _x, _1 : _width, _2 : _err };
        };
        for (_b in _buf.__slice__(((0 : GoInt)), _width)) {
            _x = (_x << ((8 : GoUnTypedInt))) | ((_b : GoUInt64));
        };
        _width++;
        return { _0 : _x, _1 : _width, _2 : _err };
    }
/**
    // ignoreUint discards a uint value with no destination.
**/
function _ignoreUint(_i:Pointer<T_decInstr>, _state:Pointer<T_decoderState>, _v:stdgo.reflect.Reflect.Value):Void {
        _state.value._decodeUint();
    }
/**
    // ignoreTwoUints discards a uint value with no destination. It's used to skip
    // complex values.
**/
function _ignoreTwoUints(_i:Pointer<T_decInstr>, _state:Pointer<T_decoderState>, _v:stdgo.reflect.Reflect.Value):Void {
        _state.value._decodeUint();
        _state.value._decodeUint();
    }
/**
    // decAlloc takes a value and returns a settable value that can
    // be assigned to. If the value is a pointer, decAlloc guarantees it points to storage.
    // The callers to the individual decoders are expected to have used decAlloc.
    // The individual decoders don't need to it.
**/
function _decAlloc(_v:stdgo.reflect.Reflect.Value):stdgo.reflect.Reflect.Value {
        while (_v.kind().__t__ == stdgo.reflect.Reflect.ptr.__t__) {
            if (_v.isNil()) {
                _v.set(stdgo.reflect.Reflect.new_(_v.type().elem()).__copy__());
            };
            _v = _v.elem().__copy__();
        };
        return _v.__copy__();
    }
/**
    // decBool decodes a uint and stores it as a boolean in value.
**/
function _decBool(_i:Pointer<T_decInstr>, _state:Pointer<T_decoderState>, _value:stdgo.reflect.Reflect.Value):Void {
        _value.setBool(_state.value._decodeUint() != ((0 : GoUInt64)));
    }
/**
    // decInt8 decodes an integer and stores it as an int8 in value.
**/
function _decInt8(_i:Pointer<T_decInstr>, _state:Pointer<T_decoderState>, _value:stdgo.reflect.Reflect.Value):Void {
        var _v:GoInt64 = _state.value._decodeInt();
        if (_v < stdgo.math.Math.minInt8 || stdgo.math.Math.maxInt8 < _v) {
            _error_(_i.value._ovfl);
        };
        _value.setInt(_v);
    }
/**
    // decUint8 decodes an unsigned integer and stores it as a uint8 in value.
**/
function _decUint8(_i:Pointer<T_decInstr>, _state:Pointer<T_decoderState>, _value:stdgo.reflect.Reflect.Value):Void {
        var _v:GoUInt64 = _state.value._decodeUint();
        if (stdgo.math.Math.maxUint8 < _v) {
            _error_(_i.value._ovfl);
        };
        _value.setUint(_v);
    }
/**
    // decInt16 decodes an integer and stores it as an int16 in value.
**/
function _decInt16(_i:Pointer<T_decInstr>, _state:Pointer<T_decoderState>, _value:stdgo.reflect.Reflect.Value):Void {
        var _v:GoInt64 = _state.value._decodeInt();
        if (_v < stdgo.math.Math.minInt16 || stdgo.math.Math.maxInt16 < _v) {
            _error_(_i.value._ovfl);
        };
        _value.setInt(_v);
    }
/**
    // decUint16 decodes an unsigned integer and stores it as a uint16 in value.
**/
function _decUint16(_i:Pointer<T_decInstr>, _state:Pointer<T_decoderState>, _value:stdgo.reflect.Reflect.Value):Void {
        var _v:GoUInt64 = _state.value._decodeUint();
        if (stdgo.math.Math.maxUint16 < _v) {
            _error_(_i.value._ovfl);
        };
        _value.setUint(_v);
    }
/**
    // decInt32 decodes an integer and stores it as an int32 in value.
**/
function _decInt32(_i:Pointer<T_decInstr>, _state:Pointer<T_decoderState>, _value:stdgo.reflect.Reflect.Value):Void {
        var _v:GoInt64 = _state.value._decodeInt();
        if (_v < stdgo.math.Math.minInt32 || stdgo.math.Math.maxInt32 < _v) {
            _error_(_i.value._ovfl);
        };
        _value.setInt(_v);
    }
/**
    // decUint32 decodes an unsigned integer and stores it as a uint32 in value.
**/
function _decUint32(_i:Pointer<T_decInstr>, _state:Pointer<T_decoderState>, _value:stdgo.reflect.Reflect.Value):Void {
        var _v:GoUInt64 = _state.value._decodeUint();
        if (stdgo.math.Math.maxUint32 < _v) {
            _error_(_i.value._ovfl);
        };
        _value.setUint(_v);
    }
/**
    // decInt64 decodes an integer and stores it as an int64 in value.
**/
function _decInt64(_i:Pointer<T_decInstr>, _state:Pointer<T_decoderState>, _value:stdgo.reflect.Reflect.Value):Void {
        var _v:GoInt64 = _state.value._decodeInt();
        _value.setInt(_v);
    }
/**
    // decUint64 decodes an unsigned integer and stores it as a uint64 in value.
**/
function _decUint64(_i:Pointer<T_decInstr>, _state:Pointer<T_decoderState>, _value:stdgo.reflect.Reflect.Value):Void {
        var _v:GoUInt64 = _state.value._decodeUint();
        _value.setUint(_v);
    }
/**
    // Floating-point numbers are transmitted as uint64s holding the bits
    // of the underlying representation. They are sent byte-reversed, with
    // the exponent end coming out first, so integer floating point numbers
    // (for example) transmit more compactly. This routine does the
    // unswizzling.
**/
function _float64FromBits(_u:GoUInt64):GoFloat64 {
        var _v:GoUInt64 = stdgo.math.bits.Bits.reverseBytes64(_u);
        return stdgo.math.Math.float64frombits(_v);
    }
/**
    // float32FromBits decodes an unsigned integer, treats it as a 32-bit floating-point
    // number, and returns it. It's a helper function for float32 and complex64.
    // It returns a float64 because that's what reflection needs, but its return
    // value is known to be accurately representable in a float32.
**/
function _float32FromBits(_u:GoUInt64, _ovfl:Error):GoFloat64 {
        var _v:GoFloat64 = _float64FromBits(_u);
        var _av:GoFloat64 = _v;
        if (_av < ((0 : GoFloat64))) {
            _av = -_av;
        };
        if (stdgo.math.Math.maxFloat32 < _av && _av <= stdgo.math.Math.maxFloat64) {
            _error_(_ovfl);
        };
        return _v;
    }
/**
    // decFloat32 decodes an unsigned integer, treats it as a 32-bit floating-point
    // number, and stores it in value.
**/
function _decFloat32(_i:Pointer<T_decInstr>, _state:Pointer<T_decoderState>, _value:stdgo.reflect.Reflect.Value):Void {
        _value.setFloat(_float32FromBits(_state.value._decodeUint(), _i.value._ovfl));
    }
/**
    // decFloat64 decodes an unsigned integer, treats it as a 64-bit floating-point
    // number, and stores it in value.
**/
function _decFloat64(_i:Pointer<T_decInstr>, _state:Pointer<T_decoderState>, _value:stdgo.reflect.Reflect.Value):Void {
        _value.setFloat(_float64FromBits(_state.value._decodeUint()));
    }
/**
    // decComplex64 decodes a pair of unsigned integers, treats them as a
    // pair of floating point numbers, and stores them as a complex64 in value.
    // The real part comes first.
**/
function _decComplex64(_i:Pointer<T_decInstr>, _state:Pointer<T_decoderState>, _value:stdgo.reflect.Reflect.Value):Void {
        var _real:GoFloat64 = _float32FromBits(_state.value._decodeUint(), _i.value._ovfl);
        var _imag:GoFloat64 = _float32FromBits(_state.value._decodeUint(), _i.value._ovfl);
        _value.setComplex(new GoComplex128(_real, _imag));
    }
/**
    // decComplex128 decodes a pair of unsigned integers, treats them as a
    // pair of floating point numbers, and stores them as a complex128 in value.
    // The real part comes first.
**/
function _decComplex128(_i:Pointer<T_decInstr>, _state:Pointer<T_decoderState>, _value:stdgo.reflect.Reflect.Value):Void {
        var _real:GoFloat64 = _float64FromBits(_state.value._decodeUint());
        var _imag:GoFloat64 = _float64FromBits(_state.value._decodeUint());
        _value.setComplex(new GoComplex128(_real, _imag));
    }
/**
    // decUint8Slice decodes a byte slice and stores in value a slice header
    // describing the data.
    // uint8 slices are encoded as an unsigned count followed by the raw bytes.
**/
function _decUint8Slice(_i:Pointer<T_decInstr>, _state:Pointer<T_decoderState>, _value:stdgo.reflect.Reflect.Value):Void {
        var __tmp__ = _state.value._getLength(), _n:GoInt = __tmp__._0, _ok:Bool = __tmp__._1;
        if (!_ok) {
            _errorf("bad %s slice length: %d", Go.toInterface(_value.type()), Go.toInterface(_n));
        };
        if (_value.cap() < _n) {
            _value.set(stdgo.reflect.Reflect.makeSlice(_value.type(), _n, _n).__copy__());
        } else {
            _value.set(_value.slice(((0 : GoInt)), _n).__copy__());
        };
        {
            var __tmp__ = _state.value._b.value.read(_value.bytes()), _:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _errorf("error decoding []byte: %s", Go.toInterface(_err));
            };
        };
    }
/**
    // decString decodes byte array and stores in value a string header
    // describing the data.
    // Strings are encoded as an unsigned count followed by the raw bytes.
**/
function _decString(_i:Pointer<T_decInstr>, _state:Pointer<T_decoderState>, _value:stdgo.reflect.Reflect.Value):Void {
        var __tmp__ = _state.value._getLength(), _n:GoInt = __tmp__._0, _ok:Bool = __tmp__._1;
        if (!_ok) {
            _errorf("bad %s slice length: %d", Go.toInterface(_value.type()), Go.toInterface(_n));
        };
        var _data:Slice<GoUInt8> = _state.value._b.value.bytes();
        if (_data.length < _n) {
            _errorf("invalid string length %d: exceeds input size %d", Go.toInterface(_n), Go.toInterface(_data.length));
        };
        var _s:GoString = ((_data.__slice__(0, _n) : GoString));
        _state.value._b.value.drop(_n);
        _value.setString(_s);
    }
/**
    // ignoreUint8Array skips over the data for a byte slice value with no destination.
**/
function _ignoreUint8Array(_i:Pointer<T_decInstr>, _state:Pointer<T_decoderState>, _value:stdgo.reflect.Reflect.Value):Void {
        var __tmp__ = _state.value._getLength(), _n:GoInt = __tmp__._0, _ok:Bool = __tmp__._1;
        if (!_ok) {
            _errorf("slice length too large");
        };
        var _bn:GoInt = _state.value._b.value.len();
        if (_bn < _n) {
            _errorf("invalid slice length %d: exceeds input size %d", Go.toInterface(_n), Go.toInterface(_bn));
        };
        _state.value._b.value.drop(_n);
    }
/**
    // decodeIntoValue is a helper for map decoding.
**/
function _decodeIntoValue(_state:Pointer<T_decoderState>, _op:T_decOp, _isPtr:Bool, _value:stdgo.reflect.Reflect.Value, _instr:Pointer<T_decInstr>):stdgo.reflect.Reflect.Value {
        var _v:stdgo.reflect.Reflect.Value = _value.__copy__();
        if (_isPtr) {
            _v = _decAlloc(_value.__copy__()).__copy__();
        };
        _op.__t__(_instr, _state, _v.__copy__());
        return _value.__copy__();
    }
/**
    // Gob depends on being able to take the address
    // of zeroed Values it creates, so use this wrapper instead
    // of the standard reflect.Zero.
    // Each call allocates once.
**/
function _allocValue(_t:stdgo.reflect.Reflect.Type):stdgo.reflect.Reflect.Value {
        return stdgo.reflect.Reflect.new_(_t).elem().__copy__();
    }
/**
    // NewDecoder returns a new decoder that reads from the io.Reader.
    // If r does not also implement io.ByteReader, it will be wrapped in a
    // bufio.Reader.
**/
function newDecoder(_r:stdgo.io.Io.Reader):Pointer<Decoder> {
        var _dec:Pointer<Decoder> = Go.pointer(new Decoder());
        {
            var __tmp__ = try {
                { value : ((_r.__underlying__().value : stdgo.io.Io.ByteReader)), ok : true };
            } catch(_) {
                { value : ((null : stdgo.io.Io.ByteReader)), ok : false };
            }, _ = __tmp__.value, _ok = __tmp__.ok;
            if (!_ok) {
                _r = bufio.Bufio.newReader(_r).value;
            };
        };
        _dec.value._r = _r;
        _dec.value._wireType = new GoMap<T_typeId, Pointer<T_wireType>>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.named("encoding/gob.typeId", [], stdgo.reflect.Reflect.GoType.basic(int32_kind)), stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("encoding/gob.wireType", [], stdgo.reflect.Reflect.GoType.named("encoding/gob.wireType", [], stdgo.reflect.Reflect.GoType.structType([{ name : "arrayT", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("encoding/gob.arrayType", [], stdgo.reflect.Reflect.GoType.named("encoding/gob.arrayType", [], stdgo.reflect.Reflect.GoType.structType([{ name : "commonType", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("encoding/gob.CommonType", [], stdgo.reflect.Reflect.GoType.named("encoding/gob.CommonType", [], stdgo.reflect.Reflect.GoType.structType([{ name : "name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "id", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("encoding/gob.typeId", [], stdgo.reflect.Reflect.GoType.basic(int32_kind)) }]))) }, { name : "elem", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("encoding/gob.typeId", [], stdgo.reflect.Reflect.GoType.basic(int32_kind)) }, { name : "len", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) }])))) }, { name : "sliceT", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("encoding/gob.sliceType", [], stdgo.reflect.Reflect.GoType.named("encoding/gob.sliceType", [], stdgo.reflect.Reflect.GoType.structType([{ name : "commonType", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("encoding/gob.CommonType", [], stdgo.reflect.Reflect.GoType.named("encoding/gob.CommonType", [], stdgo.reflect.Reflect.GoType.structType([{ name : "name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "id", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("encoding/gob.typeId", [], stdgo.reflect.Reflect.GoType.basic(int32_kind)) }]))) }, { name : "elem", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("encoding/gob.typeId", [], stdgo.reflect.Reflect.GoType.basic(int32_kind)) }])))) }, { name : "structT", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("encoding/gob.structType", [], stdgo.reflect.Reflect.GoType.named("encoding/gob.structType", [], stdgo.reflect.Reflect.GoType.structType([{ name : "commonType", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("encoding/gob.CommonType", [], stdgo.reflect.Reflect.GoType.named("encoding/gob.CommonType", [], stdgo.reflect.Reflect.GoType.structType([{ name : "name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "id", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("encoding/gob.typeId", [], stdgo.reflect.Reflect.GoType.basic(int32_kind)) }]))) }, { name : "field", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("encoding/gob.fieldType", [], stdgo.reflect.Reflect.GoType.named("encoding/gob.CommonType", [], stdgo.reflect.Reflect.GoType.structType([{ name : "name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "id", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("encoding/gob.typeId", [], stdgo.reflect.Reflect.GoType.basic(int32_kind)) }]))))) }])))) }, { name : "mapT", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("encoding/gob.mapType", [], stdgo.reflect.Reflect.GoType.named("encoding/gob.mapType", [], stdgo.reflect.Reflect.GoType.structType([{ name : "commonType", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("encoding/gob.CommonType", [], stdgo.reflect.Reflect.GoType.named("encoding/gob.CommonType", [], stdgo.reflect.Reflect.GoType.structType([{ name : "name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "id", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("encoding/gob.typeId", [], stdgo.reflect.Reflect.GoType.basic(int32_kind)) }]))) }, { name : "key", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("encoding/gob.typeId", [], stdgo.reflect.Reflect.GoType.basic(int32_kind)) }, { name : "elem", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("encoding/gob.typeId", [], stdgo.reflect.Reflect.GoType.basic(int32_kind)) }])))) }, { name : "gobEncoderT", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("encoding/gob.gobEncoderType", [], stdgo.reflect.Reflect.GoType.named("encoding/gob.gobEncoderType", [], stdgo.reflect.Reflect.GoType.structType([{ name : "commonType", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("encoding/gob.CommonType", [], stdgo.reflect.Reflect.GoType.named("encoding/gob.CommonType", [], stdgo.reflect.Reflect.GoType.structType([{ name : "name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "id", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("encoding/gob.typeId", [], stdgo.reflect.Reflect.GoType.basic(int32_kind)) }]))) }])))) }, { name : "binaryMarshalerT", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("encoding/gob.gobEncoderType", [], stdgo.reflect.Reflect.GoType.named("encoding/gob.gobEncoderType", [], stdgo.reflect.Reflect.GoType.structType([{ name : "commonType", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("encoding/gob.CommonType", [], stdgo.reflect.Reflect.GoType.named("encoding/gob.CommonType", [], stdgo.reflect.Reflect.GoType.structType([{ name : "name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "id", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("encoding/gob.typeId", [], stdgo.reflect.Reflect.GoType.basic(int32_kind)) }]))) }])))) }, { name : "textMarshalerT", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("encoding/gob.gobEncoderType", [], stdgo.reflect.Reflect.GoType.named("encoding/gob.gobEncoderType", [], stdgo.reflect.Reflect.GoType.structType([{ name : "commonType", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("encoding/gob.CommonType", [], stdgo.reflect.Reflect.GoType.named("encoding/gob.CommonType", [], stdgo.reflect.Reflect.GoType.structType([{ name : "name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "id", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("encoding/gob.typeId", [], stdgo.reflect.Reflect.GoType.basic(int32_kind)) }]))) }])))) }])))))));
        _dec.value._decoderCache = new GoMap<stdgo.reflect.Reflect.Type, GoMap<T_typeId, Pointer<Pointer<T_decEngine>>>>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.named("reflect.Type", [], stdgo.reflect.Reflect.GoType.interfaceType(false, [])), stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.named("encoding/gob.typeId", [], stdgo.reflect.Reflect.GoType.basic(int32_kind)), stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("encoding/gob.decEngine", [], stdgo.reflect.Reflect.GoType.named("encoding/gob.decEngine", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_instr", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("encoding/gob.decInstr", [], stdgo.reflect.Reflect.GoType.named("encoding/gob.decInstr", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_op", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("encoding/gob.decOp", [], stdgo.reflect.Reflect.GoType.signature(false, [], [], stdgo.reflect.Reflect.GoType.invalidType)) }, { name : "_field", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) }, { name : "_index", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(int_kind)) }, { name : "_ovfl", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("error", [], stdgo.reflect.Reflect.GoType.interfaceType(false, [])) }])))) }, { name : "_numInstr", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) }])))))))));
        _dec.value._ignorerCache = new GoMap<T_typeId, Pointer<Pointer<T_decEngine>>>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.named("encoding/gob.typeId", [], stdgo.reflect.Reflect.GoType.basic(int32_kind)), stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("encoding/gob.decEngine", [], stdgo.reflect.Reflect.GoType.named("encoding/gob.decEngine", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_instr", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("encoding/gob.decInstr", [], stdgo.reflect.Reflect.GoType.named("encoding/gob.decInstr", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_op", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("encoding/gob.decOp", [], stdgo.reflect.Reflect.GoType.signature(false, [], [], stdgo.reflect.Reflect.GoType.invalidType)) }, { name : "_field", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) }, { name : "_index", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(int_kind)) }, { name : "_ovfl", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("error", [], stdgo.reflect.Reflect.GoType.interfaceType(false, [])) }])))) }, { name : "_numInstr", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) }]))))))));
        _dec.value._countBuf = new Slice<GoUInt8>(...[for (i in 0 ... ((((9 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]);
        return _dec;
    }
/**
    // toInt turns an encoded uint64 into an int, according to the marshaling rules.
**/
function _toInt(_x:GoUInt64):GoInt64 {
        var _i:GoInt64 = (((_x >> ((1 : GoUnTypedInt))) : GoInt64));
        if (_x & ((1 : GoUInt64)) != ((0 : GoUInt64))) {
            _i = -1 ^ _i;
        };
        return _i;
    }
function _encBoolArray(_state:Pointer<T_encoderState>, _v:stdgo.reflect.Reflect.Value):Bool {
        if (!_v.canAddr()) {
            return false;
        };
        return _encBoolSlice(_state, _v.slice(((0 : GoInt)), _v.len()).__copy__());
    }
function _encBoolSlice(_state:Pointer<T_encoderState>, _v:stdgo.reflect.Reflect.Value):Bool {
        var __tmp__ = try {
            { value : ((_v.interface_().value : Slice<Bool>)), ok : true };
        } catch(_) {
            { value : new Slice<Bool>().nil(), ok : false };
        }, _slice = __tmp__.value, _ok = __tmp__.ok;
        if (!_ok) {
            return false;
        };
        for (_x in _slice) {
            if (_x != false || _state.value._sendZero) {
                if (_x) {
                    _state.value._encodeUint(((1 : GoUInt64)));
                } else {
                    _state.value._encodeUint(((0 : GoUInt64)));
                };
            };
        };
        return true;
    }
function _encComplex64Array(_state:Pointer<T_encoderState>, _v:stdgo.reflect.Reflect.Value):Bool {
        if (!_v.canAddr()) {
            return false;
        };
        return _encComplex64Slice(_state, _v.slice(((0 : GoInt)), _v.len()).__copy__());
    }
function _encComplex64Slice(_state:Pointer<T_encoderState>, _v:stdgo.reflect.Reflect.Value):Bool {
        var __tmp__ = try {
            { value : ((_v.interface_().value : Slice<GoComplex64>)), ok : true };
        } catch(_) {
            { value : new Slice<GoComplex64>().nil(), ok : false };
        }, _slice = __tmp__.value, _ok = __tmp__.ok;
        if (!_ok) {
            return false;
        };
        for (_x in _slice) {
            if (_x != ((0 : GoUnTypedComplex)) + new GoComplex128(0, 0) || _state.value._sendZero) {
                var _rpart:GoUInt64 = _floatBits(((_x.real : GoFloat64)));
                var _ipart:GoUInt64 = _floatBits(((_x.imag : GoFloat64)));
                _state.value._encodeUint(_rpart);
                _state.value._encodeUint(_ipart);
            };
        };
        return true;
    }
function _encComplex128Array(_state:Pointer<T_encoderState>, _v:stdgo.reflect.Reflect.Value):Bool {
        if (!_v.canAddr()) {
            return false;
        };
        return _encComplex128Slice(_state, _v.slice(((0 : GoInt)), _v.len()).__copy__());
    }
function _encComplex128Slice(_state:Pointer<T_encoderState>, _v:stdgo.reflect.Reflect.Value):Bool {
        var __tmp__ = try {
            { value : ((_v.interface_().value : Slice<GoComplex128>)), ok : true };
        } catch(_) {
            { value : new Slice<GoComplex128>().nil(), ok : false };
        }, _slice = __tmp__.value, _ok = __tmp__.ok;
        if (!_ok) {
            return false;
        };
        for (_x in _slice) {
            if (_x != ((0 : GoUnTypedComplex)) + new GoComplex128(0, 0) || _state.value._sendZero) {
                var _rpart:GoUInt64 = _floatBits(_x.real);
                var _ipart:GoUInt64 = _floatBits(_x.imag);
                _state.value._encodeUint(_rpart);
                _state.value._encodeUint(_ipart);
            };
        };
        return true;
    }
function _encFloat32Array(_state:Pointer<T_encoderState>, _v:stdgo.reflect.Reflect.Value):Bool {
        if (!_v.canAddr()) {
            return false;
        };
        return _encFloat32Slice(_state, _v.slice(((0 : GoInt)), _v.len()).__copy__());
    }
function _encFloat32Slice(_state:Pointer<T_encoderState>, _v:stdgo.reflect.Reflect.Value):Bool {
        var __tmp__ = try {
            { value : ((_v.interface_().value : Slice<GoFloat32>)), ok : true };
        } catch(_) {
            { value : new Slice<GoFloat32>().nil(), ok : false };
        }, _slice = __tmp__.value, _ok = __tmp__.ok;
        if (!_ok) {
            return false;
        };
        for (_x in _slice) {
            if (_x != ((0 : GoFloat32)) || _state.value._sendZero) {
                var _bits:GoUInt64 = _floatBits(((_x : GoFloat64)));
                _state.value._encodeUint(_bits);
            };
        };
        return true;
    }
function _encFloat64Array(_state:Pointer<T_encoderState>, _v:stdgo.reflect.Reflect.Value):Bool {
        if (!_v.canAddr()) {
            return false;
        };
        return _encFloat64Slice(_state, _v.slice(((0 : GoInt)), _v.len()).__copy__());
    }
function _encFloat64Slice(_state:Pointer<T_encoderState>, _v:stdgo.reflect.Reflect.Value):Bool {
        var __tmp__ = try {
            { value : ((_v.interface_().value : Slice<GoFloat64>)), ok : true };
        } catch(_) {
            { value : new Slice<GoFloat64>().nil(), ok : false };
        }, _slice = __tmp__.value, _ok = __tmp__.ok;
        if (!_ok) {
            return false;
        };
        for (_x in _slice) {
            if (_x != ((0 : GoFloat64)) || _state.value._sendZero) {
                var _bits:GoUInt64 = _floatBits(_x);
                _state.value._encodeUint(_bits);
            };
        };
        return true;
    }
function _encIntArray(_state:Pointer<T_encoderState>, _v:stdgo.reflect.Reflect.Value):Bool {
        if (!_v.canAddr()) {
            return false;
        };
        return _encIntSlice(_state, _v.slice(((0 : GoInt)), _v.len()).__copy__());
    }
function _encIntSlice(_state:Pointer<T_encoderState>, _v:stdgo.reflect.Reflect.Value):Bool {
        var __tmp__ = try {
            { value : ((_v.interface_().value : Slice<GoInt>)), ok : true };
        } catch(_) {
            { value : new Slice<GoInt>().nil(), ok : false };
        }, _slice = __tmp__.value, _ok = __tmp__.ok;
        if (!_ok) {
            return false;
        };
        for (_x in _slice) {
            if (_x != ((0 : GoInt)) || _state.value._sendZero) {
                _state.value._encodeInt(((_x : GoInt64)));
            };
        };
        return true;
    }
function _encInt16Array(_state:Pointer<T_encoderState>, _v:stdgo.reflect.Reflect.Value):Bool {
        if (!_v.canAddr()) {
            return false;
        };
        return _encInt16Slice(_state, _v.slice(((0 : GoInt)), _v.len()).__copy__());
    }
function _encInt16Slice(_state:Pointer<T_encoderState>, _v:stdgo.reflect.Reflect.Value):Bool {
        var __tmp__ = try {
            { value : ((_v.interface_().value : Slice<GoInt16>)), ok : true };
        } catch(_) {
            { value : new Slice<GoInt16>().nil(), ok : false };
        }, _slice = __tmp__.value, _ok = __tmp__.ok;
        if (!_ok) {
            return false;
        };
        for (_x in _slice) {
            if (_x != ((0 : GoInt16)) || _state.value._sendZero) {
                _state.value._encodeInt(((_x : GoInt64)));
            };
        };
        return true;
    }
function _encInt32Array(_state:Pointer<T_encoderState>, _v:stdgo.reflect.Reflect.Value):Bool {
        if (!_v.canAddr()) {
            return false;
        };
        return _encInt32Slice(_state, _v.slice(((0 : GoInt)), _v.len()).__copy__());
    }
function _encInt32Slice(_state:Pointer<T_encoderState>, _v:stdgo.reflect.Reflect.Value):Bool {
        var __tmp__ = try {
            { value : ((_v.interface_().value : Slice<GoInt32>)), ok : true };
        } catch(_) {
            { value : new Slice<GoInt32>().nil(), ok : false };
        }, _slice = __tmp__.value, _ok = __tmp__.ok;
        if (!_ok) {
            return false;
        };
        for (_x in _slice) {
            if (_x != ((0 : GoInt32)) || _state.value._sendZero) {
                _state.value._encodeInt(((_x : GoInt64)));
            };
        };
        return true;
    }
function _encInt64Array(_state:Pointer<T_encoderState>, _v:stdgo.reflect.Reflect.Value):Bool {
        if (!_v.canAddr()) {
            return false;
        };
        return _encInt64Slice(_state, _v.slice(((0 : GoInt)), _v.len()).__copy__());
    }
function _encInt64Slice(_state:Pointer<T_encoderState>, _v:stdgo.reflect.Reflect.Value):Bool {
        var __tmp__ = try {
            { value : ((_v.interface_().value : Slice<GoInt64>)), ok : true };
        } catch(_) {
            { value : new Slice<GoInt64>().nil(), ok : false };
        }, _slice = __tmp__.value, _ok = __tmp__.ok;
        if (!_ok) {
            return false;
        };
        for (_x in _slice) {
            if (_x != ((0 : GoInt64)) || _state.value._sendZero) {
                _state.value._encodeInt(_x);
            };
        };
        return true;
    }
function _encInt8Array(_state:Pointer<T_encoderState>, _v:stdgo.reflect.Reflect.Value):Bool {
        if (!_v.canAddr()) {
            return false;
        };
        return _encInt8Slice(_state, _v.slice(((0 : GoInt)), _v.len()).__copy__());
    }
function _encInt8Slice(_state:Pointer<T_encoderState>, _v:stdgo.reflect.Reflect.Value):Bool {
        var __tmp__ = try {
            { value : ((_v.interface_().value : Slice<GoInt8>)), ok : true };
        } catch(_) {
            { value : new Slice<GoInt8>().nil(), ok : false };
        }, _slice = __tmp__.value, _ok = __tmp__.ok;
        if (!_ok) {
            return false;
        };
        for (_x in _slice) {
            if (_x != ((0 : GoInt8)) || _state.value._sendZero) {
                _state.value._encodeInt(((_x : GoInt64)));
            };
        };
        return true;
    }
function _encStringArray(_state:Pointer<T_encoderState>, _v:stdgo.reflect.Reflect.Value):Bool {
        if (!_v.canAddr()) {
            return false;
        };
        return _encStringSlice(_state, _v.slice(((0 : GoInt)), _v.len()).__copy__());
    }
function _encStringSlice(_state:Pointer<T_encoderState>, _v:stdgo.reflect.Reflect.Value):Bool {
        var __tmp__ = try {
            { value : ((_v.interface_().value : Slice<GoString>)), ok : true };
        } catch(_) {
            { value : new Slice<GoString>().nil(), ok : false };
        }, _slice = __tmp__.value, _ok = __tmp__.ok;
        if (!_ok) {
            return false;
        };
        for (_x in _slice) {
            if (_x != (("" : GoString)) || _state.value._sendZero) {
                _state.value._encodeUint(((_x.length : GoUInt64)));
                _state.value._b.value.writeString(_x);
            };
        };
        return true;
    }
function _encUintArray(_state:Pointer<T_encoderState>, _v:stdgo.reflect.Reflect.Value):Bool {
        if (!_v.canAddr()) {
            return false;
        };
        return _encUintSlice(_state, _v.slice(((0 : GoInt)), _v.len()).__copy__());
    }
function _encUintSlice(_state:Pointer<T_encoderState>, _v:stdgo.reflect.Reflect.Value):Bool {
        var __tmp__ = try {
            { value : ((_v.interface_().value : Slice<GoUInt>)), ok : true };
        } catch(_) {
            { value : new Slice<GoUInt>().nil(), ok : false };
        }, _slice = __tmp__.value, _ok = __tmp__.ok;
        if (!_ok) {
            return false;
        };
        for (_x in _slice) {
            if (_x != ((0 : GoUInt)) || _state.value._sendZero) {
                _state.value._encodeUint(((_x : GoUInt64)));
            };
        };
        return true;
    }
function _encUint16Array(_state:Pointer<T_encoderState>, _v:stdgo.reflect.Reflect.Value):Bool {
        if (!_v.canAddr()) {
            return false;
        };
        return _encUint16Slice(_state, _v.slice(((0 : GoInt)), _v.len()).__copy__());
    }
function _encUint16Slice(_state:Pointer<T_encoderState>, _v:stdgo.reflect.Reflect.Value):Bool {
        var __tmp__ = try {
            { value : ((_v.interface_().value : Slice<GoUInt16>)), ok : true };
        } catch(_) {
            { value : new Slice<GoUInt16>().nil(), ok : false };
        }, _slice = __tmp__.value, _ok = __tmp__.ok;
        if (!_ok) {
            return false;
        };
        for (_x in _slice) {
            if (_x != ((0 : GoUInt16)) || _state.value._sendZero) {
                _state.value._encodeUint(((_x : GoUInt64)));
            };
        };
        return true;
    }
function _encUint32Array(_state:Pointer<T_encoderState>, _v:stdgo.reflect.Reflect.Value):Bool {
        if (!_v.canAddr()) {
            return false;
        };
        return _encUint32Slice(_state, _v.slice(((0 : GoInt)), _v.len()).__copy__());
    }
function _encUint32Slice(_state:Pointer<T_encoderState>, _v:stdgo.reflect.Reflect.Value):Bool {
        var __tmp__ = try {
            { value : ((_v.interface_().value : Slice<GoUInt32>)), ok : true };
        } catch(_) {
            { value : new Slice<GoUInt32>().nil(), ok : false };
        }, _slice = __tmp__.value, _ok = __tmp__.ok;
        if (!_ok) {
            return false;
        };
        for (_x in _slice) {
            if (_x != ((0 : GoUInt32)) || _state.value._sendZero) {
                _state.value._encodeUint(((_x : GoUInt64)));
            };
        };
        return true;
    }
function _encUint64Array(_state:Pointer<T_encoderState>, _v:stdgo.reflect.Reflect.Value):Bool {
        if (!_v.canAddr()) {
            return false;
        };
        return _encUint64Slice(_state, _v.slice(((0 : GoInt)), _v.len()).__copy__());
    }
function _encUint64Slice(_state:Pointer<T_encoderState>, _v:stdgo.reflect.Reflect.Value):Bool {
        var __tmp__ = try {
            { value : ((_v.interface_().value : Slice<GoUInt64>)), ok : true };
        } catch(_) {
            { value : new Slice<GoUInt64>().nil(), ok : false };
        }, _slice = __tmp__.value, _ok = __tmp__.ok;
        if (!_ok) {
            return false;
        };
        for (_x in _slice) {
            if (_x != ((0 : GoUInt64)) || _state.value._sendZero) {
                _state.value._encodeUint(_x);
            };
        };
        return true;
    }
function _encUintptrArray(_state:Pointer<T_encoderState>, _v:stdgo.reflect.Reflect.Value):Bool {
        if (!_v.canAddr()) {
            return false;
        };
        return _encUintptrSlice(_state, _v.slice(((0 : GoInt)), _v.len()).__copy__());
    }
function _encUintptrSlice(_state:Pointer<T_encoderState>, _v:stdgo.reflect.Reflect.Value):Bool {
        var __tmp__ = try {
            { value : ((_v.interface_().value : Slice<GoUIntptr>)), ok : true };
        } catch(_) {
            { value : new Slice<GoUIntptr>().nil(), ok : false };
        }, _slice = __tmp__.value, _ok = __tmp__.ok;
        if (!_ok) {
            return false;
        };
        for (_x in _slice) {
            if (_x != ((0 : GoUIntptr)) || _state.value._sendZero) {
                _state.value._encodeUint(((_x : GoUInt64)));
            };
        };
        return true;
    }
/**
    // encIndirect dereferences pv indir times and returns the result.
**/
function _encIndirect(_pv:stdgo.reflect.Reflect.Value, _indir:GoInt):stdgo.reflect.Reflect.Value {
        Go.cfor(_indir > ((0 : GoInt)), _indir--, {
            if (_pv.isNil()) {
                break;
            };
            _pv = _pv.elem().__copy__();
        });
        return _pv.__copy__();
    }
/**
    // encBool encodes the bool referenced by v as an unsigned 0 or 1.
**/
function _encBool(_i:Pointer<T_encInstr>, _state:Pointer<T_encoderState>, _v:stdgo.reflect.Reflect.Value):Void {
        var _b:Bool = _v.bool();
        if (_b || _state.value._sendZero) {
            _state.value._update(_i);
            if (_b) {
                _state.value._encodeUint(((1 : GoUInt64)));
            } else {
                _state.value._encodeUint(((0 : GoUInt64)));
            };
        };
    }
/**
    // encInt encodes the signed integer (int int8 int16 int32 int64) referenced by v.
**/
function _encInt(_i:Pointer<T_encInstr>, _state:Pointer<T_encoderState>, _v:stdgo.reflect.Reflect.Value):Void {
        var _value:GoInt64 = _v.int();
        if (_value != ((0 : GoInt64)) || _state.value._sendZero) {
            _state.value._update(_i);
            _state.value._encodeInt(_value);
        };
    }
/**
    // encUint encodes the unsigned integer (uint uint8 uint16 uint32 uint64 uintptr) referenced by v.
**/
function _encUint(_i:Pointer<T_encInstr>, _state:Pointer<T_encoderState>, _v:stdgo.reflect.Reflect.Value):Void {
        var _value:GoUInt64 = _v.uint();
        if (_value != ((0 : GoUInt64)) || _state.value._sendZero) {
            _state.value._update(_i);
            _state.value._encodeUint(_value);
        };
    }
/**
    // floatBits returns a uint64 holding the bits of a floating-point number.
    // Floating-point numbers are transmitted as uint64s holding the bits
    // of the underlying representation. They are sent byte-reversed, with
    // the exponent end coming out first, so integer floating point numbers
    // (for example) transmit more compactly. This routine does the
    // swizzling.
**/
function _floatBits(_f:GoFloat64):GoUInt64 {
        var _u:GoUInt64 = stdgo.math.Math.float64bits(_f);
        return stdgo.math.bits.Bits.reverseBytes64(_u);
    }
/**
    // encFloat encodes the floating point value (float32 float64) referenced by v.
**/
function _encFloat(_i:Pointer<T_encInstr>, _state:Pointer<T_encoderState>, _v:stdgo.reflect.Reflect.Value):Void {
        var _f:GoFloat64 = _v.float();
        if (_f != ((0 : GoFloat64)) || _state.value._sendZero) {
            var _bits:GoUInt64 = _floatBits(_f);
            _state.value._update(_i);
            _state.value._encodeUint(_bits);
        };
    }
/**
    // encComplex encodes the complex value (complex64 complex128) referenced by v.
    // Complex numbers are just a pair of floating-point numbers, real part first.
**/
function _encComplex(_i:Pointer<T_encInstr>, _state:Pointer<T_encoderState>, _v:stdgo.reflect.Reflect.Value):Void {
        var _c:GoComplex128 = _v.complex();
        if (_c != ((0 : GoUnTypedComplex)) + new GoComplex128(0, 0) || _state.value._sendZero) {
            var _rpart:GoUInt64 = _floatBits(_c.real);
            var _ipart:GoUInt64 = _floatBits(_c.imag);
            _state.value._update(_i);
            _state.value._encodeUint(_rpart);
            _state.value._encodeUint(_ipart);
        };
    }
/**
    // encUint8Array encodes the byte array referenced by v.
    // Byte arrays are encoded as an unsigned count followed by the raw bytes.
**/
function _encUint8Array(_i:Pointer<T_encInstr>, _state:Pointer<T_encoderState>, _v:stdgo.reflect.Reflect.Value):Void {
        var _b:Slice<GoUInt8> = _v.bytes();
        if (_b.length > ((0 : GoInt)) || _state.value._sendZero) {
            _state.value._update(_i);
            _state.value._encodeUint(((_b.length : GoUInt64)));
            _state.value._b.value.write(_b);
        };
    }
/**
    // encString encodes the string referenced by v.
    // Strings are encoded as an unsigned count followed by the raw bytes.
**/
function _encString(_i:Pointer<T_encInstr>, _state:Pointer<T_encoderState>, _v:stdgo.reflect.Reflect.Value):Void {
        var _s:GoString = _v.toString();
        if (_s.length > ((0 : GoInt)) || _state.value._sendZero) {
            _state.value._update(_i);
            _state.value._encodeUint(((_s.length : GoUInt64)));
            _state.value._b.value.writeString(_s);
        };
    }
/**
    // encStructTerminator encodes the end of an encoded struct
    // as delta field number of 0.
**/
function _encStructTerminator(_i:Pointer<T_encInstr>, _state:Pointer<T_encoderState>, _v:stdgo.reflect.Reflect.Value):Void {
        _state.value._encodeUint(((0 : GoUInt64)));
    }
/**
    // valid reports whether the value is valid and a non-nil pointer.
    // (Slices, maps, and chans take care of themselves.)
**/
function _valid(_v:stdgo.reflect.Reflect.Value):Bool {
        if (_v.kind().__t__ == stdgo.reflect.Reflect.invalid.__t__) {
            return false;
        } else if (_v.kind().__t__ == stdgo.reflect.Reflect.ptr.__t__) {
            return !_v.isNil();
        };
        return true;
    }
/**
    // encodeReflectValue is a helper for maps. It encodes the value v.
**/
function _encodeReflectValue(_state:Pointer<T_encoderState>, _v:stdgo.reflect.Reflect.Value, _op:T_encOp, _indir:GoInt):Void {
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _indir && _v.isValid(), _i++, {
                _v = stdgo.reflect.Reflect.indirect(_v.__copy__()).__copy__();
            });
        };
        if (!_v.isValid()) {
            _errorf("encodeReflectValue: nil element");
        };
        _op.__t__(new Pointer<T_encInstr>().nil(), _state, _v.__copy__());
    }
/**
    // isZero reports whether the value is the zero of its type.
**/
function _isZero(_val:stdgo.reflect.Reflect.Value):Bool {
        if (_val.kind().__t__ == stdgo.reflect.Reflect.array.__t__) {
            {
                var _i:GoInt = ((0 : GoInt));
                Go.cfor(_i < _val.len(), _i++, {
                    if (!_isZero(_val.index(_i).__copy__())) {
                        return false;
                    };
                });
            };
            return true;
        } else if (_val.kind().__t__ == stdgo.reflect.Reflect.map.__t__ || _val.kind().__t__ == stdgo.reflect.Reflect.slice.__t__ || _val.kind().__t__ == stdgo.reflect.Reflect.toString.__t__) {
            return _val.len() == ((0 : GoInt));
        } else if (_val.kind().__t__ == stdgo.reflect.Reflect.bool.__t__) {
            return !_val.bool();
        } else if (_val.kind().__t__ == stdgo.reflect.Reflect.complex64.__t__ || _val.kind().__t__ == stdgo.reflect.Reflect.complex128.__t__) {
            return _val.complex() == ((0 : GoComplex128));
        } else if (_val.kind().__t__ == stdgo.reflect.Reflect.chan.__t__ || _val.kind().__t__ == stdgo.reflect.Reflect.func.__t__ || _val.kind().__t__ == stdgo.reflect.Reflect.interface_.__t__ || _val.kind().__t__ == stdgo.reflect.Reflect.ptr.__t__) {
            return _val.isNil();
        } else if (_val.kind().__t__ == stdgo.reflect.Reflect.int.__t__ || _val.kind().__t__ == stdgo.reflect.Reflect.int8.__t__ || _val.kind().__t__ == stdgo.reflect.Reflect.int16.__t__ || _val.kind().__t__ == stdgo.reflect.Reflect.int32.__t__ || _val.kind().__t__ == stdgo.reflect.Reflect.int64.__t__) {
            return _val.int() == ((0 : GoInt64));
        } else if (_val.kind().__t__ == stdgo.reflect.Reflect.float32.__t__ || _val.kind().__t__ == stdgo.reflect.Reflect.float64.__t__) {
            return _val.float() == ((0 : GoFloat64));
        } else if (_val.kind().__t__ == stdgo.reflect.Reflect.uint.__t__ || _val.kind().__t__ == stdgo.reflect.Reflect.uint8.__t__ || _val.kind().__t__ == stdgo.reflect.Reflect.uint16.__t__ || _val.kind().__t__ == stdgo.reflect.Reflect.uint32.__t__ || _val.kind().__t__ == stdgo.reflect.Reflect.uint64.__t__ || _val.kind().__t__ == stdgo.reflect.Reflect.uintptr.__t__) {
            return _val.uint() == ((0 : GoUInt64));
        } else if (_val.kind().__t__ == stdgo.reflect.Reflect.struct.__t__) {
            {
                var _i:GoInt = ((0 : GoInt));
                Go.cfor(_i < _val.numField(), _i++, {
                    if (!_isZero(_val.field(_i).__copy__())) {
                        return false;
                    };
                });
            };
            return true;
        };
        throw (("unknown type in isZero " : GoString)) + _val.type().toString();
    }
/**
    // encOpFor returns (a pointer to) the encoding op for the base type under rt and
    // the indirection count to reach it.
**/
function _encOpFor(_rt:stdgo.reflect.Reflect.Type, _inProgress:GoMap<stdgo.reflect.Reflect.Type, Pointer<T_encOp>>, _building:GoMap<Pointer<T_typeInfo>, Bool>):{ var _0 : Pointer<T_encOp>; var _1 : GoInt; } {
        var _ut:Pointer<T_userTypeInfo> = _userType(_rt);
        if (_ut.value._externalEnc != ((0 : GoInt))) {
            return _gobEncodeOpFor(_ut);
        };
        {
            var _opPtr:Pointer<T_encOp> = _inProgress[_rt];
            if (_opPtr != null && !_opPtr.isNil()) {
                return { _0 : _opPtr, _1 : _ut.value._indir };
            };
        };
        var _typ:stdgo.reflect.Reflect.Type = _ut.value._base;
        var _indir:GoInt = _ut.value._indir;
        var _k:stdgo.reflect.Reflect.Kind = _typ.kind();
        var _op:T_encOp = new T_encOp();
        if (_k.__t__ < _encOpTable.length) {
            _op = _encOpTable[_k.__t__].__copy__();
        };
        if (_op.__t__ == null) {
            _inProgress[_rt] = Go.pointer(_op);
            {
                var _t:stdgo.reflect.Reflect.Type = _typ;
                {
                    var __switchIndex__ = -1;
                    while (true) {
                        if (_t.kind().__t__ == stdgo.reflect.Reflect.slice.__t__) {
                            if (_t.elem().kind().__t__ == stdgo.reflect.Reflect.uint8.__t__) {
                                _op = new T_encOp(_encUint8Array);
                                break;
                            };
                            var __tmp__ = _encOpFor(_t.elem(), _inProgress, _building), _elemOp:Pointer<T_encOp> = __tmp__._0, _elemIndir:GoInt = __tmp__._1;
                            var _helper:T_encHelper = _encSliceHelper[_t.elem().kind()].__copy__();
                            _op = new T_encOp(function(_i:Pointer<T_encInstr>, _state:Pointer<T_encoderState>, _slice:stdgo.reflect.Reflect.Value):Void {
                                if (!_state.value._sendZero && _slice.len() == ((0 : GoInt))) {
                                    return;
                                };
                                _state.value._update(_i);
                                _state.value._enc.value._encodeArray(_state.value._b, _slice.__copy__(), _elemOp.value.__copy__(), _elemIndir, _slice.len(), _helper.__copy__());
                            });
                            break;
                        } else if (_t.kind().__t__ == stdgo.reflect.Reflect.array.__t__) {
                            var __tmp__ = _encOpFor(_t.elem(), _inProgress, _building), _elemOp:Pointer<T_encOp> = __tmp__._0, _elemIndir:GoInt = __tmp__._1;
                            var _helper:T_encHelper = _encArrayHelper[_t.elem().kind()].__copy__();
                            _op = new T_encOp(function(_i:Pointer<T_encInstr>, _state:Pointer<T_encoderState>, _array:stdgo.reflect.Reflect.Value):Void {
                                _state.value._update(_i);
                                _state.value._enc.value._encodeArray(_state.value._b, _array.__copy__(), _elemOp.value.__copy__(), _elemIndir, _array.len(), _helper.__copy__());
                            });
                            break;
                        } else if (_t.kind().__t__ == stdgo.reflect.Reflect.map.__t__) {
                            var __tmp__ = _encOpFor(_t.key(), _inProgress, _building), _keyOp:Pointer<T_encOp> = __tmp__._0, _keyIndir:GoInt = __tmp__._1;
                            var __tmp__ = _encOpFor(_t.elem(), _inProgress, _building), _elemOp:Pointer<T_encOp> = __tmp__._0, _elemIndir:GoInt = __tmp__._1;
                            _op = new T_encOp(function(_i:Pointer<T_encInstr>, _state:Pointer<T_encoderState>, _mv:stdgo.reflect.Reflect.Value):Void {
                                if (!_state.value._sendZero && _mv.isNil()) {
                                    return;
                                };
                                _state.value._update(_i);
                                _state.value._enc.value._encodeMap(_state.value._b, _mv.__copy__(), _keyOp.value.__copy__(), _elemOp.value.__copy__(), _keyIndir, _elemIndir);
                            });
                            break;
                        } else if (_t.kind().__t__ == stdgo.reflect.Reflect.struct.__t__) {
                            _getEncEngine(_userType(_typ), _building);
                            var _info:Pointer<T_typeInfo> = _mustGetTypeInfo(_typ);
                            _op = new T_encOp(function(_i:Pointer<T_encInstr>, _state:Pointer<T_encoderState>, _sv:stdgo.reflect.Reflect.Value):Void {
                                _state.value._update(_i);
                                var _enc:Pointer<T_encEngine> = ((_info.value._encoder.load().value : Pointer<T_encEngine>));
                                _state.value._enc.value._encodeStruct(_state.value._b, _enc, _sv.__copy__());
                            });
                            break;
                        } else if (_t.kind().__t__ == stdgo.reflect.Reflect.interface_.__t__) {
                            _op = new T_encOp(function(_i:Pointer<T_encInstr>, _state:Pointer<T_encoderState>, _iv:stdgo.reflect.Reflect.Value):Void {
                                if (!_state.value._sendZero && (!_iv.isValid() || _iv.isNil())) {
                                    return;
                                };
                                _state.value._update(_i);
                                _state.value._enc.value._encodeInterface(_state.value._b, _iv.__copy__());
                            });
                            break;
                        };
                        break;
                    };
                };
            };
        };
        if (_op.__t__ == null) {
            _errorf("can\'t happen: encode type %s", Go.toInterface(_rt));
        };
        return { _0 : Go.pointer(_op), _1 : _indir };
    }
/**
    // gobEncodeOpFor returns the op for a type that is known to implement GobEncoder.
**/
function _gobEncodeOpFor(_ut:Pointer<T_userTypeInfo>):{ var _0 : Pointer<T_encOp>; var _1 : GoInt; } {
        var _rt:stdgo.reflect.Reflect.Type = _ut.value._user;
        if (_ut.value._encIndir == -((1 : GoUnTypedInt))) {
            _rt = stdgo.reflect.Reflect.ptrTo(_rt);
        } else if (_ut.value._encIndir > ((0 : GoInt8))) {
            {
                var _i:GoInt8 = ((((0 : GoInt8)) : GoInt8));
                Go.cfor(_i < _ut.value._encIndir, _i++, {
                    _rt = _rt.elem();
                });
            };
        };
        var _op:T_encOp = new T_encOp();
        _op = new T_encOp(function(_i:Pointer<T_encInstr>, _state:Pointer<T_encoderState>, _v:stdgo.reflect.Reflect.Value):Void {
            if (_ut.value._encIndir == -((1 : GoUnTypedInt))) {
                if (!_v.canAddr()) {
                    _errorf("unaddressable value of type %s", Go.toInterface(_rt));
                };
                _v = _v.addr().__copy__();
            };
            if (!_state.value._sendZero && _isZero(_v.__copy__())) {
                return;
            };
            _state.value._update(_i);
            _state.value._enc.value._encodeGobEncoder(_state.value._b, _ut, _v.__copy__());
        });
        return { _0 : Go.pointer(_op), _1 : ((_ut.value._encIndir : GoInt)) };
    }
/**
    // compileEnc returns the engine to compile the type.
**/
function _compileEnc(_ut:Pointer<T_userTypeInfo>, _building:GoMap<Pointer<T_typeInfo>, Bool>):Pointer<T_encEngine> {
        var _srt:stdgo.reflect.Reflect.Type = _ut.value._base;
        var _engine:Pointer<T_encEngine> = Go.pointer(new T_encEngine());
        var _seen:GoMap<stdgo.reflect.Reflect.Type, Pointer<T_encOp>> = new GoMap<stdgo.reflect.Reflect.Type, Pointer<T_encOp>>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.named("reflect.Type", [], stdgo.reflect.Reflect.GoType.interfaceType(false, [])), stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("encoding/gob.encOp", [], stdgo.reflect.Reflect.GoType.signature(false, [], [], stdgo.reflect.Reflect.GoType.invalidType))))));
        var _rt:stdgo.reflect.Reflect.Type = _ut.value._base;
        if (_ut.value._externalEnc != ((0 : GoInt))) {
            _rt = _ut.value._user;
        };
        if (_ut.value._externalEnc == ((0 : GoInt)) && _srt.kind().__t__ == stdgo.reflect.Reflect.struct.__t__) {
            {
                var _fieldNum:GoInt = ((0 : GoInt)), _wireFieldNum:GoInt = ((0 : GoInt));
                Go.cfor(_fieldNum < _srt.numField(), _fieldNum++, {
                    var _f:stdgo.reflect.Reflect.StructField = _srt.field(_fieldNum).__copy__();
                    if (!_isSent(Go.pointer(_f))) {
                        continue;
                    };
                    var __tmp__ = _encOpFor(_f.type, _seen, _building), _op:Pointer<T_encOp> = __tmp__._0, _indir:GoInt = __tmp__._1;
                    _engine.value._instr = _engine.value._instr.__append__(new T_encInstr(_op.value.__copy__(), _wireFieldNum, _f.index, _indir).__copy__());
                    _wireFieldNum++;
                });
            };
            if (_srt.numField() > ((0 : GoInt)) && _engine.value._instr.length == ((0 : GoInt))) {
                _errorf("type %s has no exported fields", Go.toInterface(_rt));
            };
            _engine.value._instr = _engine.value._instr.__append__(new T_encInstr(new T_encOp(_encStructTerminator), ((0 : GoInt)), new Slice<GoInt>().nil(), ((0 : GoInt))).__copy__());
        } else {
            _engine.value._instr = new Slice<T_encInstr>(...[for (i in 0 ... ((((1 : GoInt)) : GoInt)).toBasic()) new T_encInstr()]);
            var __tmp__ = _encOpFor(_rt, _seen, _building), _op:Pointer<T_encOp> = __tmp__._0, _indir:GoInt = __tmp__._1;
            _engine.value._instr[((0 : GoInt))] = new T_encInstr(_op.value.__copy__(), _singletonField, new Slice<GoInt>().nil(), _indir).__copy__();
        };
        return _engine;
    }
/**
    // getEncEngine returns the engine to compile the type.
**/
function _getEncEngine(_ut:Pointer<T_userTypeInfo>, _building:GoMap<Pointer<T_typeInfo>, Bool>):Pointer<T_encEngine> {
        var __tmp__ = _getTypeInfo(_ut), _info:Pointer<T_typeInfo> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _error_(_err);
        };
        var __tmp__ = try {
            { value : ((_info.value._encoder.load().value : Pointer<T_encEngine>)), ok : true };
        } catch(_) {
            { value : new Pointer<T_encEngine>().nil(), ok : false };
        }, _enc = __tmp__.value, _ok = __tmp__.ok;
        if (!_ok) {
            _enc = _buildEncEngine(_info, _ut, _building);
        };
        return _enc;
    }
function _buildEncEngine(_info:Pointer<T_typeInfo>, _ut:Pointer<T_userTypeInfo>, _building:GoMap<Pointer<T_typeInfo>, Bool>):Pointer<T_encEngine> {
        var recover_exception:Error = null;
        var deferstack:Array<Void -> Void> = [];
        if (_building != null && !_building.isNil() && _building[_info]) {
            return new Pointer<T_encEngine>().nil();
        };
        try {
            _info.value._encInit.lock();
            deferstack.unshift(() -> _info.value._encInit.unlock());
            var __tmp__ = try {
                { value : ((_info.value._encoder.load().value : Pointer<T_encEngine>)), ok : true };
            } catch(_) {
                { value : new Pointer<T_encEngine>().nil(), ok : false };
            }, _enc = __tmp__.value, _ok = __tmp__.ok;
            if (!_ok) {
                if (_building == null || _building.isNil()) {
                    _building = new GoMap<Pointer<T_typeInfo>, Bool>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("encoding/gob.typeInfo", [], stdgo.reflect.Reflect.GoType.named("encoding/gob.typeInfo", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_id", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("encoding/gob.typeId", [], stdgo.reflect.Reflect.GoType.basic(int32_kind)) }, { name : "_encInit", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("sync.Mutex", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_state", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int32_kind) }, { name : "_sema", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint32_kind) }])) }, { name : "_encoder", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("sync/atomic.Value", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_v", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.interfaceType(true, []) }])) }, { name : "_wire", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("encoding/gob.wireType", [], stdgo.reflect.Reflect.GoType.named("encoding/gob.wireType", [], stdgo.reflect.Reflect.GoType.structType([{ name : "arrayT", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("encoding/gob.arrayType", [], stdgo.reflect.Reflect.GoType.named("encoding/gob.arrayType", [], stdgo.reflect.Reflect.GoType.structType([{ name : "commonType", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("encoding/gob.CommonType", [], stdgo.reflect.Reflect.GoType.named("encoding/gob.CommonType", [], stdgo.reflect.Reflect.GoType.structType([{ name : "name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "id", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("encoding/gob.typeId", [], stdgo.reflect.Reflect.GoType.basic(int32_kind)) }]))) }, { name : "elem", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("encoding/gob.typeId", [], stdgo.reflect.Reflect.GoType.basic(int32_kind)) }, { name : "len", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) }])))) }, { name : "sliceT", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("encoding/gob.sliceType", [], stdgo.reflect.Reflect.GoType.named("encoding/gob.sliceType", [], stdgo.reflect.Reflect.GoType.structType([{ name : "commonType", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("encoding/gob.CommonType", [], stdgo.reflect.Reflect.GoType.named("encoding/gob.CommonType", [], stdgo.reflect.Reflect.GoType.structType([{ name : "name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "id", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("encoding/gob.typeId", [], stdgo.reflect.Reflect.GoType.basic(int32_kind)) }]))) }, { name : "elem", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("encoding/gob.typeId", [], stdgo.reflect.Reflect.GoType.basic(int32_kind)) }])))) }, { name : "structT", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("encoding/gob.structType", [], stdgo.reflect.Reflect.GoType.named("encoding/gob.structType", [], stdgo.reflect.Reflect.GoType.structType([{ name : "commonType", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("encoding/gob.CommonType", [], stdgo.reflect.Reflect.GoType.named("encoding/gob.CommonType", [], stdgo.reflect.Reflect.GoType.structType([{ name : "name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "id", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("encoding/gob.typeId", [], stdgo.reflect.Reflect.GoType.basic(int32_kind)) }]))) }, { name : "field", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("encoding/gob.fieldType", [], stdgo.reflect.Reflect.GoType.named("encoding/gob.CommonType", [], stdgo.reflect.Reflect.GoType.structType([{ name : "name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "id", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("encoding/gob.typeId", [], stdgo.reflect.Reflect.GoType.basic(int32_kind)) }]))))) }])))) }, { name : "mapT", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("encoding/gob.mapType", [], stdgo.reflect.Reflect.GoType.named("encoding/gob.mapType", [], stdgo.reflect.Reflect.GoType.structType([{ name : "commonType", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("encoding/gob.CommonType", [], stdgo.reflect.Reflect.GoType.named("encoding/gob.CommonType", [], stdgo.reflect.Reflect.GoType.structType([{ name : "name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "id", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("encoding/gob.typeId", [], stdgo.reflect.Reflect.GoType.basic(int32_kind)) }]))) }, { name : "key", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("encoding/gob.typeId", [], stdgo.reflect.Reflect.GoType.basic(int32_kind)) }, { name : "elem", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("encoding/gob.typeId", [], stdgo.reflect.Reflect.GoType.basic(int32_kind)) }])))) }, { name : "gobEncoderT", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("encoding/gob.gobEncoderType", [], stdgo.reflect.Reflect.GoType.named("encoding/gob.gobEncoderType", [], stdgo.reflect.Reflect.GoType.structType([{ name : "commonType", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("encoding/gob.CommonType", [], stdgo.reflect.Reflect.GoType.named("encoding/gob.CommonType", [], stdgo.reflect.Reflect.GoType.structType([{ name : "name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "id", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("encoding/gob.typeId", [], stdgo.reflect.Reflect.GoType.basic(int32_kind)) }]))) }])))) }, { name : "binaryMarshalerT", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("encoding/gob.gobEncoderType", [], stdgo.reflect.Reflect.GoType.named("encoding/gob.gobEncoderType", [], stdgo.reflect.Reflect.GoType.structType([{ name : "commonType", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("encoding/gob.CommonType", [], stdgo.reflect.Reflect.GoType.named("encoding/gob.CommonType", [], stdgo.reflect.Reflect.GoType.structType([{ name : "name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "id", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("encoding/gob.typeId", [], stdgo.reflect.Reflect.GoType.basic(int32_kind)) }]))) }])))) }, { name : "textMarshalerT", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("encoding/gob.gobEncoderType", [], stdgo.reflect.Reflect.GoType.named("encoding/gob.gobEncoderType", [], stdgo.reflect.Reflect.GoType.structType([{ name : "commonType", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("encoding/gob.CommonType", [], stdgo.reflect.Reflect.GoType.named("encoding/gob.CommonType", [], stdgo.reflect.Reflect.GoType.structType([{ name : "name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "id", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("encoding/gob.typeId", [], stdgo.reflect.Reflect.GoType.basic(int32_kind)) }]))) }])))) }])))) }])))), stdgo.reflect.Reflect.GoType.basic(bool_kind))));
                };
                _building[_info] = true;
                _enc = _compileEnc(_ut, _building);
                _info.value._encoder.store(Go.toInterface(_enc));
            };
            {
                for (defer in deferstack) {
                    defer();
                };
                return _enc;
            };
            for (defer in deferstack) {
                defer();
            };
        } catch(e) {
            recover_exception = stdgo.runtime.Runtime.newRuntime(e.message);
            {
                for (defer in deferstack) {
                    defer();
                };
                if (recover_exception != null) throw recover_exception;
                return new Pointer<T_encEngine>().nil();
            };
        };
    }
/**
    // NewEncoder returns a new encoder that will transmit on the io.Writer.
**/
function newEncoder(_w:stdgo.io.Io.Writer):Pointer<Encoder> {
        var _enc:Pointer<Encoder> = Go.pointer(new Encoder());
        _enc.value._w = new Slice<stdgo.io.Io.Writer>(_w);
        _enc.value._sent = new GoMap<stdgo.reflect.Reflect.Type, T_typeId>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.named("reflect.Type", [], stdgo.reflect.Reflect.GoType.interfaceType(false, [])), stdgo.reflect.Reflect.GoType.named("encoding/gob.typeId", [], stdgo.reflect.Reflect.GoType.basic(int32_kind)))));
        _enc.value._countState = _enc.value._newEncoderState(Go.pointer(new T_encBuffer()));
        return _enc;
    }
/**
    // errorf is like error_ but takes Printf-style arguments to construct an error.
    // It always prefixes the message with "gob: ".
**/
function _errorf(_format:GoString, _args:haxe.Rest<AnyInterface>):Void {
        var _args = new Slice<AnyInterface>(..._args);
        _error_(stdgo.fmt.Fmt.errorf((("gob: " : GoString)) + _format, ..._args.toArray()));
    }
/**
    // error wraps the argument error and uses it as the argument to panic.
**/
function _error_(_err:Error):Void {
        throw new T_gobError(_err);
    }
/**
    // catchError is meant to be used as a deferred function to turn a panic(gobError) into a
    // plain error. It overwrites the error return of the function that deferred its call.
**/
function _catchError(_err:Pointer<Error>):Void {
        var recover_exception:Error = null;
        {
            var _e:AnyInterface = Go.toInterface(Go.recover());
            if (_e != null) {
                var __tmp__ = try {
                    { value : ((_e.value : T_gobError)), ok : true };
                } catch(_) {
                    { value : new T_gobError(), ok : false };
                }, _ge = __tmp__.value, _ok = __tmp__.ok;
                if (!_ok) {
                    throw _e;
                };
                _err.value = _ge._err;
            };
        };
    }
/**
    // validType returns, and saves, the information associated with user-provided type rt.
    // If the user type is not valid, err will be non-nil. To be used when the error handler
    // is not set up.
**/
function _validUserType(_rt:stdgo.reflect.Reflect.Type):{ var _0 : Pointer<T_userTypeInfo>; var _1 : Error; } {
        {
            var __tmp__ = _userTypeCache.load(Go.toInterface(_rt)), _ui:AnyInterface = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_ok) {
                return { _0 : ((_ui.value : Pointer<T_userTypeInfo>)), _1 : ((null : stdgo.Error)) };
            };
        };
        var _ut:Pointer<T_userTypeInfo> = Go.pointer(new T_userTypeInfo());
        _ut.value._base = _rt;
        _ut.value._user = _rt;
        var _slowpoke:stdgo.reflect.Reflect.Type = _ut.value._base;
        while (true) {
            var _pt:stdgo.reflect.Reflect.Type = _ut.value._base;
            if (_pt.kind().__t__ != stdgo.reflect.Reflect.ptr.__t__) {
                break;
            };
            _ut.value._base = _pt.elem();
            if (_ut.value._base.toString() == _slowpoke.toString()) {
                return { _0 : new Pointer<T_userTypeInfo>().nil(), _1 : stdgo.errors.Errors.new_((("can\'t represent recursive pointer type " : GoString)) + _ut.value._base.toString()) };
            };
            if (_ut.value._indir % ((2 : GoInt)) == ((0 : GoInt))) {
                _slowpoke = _slowpoke.elem();
            };
            _ut.value._indir++;
        };
        {
            var __tmp__ = _implementsInterface(_ut.value._user, _gobEncoderInterfaceType), _ok:Bool = __tmp__._0, _indir:GoInt8 = __tmp__._1;
            if (_ok) {
                {
                    final __tmp__0 = _xGob;
                    final __tmp__1 = _indir;
                    _ut.value._externalEnc = __tmp__0;
                    _ut.value._encIndir = __tmp__1;
                };
            } else {
                var __tmp__ = _implementsInterface(_ut.value._user, _binaryMarshalerInterfaceType), _ok:Bool = __tmp__._0, _indir:GoInt8 = __tmp__._1;
                if (_ok) {
                    {
                        final __tmp__0 = _xBinary;
                        final __tmp__1 = _indir;
                        _ut.value._externalEnc = __tmp__0;
                        _ut.value._encIndir = __tmp__1;
                    };
                };
            };
        };
        {
            var __tmp__ = _implementsInterface(_ut.value._user, _gobDecoderInterfaceType), _ok:Bool = __tmp__._0, _indir:GoInt8 = __tmp__._1;
            if (_ok) {
                {
                    final __tmp__0 = _xGob;
                    final __tmp__1 = _indir;
                    _ut.value._externalDec = __tmp__0;
                    _ut.value._decIndir = __tmp__1;
                };
            } else {
                var __tmp__ = _implementsInterface(_ut.value._user, _binaryUnmarshalerInterfaceType), _ok:Bool = __tmp__._0, _indir:GoInt8 = __tmp__._1;
                if (_ok) {
                    {
                        final __tmp__0 = _xBinary;
                        final __tmp__1 = _indir;
                        _ut.value._externalDec = __tmp__0;
                        _ut.value._decIndir = __tmp__1;
                    };
                };
            };
        };
        var __tmp__ = _userTypeCache.loadOrStore(Go.toInterface(_rt), Go.toInterface(_ut)), _ui:AnyInterface = __tmp__._0, _:Bool = __tmp__._1;
        return { _0 : ((_ui.value : Pointer<T_userTypeInfo>)), _1 : ((null : stdgo.Error)) };
    }
/**
    // implementsInterface reports whether the type implements the
    // gobEncoder/gobDecoder interface.
    // It also returns the number of indirections required to get to the
    // implementation.
**/
function _implementsInterface(_typ:stdgo.reflect.Reflect.Type, _gobEncDecType:stdgo.reflect.Reflect.Type):{ var _0 : Bool; var _1 : GoInt8; } {
        var _success:Bool = false, _indir:GoInt8 = ((0 : GoInt8));
        if (_typ.toString() == null.toString()) {
            return { _0 : _success, _1 : _indir };
        };
        var _rt:stdgo.reflect.Reflect.Type = _typ;
        while (true) {
            if (_rt.implements_(_gobEncDecType)) {
                return { _0 : true, _1 : _indir };
            };
            {
                var _p:stdgo.reflect.Reflect.Type = _rt;
                if (_p.kind().__t__ == stdgo.reflect.Reflect.ptr.__t__) {
                    _indir++;
                    if (_indir > ((100 : GoInt8))) {
                        return { _0 : false, _1 : ((0 : GoInt8)) };
                    };
                    _rt = _p.elem();
                    continue;
                };
            };
            break;
        };
        if (_typ.kind().__t__ != stdgo.reflect.Reflect.ptr.__t__) {
            if (stdgo.reflect.Reflect.ptrTo(_typ).implements_(_gobEncDecType)) {
                return { _0 : true, _1 : -((1 : GoUnTypedInt)) };
            };
        };
        return { _0 : false, _1 : ((0 : GoInt8)) };
    }
/**
    // userType returns, and saves, the information associated with user-provided type rt.
    // If the user type is not valid, it calls error.
**/
function _userType(_rt:stdgo.reflect.Reflect.Type):Pointer<T_userTypeInfo> {
        var __tmp__ = _validUserType(_rt), _ut:Pointer<T_userTypeInfo> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _error_(_err);
        };
        return _ut;
    }
function _setTypeId(_typ:T_gobType):Void {
        if (_typ._id().__t__ != ((0 : GoInt32))) {
            return;
        };
        _nextId.__t__++;
        _typ._setId(_nextId);
        _idToType[_nextId] = _typ;
    }
function _newArrayType(_name:GoString):Pointer<T_arrayType> {
        var _a:Pointer<T_arrayType> = Go.pointer(new T_arrayType((({ name : _name, id : new T_typeId() } : CommonType)).__copy__(), new T_typeId(((0 : GoInt32))), ((0 : GoInt))));
        return _a;
    }
function _newGobEncoderType(_name:GoString):Pointer<T_gobEncoderType> {
        var _g:Pointer<T_gobEncoderType> = Go.pointer(new T_gobEncoderType((({ name : _name, id : new T_typeId() } : CommonType)).__copy__()));
        _setTypeId(_g.value);
        return _g;
    }
function _newMapType(_name:GoString):Pointer<T_mapType> {
        var _m:Pointer<T_mapType> = Go.pointer(new T_mapType((({ name : _name, id : new T_typeId() } : CommonType)).__copy__(), new T_typeId(((0 : GoInt32))), new T_typeId(((0 : GoInt32)))));
        return _m;
    }
function _newSliceType(_name:GoString):Pointer<T_sliceType> {
        var _s:Pointer<T_sliceType> = Go.pointer(new T_sliceType((({ name : _name, id : new T_typeId() } : CommonType)).__copy__(), new T_typeId(((0 : GoInt32)))));
        return _s;
    }
function _newStructType(_name:GoString):Pointer<T_structType> {
        var _s:Pointer<T_structType> = Go.pointer(new T_structType((({ name : _name, id : new T_typeId() } : CommonType)).__copy__(), new Slice<Pointer<T_fieldType>>().nil()));
        _setTypeId(_s.value);
        return _s;
    }
/**
    // newTypeObject allocates a gobType for the reflection type rt.
    // Unless ut represents a GobEncoder, rt should be the base type
    // of ut.
    // This is only called from the encoding side. The decoding side
    // works through typeIds and userTypeInfos alone.
**/
function _newTypeObject(_name:GoString, _ut:Pointer<T_userTypeInfo>, _rt:stdgo.reflect.Reflect.Type):{ var _0 : T_gobType; var _1 : Error; } {
        var recover_exception:Error = null;
        var deferstack:Array<Void -> Void> = [];
        if (_ut.value._externalEnc != ((0 : GoInt))) {
            return { _0 : _newGobEncoderType(_name).value, _1 : ((null : stdgo.Error)) };
        };
        var _err:Error = ((null : stdgo.Error));
        try {
            var _type0:T_gobType = ((null : T_gobType)), _type1:T_gobType = ((null : T_gobType));
            {
                deferstack.unshift(() -> {
                    var a = function():Void {
                        if (_err != null) {
                            _types.remove(_rt);
                        };
                    };
                    a();
                });
            };
            {
                var _t:stdgo.reflect.Reflect.Type = _rt;
                if (_t.kind().__t__ == stdgo.reflect.Reflect.bool.__t__) {
                    {
                        for (defer in deferstack) {
                            defer();
                        };
                        return { _0 : _tBool._gobType(), _1 : ((null : stdgo.Error)) };
                    };
                } else if (_t.kind().__t__ == stdgo.reflect.Reflect.int.__t__ || _t.kind().__t__ == stdgo.reflect.Reflect.int8.__t__ || _t.kind().__t__ == stdgo.reflect.Reflect.int16.__t__ || _t.kind().__t__ == stdgo.reflect.Reflect.int32.__t__ || _t.kind().__t__ == stdgo.reflect.Reflect.int64.__t__) {
                    {
                        for (defer in deferstack) {
                            defer();
                        };
                        return { _0 : _tInt._gobType(), _1 : ((null : stdgo.Error)) };
                    };
                } else if (_t.kind().__t__ == stdgo.reflect.Reflect.uint.__t__ || _t.kind().__t__ == stdgo.reflect.Reflect.uint8.__t__ || _t.kind().__t__ == stdgo.reflect.Reflect.uint16.__t__ || _t.kind().__t__ == stdgo.reflect.Reflect.uint32.__t__ || _t.kind().__t__ == stdgo.reflect.Reflect.uint64.__t__ || _t.kind().__t__ == stdgo.reflect.Reflect.uintptr.__t__) {
                    {
                        for (defer in deferstack) {
                            defer();
                        };
                        return { _0 : _tUint._gobType(), _1 : ((null : stdgo.Error)) };
                    };
                } else if (_t.kind().__t__ == stdgo.reflect.Reflect.float32.__t__ || _t.kind().__t__ == stdgo.reflect.Reflect.float64.__t__) {
                    {
                        for (defer in deferstack) {
                            defer();
                        };
                        return { _0 : _tFloat._gobType(), _1 : ((null : stdgo.Error)) };
                    };
                } else if (_t.kind().__t__ == stdgo.reflect.Reflect.complex64.__t__ || _t.kind().__t__ == stdgo.reflect.Reflect.complex128.__t__) {
                    {
                        for (defer in deferstack) {
                            defer();
                        };
                        return { _0 : _tComplex._gobType(), _1 : ((null : stdgo.Error)) };
                    };
                } else if (_t.kind().__t__ == stdgo.reflect.Reflect.toString.__t__) {
                    {
                        for (defer in deferstack) {
                            defer();
                        };
                        return { _0 : _tString._gobType(), _1 : ((null : stdgo.Error)) };
                    };
                } else if (_t.kind().__t__ == stdgo.reflect.Reflect.interface_.__t__) {
                    {
                        for (defer in deferstack) {
                            defer();
                        };
                        return { _0 : _tInterface._gobType(), _1 : ((null : stdgo.Error)) };
                    };
                } else if (_t.kind().__t__ == stdgo.reflect.Reflect.array.__t__) {
                    var _at:Pointer<T_arrayType> = _newArrayType(_name);
                    _types[_rt] = _at.value;
                    {
                        var __tmp__ = _getBaseType("", _t.elem());
                        _type0 = __tmp__._0;
                        _err = __tmp__._1;
                    };
                    if (_err != null) {
                        {
                            for (defer in deferstack) {
                                defer();
                            };
                            return { _0 : ((null : T_gobType)), _1 : _err };
                        };
                    };
                    _at.value._init(_type0, _t.len());
                    {
                        for (defer in deferstack) {
                            defer();
                        };
                        return { _0 : _at.value, _1 : ((null : stdgo.Error)) };
                    };
                } else if (_t.kind().__t__ == stdgo.reflect.Reflect.map.__t__) {
                    var _mt:Pointer<T_mapType> = _newMapType(_name);
                    _types[_rt] = _mt.value;
                    {
                        var __tmp__ = _getBaseType("", _t.key());
                        _type0 = __tmp__._0;
                        _err = __tmp__._1;
                    };
                    if (_err != null) {
                        {
                            for (defer in deferstack) {
                                defer();
                            };
                            return { _0 : ((null : T_gobType)), _1 : _err };
                        };
                    };
                    {
                        var __tmp__ = _getBaseType("", _t.elem());
                        _type1 = __tmp__._0;
                        _err = __tmp__._1;
                    };
                    if (_err != null) {
                        {
                            for (defer in deferstack) {
                                defer();
                            };
                            return { _0 : ((null : T_gobType)), _1 : _err };
                        };
                    };
                    _mt.value._init(_type0, _type1);
                    {
                        for (defer in deferstack) {
                            defer();
                        };
                        return { _0 : _mt.value, _1 : ((null : stdgo.Error)) };
                    };
                } else if (_t.kind().__t__ == stdgo.reflect.Reflect.slice.__t__) {
                    if (_t.elem().kind().__t__ == stdgo.reflect.Reflect.uint8.__t__) {
                        {
                            for (defer in deferstack) {
                                defer();
                            };
                            return { _0 : _tBytes._gobType(), _1 : ((null : stdgo.Error)) };
                        };
                    };
                    var _st:Pointer<T_sliceType> = _newSliceType(_name);
                    _types[_rt] = _st.value;
                    {
                        var __tmp__ = _getBaseType(_t.elem().name(), _t.elem());
                        _type0 = __tmp__._0;
                        _err = __tmp__._1;
                    };
                    if (_err != null) {
                        {
                            for (defer in deferstack) {
                                defer();
                            };
                            return { _0 : ((null : T_gobType)), _1 : _err };
                        };
                    };
                    _st.value._init(_type0);
                    {
                        for (defer in deferstack) {
                            defer();
                        };
                        return { _0 : _st.value, _1 : ((null : stdgo.Error)) };
                    };
                } else if (_t.kind().__t__ == stdgo.reflect.Reflect.struct.__t__) {
                    var _st:Pointer<T_structType> = _newStructType(_name);
                    _types[_rt] = _st.value;
                    _idToType[_st.value._id()] = _st.value;
                    {
                        var _i:GoInt = ((0 : GoInt));
                        Go.cfor(_i < _t.numField(), _i++, {
                            var _f:stdgo.reflect.Reflect.StructField = _t.field(_i).__copy__();
                            if (!_isSent(Go.pointer(_f))) {
                                continue;
                            };
                            var _typ:stdgo.reflect.Reflect.Type = _userType(_f.type).value._base;
                            var _tname:GoString = _typ.name();
                            if (_tname == (("" : GoString))) {
                                var _t:stdgo.reflect.Reflect.Type = _userType(_f.type).value._base;
                                _tname = _t.toString();
                            };
                            var __tmp__ = _getBaseType(_tname, _f.type), _gt:T_gobType = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                            if (_err != null) {
                                {
                                    for (defer in deferstack) {
                                        defer();
                                    };
                                    return { _0 : ((null : T_gobType)), _1 : _err };
                                };
                            };
                            if (_gt._id().__t__ == ((0 : GoInt32))) {
                                _setTypeId(_gt);
                            };
                            _st.value.field = _st.value.field.__append__(Go.pointer(new T_fieldType(_f.name, _gt._id())));
                        });
                    };
                    {
                        for (defer in deferstack) {
                            defer();
                        };
                        return { _0 : _st.value, _1 : ((null : stdgo.Error)) };
                    };
                } else {
                    {
                        for (defer in deferstack) {
                            defer();
                        };
                        return { _0 : ((null : T_gobType)), _1 : stdgo.errors.Errors.new_((("gob NewTypeObject can\'t handle type: " : GoString)) + _rt.toString()) };
                    };
                };
            };
            for (defer in deferstack) {
                defer();
            };
        } catch(e) {
            recover_exception = stdgo.runtime.Runtime.newRuntime(e.message);
            {
                for (defer in deferstack) {
                    defer();
                };
                if (recover_exception != null) throw recover_exception;
                return { _0 : ((null : T_gobType)), _1 : ((null : stdgo.Error)) };
            };
        };
    }
/**
    // isExported reports whether this is an exported - upper case - name.
**/
function _isExported(_name:GoString):Bool {
        var __tmp__ = stdgo.unicode.utf8.Utf8.decodeRuneInString(_name), _rune:GoInt32 = __tmp__._0, _:GoInt = __tmp__._1;
        return stdgo.unicode.Unicode.isUpper(_rune);
    }
/**
    // isSent reports whether this struct field is to be transmitted.
    // It will be transmitted only if it is exported and not a chan or func field
    // or pointer to chan or func.
**/
function _isSent(_field:Pointer<stdgo.reflect.Reflect.StructField>):Bool {
        if (!_isExported(_field.value.name)) {
            return false;
        };
        var _typ:stdgo.reflect.Reflect.Type = _field.value.type;
        while (_typ.kind().__t__ == stdgo.reflect.Reflect.ptr.__t__) {
            _typ = _typ.elem();
        };
        if (_typ.kind().__t__ == stdgo.reflect.Reflect.chan.__t__ || _typ.kind().__t__ == stdgo.reflect.Reflect.func.__t__) {
            return false;
        };
        return true;
    }
/**
    // getBaseType returns the Gob type describing the given reflect.Type's base type.
    // typeLock must be held.
**/
function _getBaseType(_name:GoString, _rt:stdgo.reflect.Reflect.Type):{ var _0 : T_gobType; var _1 : Error; } {
        var _ut:Pointer<T_userTypeInfo> = _userType(_rt);
        return _getType(_name, _ut, _ut.value._base);
    }
/**
    // getType returns the Gob type describing the given reflect.Type.
    // Should be called only when handling GobEncoders/Decoders,
    // which may be pointers. All other types are handled through the
    // base type, never a pointer.
    // typeLock must be held.
**/
function _getType(_name:GoString, _ut:Pointer<T_userTypeInfo>, _rt:stdgo.reflect.Reflect.Type):{ var _0 : T_gobType; var _1 : Error; } {
        var __tmp__ = _types.exists(_rt) ? { value : _types[_rt], ok : true } : { value : _types.defaultValue(), ok : false }, _typ:T_gobType = __tmp__.value, _present:Bool = __tmp__.ok;
        if (_present) {
            return { _0 : _typ, _1 : ((null : stdgo.Error)) };
        };
        var __tmp__ = _newTypeObject(_name, _ut, _rt), _typ:T_gobType = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err == null) {
            _types[_rt] = _typ;
        };
        return { _0 : _typ, _1 : _err };
    }
function _checkId(_want:T_typeId, _got:T_typeId):Void {
        if (_want.__t__ != _got.__t__) {
            stdgo.fmt.Fmt.fprintf(stdgo.os.Os.stderr.value, "checkId: %d should be %d\n", Go.toInterface(_got.__t__), Go.toInterface(_want.__t__));
            throw (("bootstrap type wrong id: " : GoString)) + _got._name() + ((" " : GoString)) + _got._string() + ((" not " : GoString)) + _want._string();
        };
    }
/**
    // used for building the basic types; called only from init().  the incoming
    // interface always refers to a pointer.
**/
function _bootstrapType(_name:GoString, _e:AnyInterface, _expect:T_typeId):T_typeId {
        var _rt:stdgo.reflect.Reflect.Type = stdgo.reflect.Reflect.typeOf(Go.toInterface(_e)).elem();
        var __tmp__ = _types.exists(_rt) ? { value : _types[_rt], ok : true } : { value : _types.defaultValue(), ok : false }, _:T_gobType = __tmp__.value, _present:Bool = __tmp__.ok;
        if (_present) {
            throw (("bootstrap type already present: " : GoString)) + _name + ((", " : GoString)) + _rt.toString();
        };
        var _typ:Pointer<CommonType> = Go.pointer((({ name : _name, id : new T_typeId() } : CommonType)));
        _types[_rt] = _typ.value;
        _setTypeId(_typ.value);
        _checkId(_expect, _nextId);
        _userType(_rt);
        return _nextId;
    }
function _lookupTypeInfo(_rt:stdgo.reflect.Reflect.Type):Pointer<T_typeInfo> {
        var __tmp__ = try {
            { value : ((_typeInfoMap.load().value : GoMap<stdgo.reflect.Reflect.Type, Pointer<T_typeInfo>>)), ok : true };
        } catch(_) {
            { value : new GoMap<stdgo.reflect.Reflect.Type, Pointer<T_typeInfo>>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.named("reflect.Type", [], stdgo.reflect.Reflect.GoType.interfaceType(false, [])), stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("encoding/gob.typeInfo", [], stdgo.reflect.Reflect.GoType.named("encoding/gob.typeInfo", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_id", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("encoding/gob.typeId", [], stdgo.reflect.Reflect.GoType.basic(int32_kind)) }, { name : "_encInit", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("sync.Mutex", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_state", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int32_kind) }, { name : "_sema", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint32_kind) }])) }, { name : "_encoder", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("sync/atomic.Value", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_v", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.interfaceType(true, []) }])) }, { name : "_wire", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("encoding/gob.wireType", [], stdgo.reflect.Reflect.GoType.named("encoding/gob.wireType", [], stdgo.reflect.Reflect.GoType.structType([{ name : "arrayT", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("encoding/gob.arrayType", [], stdgo.reflect.Reflect.GoType.named("encoding/gob.arrayType", [], stdgo.reflect.Reflect.GoType.structType([{ name : "commonType", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("encoding/gob.CommonType", [], stdgo.reflect.Reflect.GoType.named("encoding/gob.CommonType", [], stdgo.reflect.Reflect.GoType.structType([{ name : "name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "id", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("encoding/gob.typeId", [], stdgo.reflect.Reflect.GoType.basic(int32_kind)) }]))) }, { name : "elem", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("encoding/gob.typeId", [], stdgo.reflect.Reflect.GoType.basic(int32_kind)) }, { name : "len", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) }])))) }, { name : "sliceT", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("encoding/gob.sliceType", [], stdgo.reflect.Reflect.GoType.named("encoding/gob.sliceType", [], stdgo.reflect.Reflect.GoType.structType([{ name : "commonType", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("encoding/gob.CommonType", [], stdgo.reflect.Reflect.GoType.named("encoding/gob.CommonType", [], stdgo.reflect.Reflect.GoType.structType([{ name : "name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "id", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("encoding/gob.typeId", [], stdgo.reflect.Reflect.GoType.basic(int32_kind)) }]))) }, { name : "elem", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("encoding/gob.typeId", [], stdgo.reflect.Reflect.GoType.basic(int32_kind)) }])))) }, { name : "structT", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("encoding/gob.structType", [], stdgo.reflect.Reflect.GoType.named("encoding/gob.structType", [], stdgo.reflect.Reflect.GoType.structType([{ name : "commonType", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("encoding/gob.CommonType", [], stdgo.reflect.Reflect.GoType.named("encoding/gob.CommonType", [], stdgo.reflect.Reflect.GoType.structType([{ name : "name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "id", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("encoding/gob.typeId", [], stdgo.reflect.Reflect.GoType.basic(int32_kind)) }]))) }, { name : "field", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("encoding/gob.fieldType", [], stdgo.reflect.Reflect.GoType.named("encoding/gob.CommonType", [], stdgo.reflect.Reflect.GoType.structType([{ name : "name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "id", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("encoding/gob.typeId", [], stdgo.reflect.Reflect.GoType.basic(int32_kind)) }]))))) }])))) }, { name : "mapT", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("encoding/gob.mapType", [], stdgo.reflect.Reflect.GoType.named("encoding/gob.mapType", [], stdgo.reflect.Reflect.GoType.structType([{ name : "commonType", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("encoding/gob.CommonType", [], stdgo.reflect.Reflect.GoType.named("encoding/gob.CommonType", [], stdgo.reflect.Reflect.GoType.structType([{ name : "name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "id", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("encoding/gob.typeId", [], stdgo.reflect.Reflect.GoType.basic(int32_kind)) }]))) }, { name : "key", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("encoding/gob.typeId", [], stdgo.reflect.Reflect.GoType.basic(int32_kind)) }, { name : "elem", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("encoding/gob.typeId", [], stdgo.reflect.Reflect.GoType.basic(int32_kind)) }])))) }, { name : "gobEncoderT", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("encoding/gob.gobEncoderType", [], stdgo.reflect.Reflect.GoType.named("encoding/gob.gobEncoderType", [], stdgo.reflect.Reflect.GoType.structType([{ name : "commonType", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("encoding/gob.CommonType", [], stdgo.reflect.Reflect.GoType.named("encoding/gob.CommonType", [], stdgo.reflect.Reflect.GoType.structType([{ name : "name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "id", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("encoding/gob.typeId", [], stdgo.reflect.Reflect.GoType.basic(int32_kind)) }]))) }])))) }, { name : "binaryMarshalerT", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("encoding/gob.gobEncoderType", [], stdgo.reflect.Reflect.GoType.named("encoding/gob.gobEncoderType", [], stdgo.reflect.Reflect.GoType.structType([{ name : "commonType", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("encoding/gob.CommonType", [], stdgo.reflect.Reflect.GoType.named("encoding/gob.CommonType", [], stdgo.reflect.Reflect.GoType.structType([{ name : "name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "id", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("encoding/gob.typeId", [], stdgo.reflect.Reflect.GoType.basic(int32_kind)) }]))) }])))) }, { name : "textMarshalerT", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("encoding/gob.gobEncoderType", [], stdgo.reflect.Reflect.GoType.named("encoding/gob.gobEncoderType", [], stdgo.reflect.Reflect.GoType.structType([{ name : "commonType", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("encoding/gob.CommonType", [], stdgo.reflect.Reflect.GoType.named("encoding/gob.CommonType", [], stdgo.reflect.Reflect.GoType.structType([{ name : "name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "id", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("encoding/gob.typeId", [], stdgo.reflect.Reflect.GoType.basic(int32_kind)) }]))) }])))) }])))) }]))))))).nil(), ok : false };
        }, _m = __tmp__.value, _ = __tmp__.ok;
        return _m[_rt];
    }
function _getTypeInfo(_ut:Pointer<T_userTypeInfo>):{ var _0 : Pointer<T_typeInfo>; var _1 : Error; } {
        var _rt:stdgo.reflect.Reflect.Type = _ut.value._base;
        if (_ut.value._externalEnc != ((0 : GoInt))) {
            _rt = _ut.value._user;
        };
        {
            var _info:Pointer<T_typeInfo> = _lookupTypeInfo(_rt);
            if (_info != null && !_info.isNil()) {
                return { _0 : _info, _1 : ((null : stdgo.Error)) };
            };
        };
        return _buildTypeInfo(_ut, _rt);
    }
/**
    // buildTypeInfo constructs the type information for the type
    // and stores it in the type info map.
**/
function _buildTypeInfo(_ut:Pointer<T_userTypeInfo>, _rt:stdgo.reflect.Reflect.Type):{ var _0 : Pointer<T_typeInfo>; var _1 : Error; } {
        var recover_exception:Error = null;
        var deferstack:Array<Void -> Void> = [];
        _typeLock.lock();
        deferstack.unshift(() -> _typeLock.unlock());
        try {
            {
                var _info:Pointer<T_typeInfo> = _lookupTypeInfo(_rt);
                if (_info != null && !_info.isNil()) {
                    {
                        for (defer in deferstack) {
                            defer();
                        };
                        return { _0 : _info, _1 : ((null : stdgo.Error)) };
                    };
                };
            };
            var __tmp__ = _getBaseType(_rt.name(), _rt), _gt:T_gobType = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                {
                    for (defer in deferstack) {
                        defer();
                    };
                    return { _0 : new Pointer<T_typeInfo>().nil(), _1 : _err };
                };
            };
            var _info:Pointer<T_typeInfo> = Go.pointer((({ _id : _gt._id(), _encInit : new stdgo.sync.Sync.Mutex(), _encoder : new stdgo.sync.atomic.Atomic.Value(), _wire : new Pointer<T_wireType>().nil() } : T_typeInfo)));
            if (_ut.value._externalEnc != ((0 : GoInt))) {
                var __tmp__ = _getType(_rt.name(), _ut, _rt), _userType:T_gobType = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    {
                        for (defer in deferstack) {
                            defer();
                        };
                        return { _0 : new Pointer<T_typeInfo>().nil(), _1 : _err };
                    };
                };
                var _gt:Pointer<T_gobEncoderType> = ((_userType._id()._gobType().__underlying__().value : T_gobEncoderType));
                if (_ut.value._externalEnc == _xGob) {
                    _info.value._wire = Go.pointer((({ gobEncoderT : _gt, arrayT : new Pointer<T_arrayType>().nil(), sliceT : new Pointer<T_sliceType>().nil(), structT : new Pointer<T_structType>().nil(), mapT : new Pointer<T_mapType>().nil(), binaryMarshalerT : new Pointer<T_gobEncoderType>().nil(), textMarshalerT : new Pointer<T_gobEncoderType>().nil() } : T_wireType)));
                } else if (_ut.value._externalEnc == _xBinary) {
                    _info.value._wire = Go.pointer((({ binaryMarshalerT : _gt, arrayT : new Pointer<T_arrayType>().nil(), sliceT : new Pointer<T_sliceType>().nil(), structT : new Pointer<T_structType>().nil(), mapT : new Pointer<T_mapType>().nil(), gobEncoderT : new Pointer<T_gobEncoderType>().nil(), textMarshalerT : new Pointer<T_gobEncoderType>().nil() } : T_wireType)));
                } else if (_ut.value._externalEnc == _xText) {
                    _info.value._wire = Go.pointer((({ textMarshalerT : _gt, arrayT : new Pointer<T_arrayType>().nil(), sliceT : new Pointer<T_sliceType>().nil(), structT : new Pointer<T_structType>().nil(), mapT : new Pointer<T_mapType>().nil(), gobEncoderT : new Pointer<T_gobEncoderType>().nil(), binaryMarshalerT : new Pointer<T_gobEncoderType>().nil() } : T_wireType)));
                };
                _rt = _ut.value._user;
            } else {
                var _t:T_gobType = _info.value._id._gobType();
                {
                    var _typ:stdgo.reflect.Reflect.Type = _rt;
                    if (_typ.kind().__t__ == stdgo.reflect.Reflect.array.__t__) {
                        _info.value._wire = Go.pointer((({ arrayT : ((_t.__underlying__().value : T_arrayType)), sliceT : new Pointer<T_sliceType>().nil(), structT : new Pointer<T_structType>().nil(), mapT : new Pointer<T_mapType>().nil(), gobEncoderT : new Pointer<T_gobEncoderType>().nil(), binaryMarshalerT : new Pointer<T_gobEncoderType>().nil(), textMarshalerT : new Pointer<T_gobEncoderType>().nil() } : T_wireType)));
                    } else if (_typ.kind().__t__ == stdgo.reflect.Reflect.map.__t__) {
                        _info.value._wire = Go.pointer((({ mapT : ((_t.__underlying__().value : T_mapType)), arrayT : new Pointer<T_arrayType>().nil(), sliceT : new Pointer<T_sliceType>().nil(), structT : new Pointer<T_structType>().nil(), gobEncoderT : new Pointer<T_gobEncoderType>().nil(), binaryMarshalerT : new Pointer<T_gobEncoderType>().nil(), textMarshalerT : new Pointer<T_gobEncoderType>().nil() } : T_wireType)));
                    } else if (_typ.kind().__t__ == stdgo.reflect.Reflect.slice.__t__) {
                        if (_typ.elem().kind().__t__ != stdgo.reflect.Reflect.uint8.__t__) {
                            _info.value._wire = Go.pointer((({ sliceT : ((_t.__underlying__().value : T_sliceType)), arrayT : new Pointer<T_arrayType>().nil(), structT : new Pointer<T_structType>().nil(), mapT : new Pointer<T_mapType>().nil(), gobEncoderT : new Pointer<T_gobEncoderType>().nil(), binaryMarshalerT : new Pointer<T_gobEncoderType>().nil(), textMarshalerT : new Pointer<T_gobEncoderType>().nil() } : T_wireType)));
                        };
                    } else if (_typ.kind().__t__ == stdgo.reflect.Reflect.struct.__t__) {
                        _info.value._wire = Go.pointer((({ structT : ((_t.__underlying__().value : T_structType)), arrayT : new Pointer<T_arrayType>().nil(), sliceT : new Pointer<T_sliceType>().nil(), mapT : new Pointer<T_mapType>().nil(), gobEncoderT : new Pointer<T_gobEncoderType>().nil(), binaryMarshalerT : new Pointer<T_gobEncoderType>().nil(), textMarshalerT : new Pointer<T_gobEncoderType>().nil() } : T_wireType)));
                    };
                };
            };
            var _newm:GoMap<stdgo.reflect.Reflect.Type, Pointer<T_typeInfo>> = new GoMap<stdgo.reflect.Reflect.Type, Pointer<T_typeInfo>>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.named("reflect.Type", [], stdgo.reflect.Reflect.GoType.interfaceType(false, [])), stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("encoding/gob.typeInfo", [], stdgo.reflect.Reflect.GoType.named("encoding/gob.typeInfo", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_id", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("encoding/gob.typeId", [], stdgo.reflect.Reflect.GoType.basic(int32_kind)) }, { name : "_encInit", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("sync.Mutex", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_state", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int32_kind) }, { name : "_sema", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint32_kind) }])) }, { name : "_encoder", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("sync/atomic.Value", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_v", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.interfaceType(true, []) }])) }, { name : "_wire", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("encoding/gob.wireType", [], stdgo.reflect.Reflect.GoType.named("encoding/gob.wireType", [], stdgo.reflect.Reflect.GoType.structType([{ name : "arrayT", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("encoding/gob.arrayType", [], stdgo.reflect.Reflect.GoType.named("encoding/gob.arrayType", [], stdgo.reflect.Reflect.GoType.structType([{ name : "commonType", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("encoding/gob.CommonType", [], stdgo.reflect.Reflect.GoType.named("encoding/gob.CommonType", [], stdgo.reflect.Reflect.GoType.structType([{ name : "name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "id", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("encoding/gob.typeId", [], stdgo.reflect.Reflect.GoType.basic(int32_kind)) }]))) }, { name : "elem", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("encoding/gob.typeId", [], stdgo.reflect.Reflect.GoType.basic(int32_kind)) }, { name : "len", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) }])))) }, { name : "sliceT", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("encoding/gob.sliceType", [], stdgo.reflect.Reflect.GoType.named("encoding/gob.sliceType", [], stdgo.reflect.Reflect.GoType.structType([{ name : "commonType", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("encoding/gob.CommonType", [], stdgo.reflect.Reflect.GoType.named("encoding/gob.CommonType", [], stdgo.reflect.Reflect.GoType.structType([{ name : "name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "id", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("encoding/gob.typeId", [], stdgo.reflect.Reflect.GoType.basic(int32_kind)) }]))) }, { name : "elem", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("encoding/gob.typeId", [], stdgo.reflect.Reflect.GoType.basic(int32_kind)) }])))) }, { name : "structT", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("encoding/gob.structType", [], stdgo.reflect.Reflect.GoType.named("encoding/gob.structType", [], stdgo.reflect.Reflect.GoType.structType([{ name : "commonType", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("encoding/gob.CommonType", [], stdgo.reflect.Reflect.GoType.named("encoding/gob.CommonType", [], stdgo.reflect.Reflect.GoType.structType([{ name : "name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "id", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("encoding/gob.typeId", [], stdgo.reflect.Reflect.GoType.basic(int32_kind)) }]))) }, { name : "field", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("encoding/gob.fieldType", [], stdgo.reflect.Reflect.GoType.named("encoding/gob.CommonType", [], stdgo.reflect.Reflect.GoType.structType([{ name : "name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "id", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("encoding/gob.typeId", [], stdgo.reflect.Reflect.GoType.basic(int32_kind)) }]))))) }])))) }, { name : "mapT", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("encoding/gob.mapType", [], stdgo.reflect.Reflect.GoType.named("encoding/gob.mapType", [], stdgo.reflect.Reflect.GoType.structType([{ name : "commonType", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("encoding/gob.CommonType", [], stdgo.reflect.Reflect.GoType.named("encoding/gob.CommonType", [], stdgo.reflect.Reflect.GoType.structType([{ name : "name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "id", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("encoding/gob.typeId", [], stdgo.reflect.Reflect.GoType.basic(int32_kind)) }]))) }, { name : "key", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("encoding/gob.typeId", [], stdgo.reflect.Reflect.GoType.basic(int32_kind)) }, { name : "elem", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("encoding/gob.typeId", [], stdgo.reflect.Reflect.GoType.basic(int32_kind)) }])))) }, { name : "gobEncoderT", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("encoding/gob.gobEncoderType", [], stdgo.reflect.Reflect.GoType.named("encoding/gob.gobEncoderType", [], stdgo.reflect.Reflect.GoType.structType([{ name : "commonType", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("encoding/gob.CommonType", [], stdgo.reflect.Reflect.GoType.named("encoding/gob.CommonType", [], stdgo.reflect.Reflect.GoType.structType([{ name : "name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "id", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("encoding/gob.typeId", [], stdgo.reflect.Reflect.GoType.basic(int32_kind)) }]))) }])))) }, { name : "binaryMarshalerT", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("encoding/gob.gobEncoderType", [], stdgo.reflect.Reflect.GoType.named("encoding/gob.gobEncoderType", [], stdgo.reflect.Reflect.GoType.structType([{ name : "commonType", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("encoding/gob.CommonType", [], stdgo.reflect.Reflect.GoType.named("encoding/gob.CommonType", [], stdgo.reflect.Reflect.GoType.structType([{ name : "name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "id", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("encoding/gob.typeId", [], stdgo.reflect.Reflect.GoType.basic(int32_kind)) }]))) }])))) }, { name : "textMarshalerT", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("encoding/gob.gobEncoderType", [], stdgo.reflect.Reflect.GoType.named("encoding/gob.gobEncoderType", [], stdgo.reflect.Reflect.GoType.structType([{ name : "commonType", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("encoding/gob.CommonType", [], stdgo.reflect.Reflect.GoType.named("encoding/gob.CommonType", [], stdgo.reflect.Reflect.GoType.structType([{ name : "name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "id", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("encoding/gob.typeId", [], stdgo.reflect.Reflect.GoType.basic(int32_kind)) }]))) }])))) }])))) }])))))));
            var __tmp__ = try {
                { value : ((_typeInfoMap.load().value : GoMap<stdgo.reflect.Reflect.Type, Pointer<T_typeInfo>>)), ok : true };
            } catch(_) {
                { value : new GoMap<stdgo.reflect.Reflect.Type, Pointer<T_typeInfo>>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.named("reflect.Type", [], stdgo.reflect.Reflect.GoType.interfaceType(false, [])), stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("encoding/gob.typeInfo", [], stdgo.reflect.Reflect.GoType.named("encoding/gob.typeInfo", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_id", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("encoding/gob.typeId", [], stdgo.reflect.Reflect.GoType.basic(int32_kind)) }, { name : "_encInit", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("sync.Mutex", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_state", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int32_kind) }, { name : "_sema", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint32_kind) }])) }, { name : "_encoder", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("sync/atomic.Value", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_v", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.interfaceType(true, []) }])) }, { name : "_wire", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("encoding/gob.wireType", [], stdgo.reflect.Reflect.GoType.named("encoding/gob.wireType", [], stdgo.reflect.Reflect.GoType.structType([{ name : "arrayT", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("encoding/gob.arrayType", [], stdgo.reflect.Reflect.GoType.named("encoding/gob.arrayType", [], stdgo.reflect.Reflect.GoType.structType([{ name : "commonType", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("encoding/gob.CommonType", [], stdgo.reflect.Reflect.GoType.named("encoding/gob.CommonType", [], stdgo.reflect.Reflect.GoType.structType([{ name : "name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "id", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("encoding/gob.typeId", [], stdgo.reflect.Reflect.GoType.basic(int32_kind)) }]))) }, { name : "elem", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("encoding/gob.typeId", [], stdgo.reflect.Reflect.GoType.basic(int32_kind)) }, { name : "len", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) }])))) }, { name : "sliceT", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("encoding/gob.sliceType", [], stdgo.reflect.Reflect.GoType.named("encoding/gob.sliceType", [], stdgo.reflect.Reflect.GoType.structType([{ name : "commonType", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("encoding/gob.CommonType", [], stdgo.reflect.Reflect.GoType.named("encoding/gob.CommonType", [], stdgo.reflect.Reflect.GoType.structType([{ name : "name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "id", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("encoding/gob.typeId", [], stdgo.reflect.Reflect.GoType.basic(int32_kind)) }]))) }, { name : "elem", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("encoding/gob.typeId", [], stdgo.reflect.Reflect.GoType.basic(int32_kind)) }])))) }, { name : "structT", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("encoding/gob.structType", [], stdgo.reflect.Reflect.GoType.named("encoding/gob.structType", [], stdgo.reflect.Reflect.GoType.structType([{ name : "commonType", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("encoding/gob.CommonType", [], stdgo.reflect.Reflect.GoType.named("encoding/gob.CommonType", [], stdgo.reflect.Reflect.GoType.structType([{ name : "name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "id", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("encoding/gob.typeId", [], stdgo.reflect.Reflect.GoType.basic(int32_kind)) }]))) }, { name : "field", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("encoding/gob.fieldType", [], stdgo.reflect.Reflect.GoType.named("encoding/gob.CommonType", [], stdgo.reflect.Reflect.GoType.structType([{ name : "name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "id", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("encoding/gob.typeId", [], stdgo.reflect.Reflect.GoType.basic(int32_kind)) }]))))) }])))) }, { name : "mapT", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("encoding/gob.mapType", [], stdgo.reflect.Reflect.GoType.named("encoding/gob.mapType", [], stdgo.reflect.Reflect.GoType.structType([{ name : "commonType", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("encoding/gob.CommonType", [], stdgo.reflect.Reflect.GoType.named("encoding/gob.CommonType", [], stdgo.reflect.Reflect.GoType.structType([{ name : "name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "id", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("encoding/gob.typeId", [], stdgo.reflect.Reflect.GoType.basic(int32_kind)) }]))) }, { name : "key", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("encoding/gob.typeId", [], stdgo.reflect.Reflect.GoType.basic(int32_kind)) }, { name : "elem", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("encoding/gob.typeId", [], stdgo.reflect.Reflect.GoType.basic(int32_kind)) }])))) }, { name : "gobEncoderT", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("encoding/gob.gobEncoderType", [], stdgo.reflect.Reflect.GoType.named("encoding/gob.gobEncoderType", [], stdgo.reflect.Reflect.GoType.structType([{ name : "commonType", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("encoding/gob.CommonType", [], stdgo.reflect.Reflect.GoType.named("encoding/gob.CommonType", [], stdgo.reflect.Reflect.GoType.structType([{ name : "name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "id", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("encoding/gob.typeId", [], stdgo.reflect.Reflect.GoType.basic(int32_kind)) }]))) }])))) }, { name : "binaryMarshalerT", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("encoding/gob.gobEncoderType", [], stdgo.reflect.Reflect.GoType.named("encoding/gob.gobEncoderType", [], stdgo.reflect.Reflect.GoType.structType([{ name : "commonType", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("encoding/gob.CommonType", [], stdgo.reflect.Reflect.GoType.named("encoding/gob.CommonType", [], stdgo.reflect.Reflect.GoType.structType([{ name : "name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "id", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("encoding/gob.typeId", [], stdgo.reflect.Reflect.GoType.basic(int32_kind)) }]))) }])))) }, { name : "textMarshalerT", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("encoding/gob.gobEncoderType", [], stdgo.reflect.Reflect.GoType.named("encoding/gob.gobEncoderType", [], stdgo.reflect.Reflect.GoType.structType([{ name : "commonType", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("encoding/gob.CommonType", [], stdgo.reflect.Reflect.GoType.named("encoding/gob.CommonType", [], stdgo.reflect.Reflect.GoType.structType([{ name : "name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "id", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("encoding/gob.typeId", [], stdgo.reflect.Reflect.GoType.basic(int32_kind)) }]))) }])))) }])))) }]))))))).nil(), ok : false };
            }, _m = __tmp__.value, _ = __tmp__.ok;
            {
                var _k;
                var _v;
                for (_obj in _m.keyValueIterator()) {
                    _k = _obj.key;
                    _v = _obj.value;
                    _newm[_k] = _v;
                };
            };
            _newm[_rt] = _info;
            _typeInfoMap.store(Go.toInterface(_newm));
            {
                for (defer in deferstack) {
                    defer();
                };
                return { _0 : _info, _1 : ((null : stdgo.Error)) };
            };
            for (defer in deferstack) {
                defer();
            };
        } catch(e) {
            recover_exception = stdgo.runtime.Runtime.newRuntime(e.message);
            {
                for (defer in deferstack) {
                    defer();
                };
                if (recover_exception != null) throw recover_exception;
                return { _0 : new Pointer<T_typeInfo>().nil(), _1 : ((null : stdgo.Error)) };
            };
        };
    }
/**
    // Called only when a panic is acceptable and unexpected.
**/
function _mustGetTypeInfo(_rt:stdgo.reflect.Reflect.Type):Pointer<T_typeInfo> {
        var __tmp__ = _getTypeInfo(_userType(_rt)), _t:Pointer<T_typeInfo> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            throw (("getTypeInfo: " : GoString)) + _err.error();
        };
        return _t;
    }
/**
    // RegisterName is like Register but uses the provided name rather than the
    // type's default.
**/
function registerName(_name:GoString, _value:AnyInterface):Void {
        if (_name == (("" : GoString))) {
            throw "attempt to register empty name";
        };
        var _ut:Pointer<T_userTypeInfo> = _userType(stdgo.reflect.Reflect.typeOf(Go.toInterface(_value)));
        {
            var __tmp__ = _nameToConcreteType.loadOrStore(Go.toInterface(_name), Go.toInterface(stdgo.reflect.Reflect.typeOf(Go.toInterface(_value)))), _t:AnyInterface = __tmp__._0, _dup:Bool = __tmp__._1;
            if (_dup && Go.toInterface(_t) != Go.toInterface(_ut.value._user)) {
                throw stdgo.fmt.Fmt.sprintf("gob: registering duplicate types for %q: %s != %s", Go.toInterface(_name), Go.toInterface(_t), Go.toInterface(_ut.value._user));
            };
        };
        {
            var __tmp__ = _concreteTypeToName.loadOrStore(Go.toInterface(_ut.value._base), Go.toInterface(_name)), _n:AnyInterface = __tmp__._0, _dup:Bool = __tmp__._1;
            if (_dup && Go.toInterface(_n) != Go.toInterface(_name)) {
                _nameToConcreteType.delete(Go.toInterface(_name));
                throw stdgo.fmt.Fmt.sprintf("gob: registering duplicate names for %s: %q != %q", Go.toInterface(_ut.value._user), Go.toInterface(_n), Go.toInterface(_name));
            };
        };
    }
/**
    // Register records a type, identified by a value for that type, under its
    // internal type name. That name will identify the concrete type of a value
    // sent or received as an interface variable. Only types that will be
    // transferred as implementations of interface values need to be registered.
    // Expecting to be used only during initialization, it panics if the mapping
    // between types and names is not a bijection.
**/
function register(_value:AnyInterface):Void {
        var _rt:stdgo.reflect.Reflect.Type = stdgo.reflect.Reflect.typeOf(Go.toInterface(_value));
        var _name:GoString = _rt.toString();
        var _star:GoString = "";
        if (_rt.name() == (("" : GoString))) {
            {
                var _pt:stdgo.reflect.Reflect.Type = _rt;
                if (_pt.kind().__t__ == stdgo.reflect.Reflect.ptr.__t__) {
                    _star = "*";
                    _rt = _pt;
                };
            };
        };
        if (_rt.name() != (("" : GoString))) {
            if (_rt.pkgPath() == (("" : GoString))) {
                _name = _star + _rt.name();
            } else {
                _name = _star + _rt.pkgPath() + (("." : GoString)) + _rt.name();
            };
        };
        registerName(_name, Go.toInterface(_value));
    }
function _registerBasics():Void {
        register(Go.toInterface(((((0 : GoInt)) : GoInt))));
        register(Go.toInterface(((((0 : GoInt8)) : GoInt8))));
        register(Go.toInterface(((((0 : GoInt16)) : GoInt16))));
        register(Go.toInterface(((((0 : GoInt32)) : GoInt32))));
        register(Go.toInterface(((((0 : GoInt64)) : GoInt64))));
        register(Go.toInterface(((((0 : GoUInt)) : GoUInt))));
        register(Go.toInterface(((((0 : GoUInt8)) : GoUInt8))));
        register(Go.toInterface(((((0 : GoUInt16)) : GoUInt16))));
        register(Go.toInterface(((((0 : GoUInt32)) : GoUInt32))));
        register(Go.toInterface(((((0 : GoUInt64)) : GoUInt64))));
        register(Go.toInterface(((((0 : GoFloat32)) : GoFloat32))));
        register(Go.toInterface(((((0 : GoFloat64)) : GoFloat64))));
        register(Go.toInterface(((new GoComplex128(0, 0) : GoComplex64))));
        register(Go.toInterface(((new GoComplex128(0, 0) : GoComplex128))));
        register(Go.toInterface(((((0 : GoUIntptr)) : GoUIntptr))));
        register(Go.toInterface(false));
        register(Go.toInterface(""));
        register(Go.toInterface(((new Slice<GoUInt8>().nil() : Slice<GoByte>))));
        register(Go.toInterface(((new Slice<GoInt>().nil() : Slice<GoInt>))));
        register(Go.toInterface(((new Slice<GoInt8>().nil() : Slice<GoInt8>))));
        register(Go.toInterface(((new Slice<GoInt16>().nil() : Slice<GoInt16>))));
        register(Go.toInterface(((new Slice<GoInt32>().nil() : Slice<GoInt32>))));
        register(Go.toInterface(((new Slice<GoInt64>().nil() : Slice<GoInt64>))));
        register(Go.toInterface(((new Slice<GoUInt>().nil() : Slice<GoUInt>))));
        register(Go.toInterface(((new Slice<GoUInt8>().nil() : Slice<GoUInt8>))));
        register(Go.toInterface(((new Slice<GoUInt16>().nil() : Slice<GoUInt16>))));
        register(Go.toInterface(((new Slice<GoUInt32>().nil() : Slice<GoUInt32>))));
        register(Go.toInterface(((new Slice<GoUInt64>().nil() : Slice<GoUInt64>))));
        register(Go.toInterface(((new Slice<GoFloat32>().nil() : Slice<GoFloat32>))));
        register(Go.toInterface(((new Slice<GoFloat64>().nil() : Slice<GoFloat64>))));
        register(Go.toInterface(((new Slice<GoComplex64>().nil() : Slice<GoComplex64>))));
        register(Go.toInterface(((new Slice<GoComplex128>().nil() : Slice<GoComplex128>))));
        register(Go.toInterface(((new Slice<GoUIntptr>().nil() : Slice<GoUIntptr>))));
        register(Go.toInterface(((new Slice<Bool>().nil() : Slice<Bool>))));
        register(Go.toInterface(((new Slice<GoString>().nil() : Slice<GoString>))));
    }
@:keep var _ = {
        try {
            var _iop:T_decOp = new T_decOp(), _uop:T_decOp = new T_decOp();
            if (stdgo.reflect.Reflect.typeOf(Go.toInterface(((((0 : GoInt)) : GoInt)))).bits() == ((32 : GoInt))) {
                _iop = new T_decOp(_decInt32);
                _uop = new T_decOp(_decUint32);
            } else if (stdgo.reflect.Reflect.typeOf(Go.toInterface(((((0 : GoInt)) : GoInt)))).bits() == ((64 : GoInt))) {
                _iop = new T_decOp(_decInt64);
                _uop = new T_decOp(_decUint64);
            } else {
                throw "gob: unknown size of int/uint";
            };
            _decOpTable[stdgo.reflect.Reflect.int.__t__] = _iop.__copy__();
            _decOpTable[stdgo.reflect.Reflect.uint.__t__] = _uop.__copy__();
            if (stdgo.reflect.Reflect.typeOf(Go.toInterface(((((0 : GoUIntptr)) : GoUIntptr)))).bits() == ((32 : GoInt))) {
                _uop = new T_decOp(_decUint32);
            } else if (stdgo.reflect.Reflect.typeOf(Go.toInterface(((((0 : GoUIntptr)) : GoUIntptr)))).bits() == ((64 : GoInt))) {
                _uop = new T_decOp(_decUint64);
            } else {
                throw "gob: unknown size of uintptr";
            };
            _decOpTable[stdgo.reflect.Reflect.uintptr.__t__] = _uop.__copy__();
            _checkId(new T_typeId(((16 : GoInt32))), _tWireType);
            _checkId(new T_typeId(((17 : GoInt32))), _mustGetTypeInfo(stdgo.reflect.Reflect.typeOf(Go.toInterface(new T_arrayType().__copy__()))).value._id);
            _checkId(new T_typeId(((18 : GoInt32))), _mustGetTypeInfo(stdgo.reflect.Reflect.typeOf(Go.toInterface(new CommonType().__copy__()))).value._id);
            _checkId(new T_typeId(((19 : GoInt32))), _mustGetTypeInfo(stdgo.reflect.Reflect.typeOf(Go.toInterface(new T_sliceType().__copy__()))).value._id);
            _checkId(new T_typeId(((20 : GoInt32))), _mustGetTypeInfo(stdgo.reflect.Reflect.typeOf(Go.toInterface(new T_structType().__copy__()))).value._id);
            _checkId(new T_typeId(((21 : GoInt32))), _mustGetTypeInfo(stdgo.reflect.Reflect.typeOf(Go.toInterface(new T_fieldType().__copy__()))).value._id);
            _checkId(new T_typeId(((23 : GoInt32))), _mustGetTypeInfo(stdgo.reflect.Reflect.typeOf(Go.toInterface(new T_mapType().__copy__()))).value._id);
            _builtinIdToType = new GoMap<T_typeId, T_gobType>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.named("encoding/gob.typeId", [], stdgo.reflect.Reflect.GoType.basic(int32_kind)), stdgo.reflect.Reflect.GoType.named("encoding/gob.gobType", [], stdgo.reflect.Reflect.GoType.named("encoding/gob.gobType", [], stdgo.reflect.Reflect.GoType.interfaceType(false, []))))));
            {
                var _k;
                var _v;
                for (_obj in _idToType.keyValueIterator()) {
                    _k = _obj.key;
                    _v = _obj.value;
                    _builtinIdToType[_k] = _v;
                };
            };
            if (_nextId.__t__ > _firstUserId) {
                throw stdgo.fmt.Fmt.sprintln("nextId too large:", _nextId);
            };
            _nextId = new T_typeId(_firstUserId);
            _registerBasics();
            _wireTypeUserInfo = _userType(stdgo.reflect.Reflect.typeOf(Go.toInterface(((new Pointer<T_wireType>().nil() : Pointer<T_wireType>)))));
        } catch(e) if (e.message != "__return__") throw e;
        true;
    };
class T_decoderState_extension_fields {
    public function _decodeUint(__tmp__):GoUInt64 return __tmp__._decodeUint();
    public function _decodeInt(__tmp__):GoInt64 return __tmp__._decodeInt();
    public function _getLength(__tmp__):{ var _0 : GoInt; var _1 : Bool; } return __tmp__._getLength();
}
class T_decBuffer_extension_fields {
    public function read(__tmp__, _p:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } return __tmp__.read(_p);
    public function drop(__tmp__, _n:GoInt):Void __tmp__.drop(_n);
    public function size(__tmp__, _n:GoInt):Void __tmp__.size(_n);
    public function readByte(__tmp__):{ var _0 : GoByte; var _1 : Error; } return __tmp__.readByte();
    public function len(__tmp__):GoInt return __tmp__.len();
    public function bytes(__tmp__):Slice<GoByte> return __tmp__.bytes();
    public function reset(__tmp__):Void __tmp__.reset();
}
class Decoder_extension_fields {
    public function _newDecoderState(__tmp__, _buf:Pointer<T_decBuffer>):Pointer<T_decoderState> return __tmp__._newDecoderState(_buf);
    public function _freeDecoderState(__tmp__, _d:Pointer<T_decoderState>):Void __tmp__._freeDecoderState(_d);
    public function _decodeSingle(__tmp__, _engine:Pointer<T_decEngine>, _value:stdgo.reflect.Reflect.Value):Void __tmp__._decodeSingle(_engine, _value);
    public function _decodeStruct(__tmp__, _engine:Pointer<T_decEngine>, _value:stdgo.reflect.Reflect.Value):Void __tmp__._decodeStruct(_engine, _value);
    public function _ignoreStruct(__tmp__, _engine:Pointer<T_decEngine>):Void __tmp__._ignoreStruct(_engine);
    public function _ignoreSingle(__tmp__, _engine:Pointer<T_decEngine>):Void __tmp__._ignoreSingle(_engine);
    public function _decodeArrayHelper(__tmp__, _state:Pointer<T_decoderState>, _value:stdgo.reflect.Reflect.Value, _elemOp:T_decOp, _length:GoInt, _ovfl:Error, _helper:T_decHelper):Void __tmp__._decodeArrayHelper(_state, _value, _elemOp, _length, _ovfl, _helper);
    public function _decodeArray(__tmp__, _state:Pointer<T_decoderState>, _value:stdgo.reflect.Reflect.Value, _elemOp:T_decOp, _length:GoInt, _ovfl:Error, _helper:T_decHelper):Void __tmp__._decodeArray(_state, _value, _elemOp, _length, _ovfl, _helper);
    public function _decodeMap(__tmp__, _mtyp:stdgo.reflect.Reflect.Type, _state:Pointer<T_decoderState>, _value:stdgo.reflect.Reflect.Value, _keyOp:T_decOp, _elemOp:T_decOp, _ovfl:Error):Void __tmp__._decodeMap(_mtyp, _state, _value, _keyOp, _elemOp, _ovfl);
    public function _ignoreArrayHelper(__tmp__, _state:Pointer<T_decoderState>, _elemOp:T_decOp, _length:GoInt):Void __tmp__._ignoreArrayHelper(_state, _elemOp, _length);
    public function _ignoreArray(__tmp__, _state:Pointer<T_decoderState>, _elemOp:T_decOp, _length:GoInt):Void __tmp__._ignoreArray(_state, _elemOp, _length);
    public function _ignoreMap(__tmp__, _state:Pointer<T_decoderState>, _keyOp:T_decOp, _elemOp:T_decOp):Void __tmp__._ignoreMap(_state, _keyOp, _elemOp);
    public function _decodeSlice(__tmp__, _state:Pointer<T_decoderState>, _value:stdgo.reflect.Reflect.Value, _elemOp:T_decOp, _ovfl:Error, _helper:T_decHelper):Void __tmp__._decodeSlice(_state, _value, _elemOp, _ovfl, _helper);
    public function _ignoreSlice(__tmp__, _state:Pointer<T_decoderState>, _elemOp:T_decOp):Void __tmp__._ignoreSlice(_state, _elemOp);
    public function _decodeInterface(__tmp__, _ityp:stdgo.reflect.Reflect.Type, _state:Pointer<T_decoderState>, _value:stdgo.reflect.Reflect.Value):Void __tmp__._decodeInterface(_ityp, _state, _value);
    public function _ignoreInterface(__tmp__, _state:Pointer<T_decoderState>):Void __tmp__._ignoreInterface(_state);
    public function _decodeGobDecoder(__tmp__, _ut:Pointer<T_userTypeInfo>, _state:Pointer<T_decoderState>, _value:stdgo.reflect.Reflect.Value):Void __tmp__._decodeGobDecoder(_ut, _state, _value);
    public function _ignoreGobDecoder(__tmp__, _state:Pointer<T_decoderState>):Void __tmp__._ignoreGobDecoder(_state);
    public function _decOpFor(__tmp__, _wireId:T_typeId, _rt:stdgo.reflect.Reflect.Type, _name:GoString, _inProgress:GoMap<stdgo.reflect.Reflect.Type, Pointer<T_decOp>>):Pointer<T_decOp> return __tmp__._decOpFor(_wireId, _rt, _name, _inProgress);
    public function _decIgnoreOpFor(__tmp__, _wireId:T_typeId, _inProgress:GoMap<T_typeId, Pointer<T_decOp>>):Pointer<T_decOp> return __tmp__._decIgnoreOpFor(_wireId, _inProgress);
    public function _gobDecodeOpFor(__tmp__, _ut:Pointer<T_userTypeInfo>):Pointer<T_decOp> return __tmp__._gobDecodeOpFor(_ut);
    public function _compatibleType(__tmp__, _fr:stdgo.reflect.Reflect.Type, _fw:T_typeId, _inProgress:GoMap<stdgo.reflect.Reflect.Type, T_typeId>):Bool return __tmp__._compatibleType(_fr, _fw, _inProgress);
    public function _typeString(__tmp__, _remoteId:T_typeId):GoString return __tmp__._typeString(_remoteId);
    public function _compileSingle(__tmp__, _remoteId:T_typeId, _ut:Pointer<T_userTypeInfo>):{ var _0 : Pointer<T_decEngine>; var _1 : Error; } return __tmp__._compileSingle(_remoteId, _ut);
    public function _compileIgnoreSingle(__tmp__, _remoteId:T_typeId):Pointer<T_decEngine> return __tmp__._compileIgnoreSingle(_remoteId);
    public function _compileDec(__tmp__, _remoteId:T_typeId, _ut:Pointer<T_userTypeInfo>):{ var _0 : Pointer<T_decEngine>; var _1 : Error; } return __tmp__._compileDec(_remoteId, _ut);
    public function _getDecEnginePtr(__tmp__, _remoteId:T_typeId, _ut:Pointer<T_userTypeInfo>):{ var _0 : Pointer<Pointer<T_decEngine>>; var _1 : Error; } return __tmp__._getDecEnginePtr(_remoteId, _ut);
    public function _getIgnoreEnginePtr(__tmp__, _wireId:T_typeId):{ var _0 : Pointer<Pointer<T_decEngine>>; var _1 : Error; } return __tmp__._getIgnoreEnginePtr(_wireId);
    public function _decodeValue(__tmp__, _wireId:T_typeId, _value:stdgo.reflect.Reflect.Value):Void __tmp__._decodeValue(_wireId, _value);
    public function _decodeIgnoredValue(__tmp__, _wireId:T_typeId):Void __tmp__._decodeIgnoredValue(_wireId);
    public function _recvType(__tmp__, _id:T_typeId):Void __tmp__._recvType(_id);
    public function _recvMessage(__tmp__):Bool return __tmp__._recvMessage();
    public function _readMessage(__tmp__, _nbytes:GoInt):Void __tmp__._readMessage(_nbytes);
    public function _nextInt(__tmp__):GoInt64 return __tmp__._nextInt();
    public function _nextUint(__tmp__):GoUInt64 return __tmp__._nextUint();
    public function _decodeTypeSequence(__tmp__, _isInterface:Bool):T_typeId return __tmp__._decodeTypeSequence(_isInterface);
    public function decode(__tmp__, _e:AnyInterface):Error return __tmp__.decode(_e);
    public function decodeValue(__tmp__, _v:stdgo.reflect.Reflect.Value):Error return __tmp__.decodeValue(_v);
}
class T_encoderState_extension_fields {
    public function _encodeUint(__tmp__, _x:GoUInt64):Void __tmp__._encodeUint(_x);
    public function _encodeInt(__tmp__, _i:GoInt64):Void __tmp__._encodeInt(_i);
    public function _update(__tmp__, _instr:Pointer<T_encInstr>):Void __tmp__._update(_instr);
}
class T_encBuffer_extension_fields {
    public function _writeByte(__tmp__, _c:GoByte):Void __tmp__._writeByte(_c);
    public function write(__tmp__, _p:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } return __tmp__.write(_p);
    public function writeString(__tmp__, _s:GoString):Void __tmp__.writeString(_s);
    public function len(__tmp__):GoInt return __tmp__.len();
    public function bytes(__tmp__):Slice<GoByte> return __tmp__.bytes();
    public function reset(__tmp__):Void __tmp__.reset();
}
class Encoder_extension_fields {
    public function _newEncoderState(__tmp__, _b:Pointer<T_encBuffer>):Pointer<T_encoderState> return __tmp__._newEncoderState(_b);
    public function _freeEncoderState(__tmp__, _e:Pointer<T_encoderState>):Void __tmp__._freeEncoderState(_e);
    public function _encodeSingle(__tmp__, _b:Pointer<T_encBuffer>, _engine:Pointer<T_encEngine>, _value:stdgo.reflect.Reflect.Value):Void __tmp__._encodeSingle(_b, _engine, _value);
    public function _encodeStruct(__tmp__, _b:Pointer<T_encBuffer>, _engine:Pointer<T_encEngine>, _value:stdgo.reflect.Reflect.Value):Void __tmp__._encodeStruct(_b, _engine, _value);
    public function _encodeArray(__tmp__, _b:Pointer<T_encBuffer>, _value:stdgo.reflect.Reflect.Value, _op:T_encOp, _elemIndir:GoInt, _length:GoInt, _helper:T_encHelper):Void __tmp__._encodeArray(_b, _value, _op, _elemIndir, _length, _helper);
    public function _encodeMap(__tmp__, _b:Pointer<T_encBuffer>, _mv:stdgo.reflect.Reflect.Value, _keyOp:T_encOp, _elemOp:T_encOp, _keyIndir:GoInt, _elemIndir:GoInt):Void __tmp__._encodeMap(_b, _mv, _keyOp, _elemOp, _keyIndir, _elemIndir);
    public function _encodeInterface(__tmp__, _b:Pointer<T_encBuffer>, _iv:stdgo.reflect.Reflect.Value):Void __tmp__._encodeInterface(_b, _iv);
    public function _encodeGobEncoder(__tmp__, _b:Pointer<T_encBuffer>, _ut:Pointer<T_userTypeInfo>, _v:stdgo.reflect.Reflect.Value):Void __tmp__._encodeGobEncoder(_b, _ut, _v);
    public function _encode(__tmp__, _b:Pointer<T_encBuffer>, _value:stdgo.reflect.Reflect.Value, _ut:Pointer<T_userTypeInfo>):Void __tmp__._encode(_b, _value, _ut);
    public function _writer(__tmp__):stdgo.io.Io.Writer return __tmp__._writer();
    public function _pushWriter(__tmp__, _w:stdgo.io.Io.Writer):Void __tmp__._pushWriter(_w);
    public function _popWriter(__tmp__):Void __tmp__._popWriter();
    public function _setError(__tmp__, _err:Error):Void __tmp__._setError(_err);
    public function _writeMessage(__tmp__, _w:stdgo.io.Io.Writer, _b:Pointer<T_encBuffer>):Void __tmp__._writeMessage(_w, _b);
    public function _sendActualType(__tmp__, _w:stdgo.io.Io.Writer, _state:Pointer<T_encoderState>, _ut:Pointer<T_userTypeInfo>, _actual:stdgo.reflect.Reflect.Type):Bool return __tmp__._sendActualType(_w, _state, _ut, _actual);
    public function _sendType(__tmp__, _w:stdgo.io.Io.Writer, _state:Pointer<T_encoderState>, _origt:stdgo.reflect.Reflect.Type):Bool return __tmp__._sendType(_w, _state, _origt);
    public function encode(__tmp__, _e:AnyInterface):Error return __tmp__.encode(_e);
    public function _sendTypeDescriptor(__tmp__, _w:stdgo.io.Io.Writer, _state:Pointer<T_encoderState>, _ut:Pointer<T_userTypeInfo>):Void __tmp__._sendTypeDescriptor(_w, _state, _ut);
    public function _sendTypeId(__tmp__, _state:Pointer<T_encoderState>, _ut:Pointer<T_userTypeInfo>):Void __tmp__._sendTypeId(_state, _ut);
    public function encodeValue(__tmp__, _value:stdgo.reflect.Reflect.Value):Error return __tmp__.encodeValue(_value);
}
class T_typeId_extension_fields {
    public function _gobType(__tmp__):T_gobType return __tmp__._gobType();
    public function _string(__tmp__):GoString return __tmp__._string();
    public function _name(__tmp__):GoString return __tmp__._name();
}
class CommonType_extension_fields {
    public function _id(__tmp__):T_typeId return __tmp__._id();
    public function _setId(__tmp__, _id:T_typeId):Void __tmp__._setId(_id);
    public function _string(__tmp__):GoString return __tmp__._string();
    public function _safeString(__tmp__, _seen:GoMap<T_typeId, Bool>):GoString return __tmp__._safeString(_seen);
    public function _name(__tmp__):GoString return __tmp__._name();
}
class T_arrayType_extension_fields {
    public function _init(__tmp__, _elem:T_gobType, _len:GoInt):Void __tmp__._init(_elem, _len);
    public function _safeString(__tmp__, _seen:GoMap<T_typeId, Bool>):GoString return __tmp__._safeString(_seen);
    public function _string(__tmp__):GoString return __tmp__._string();
}
class T_gobEncoderType_extension_fields {
    public function _safeString(__tmp__, _seen:GoMap<T_typeId, Bool>):GoString return __tmp__._safeString(_seen);
    public function _string(__tmp__):GoString return __tmp__._string();
}
class T_mapType_extension_fields {
    public function _init(__tmp__, _key:T_gobType, _elem:T_gobType):Void __tmp__._init(_key, _elem);
    public function _safeString(__tmp__, _seen:GoMap<T_typeId, Bool>):GoString return __tmp__._safeString(_seen);
    public function _string(__tmp__):GoString return __tmp__._string();
}
class T_sliceType_extension_fields {
    public function _init(__tmp__, _elem:T_gobType):Void __tmp__._init(_elem);
    public function _safeString(__tmp__, _seen:GoMap<T_typeId, Bool>):GoString return __tmp__._safeString(_seen);
    public function _string(__tmp__):GoString return __tmp__._string();
}
class T_structType_extension_fields {
    public function _safeString(__tmp__, _seen:GoMap<T_typeId, Bool>):GoString return __tmp__._safeString(_seen);
    public function _string(__tmp__):GoString return __tmp__._string();
}
class T_wireType_extension_fields {
    public function _string(__tmp__):GoString return __tmp__._string();
}
