package stdgo.debug.gosym;
import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;
@:named class T_version {
    public var __t__ : GoInt;
    public function new(?t:GoInt) {
        __t__ = t == null ? 0 : t;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    @:implicit
    public function toString():GoString return Go.string(__t__);
    public function __copy__() return new T_version(__t__);
}
@:structInit class LineTable {
    public function _go12MapFiles(_m:GoMap<GoString, Pointer<Obj>>, _obj:Pointer<Obj>):Void {
        var _t = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var recover_exception:Error = null;
        var deferstack:Array<Void -> Void> = [];
        try {
            {
                deferstack.unshift(() -> {
                    var a = function():Void {
                        var recover_exception:Error = null;
                        Go.recover();
                    };
                    a();
                });
            };
            _t.value._initFileMap();
            {
                var _file;
                for (_obj in _t.value._fileMap.keyValueIterator()) {
                    _file = _obj.key;
                    _m[_file] = _obj;
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
    public function _initFileMap():Void {
        var _t = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var recover_exception:Error = null;
        var deferstack:Array<Void -> Void> = [];
        try {
            _t.value._mu.lock();
            deferstack.unshift(() -> _t.value._mu.unlock());
            if (_t.value._fileMap != null && !_t.value._fileMap.isNil()) {
                {
                    for (defer in deferstack) {
                        defer();
                    };
                    return;
                };
            };
            var _m:GoMap<GoString, GoUInt32> = new GoMap<GoString, GoUInt32>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.basic(uint32_kind))));
            if (_t.value._version.__t__ == _ver12.__t__) {
                {
                    var _i:GoUInt32 = ((((1 : GoUInt32)) : GoUInt32));
                    Go.cfor(_i < _t.value._nfiletab, _i++, {
                        var _s:GoString = _t.value._string(_t.value._binary.uint32(_t.value._filetab.__slice__(((4 : GoUInt32)) * _i)));
                        _m[_s] = _i;
                    });
                };
            } else {
                var _pos:GoUInt32 = ((0 : GoUInt32));
                {
                    var _i:GoUInt32 = ((((0 : GoUInt32)) : GoUInt32));
                    Go.cfor(_i < _t.value._nfiletab, _i++, {
                        var _s:GoString = _t.value._stringFrom(_t.value._filetab, _pos);
                        _m[_s] = _pos;
                        _pos = _pos + ((((_s.length + ((1 : GoInt))) : GoUInt32)));
                    });
                };
            };
            _t.value._fileMap = _m;
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
    public function _go12LineToPC(_file:GoString, _line:GoInt):GoUInt64 {
        var _t = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var recover_exception:Error = null;
        var deferstack:Array<Void -> Void> = [];
        var _pc:GoUInt64 = ((0 : GoUInt64));
        try {
            {
                deferstack.unshift(() -> {
                    var a = function():Void {
                        var recover_exception:Error = null;
                        if (Go.recover() != null) {
                            _pc = ((0 : GoUInt64));
                        };
                    };
                    a();
                });
            };
            _t.value._initFileMap();
            var __tmp__ = _t.value._fileMap.exists(_file) ? { value : _t.value._fileMap[_file], ok : true } : { value : _t.value._fileMap.defaultValue(), ok : false }, _filenum:GoUInt32 = __tmp__.value, _ok:Bool = __tmp__.ok;
            if (!_ok) {
                {
                    for (defer in deferstack) {
                        defer();
                    };
                    return ((0 : GoUInt64));
                };
            };
            var _cutab:Slice<GoByte> = new Slice<GoUInt8>().nil();
            {
                var _i:GoUInt32 = ((((0 : GoUInt32)) : GoUInt32));
                Go.cfor(_i < _t.value._nfunctab, _i++, {
                    var _f:Slice<GoUInt8> = _t.value._funcdata.__slice__(_t.value._uintptr(_t.value._functab.__slice__(((2 : GoUInt32)) * _t.value._ptrsize * _i + _t.value._ptrsize)));
                    var _entry:GoUInt64 = _t.value._uintptr(_f);
                    var _filetab:GoUInt32 = _t.value._binary.uint32(_f.__slice__(_t.value._ptrsize + ((4 : GoUnTypedInt)) * ((4 : GoUnTypedInt))));
                    var _linetab:GoUInt32 = _t.value._binary.uint32(_f.__slice__(_t.value._ptrsize + ((5 : GoUnTypedInt)) * ((4 : GoUnTypedInt))));
                    if (_t.value._version.__t__ == _ver116.__t__) {
                        var _cuoff:GoUInt32 = _t.value._binary.uint32(_f.__slice__(_t.value._ptrsize + ((7 : GoUnTypedInt)) * ((4 : GoUnTypedInt)))) * ((4 : GoUInt32));
                        _cutab = _t.value._cutab.__slice__(_cuoff);
                    };
                    var _pc:GoUInt64 = _t.value._findFileLine(_entry, _filetab, _linetab, ((_filenum : GoInt32)), ((_line : GoInt32)), _cutab);
                    if (_pc != ((0 : GoUInt64))) {
                        {
                            for (defer in deferstack) {
                                defer();
                            };
                            return _pc;
                        };
                    };
                });
            };
            {
                for (defer in deferstack) {
                    defer();
                };
                return ((0 : GoUInt64));
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
                return _pc;
            };
        };
    }
    public function _go12PCToFile(_pc:GoUInt64):GoString {
        var _t = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var recover_exception:Error = null;
        var deferstack:Array<Void -> Void> = [];
        var _file:GoString = (("" : GoString));
        try {
            {
                deferstack.unshift(() -> {
                    var a = function():Void {
                        var recover_exception:Error = null;
                        if (Go.recover() != null) {
                            _file = "";
                        };
                    };
                    a();
                });
            };
            var _f:Slice<GoUInt8> = _t.value._findFunc(_pc);
            if (_f == null || _f.isNil()) {
                {
                    for (defer in deferstack) {
                        defer();
                    };
                    return "";
                };
            };
            var _entry:GoUInt64 = _t.value._uintptr(_f);
            var _filetab:GoUInt32 = _t.value._binary.uint32(_f.__slice__(_t.value._ptrsize + ((4 : GoUnTypedInt)) * ((4 : GoUnTypedInt))));
            var _fno:GoInt32 = _t.value._pcvalue(_filetab, _entry, _pc);
            if (_t.value._version.__t__ == _ver12.__t__) {
                if (_fno <= ((0 : GoInt32))) {
                    {
                        for (defer in deferstack) {
                            defer();
                        };
                        return "";
                    };
                };
                {
                    for (defer in deferstack) {
                        defer();
                    };
                    return _t.value._string(_t.value._binary.uint32(_t.value._filetab.__slice__(((4 : GoInt32)) * _fno)));
                };
            };
            if (_fno < ((0 : GoInt32))) {
                {
                    for (defer in deferstack) {
                        defer();
                    };
                    return "";
                };
            };
            var _cuoff:GoUInt32 = _t.value._binary.uint32(_f.__slice__(_t.value._ptrsize + ((7 : GoUnTypedInt)) * ((4 : GoUnTypedInt))));
            {
                var _fnoff:GoUInt32 = _t.value._binary.uint32(_t.value._cutab.__slice__((_cuoff + ((_fno : GoUInt32))) * ((4 : GoUInt32))));
                if (_fnoff != -1 ^ ((((0 : GoUInt32)) : GoUInt32))) {
                    {
                        for (defer in deferstack) {
                            defer();
                        };
                        return _t.value._stringFrom(_t.value._filetab, _fnoff);
                    };
                };
            };
            {
                for (defer in deferstack) {
                    defer();
                };
                return "";
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
                return _file;
            };
        };
    }
    public function _go12PCToLine(_pc:GoUInt64):GoInt {
        var _t = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var recover_exception:Error = null;
        var deferstack:Array<Void -> Void> = [];
        var _line:GoInt = ((0 : GoInt));
        try {
            {
                deferstack.unshift(() -> {
                    var a = function():Void {
                        var recover_exception:Error = null;
                        if (Go.recover() != null) {
                            _line = -((1 : GoUnTypedInt));
                        };
                    };
                    a();
                });
            };
            var _f:Slice<GoUInt8> = _t.value._findFunc(_pc);
            if (_f == null || _f.isNil()) {
                {
                    for (defer in deferstack) {
                        defer();
                    };
                    return -((1 : GoUnTypedInt));
                };
            };
            var _entry:GoUInt64 = _t.value._uintptr(_f);
            var _linetab:GoUInt32 = _t.value._binary.uint32(_f.__slice__(_t.value._ptrsize + ((5 : GoUnTypedInt)) * ((4 : GoUnTypedInt))));
            {
                for (defer in deferstack) {
                    defer();
                };
                return ((_t.value._pcvalue(_linetab, _entry, _pc) : GoInt));
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
                return _line;
            };
        };
    }
    public function _findFileLine(_entry:GoUInt64, _filetab:GoUInt32, _linetab:GoUInt32, _filenum:GoInt32, _line:GoInt32, _cutab:Slice<GoByte>):GoUInt64 {
        var _t = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_filetab == ((0 : GoUInt32)) || _linetab == ((0 : GoUInt32))) {
            return ((0 : GoUInt64));
        };
        var _fp:Slice<GoUInt8> = _t.value._pctab.__slice__(_filetab);
        var _fl:Slice<GoUInt8> = _t.value._pctab.__slice__(_linetab);
        var _fileVal:GoInt32 = ((-((1 : GoUnTypedInt)) : GoInt32));
        var _filePC:GoUInt64 = _entry;
        var _lineVal:GoInt32 = ((-((1 : GoUnTypedInt)) : GoInt32));
        var _linePC:GoUInt64 = _entry;
        var _fileStartPC:GoUInt64 = _filePC;
        while (_t.value._step(Go.pointer(_fp), Go.pointer(_filePC), Go.pointer(_fileVal), _filePC == _entry)) {
            var _fileIndex:GoInt32 = _fileVal;
            if (_t.value._version.__t__ == _ver116.__t__) {
                _fileIndex = ((_t.value._binary.uint32(_cutab.__slice__(_fileVal * ((4 : GoInt32)))) : GoInt32));
            };
            if (_fileIndex == _filenum && _fileStartPC < _filePC) {
                var _lineStartPC:GoUInt64 = _linePC;
                while (_linePC < _filePC && _t.value._step(Go.pointer(_fl), Go.pointer(_linePC), Go.pointer(_lineVal), _linePC == _entry)) {
                    if (_lineVal == _line) {
                        if (_fileStartPC <= _lineStartPC) {
                            return _lineStartPC;
                        };
                        if (_fileStartPC < _linePC) {
                            return _fileStartPC;
                        };
                    };
                    _lineStartPC = _linePC;
                };
            };
            _fileStartPC = _filePC;
        };
        return ((0 : GoUInt64));
    }
    public function _pcvalue(_off:GoUInt32, _entry:GoUInt64, _targetpc:GoUInt64):GoInt32 {
        var _t = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _p:Slice<GoUInt8> = _t.value._pctab.__slice__(_off);
        var _val:GoInt32 = ((-((1 : GoUnTypedInt)) : GoInt32));
        var _pc:GoUInt64 = _entry;
        while (_t.value._step(Go.pointer(_p), Go.pointer(_pc), Go.pointer(_val), _pc == _entry)) {
            if (_targetpc < _pc) {
                return _val;
            };
        };
        return -((1 : GoUnTypedInt));
    }
    public function _step(_p:Pointer<Slice<GoByte>>, _pc:Pointer<GoUInt64>, _val:Pointer<GoInt32>, _first:Bool):Bool {
        var _t = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _uvdelta:GoUInt32 = _t.value._readvarint(_p);
        if (_uvdelta == ((0 : GoUInt32)) && !_first) {
            return false;
        };
        if (_uvdelta & ((1 : GoUInt32)) != ((0 : GoUInt32))) {
            _uvdelta = -1 ^ ((_uvdelta >> ((1 : GoUnTypedInt))));
        } else {
            _uvdelta = (_uvdelta >> (((1 : GoUnTypedInt))));
        };
        var _vdelta:GoInt32 = ((_uvdelta : GoInt32));
        var _pcdelta:GoUInt32 = _t.value._readvarint(_p) * _t.value._quantum;
        _pc.value = _pc.value + (((_pcdelta : GoUInt64)));
        _val.value = _val.value + (_vdelta);
        return true;
    }
    public function _string(_off:GoUInt32):GoString {
        var _t = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return _t.value._stringFrom(_t.value._funcdata, _off);
    }
    public function _stringFrom(_arr:Slice<GoByte>, _off:GoUInt32):GoString {
        var _t = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        {
            var __tmp__ = _t.value._strings.exists(_off) ? { value : _t.value._strings[_off], ok : true } : { value : _t.value._strings.defaultValue(), ok : false }, _s:GoString = __tmp__.value, _ok:Bool = __tmp__.ok;
            if (_ok) {
                return _s;
            };
        };
        var _i:GoInt = stdgo.bytes.Bytes.indexByte(_arr.__slice__(_off), ((0 : GoUInt8)));
        var _s:GoString = ((_arr.__slice__(_off, _off + ((_i : GoUInt32))) : GoString));
        _t.value._strings[_off] = _s;
        return _s;
    }
    public function _funcName(_off:GoUInt32):GoString {
        var _t = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        {
            var __tmp__ = _t.value._funcNames.exists(_off) ? { value : _t.value._funcNames[_off], ok : true } : { value : _t.value._funcNames.defaultValue(), ok : false }, _s:GoString = __tmp__.value, _ok:Bool = __tmp__.ok;
            if (_ok) {
                return _s;
            };
        };
        var _i:GoInt = stdgo.bytes.Bytes.indexByte(_t.value._funcnametab.__slice__(_off), ((0 : GoUInt8)));
        var _s:GoString = ((_t.value._funcnametab.__slice__(_off, _off + ((_i : GoUInt32))) : GoString));
        _t.value._funcNames[_off] = _s;
        return _s;
    }
    public function _readvarint(_pp:Pointer<Slice<GoByte>>):GoUInt32 {
        var _t = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _v:GoUInt32 = ((0 : GoUInt32)), _shift:GoUInt32 = ((0 : GoUInt32));
        var _p:Slice<GoUInt8> = _pp.value;
        {
            _shift = ((0 : GoUInt32));
            Go.cfor(true, _shift = _shift + (((7 : GoUInt32))), {
                var _b:GoUInt8 = _p[((0 : GoInt))];
                _p = _p.__slice__(((1 : GoInt)));
                _v = _v | (((((_b : GoUInt32)) & ((127 : GoUInt32))) << _shift));
                if (_b & ((128 : GoUInt8)) == ((0 : GoUInt8))) {
                    break;
                };
            });
        };
        _pp.value = _p;
        return _v;
    }
    public function _findFunc(_pc:GoUInt64):Slice<GoByte> {
        var _t = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_pc < _t.value._uintptr(_t.value._functab) || _pc >= _t.value._uintptr(_t.value._functab.__slice__(_t.value._functab.length - ((_t.value._ptrsize : GoInt))))) {
            return new Slice<GoUInt8>().nil();
        };
        var _f:Slice<GoUInt8> = _t.value._functab;
        var _nf:GoUInt32 = _t.value._nfunctab;
        while (_nf > ((0 : GoUInt32))) {
            var _m:GoUInt32 = _nf / ((2 : GoUInt32));
            var _fm:Slice<GoUInt8> = _f.__slice__(((2 : GoUInt32)) * _t.value._ptrsize * _m);
            if (_t.value._uintptr(_fm) <= _pc && _pc < _t.value._uintptr(_fm.__slice__(((2 : GoUInt32)) * _t.value._ptrsize))) {
                return _t.value._funcdata.__slice__(_t.value._uintptr(_fm.__slice__(_t.value._ptrsize)));
            } else if (_pc < _t.value._uintptr(_fm)) {
                _nf = _m;
            } else {
                _f = _f.__slice__((_m + ((1 : GoUInt32))) * ((2 : GoUInt32)) * _t.value._ptrsize);
                _nf = _nf - (_m + ((1 : GoUInt32)));
            };
        };
        return new Slice<GoUInt8>().nil();
    }
    public function _go12Funcs():Slice<Func> {
        var _t = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var recover_exception:Error = null;
        var deferstack:Array<Void -> Void> = [];
        {
            deferstack.unshift(() -> {
                var a = function():Void {
                    var recover_exception:Error = null;
                    Go.recover();
                };
                a();
            });
        };
        try {
            var _n:GoInt = _t.value._functab.length / ((_t.value._ptrsize : GoInt)) / ((2 : GoInt));
            var _funcs:Slice<Func> = new Slice<Func>(...[for (i in 0 ... ((_n : GoInt)).toBasic()) new Func()]);
            {
                var _i;
                for (_obj in _funcs.keyValueIterator()) {
                    _i = _obj.key;
                    var _f:Pointer<Func> = Go.pointer(_funcs[_i]);
                    _f.value.entry = _t.value._uintptr(_t.value._functab.__slice__(((2 : GoInt)) * _i * ((_t.value._ptrsize : GoInt))));
                    _f.value.end = _t.value._uintptr(_t.value._functab.__slice__((((2 : GoInt)) * _i + ((2 : GoInt))) * ((_t.value._ptrsize : GoInt))));
                    var _info:Slice<GoUInt8> = _t.value._funcdata.__slice__(_t.value._uintptr(_t.value._functab.__slice__((((2 : GoInt)) * _i + ((1 : GoInt))) * ((_t.value._ptrsize : GoInt)))));
                    _f.value.lineTable = _t;
                    _f.value.frameSize = ((_t.value._binary.uint32(_info.__slice__(_t.value._ptrsize + ((2 : GoUnTypedInt)) * ((4 : GoUnTypedInt)))) : GoInt));
                    _f.value.sym = Go.pointer((({ value : _f.value.entry, type : (("T".code : GoRune)), name : _t.value._funcName(_t.value._binary.uint32(_info.__slice__(_t.value._ptrsize))), goType : ((0 : GoUInt64)), func : _f } : Sym)));
                };
            };
            {
                for (defer in deferstack) {
                    defer();
                };
                return _funcs;
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
                return new Slice<Func>().nil();
            };
        };
    }
    public function _parsePclnTab():Void {
        var _t = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var recover_exception:Error = null;
        var deferstack:Array<Void -> Void> = [];
        try {
            _t.value._mu.lock();
            deferstack.unshift(() -> _t.value._mu.unlock());
            if (_t.value._version.__t__ != _verUnknown.__t__) {
                {
                    for (defer in deferstack) {
                        defer();
                    };
                    return;
                };
            };
            _t.value._version = _ver11;
            {
                deferstack.unshift(() -> {
                    var a = function():Void {
                        var recover_exception:Error = null;
                        Go.recover();
                    };
                    a();
                });
            };
            if (_t.value.data.length < ((16 : GoInt)) || _t.value.data[((4 : GoInt))] != ((0 : GoUInt8)) || _t.value.data[((5 : GoInt))] != ((0 : GoUInt8)) || (_t.value.data[((6 : GoInt))] != ((1 : GoUInt8)) && _t.value.data[((6 : GoInt))] != ((2 : GoUInt8)) && _t.value.data[((6 : GoInt))] != ((4 : GoUInt8))) || (_t.value.data[((7 : GoInt))] != ((4 : GoUInt8)) && _t.value.data[((7 : GoInt))] != ((8 : GoUInt8)))) {
                {
                    for (defer in deferstack) {
                        defer();
                    };
                    return;
                };
            };
            var _possibleVersion:T_version = new T_version();
            var _leMagic:GoUInt32 = stdgo.encoding.binary.Binary.littleEndian.uint32(_t.value.data);
            var _beMagic:GoUInt32 = stdgo.encoding.binary.Binary.bigEndian.uint32(_t.value.data);
            if (_leMagic == _go12magic) {
                {
                    final __tmp__0 = stdgo.encoding.binary.Binary.littleEndian.__copy__();
                    final __tmp__1 = _ver12;
                    _t.value._binary = __tmp__0;
                    _possibleVersion = __tmp__1;
                };
            } else if (_beMagic == _go12magic) {
                {
                    final __tmp__0 = stdgo.encoding.binary.Binary.bigEndian.__copy__();
                    final __tmp__1 = _ver12;
                    _t.value._binary = __tmp__0;
                    _possibleVersion = __tmp__1;
                };
            } else if (_leMagic == _go116magic) {
                {
                    final __tmp__0 = stdgo.encoding.binary.Binary.littleEndian.__copy__();
                    final __tmp__1 = _ver116;
                    _t.value._binary = __tmp__0;
                    _possibleVersion = __tmp__1;
                };
            } else if (_beMagic == _go116magic) {
                {
                    final __tmp__0 = stdgo.encoding.binary.Binary.bigEndian.__copy__();
                    final __tmp__1 = _ver116;
                    _t.value._binary = __tmp__0;
                    _possibleVersion = __tmp__1;
                };
            } else {
                {
                    for (defer in deferstack) {
                        defer();
                    };
                    return;
                };
            };
            _t.value._quantum = ((_t.value.data[((6 : GoInt))] : GoUInt32));
            _t.value._ptrsize = ((_t.value.data[((7 : GoInt))] : GoUInt32));
            if (_possibleVersion.__t__ == _ver116.__t__) {
                _t.value._nfunctab = ((_t.value._uintptr(_t.value.data.__slice__(((8 : GoInt)))) : GoUInt32));
                _t.value._nfiletab = ((_t.value._uintptr(_t.value.data.__slice__(((8 : GoUInt32)) + _t.value._ptrsize)) : GoUInt32));
                var _offset:GoUInt64 = _t.value._uintptr(_t.value.data.__slice__(((8 : GoUInt32)) + ((2 : GoUInt32)) * _t.value._ptrsize));
                _t.value._funcnametab = _t.value.data.__slice__(_offset);
                _offset = _t.value._uintptr(_t.value.data.__slice__(((8 : GoUInt32)) + ((3 : GoUInt32)) * _t.value._ptrsize));
                _t.value._cutab = _t.value.data.__slice__(_offset);
                _offset = _t.value._uintptr(_t.value.data.__slice__(((8 : GoUInt32)) + ((4 : GoUInt32)) * _t.value._ptrsize));
                _t.value._filetab = _t.value.data.__slice__(_offset);
                _offset = _t.value._uintptr(_t.value.data.__slice__(((8 : GoUInt32)) + ((5 : GoUInt32)) * _t.value._ptrsize));
                _t.value._pctab = _t.value.data.__slice__(_offset);
                _offset = _t.value._uintptr(_t.value.data.__slice__(((8 : GoUInt32)) + ((6 : GoUInt32)) * _t.value._ptrsize));
                _t.value._funcdata = _t.value.data.__slice__(_offset);
                _t.value._functab = _t.value.data.__slice__(_offset);
                var _functabsize:GoUInt32 = _t.value._nfunctab * ((2 : GoUInt32)) * _t.value._ptrsize + _t.value._ptrsize;
                _t.value._functab = _t.value._functab.__slice__(0, _functabsize);
            } else if (_possibleVersion.__t__ == _ver12.__t__) {
                _t.value._nfunctab = ((_t.value._uintptr(_t.value.data.__slice__(((8 : GoInt)))) : GoUInt32));
                _t.value._funcdata = _t.value.data;
                _t.value._funcnametab = _t.value.data;
                _t.value._functab = _t.value.data.__slice__(((8 : GoUInt32)) + _t.value._ptrsize);
                _t.value._pctab = _t.value.data;
                var _functabsize:GoUInt32 = _t.value._nfunctab * ((2 : GoUInt32)) * _t.value._ptrsize + _t.value._ptrsize;
                var _fileoff:GoUInt32 = _t.value._binary.uint32(_t.value._functab.__slice__(_functabsize));
                _t.value._functab = _t.value._functab.__slice__(0, _functabsize);
                _t.value._filetab = _t.value.data.__slice__(_fileoff);
                _t.value._nfiletab = _t.value._binary.uint32(_t.value._filetab);
                _t.value._filetab = _t.value._filetab.__slice__(0, _t.value._nfiletab * ((4 : GoUInt32)));
            } else {
                throw "unreachable";
            };
            _t.value._version = _possibleVersion;
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
    public function _uintptr(_b:Slice<GoByte>):GoUInt64 {
        var _t = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_t.value._ptrsize == ((4 : GoUInt32))) {
            return ((_t.value._binary.uint32(_b) : GoUInt64));
        };
        return _t.value._binary.uint64(_b);
    }
    public function _isGo12():Bool {
        var _t = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        _t.value._parsePclnTab();
        return _t.value._version.__t__ >= _ver12.__t__;
    }
    public function lineToPC(_line:GoInt, _maxpc:GoUInt64):GoUInt64 {
        var _t = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_t.value._isGo12()) {
            return ((0 : GoUInt64));
        };
        var __tmp__ = _t.value._parse(_maxpc, _line), _:Slice<GoUInt8> = __tmp__._0, _pc:GoUInt64 = __tmp__._1, _line1:GoInt = __tmp__._2;
        if (_line1 != _line) {
            return ((0 : GoUInt64));
        };
        return _pc - _oldQuantum;
    }
    public function pctoLine(_pc:GoUInt64):GoInt {
        var _t = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_t.value._isGo12()) {
            return _t.value._go12PCToLine(_pc);
        };
        var __tmp__ = _t.value._parse(_pc, -((1 : GoUnTypedInt))), _:Slice<GoUInt8> = __tmp__._0, _:GoUInt64 = __tmp__._1, _line:GoInt = __tmp__._2;
        return _line;
    }
    public function _slice(_pc:GoUInt64):Pointer<LineTable> {
        var _t = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var __tmp__ = _t.value._parse(_pc, -((1 : GoUnTypedInt))), _data:Slice<GoUInt8> = __tmp__._0, _pc:GoUInt64 = __tmp__._1, _line:GoInt = __tmp__._2;
        return Go.pointer((({ data : _data, pc : _pc, line : _line, _mu : new stdgo.sync.Sync.Mutex(), _version : new T_version(), _binary : ((null : stdgo.encoding.binary.Binary.ByteOrder)), _quantum : 0, _ptrsize : 0, _funcnametab : new Slice<GoUInt8>().nil(), _cutab : new Slice<GoUInt8>().nil(), _funcdata : new Slice<GoUInt8>().nil(), _functab : new Slice<GoUInt8>().nil(), _nfunctab : 0, _filetab : new Slice<GoUInt8>().nil(), _pctab : new Slice<GoUInt8>().nil(), _nfiletab : 0, _funcNames : new GoMap<GoUInt32, GoString>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(uint32_kind), stdgo.reflect.Reflect.GoType.basic(string_kind)))).nil(), _strings : new GoMap<GoUInt32, GoString>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(uint32_kind), stdgo.reflect.Reflect.GoType.basic(string_kind)))).nil(), _fileMap : new GoMap<GoString, GoUInt32>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.basic(uint32_kind)))).nil() } : LineTable)));
    }
    public function _parse(_targetPC:GoUInt64, _targetLine:GoInt):{ var _0 : Slice<GoByte>; var _1 : GoUInt64; var _2 : GoInt; } {
        var _t = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _b:Slice<GoByte> = new Slice<GoUInt8>().nil(), _pc:GoUInt64 = ((0 : GoUInt64)), _line:GoInt = ((0 : GoInt));
        {
            final __tmp__0 = _t.value.data;
            final __tmp__1 = _t.value.pc;
            final __tmp__2 = _t.value.line;
            _b = __tmp__0;
            _pc = __tmp__1;
            _line = __tmp__2;
        };
        while (_pc <= _targetPC && _line != _targetLine && _b.length > ((0 : GoInt))) {
            var _code:GoUInt8 = _b[((0 : GoInt))];
            _b = _b.__slice__(((1 : GoInt)));
            {
                var __switchIndex__ = -1;
                while (true) {
                    if (_code == ((0 : GoUInt8))) {
                        if (_b.length < ((4 : GoInt))) {
                            _b = _b.__slice__(((0 : GoInt)), ((0 : GoInt)));
                            break;
                        };
                        var _val:GoUInt32 = stdgo.encoding.binary.Binary.bigEndian.uint32(_b);
                        _b = _b.__slice__(((4 : GoInt)));
                        _line = _line + (((_val : GoInt)));
                        break;
                    } else if (_code <= ((64 : GoUInt8))) {
                        _line = _line + (((_code : GoInt)));
                        break;
                    } else if (_code <= ((128 : GoUInt8))) {
                        _line = _line - ((((_code - ((64 : GoUInt8))) : GoInt)));
                        break;
                    } else {
                        _pc = _pc + (_oldQuantum * (((_code - ((128 : GoUInt8))) : GoUInt64)));
                        continue;
                    };
                    break;
                };
            };
            _pc = _pc + (_oldQuantum);
        };
        return { _0 : _b, _1 : _pc, _2 : _line };
    }
    public var data : Slice<GoUInt8> = new Slice<GoUInt8>().nil();
    public var pc : GoUInt64 = ((0 : GoUInt64));
    public var line : GoInt = ((0 : GoInt));
    public var _mu : stdgo.sync.Sync.Mutex = new stdgo.sync.Sync.Mutex();
    public var _version : T_version = new T_version();
    public var _binary : stdgo.encoding.binary.Binary.ByteOrder = ((null : stdgo.encoding.binary.Binary.ByteOrder));
    public var _quantum : GoUInt32 = ((0 : GoUInt32));
    public var _ptrsize : GoUInt32 = ((0 : GoUInt32));
    public var _funcnametab : Slice<GoUInt8> = new Slice<GoUInt8>().nil();
    public var _cutab : Slice<GoUInt8> = new Slice<GoUInt8>().nil();
    public var _funcdata : Slice<GoUInt8> = new Slice<GoUInt8>().nil();
    public var _functab : Slice<GoUInt8> = new Slice<GoUInt8>().nil();
    public var _nfunctab : GoUInt32 = ((0 : GoUInt32));
    public var _filetab : Slice<GoUInt8> = new Slice<GoUInt8>().nil();
    public var _pctab : Slice<GoUInt8> = new Slice<GoUInt8>().nil();
    public var _nfiletab : GoUInt32 = ((0 : GoUInt32));
    public var _funcNames : GoMap<GoUInt32, GoString> = new GoMap<GoUInt32, GoString>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(uint32_kind), stdgo.reflect.Reflect.GoType.basic(string_kind)))).nil();
    public var _strings : GoMap<GoUInt32, GoString> = new GoMap<GoUInt32, GoString>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(uint32_kind), stdgo.reflect.Reflect.GoType.basic(string_kind)))).nil();
    public var _fileMap : GoMap<GoString, GoUInt32> = new GoMap<GoString, GoUInt32>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.basic(uint32_kind)))).nil();
    public function new(?data:Slice<GoUInt8>, ?pc:GoUInt64, ?line:GoInt, ?_mu:stdgo.sync.Sync.Mutex, ?_version:T_version, ?_binary:stdgo.encoding.binary.Binary.ByteOrder, ?_quantum:GoUInt32, ?_ptrsize:GoUInt32, ?_funcnametab:Slice<GoUInt8>, ?_cutab:Slice<GoUInt8>, ?_funcdata:Slice<GoUInt8>, ?_functab:Slice<GoUInt8>, ?_nfunctab:GoUInt32, ?_filetab:Slice<GoUInt8>, ?_pctab:Slice<GoUInt8>, ?_nfiletab:GoUInt32, ?_funcNames:GoMap<GoUInt32, GoString>, ?_strings:GoMap<GoUInt32, GoString>, ?_fileMap:GoMap<GoString, GoUInt32>) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(data) + " " + Go.string(pc) + " " + Go.string(line) + " " + Go.string(_mu) + " " + Go.string(_version) + " " + Go.string(_binary) + " " + Go.string(_quantum) + " " + Go.string(_ptrsize) + " " + Go.string(_funcnametab) + " " + Go.string(_cutab) + " " + Go.string(_funcdata) + " " + Go.string(_functab) + " " + Go.string(_nfunctab) + " " + Go.string(_filetab) + " " + Go.string(_pctab) + " " + Go.string(_nfiletab) + " " + Go.string(_funcNames) + " " + Go.string(_strings) + " " + Go.string(_fileMap) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new LineTable(
data,
pc,
line,
_mu,
_version,
_binary,
_quantum,
_ptrsize,
_funcnametab,
_cutab,
_funcdata,
_functab,
_nfunctab,
_filetab,
_pctab,
_nfiletab,
_funcNames,
_strings,
_fileMap);
    }
    public function __set__(__tmp__) {
        this.data = __tmp__.data;
        this.pc = __tmp__.pc;
        this.line = __tmp__.line;
        this._mu = __tmp__._mu;
        this._version = __tmp__._version;
        this._binary = __tmp__._binary;
        this._quantum = __tmp__._quantum;
        this._ptrsize = __tmp__._ptrsize;
        this._funcnametab = __tmp__._funcnametab;
        this._cutab = __tmp__._cutab;
        this._funcdata = __tmp__._funcdata;
        this._functab = __tmp__._functab;
        this._nfunctab = __tmp__._nfunctab;
        this._filetab = __tmp__._filetab;
        this._pctab = __tmp__._pctab;
        this._nfiletab = __tmp__._nfiletab;
        this._funcNames = __tmp__._funcNames;
        this._strings = __tmp__._strings;
        this._fileMap = __tmp__._fileMap;
        return this;
    }
}
@:structInit class Sym {
    public function baseName():GoString {
        var _s = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        {
            var _i:GoInt = stdgo.strings.Strings.lastIndex(_s.value.name, ".");
            if (_i != -((1 : GoUnTypedInt))) {
                return _s.value.name.__slice__(_i + ((1 : GoInt)));
            };
        };
        return _s.value.name;
    }
    public function receiverName():GoString {
        var _s = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _pathend:GoInt = stdgo.strings.Strings.lastIndex(_s.value.name, "/");
        if (_pathend < ((0 : GoInt))) {
            _pathend = ((0 : GoInt));
        };
        var _l:GoInt = stdgo.strings.Strings.index(_s.value.name.__slice__(_pathend), ".");
        var _r:GoInt = stdgo.strings.Strings.lastIndex(_s.value.name.__slice__(_pathend), ".");
        if (_l == -((1 : GoUnTypedInt)) || _r == -((1 : GoUnTypedInt)) || _l == _r) {
            return "";
        };
        return _s.value.name.__slice__(_pathend + _l + ((1 : GoInt)), _pathend + _r);
    }
    public function packageName():GoString {
        var _s = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _name:GoString = _s.value.name;
        if (stdgo.strings.Strings.hasPrefix(_name, "go.") || stdgo.strings.Strings.hasPrefix(_name, "type.")) {
            return "";
        };
        var _pathend:GoInt = stdgo.strings.Strings.lastIndex(_name, "/");
        if (_pathend < ((0 : GoInt))) {
            _pathend = ((0 : GoInt));
        };
        {
            var _i:GoInt = stdgo.strings.Strings.index(_name.__slice__(_pathend), ".");
            if (_i != -((1 : GoUnTypedInt))) {
                return _name.__slice__(0, _pathend + _i);
            };
        };
        return "";
    }
    public function static_():Bool {
        var _s = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return _s.value.type >= (("a".code : GoRune));
    }
    public var value : GoUInt64 = ((0 : GoUInt64));
    public var type : GoUInt8 = ((0 : GoUInt8));
    public var name : GoString = (("" : GoString));
    public var goType : GoUInt64 = ((0 : GoUInt64));
    public var func : Pointer<Func> = new Pointer<Func>().nil();
    public function new(?value:GoUInt64, ?type:GoUInt8, ?name:GoString, ?goType:GoUInt64, ?func:Pointer<Func>) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(value) + " " + Go.string(type) + " " + Go.string(name) + " " + Go.string(goType) + " " + Go.string(func) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new Sym(value, type, name, goType, func);
    }
    public function __set__(__tmp__) {
        this.value = __tmp__.value;
        this.type = __tmp__.type;
        this.name = __tmp__.name;
        this.goType = __tmp__.goType;
        this.func = __tmp__.func;
        return this;
    }
}
@:structInit class Func {
    public var entry : GoUInt64 = ((0 : GoUInt64));
    @:embedded
    public var sym : Pointer<Sym> = new Pointer<Sym>().nil();
    public var end : GoUInt64 = ((0 : GoUInt64));
    public var params : Slice<Pointer<Sym>> = new Slice<Pointer<Sym>>().nil();
    public var locals : Slice<Pointer<Sym>> = new Slice<Pointer<Sym>>().nil();
    public var frameSize : GoInt = ((0 : GoInt));
    public var lineTable : Pointer<LineTable> = new Pointer<LineTable>().nil();
    public var obj : Pointer<Obj> = new Pointer<Obj>().nil();
    public function new(?entry:GoUInt64, ?sym:Pointer<Sym>, ?end:GoUInt64, ?params:Slice<Pointer<Sym>>, ?locals:Slice<Pointer<Sym>>, ?frameSize:GoInt, ?lineTable:Pointer<LineTable>, ?obj:Pointer<Obj>) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(entry) + " " + Go.string(sym) + " " + Go.string(end) + " " + Go.string(params) + " " + Go.string(locals) + " " + Go.string(frameSize) + " " + Go.string(lineTable) + " " + Go.string(obj) + "}";
    }
    public function baseName():GoString return sym.baseName();
    public function packageName():GoString return sym.packageName();
    public function receiverName():GoString return sym.receiverName();
    public function static_():Bool return sym.static_();
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new Func(entry, sym, end, params, locals, frameSize, lineTable, obj);
    }
    public function __set__(__tmp__) {
        this.entry = __tmp__.entry;
        this.sym = __tmp__.sym;
        this.end = __tmp__.end;
        this.params = __tmp__.params;
        this.locals = __tmp__.locals;
        this.frameSize = __tmp__.frameSize;
        this.lineTable = __tmp__.lineTable;
        this.obj = __tmp__.obj;
        return this;
    }
}
@:structInit class Obj {
    public function _alineFromLine(_path:GoString, _line:GoInt):{ var _0 : GoInt; var _1 : Error; } {
        var _o = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return stdgo.internal.Macro.controlFlow({
            if (_line < ((1 : GoInt))) {
                return { _0 : ((0 : GoInt)), _1 : Go.pointer(new UnknownLineError(_path, _line)).value };
            };
            {
                var _i;
                var _s;
                for (_obj in _o.value.paths.keyValueIterator()) {
                    _i = _obj.key;
                    _s = _obj.value;
                    if (_s.name != _path) {
                        continue;
                    };
                    var _depth:GoInt = ((0 : GoInt));
                    var _incstart:GoInt = ((0 : GoInt));
                    _line = _line + (((_s.value : GoInt)));
                    @:label("pathloop") for (_s in _o.value.paths.__slice__(_i)) {
                        var _val:GoInt = ((_s.value : GoInt));
                        {
                            var __switchIndex__ = -1;
                            while (true) {
                                if (_depth == ((1 : GoInt)) && _val >= _line) {
                                    return { _0 : _line - ((1 : GoInt)), _1 : ((null : stdgo.Error)) };
                                    break;
                                } else if (_s.name == (("" : GoString))) {
                                    _depth--;
                                    if (_depth == ((0 : GoInt))) {
                                        @:break {
                                            ____exit____ = true;
                                            ____break____ = true;
                                            break;
                                        };
                                    } else if (_depth == ((1 : GoInt))) {
                                        _line = _line + (_val - _incstart);
                                    };
                                    break;
                                } else {
                                    if (_depth == ((1 : GoInt))) {
                                        _incstart = _val;
                                    };
                                    _depth++;
                                };
                                break;
                            };
                        };
                    };
                    return { _0 : ((0 : GoInt)), _1 : Go.pointer(new UnknownLineError(_path, _line)).value };
                };
            };
            return { _0 : ((0 : GoInt)), _1 : new UnknownFileError(_path) };
        });
    }
    public function _lineFromAline(_aline:GoInt):{ var _0 : GoString; var _1 : GoInt; } {
        var _o = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return stdgo.internal.Macro.controlFlow({
            {};
            var _noPath:Pointer<T_stackEnt__lineFromAline_0> = Go.pointer(new T_stackEnt__lineFromAline_0("", ((0 : GoInt)), ((0 : GoInt)), new Pointer<T_stackEnt__lineFromAline_0>().nil()));
            var _tos:Pointer<T_stackEnt__lineFromAline_0> = _noPath;
            @:label("pathloop") for (_s in _o.value.paths) {
                var _val:GoInt = ((_s.value : GoInt));
                {
                    var __switchIndex__ = -1;
                    while (true) {
                        if (_val > _aline) {
                            @:break {
                                ____exit____ = true;
                                ____break____ = true;
                                break;
                            };
                            break;
                        } else if (_val == ((1 : GoInt))) {
                            _tos = Go.pointer(new T_stackEnt__lineFromAline_0(_s.name, _val, ((0 : GoInt)), _noPath));
                            break;
                        } else if (_s.name == (("" : GoString))) {
                            if (_tos == _noPath) {
                                return { _0 : "<malformed symbol table>", _1 : ((0 : GoInt)) };
                            };
                            _tos.value._prev.value._offset = _tos.value._prev.value._offset + (_val - _tos.value._start);
                            _tos = _tos.value._prev;
                            break;
                        } else {
                            _tos = Go.pointer(new T_stackEnt__lineFromAline_0(_s.name, _val, ((0 : GoInt)), _tos));
                        };
                        break;
                    };
                };
            };
            if (_tos == _noPath) {
                return { _0 : "", _1 : ((0 : GoInt)) };
            };
            return { _0 : _tos.value._path, _1 : _aline - _tos.value._start - _tos.value._offset + ((1 : GoInt)) };
        });
    }
    public var funcs : Slice<Func> = new Slice<Func>().nil();
    public var paths : Slice<Sym> = new Slice<Sym>().nil();
    public function new(?funcs:Slice<Func>, ?paths:Slice<Sym>) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(funcs) + " " + Go.string(paths) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new Obj(funcs, paths);
    }
    public function __set__(__tmp__) {
        this.funcs = __tmp__.funcs;
        this.paths = __tmp__.paths;
        return this;
    }
}
@:structInit class Table {
    public function symByAddr(_addr:GoUInt64):Pointer<Sym> {
        var _t = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        {
            var _i;
            for (_obj in _t.value.syms.keyValueIterator()) {
                _i = _obj.key;
                var _s:Pointer<Sym> = Go.pointer(_t.value.syms[_i]);
                if (_s.value.type == (("T".code : GoRune)) || _s.value.type == (("t".code : GoRune)) || _s.value.type == (("L".code : GoRune)) || _s.value.type == (("l".code : GoRune)) || _s.value.type == (("D".code : GoRune)) || _s.value.type == (("d".code : GoRune)) || _s.value.type == (("B".code : GoRune)) || _s.value.type == (("b".code : GoRune))) {
                    if (_s.value.value == _addr) {
                        return _s;
                    };
                };
            };
        };
        return new Pointer<Sym>().nil();
    }
    public function lookupFunc(_name:GoString):Pointer<Func> {
        var _t = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        {
            var _i;
            for (_obj in _t.value.funcs.keyValueIterator()) {
                _i = _obj.key;
                var _f:Pointer<Func> = Go.pointer(_t.value.funcs[_i]);
                if (_f.value.sym.value.name == _name) {
                    return _f;
                };
            };
        };
        return new Pointer<Func>().nil();
    }
    public function lookupSym(_name:GoString):Pointer<Sym> {
        var _t = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        {
            var _i;
            for (_obj in _t.value.syms.keyValueIterator()) {
                _i = _obj.key;
                var _s:Pointer<Sym> = Go.pointer(_t.value.syms[_i]);
                if (_s.value.type == (("T".code : GoRune)) || _s.value.type == (("t".code : GoRune)) || _s.value.type == (("L".code : GoRune)) || _s.value.type == (("l".code : GoRune)) || _s.value.type == (("D".code : GoRune)) || _s.value.type == (("d".code : GoRune)) || _s.value.type == (("B".code : GoRune)) || _s.value.type == (("b".code : GoRune))) {
                    if (_s.value.name == _name) {
                        return _s;
                    };
                };
            };
        };
        return new Pointer<Sym>().nil();
    }
    public function lineToPC(_file:GoString, _line:GoInt):{ var _0 : GoUInt64; var _1 : Pointer<Func>; var _2 : Error; } {
        var _t = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _pc:GoUInt64 = ((0 : GoUInt64)), _fn:Pointer<Func> = new Pointer<Func>().nil(), _err:Error = ((null : stdgo.Error));
        var __tmp__ = _t.value.files.exists(_file) ? { value : _t.value.files[_file], ok : true } : { value : _t.value.files.defaultValue(), ok : false }, _obj:Pointer<Obj> = __tmp__.value, _ok:Bool = __tmp__.ok;
        if (!_ok) {
            return { _0 : ((0 : GoUInt64)), _1 : new Pointer<Func>().nil(), _2 : new UnknownFileError(_file) };
        };
        if (_t.value._go12line != null && !_t.value._go12line.isNil()) {
            var _pc:GoUInt64 = _t.value._go12line.value._go12LineToPC(_file, _line);
            if (_pc == ((0 : GoUInt64))) {
                return { _0 : ((0 : GoUInt64)), _1 : new Pointer<Func>().nil(), _2 : Go.pointer(new UnknownLineError(_file, _line)).value };
            };
            return { _0 : _pc, _1 : _t.value.pctoFunc(_pc), _2 : ((null : stdgo.Error)) };
        };
        var __tmp__ = _obj.value._alineFromLine(_file, _line), _abs:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : _pc, _1 : _fn, _2 : _err };
        };
        {
            var _i;
            for (_obj in _obj.value.funcs.keyValueIterator()) {
                _i = _obj.key;
                var _f:Pointer<Func> = Go.pointer(_obj.value.funcs[_i]);
                var _pc:GoUInt64 = _f.value.lineTable.value.lineToPC(_abs, _f.value.end);
                if (_pc != ((0 : GoUInt64))) {
                    return { _0 : _pc, _1 : _f, _2 : ((null : stdgo.Error)) };
                };
            };
        };
        return { _0 : ((0 : GoUInt64)), _1 : new Pointer<Func>().nil(), _2 : Go.pointer(new UnknownLineError(_file, _line)).value };
    }
    public function pctoLine(_pc:GoUInt64):{ var _0 : GoString; var _1 : GoInt; var _2 : Pointer<Func>; } {
        var _t = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _file:GoString = (("" : GoString)), _line:GoInt = ((0 : GoInt)), _fn:Pointer<Func> = new Pointer<Func>().nil();
        {
            _fn = _t.value.pctoFunc(_pc);
            if (_fn == null || _fn.isNil()) {
                return { _0 : _file, _1 : _line, _2 : _fn };
            };
        };
        if (_t.value._go12line != null && !_t.value._go12line.isNil()) {
            _file = _t.value._go12line.value._go12PCToFile(_pc);
            _line = _t.value._go12line.value._go12PCToLine(_pc);
        } else {
            {
                var __tmp__ = _fn.value.obj.value._lineFromAline(_fn.value.lineTable.value.pctoLine(_pc));
                _file = __tmp__._0;
                _line = __tmp__._1;
            };
        };
        return { _0 : _file, _1 : _line, _2 : _fn };
    }
    public function pctoFunc(_pc:GoUInt64):Pointer<Func> {
        var _t = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _funcs:Slice<Func> = _t.value.funcs;
        while (_funcs.length > ((0 : GoInt))) {
            var _m:GoInt = _funcs.length / ((2 : GoInt));
            var _fn:Pointer<Func> = Go.pointer(_funcs[_m]);
            if (_pc < _fn.value.entry) {
                _funcs = _funcs.__slice__(((0 : GoInt)), _m);
            } else if (_fn.value.entry <= _pc && _pc < _fn.value.end) {
                return _fn;
            } else {
                _funcs = _funcs.__slice__(_m + ((1 : GoInt)));
            };
        };
        return new Pointer<Func>().nil();
    }
    public var syms : Slice<Sym> = new Slice<Sym>().nil();
    public var funcs : Slice<Func> = new Slice<Func>().nil();
    public var files : GoMap<GoString, Pointer<Obj>> = new GoMap<GoString, Pointer<Obj>>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("debug/gosym.Obj", [], stdgo.reflect.Reflect.GoType.named("debug/gosym.Obj", [], stdgo.reflect.Reflect.GoType.structType([{ name : "funcs", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("debug/gosym.Func", [], stdgo.reflect.Reflect.GoType.named("debug/gosym.Func", [], stdgo.reflect.Reflect.GoType.structType([{ name : "entry", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) }, { name : "sym", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("debug/gosym.Sym", [], stdgo.reflect.Reflect.GoType.named("debug/gosym.Sym", [], stdgo.reflect.Reflect.GoType.structType([{ name : "value", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) }, { name : "type", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint8_kind) }, { name : "name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "goType", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) }, { name : "func", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("debug/gosym.Func", [], stdgo.reflect.Reflect.GoType.structType([{ name : "entry", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) }, { name : "sym", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("debug/gosym.Sym", [], stdgo.reflect.Reflect.GoType.structType([{ name : "value", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) }, { name : "type", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint8_kind) }, { name : "name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "goType", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) }, { name : "func", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("debug/gosym.Func", [], stdgo.reflect.Reflect.GoType.invalidType)) }]))) }, { name : "end", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) }, { name : "params", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("debug/gosym.Sym", [], stdgo.reflect.Reflect.GoType.invalidType))) }, { name : "locals", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("debug/gosym.Sym", [], stdgo.reflect.Reflect.GoType.invalidType))) }, { name : "frameSize", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) }, { name : "lineTable", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("debug/gosym.LineTable", [], stdgo.reflect.Reflect.GoType.named("debug/gosym.LineTable", [], stdgo.reflect.Reflect.GoType.structType([
{ name : "data", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind)) },
{ name : "pc", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) },
{ name : "line", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) },
{ name : "_mu", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("sync.Mutex", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_state", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int32_kind) }, { name : "_sema", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint32_kind) }])) },
{ name : "_version", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("debug/gosym.version", [], stdgo.reflect.Reflect.GoType.basic(int_kind)) },
{ name : "_binary", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("encoding/binary.ByteOrder", [], stdgo.reflect.Reflect.GoType.interfaceType(false, [])) },
{ name : "_quantum", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint32_kind) },
{ name : "_ptrsize", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint32_kind) },
{ name : "_funcnametab", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind)) },
{ name : "_cutab", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind)) },
{ name : "_funcdata", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind)) },
{ name : "_functab", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind)) },
{ name : "_nfunctab", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint32_kind) },
{ name : "_filetab", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind)) },
{ name : "_pctab", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind)) },
{ name : "_nfiletab", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint32_kind) },
{ name : "_funcNames", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(uint32_kind), stdgo.reflect.Reflect.GoType.basic(string_kind)) },
{ name : "_strings", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(uint32_kind), stdgo.reflect.Reflect.GoType.basic(string_kind)) },
{ name : "_fileMap", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.basic(uint32_kind)) }])))) }, { name : "obj", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("debug/gosym.Obj", [], stdgo.reflect.Reflect.GoType.structType([{ name : "funcs", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("debug/gosym.Func", [], stdgo.reflect.Reflect.GoType.invalidType)) }, { name : "paths", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("debug/gosym.Sym", [], stdgo.reflect.Reflect.GoType.invalidType)) }]))) }]))) }])))) }, { name : "end", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) }, { name : "params", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("debug/gosym.Sym", [], stdgo.reflect.Reflect.GoType.named("debug/gosym.Sym", [], stdgo.reflect.Reflect.GoType.structType([{ name : "value", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) }, { name : "type", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint8_kind) }, { name : "name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "goType", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) }, { name : "func", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("debug/gosym.Func", [], stdgo.reflect.Reflect.GoType.structType([{ name : "entry", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) }, { name : "sym", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("debug/gosym.Sym", [], stdgo.reflect.Reflect.GoType.structType([{ name : "value", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) }, { name : "type", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint8_kind) }, { name : "name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "goType", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) }, { name : "func", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("debug/gosym.Func", [], stdgo.reflect.Reflect.GoType.invalidType)) }]))) }, { name : "end", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) }, { name : "params", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("debug/gosym.Sym", [], stdgo.reflect.Reflect.GoType.invalidType))) }, { name : "locals", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("debug/gosym.Sym", [], stdgo.reflect.Reflect.GoType.invalidType))) }, { name : "frameSize", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) }, { name : "lineTable", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("debug/gosym.LineTable", [], stdgo.reflect.Reflect.GoType.named("debug/gosym.LineTable", [], stdgo.reflect.Reflect.GoType.structType([
{ name : "data", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind)) },
{ name : "pc", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) },
{ name : "line", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) },
{ name : "_mu", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("sync.Mutex", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_state", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int32_kind) }, { name : "_sema", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint32_kind) }])) },
{ name : "_version", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("debug/gosym.version", [], stdgo.reflect.Reflect.GoType.basic(int_kind)) },
{ name : "_binary", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("encoding/binary.ByteOrder", [], stdgo.reflect.Reflect.GoType.interfaceType(false, [])) },
{ name : "_quantum", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint32_kind) },
{ name : "_ptrsize", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint32_kind) },
{ name : "_funcnametab", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind)) },
{ name : "_cutab", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind)) },
{ name : "_funcdata", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind)) },
{ name : "_functab", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind)) },
{ name : "_nfunctab", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint32_kind) },
{ name : "_filetab", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind)) },
{ name : "_pctab", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind)) },
{ name : "_nfiletab", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint32_kind) },
{ name : "_funcNames", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(uint32_kind), stdgo.reflect.Reflect.GoType.basic(string_kind)) },
{ name : "_strings", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(uint32_kind), stdgo.reflect.Reflect.GoType.basic(string_kind)) },
{ name : "_fileMap", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.basic(uint32_kind)) }])))) }, { name : "obj", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("debug/gosym.Obj", [], stdgo.reflect.Reflect.GoType.structType([{ name : "funcs", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("debug/gosym.Func", [], stdgo.reflect.Reflect.GoType.invalidType)) }, { name : "paths", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("debug/gosym.Sym", [], stdgo.reflect.Reflect.GoType.invalidType)) }]))) }]))) }]))))) }, { name : "locals", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("debug/gosym.Sym", [], stdgo.reflect.Reflect.GoType.named("debug/gosym.Sym", [], stdgo.reflect.Reflect.GoType.structType([{ name : "value", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) }, { name : "type", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint8_kind) }, { name : "name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "goType", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) }, { name : "func", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("debug/gosym.Func", [], stdgo.reflect.Reflect.GoType.structType([{ name : "entry", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) }, { name : "sym", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("debug/gosym.Sym", [], stdgo.reflect.Reflect.GoType.structType([{ name : "value", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) }, { name : "type", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint8_kind) }, { name : "name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "goType", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) }, { name : "func", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("debug/gosym.Func", [], stdgo.reflect.Reflect.GoType.invalidType)) }]))) }, { name : "end", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) }, { name : "params", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("debug/gosym.Sym", [], stdgo.reflect.Reflect.GoType.invalidType))) }, { name : "locals", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("debug/gosym.Sym", [], stdgo.reflect.Reflect.GoType.invalidType))) }, { name : "frameSize", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) }, { name : "lineTable", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("debug/gosym.LineTable", [], stdgo.reflect.Reflect.GoType.named("debug/gosym.LineTable", [], stdgo.reflect.Reflect.GoType.structType([
{ name : "data", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind)) },
{ name : "pc", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) },
{ name : "line", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) },
{ name : "_mu", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("sync.Mutex", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_state", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int32_kind) }, { name : "_sema", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint32_kind) }])) },
{ name : "_version", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("debug/gosym.version", [], stdgo.reflect.Reflect.GoType.basic(int_kind)) },
{ name : "_binary", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("encoding/binary.ByteOrder", [], stdgo.reflect.Reflect.GoType.interfaceType(false, [])) },
{ name : "_quantum", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint32_kind) },
{ name : "_ptrsize", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint32_kind) },
{ name : "_funcnametab", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind)) },
{ name : "_cutab", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind)) },
{ name : "_funcdata", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind)) },
{ name : "_functab", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind)) },
{ name : "_nfunctab", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint32_kind) },
{ name : "_filetab", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind)) },
{ name : "_pctab", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind)) },
{ name : "_nfiletab", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint32_kind) },
{ name : "_funcNames", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(uint32_kind), stdgo.reflect.Reflect.GoType.basic(string_kind)) },
{ name : "_strings", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(uint32_kind), stdgo.reflect.Reflect.GoType.basic(string_kind)) },
{ name : "_fileMap", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.basic(uint32_kind)) }])))) }, { name : "obj", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("debug/gosym.Obj", [], stdgo.reflect.Reflect.GoType.structType([{ name : "funcs", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("debug/gosym.Func", [], stdgo.reflect.Reflect.GoType.invalidType)) }, { name : "paths", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("debug/gosym.Sym", [], stdgo.reflect.Reflect.GoType.invalidType)) }]))) }]))) }]))))) }, { name : "frameSize", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) }, { name : "lineTable", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("debug/gosym.LineTable", [], stdgo.reflect.Reflect.GoType.named("debug/gosym.LineTable", [], stdgo.reflect.Reflect.GoType.structType([
{ name : "data", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind)) },
{ name : "pc", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) },
{ name : "line", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) },
{ name : "_mu", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("sync.Mutex", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_state", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int32_kind) }, { name : "_sema", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint32_kind) }])) },
{ name : "_version", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("debug/gosym.version", [], stdgo.reflect.Reflect.GoType.basic(int_kind)) },
{ name : "_binary", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("encoding/binary.ByteOrder", [], stdgo.reflect.Reflect.GoType.interfaceType(false, [])) },
{ name : "_quantum", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint32_kind) },
{ name : "_ptrsize", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint32_kind) },
{ name : "_funcnametab", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind)) },
{ name : "_cutab", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind)) },
{ name : "_funcdata", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind)) },
{ name : "_functab", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind)) },
{ name : "_nfunctab", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint32_kind) },
{ name : "_filetab", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind)) },
{ name : "_pctab", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind)) },
{ name : "_nfiletab", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint32_kind) },
{ name : "_funcNames", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(uint32_kind), stdgo.reflect.Reflect.GoType.basic(string_kind)) },
{ name : "_strings", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(uint32_kind), stdgo.reflect.Reflect.GoType.basic(string_kind)) },
{ name : "_fileMap", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.basic(uint32_kind)) }])))) }, { name : "obj", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("debug/gosym.Obj", [], stdgo.reflect.Reflect.GoType.structType([{ name : "funcs", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("debug/gosym.Func", [], stdgo.reflect.Reflect.GoType.structType([{ name : "entry", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) }, { name : "sym", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("debug/gosym.Sym", [], stdgo.reflect.Reflect.GoType.named("debug/gosym.Sym", [], stdgo.reflect.Reflect.GoType.structType([{ name : "value", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) }, { name : "type", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint8_kind) }, { name : "name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "goType", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) }, { name : "func", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("debug/gosym.Func", [], stdgo.reflect.Reflect.GoType.structType([{ name : "entry", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) }, { name : "sym", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("debug/gosym.Sym", [], stdgo.reflect.Reflect.GoType.structType([{ name : "value", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) }, { name : "type", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint8_kind) }, { name : "name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "goType", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) }, { name : "func", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("debug/gosym.Func", [], stdgo.reflect.Reflect.GoType.invalidType)) }]))) }, { name : "end", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) }, { name : "params", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("debug/gosym.Sym", [], stdgo.reflect.Reflect.GoType.invalidType))) }, { name : "locals", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("debug/gosym.Sym", [], stdgo.reflect.Reflect.GoType.invalidType))) }, { name : "frameSize", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) }, { name : "lineTable", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("debug/gosym.LineTable", [], stdgo.reflect.Reflect.GoType.named("debug/gosym.LineTable", [], stdgo.reflect.Reflect.GoType.structType([
{ name : "data", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind)) },
{ name : "pc", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) },
{ name : "line", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) },
{ name : "_mu", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("sync.Mutex", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_state", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int32_kind) }, { name : "_sema", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint32_kind) }])) },
{ name : "_version", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("debug/gosym.version", [], stdgo.reflect.Reflect.GoType.basic(int_kind)) },
{ name : "_binary", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("encoding/binary.ByteOrder", [], stdgo.reflect.Reflect.GoType.interfaceType(false, [])) },
{ name : "_quantum", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint32_kind) },
{ name : "_ptrsize", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint32_kind) },
{ name : "_funcnametab", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind)) },
{ name : "_cutab", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind)) },
{ name : "_funcdata", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind)) },
{ name : "_functab", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind)) },
{ name : "_nfunctab", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint32_kind) },
{ name : "_filetab", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind)) },
{ name : "_pctab", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind)) },
{ name : "_nfiletab", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint32_kind) },
{ name : "_funcNames", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(uint32_kind), stdgo.reflect.Reflect.GoType.basic(string_kind)) },
{ name : "_strings", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(uint32_kind), stdgo.reflect.Reflect.GoType.basic(string_kind)) },
{ name : "_fileMap", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.basic(uint32_kind)) }])))) }, { name : "obj", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("debug/gosym.Obj", [], stdgo.reflect.Reflect.GoType.structType([{ name : "funcs", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("debug/gosym.Func", [], stdgo.reflect.Reflect.GoType.invalidType)) }, { name : "paths", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("debug/gosym.Sym", [], stdgo.reflect.Reflect.GoType.invalidType)) }]))) }]))) }])))) }, { name : "end", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) }, { name : "params", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("debug/gosym.Sym", [], stdgo.reflect.Reflect.GoType.invalidType))) }, { name : "locals", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("debug/gosym.Sym", [], stdgo.reflect.Reflect.GoType.invalidType))) }, { name : "frameSize", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) }, { name : "lineTable", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("debug/gosym.LineTable", [], stdgo.reflect.Reflect.GoType.named("debug/gosym.LineTable", [], stdgo.reflect.Reflect.GoType.structType([
{ name : "data", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind)) },
{ name : "pc", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) },
{ name : "line", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) },
{ name : "_mu", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("sync.Mutex", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_state", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int32_kind) }, { name : "_sema", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint32_kind) }])) },
{ name : "_version", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("debug/gosym.version", [], stdgo.reflect.Reflect.GoType.basic(int_kind)) },
{ name : "_binary", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("encoding/binary.ByteOrder", [], stdgo.reflect.Reflect.GoType.interfaceType(false, [])) },
{ name : "_quantum", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint32_kind) },
{ name : "_ptrsize", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint32_kind) },
{ name : "_funcnametab", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind)) },
{ name : "_cutab", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind)) },
{ name : "_funcdata", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind)) },
{ name : "_functab", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind)) },
{ name : "_nfunctab", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint32_kind) },
{ name : "_filetab", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind)) },
{ name : "_pctab", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind)) },
{ name : "_nfiletab", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint32_kind) },
{ name : "_funcNames", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(uint32_kind), stdgo.reflect.Reflect.GoType.basic(string_kind)) },
{ name : "_strings", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(uint32_kind), stdgo.reflect.Reflect.GoType.basic(string_kind)) },
{ name : "_fileMap", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.basic(uint32_kind)) }])))) }, { name : "obj", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("debug/gosym.Obj", [], stdgo.reflect.Reflect.GoType.invalidType)) }]))) }, { name : "paths", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("debug/gosym.Sym", [], stdgo.reflect.Reflect.GoType.invalidType)) }]))) }])))) }, { name : "paths", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("debug/gosym.Sym", [], stdgo.reflect.Reflect.GoType.named("debug/gosym.Sym", [], stdgo.reflect.Reflect.GoType.structType([{ name : "value", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) }, { name : "type", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint8_kind) }, { name : "name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "goType", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) }, { name : "func", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("debug/gosym.Func", [], stdgo.reflect.Reflect.GoType.structType([{ name : "entry", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) }, { name : "sym", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("debug/gosym.Sym", [], stdgo.reflect.Reflect.GoType.structType([{ name : "value", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) }, { name : "type", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint8_kind) }, { name : "name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "goType", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) }, { name : "func", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("debug/gosym.Func", [], stdgo.reflect.Reflect.GoType.invalidType)) }]))) }, { name : "end", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) }, { name : "params", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("debug/gosym.Sym", [], stdgo.reflect.Reflect.GoType.invalidType))) }, { name : "locals", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("debug/gosym.Sym", [], stdgo.reflect.Reflect.GoType.invalidType))) }, { name : "frameSize", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) }, { name : "lineTable", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("debug/gosym.LineTable", [], stdgo.reflect.Reflect.GoType.named("debug/gosym.LineTable", [], stdgo.reflect.Reflect.GoType.structType([
{ name : "data", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind)) },
{ name : "pc", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) },
{ name : "line", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) },
{ name : "_mu", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("sync.Mutex", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_state", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int32_kind) }, { name : "_sema", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint32_kind) }])) },
{ name : "_version", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("debug/gosym.version", [], stdgo.reflect.Reflect.GoType.basic(int_kind)) },
{ name : "_binary", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("encoding/binary.ByteOrder", [], stdgo.reflect.Reflect.GoType.interfaceType(false, [])) },
{ name : "_quantum", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint32_kind) },
{ name : "_ptrsize", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint32_kind) },
{ name : "_funcnametab", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind)) },
{ name : "_cutab", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind)) },
{ name : "_funcdata", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind)) },
{ name : "_functab", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind)) },
{ name : "_nfunctab", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint32_kind) },
{ name : "_filetab", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind)) },
{ name : "_pctab", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind)) },
{ name : "_nfiletab", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint32_kind) },
{ name : "_funcNames", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(uint32_kind), stdgo.reflect.Reflect.GoType.basic(string_kind)) },
{ name : "_strings", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(uint32_kind), stdgo.reflect.Reflect.GoType.basic(string_kind)) },
{ name : "_fileMap", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.basic(uint32_kind)) }])))) }, { name : "obj", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("debug/gosym.Obj", [], stdgo.reflect.Reflect.GoType.structType([{ name : "funcs", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("debug/gosym.Func", [], stdgo.reflect.Reflect.GoType.invalidType)) }, { name : "paths", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("debug/gosym.Sym", [], stdgo.reflect.Reflect.GoType.invalidType)) }]))) }]))) }])))) }]))))))).nil();
    public var objs : Slice<Obj> = new Slice<Obj>().nil();
    public var _go12line : Pointer<LineTable> = new Pointer<LineTable>().nil();
    public function new(?syms:Slice<Sym>, ?funcs:Slice<Func>, ?files:GoMap<GoString, Pointer<Obj>>, ?objs:Slice<Obj>, ?_go12line:Pointer<LineTable>) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(syms) + " " + Go.string(funcs) + " " + Go.string(files) + " " + Go.string(objs) + " " + Go.string(_go12line) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new Table(syms, funcs, files, objs, _go12line);
    }
    public function __set__(__tmp__) {
        this.syms = __tmp__.syms;
        this.funcs = __tmp__.funcs;
        this.files = __tmp__.files;
        this.objs = __tmp__.objs;
        this._go12line = __tmp__._go12line;
        return this;
    }
}
@:structInit class T_sym {
    public var _value : GoUInt64 = ((0 : GoUInt64));
    public var _gotype : GoUInt64 = ((0 : GoUInt64));
    public var _typ : GoUInt8 = ((0 : GoUInt8));
    public var _name : Slice<GoUInt8> = new Slice<GoUInt8>().nil();
    public function new(?_value:GoUInt64, ?_gotype:GoUInt64, ?_typ:GoUInt8, ?_name:Slice<GoUInt8>) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(_value) + " " + Go.string(_gotype) + " " + Go.string(_typ) + " " + Go.string(_name) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_sym(_value, _gotype, _typ, _name);
    }
    public function __set__(__tmp__) {
        this._value = __tmp__._value;
        this._gotype = __tmp__._gotype;
        this._typ = __tmp__._typ;
        this._name = __tmp__._name;
        return this;
    }
}
@:named class UnknownFileError {
    public function error():GoString {
        var _e = this.__copy__();
        return (("unknown file: " : GoString)) + _e.__t__;
    }
    public var __t__ : GoString;
    public function new(?t:GoString) {
        __t__ = t == null ? "" : t;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    @:implicit
    public function toString():GoString return Go.string(__t__);
    public function __copy__() return new UnknownFileError(__t__);
}
@:structInit class UnknownLineError {
    public function error():GoString {
        var _e = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return (("no code at " : GoString)) + _e.value.file + ((":" : GoString)) + stdgo.strconv.Strconv.itoa(_e.value.line);
    }
    public var file : GoString = (("" : GoString));
    public var line : GoInt = ((0 : GoInt));
    public function new(?file:GoString, ?line:GoInt) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(file) + " " + Go.string(line) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new UnknownLineError(file, line);
    }
    public function __set__(__tmp__) {
        this.file = __tmp__.file;
        this.line = __tmp__.line;
        return this;
    }
}
@:structInit class DecodingError {
    public function error():GoString {
        var _e = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _msg:GoString = _e.value._msg;
        if (_e.value._val != null) {
            _msg = _msg + (stdgo.fmt.Fmt.sprintf(" \'%v\'", Go.toInterface(_e.value._val)));
        };
        _msg = _msg + (stdgo.fmt.Fmt.sprintf(" at byte %#x", Go.toInterface(_e.value._off)));
        return _msg;
    }
    public var _off : GoInt = ((0 : GoInt));
    public var _msg : GoString = (("" : GoString));
    public var _val : AnyInterface = ((null : AnyInterface));
    public function new(?_off:GoInt, ?_msg:GoString, ?_val:AnyInterface) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(_off) + " " + Go.string(_msg) + " " + Go.string(_val) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new DecodingError(_off, _msg, _val);
    }
    public function __set__(__tmp__) {
        this._off = __tmp__._off;
        this._msg = __tmp__._msg;
        this._val = __tmp__._val;
        return this;
    }
}
var _oldLittleEndianSymtab : Slice<GoUInt8> = new Slice<GoUInt8>(((254 : GoUInt8)), ((255 : GoUInt8)), ((255 : GoUInt8)), ((255 : GoUInt8)), ((0 : GoUInt8)), ((0 : GoUInt8)));
final _go12magic : GoInt64 = (("4294967291" : GoUnTypedInt));
final _oldQuantum : GoInt64 = ((1 : GoUnTypedInt));
var _bigEndianSymtab : Slice<GoUInt8> = new Slice<GoUInt8>(((255 : GoUInt8)), ((255 : GoUInt8)), ((255 : GoUInt8)), ((253 : GoUInt8)), ((0 : GoUInt8)), ((0 : GoUInt8)), ((0 : GoUInt8)));
var _littleEndianSymtab : Slice<GoUInt8> = new Slice<GoUInt8>(((253 : GoUInt8)), ((255 : GoUInt8)), ((255 : GoUInt8)), ((255 : GoUInt8)), ((0 : GoUInt8)), ((0 : GoUInt8)), ((0 : GoUInt8)));
final _go116magic : GoInt64 = (("4294967290" : GoUnTypedInt));
final _ver11 : T_version = new T_version((1 : GoUnTypedInt));
final _ver12 : T_version = new T_version((2 : GoUnTypedInt));
final _ver116 : T_version = new T_version((3 : GoUnTypedInt));
final _verUnknown : T_version = new T_version((0 : GoUnTypedInt));
/**
    // NewLineTable returns a new PC/line table
    // corresponding to the encoded data.
    // Text must be the start address of the
    // corresponding text segment.
**/
function newLineTable(_data:Slice<GoByte>, _text:GoUInt64):Pointer<LineTable> {
        return Go.pointer((({ data : _data, pc : _text, line : ((0 : GoInt)), _funcNames : new GoMap<GoUInt32, GoString>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(uint32_kind), stdgo.reflect.Reflect.GoType.basic(string_kind)))), _strings : new GoMap<GoUInt32, GoString>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(uint32_kind), stdgo.reflect.Reflect.GoType.basic(string_kind)))), _mu : new stdgo.sync.Sync.Mutex(), _version : new T_version(), _binary : ((null : stdgo.encoding.binary.Binary.ByteOrder)), _quantum : 0, _ptrsize : 0, _funcnametab : new Slice<GoUInt8>().nil(), _cutab : new Slice<GoUInt8>().nil(), _funcdata : new Slice<GoUInt8>().nil(), _functab : new Slice<GoUInt8>().nil(), _nfunctab : 0, _filetab : new Slice<GoUInt8>().nil(), _pctab : new Slice<GoUInt8>().nil(), _nfiletab : 0, _fileMap : new GoMap<GoString, GoUInt32>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.basic(uint32_kind)))).nil() } : LineTable)));
    }
function _walksymtab(_data:Slice<GoByte>, _fn:T_sym -> Error):Error {
        if (_data.length == ((0 : GoInt))) {
            return ((null : stdgo.Error));
        };
        var _order:stdgo.encoding.binary.Binary.ByteOrder = stdgo.encoding.binary.Binary.bigEndian.__copy__();
        var _newTable:Bool = false;
        if (stdgo.bytes.Bytes.hasPrefix(_data, _oldLittleEndianSymtab)) {
            _data = _data.__slice__(((6 : GoInt)));
            _order = stdgo.encoding.binary.Binary.littleEndian.__copy__();
        } else if (stdgo.bytes.Bytes.hasPrefix(_data, _bigEndianSymtab)) {
            _newTable = true;
        } else if (stdgo.bytes.Bytes.hasPrefix(_data, _littleEndianSymtab)) {
            _newTable = true;
            _order = stdgo.encoding.binary.Binary.littleEndian.__copy__();
        };
        var _ptrsz:GoInt = ((0 : GoInt));
        if (_newTable) {
            if (_data.length < ((8 : GoInt))) {
                return Go.pointer(new DecodingError(_data.length, "unexpected EOF", ((null : AnyInterface)))).value;
            };
            _ptrsz = ((_data[((7 : GoInt))] : GoInt));
            if (_ptrsz != ((4 : GoInt)) && _ptrsz != ((8 : GoInt))) {
                return Go.pointer(new DecodingError(((7 : GoInt)), "invalid pointer size", Go.toInterface(_ptrsz))).value;
            };
            _data = _data.__slice__(((8 : GoInt)));
        };
        var _s:T_sym = new T_sym();
        var _p:Slice<GoUInt8> = _data;
        while (_p.length >= ((4 : GoInt))) {
            var _typ:GoByte = ((0 : GoUInt8));
            if (_newTable) {
                _typ = _p[((0 : GoInt))] & ((63 : GoUInt8));
                var _wideValue:Bool = _p[((0 : GoInt))] & ((64 : GoUInt8)) != ((0 : GoUInt8));
                var _goType:Bool = _p[((0 : GoInt))] & ((128 : GoUInt8)) != ((0 : GoUInt8));
                if (_typ < ((26 : GoUInt8))) {
                    _typ = _typ + ((("A".code : GoRune)));
                } else {
                    _typ = _typ + ((("a".code : GoRune)) - ((26 : GoInt32)));
                };
                _s._typ = _typ;
                _p = _p.__slice__(((1 : GoInt)));
                if (_wideValue) {
                    if (_p.length < _ptrsz) {
                        return Go.pointer(new DecodingError(_data.length, "unexpected EOF", ((null : AnyInterface)))).value;
                    };
                    if (_ptrsz == ((8 : GoInt))) {
                        _s._value = _order.uint64(_p.__slice__(((0 : GoInt)), ((8 : GoInt))));
                        _p = _p.__slice__(((8 : GoInt)));
                    } else {
                        _s._value = ((_order.uint32(_p.__slice__(((0 : GoInt)), ((4 : GoInt)))) : GoUInt64));
                        _p = _p.__slice__(((4 : GoInt)));
                    };
                } else {
                    _s._value = ((0 : GoUInt64));
                    var _shift:GoUInt = ((((0 : GoUInt)) : GoUInt));
                    while (_p.length > ((0 : GoInt)) && _p[((0 : GoInt))] & ((128 : GoUInt8)) != ((0 : GoUInt8))) {
                        _s._value = _s._value | (((((_p[((0 : GoInt))] & ((127 : GoUInt8))) : GoUInt64)) << _shift));
                        _shift = _shift + (((7 : GoUInt)));
                        _p = _p.__slice__(((1 : GoInt)));
                    };
                    if (_p.length == ((0 : GoInt))) {
                        return Go.pointer(new DecodingError(_data.length, "unexpected EOF", ((null : AnyInterface)))).value;
                    };
                    _s._value = _s._value | ((((_p[((0 : GoInt))] : GoUInt64)) << _shift));
                    _p = _p.__slice__(((1 : GoInt)));
                };
                if (_goType) {
                    if (_p.length < _ptrsz) {
                        return Go.pointer(new DecodingError(_data.length, "unexpected EOF", ((null : AnyInterface)))).value;
                    };
                    if (_ptrsz == ((8 : GoInt))) {
                        _s._gotype = _order.uint64(_p.__slice__(((0 : GoInt)), ((8 : GoInt))));
                        _p = _p.__slice__(((8 : GoInt)));
                    } else {
                        _s._gotype = ((_order.uint32(_p.__slice__(((0 : GoInt)), ((4 : GoInt)))) : GoUInt64));
                        _p = _p.__slice__(((4 : GoInt)));
                    };
                };
            } else {
                _s._value = ((_order.uint32(_p.__slice__(((0 : GoInt)), ((4 : GoInt)))) : GoUInt64));
                if (_p.length < ((5 : GoInt))) {
                    return Go.pointer(new DecodingError(_data.length, "unexpected EOF", ((null : AnyInterface)))).value;
                };
                _typ = _p[((4 : GoInt))];
                if (_typ & ((128 : GoUInt8)) == ((0 : GoUInt8))) {
                    return Go.pointer(new DecodingError(_data.length - _p.length + ((4 : GoInt)), "bad symbol type", Go.toInterface(_typ))).value;
                };
                _typ = (_typ & (((128 : GoUInt8)))) ^ ((-1 : GoUnTypedInt));
                _s._typ = _typ;
                _p = _p.__slice__(((5 : GoInt)));
            };
            var _i:GoInt = ((0 : GoInt));
            var _nnul:GoInt = ((0 : GoInt));
            {
                _i = ((0 : GoInt));
                Go.cfor(_i < _p.length, _i++, {
                    if (_p[_i] == ((0 : GoUInt8))) {
                        _nnul = ((1 : GoInt));
                        break;
                    };
                });
            };
            {
                var __switchIndex__ = -1;
                while (true) {
                    if (_typ == (("z".code : GoRune)) || _typ == (("Z".code : GoRune))) {
                        _p = _p.__slice__(_i + _nnul);
                        {
                            _i = ((0 : GoInt));
                            Go.cfor(_i + ((2 : GoInt)) <= _p.length, _i = _i + (((2 : GoInt))), {
                                if (_p[_i] == ((0 : GoUInt8)) && _p[_i + ((1 : GoInt))] == ((0 : GoUInt8))) {
                                    _nnul = ((2 : GoInt));
                                    break;
                                };
                            });
                        };
                        break;
                    };
                    break;
                };
            };
            if (_p.length < _i + _nnul) {
                return Go.pointer(new DecodingError(_data.length, "unexpected EOF", ((null : AnyInterface)))).value;
            };
            _s._name = _p.__slice__(((0 : GoInt)), _i);
            _i = _i + (_nnul);
            _p = _p.__slice__(_i);
            if (!_newTable) {
                if (_p.length < ((4 : GoInt))) {
                    return Go.pointer(new DecodingError(_data.length, "unexpected EOF", ((null : AnyInterface)))).value;
                };
                _s._gotype = ((_order.uint32(_p.__slice__(0, ((4 : GoInt)))) : GoUInt64));
                _p = _p.__slice__(((4 : GoInt)));
            };
            _fn(_s.__copy__());
        };
        return ((null : stdgo.Error));
    }
/**
    // NewTable decodes the Go symbol table (the ".gosymtab" section in ELF),
    // returning an in-memory representation.
    // Starting with Go 1.3, the Go symbol table no longer includes symbol data.
**/
function newTable(_symtab:Slice<GoByte>, _pcln:Pointer<LineTable>):{ var _0 : Pointer<Table>; var _1 : Error; } {
        return stdgo.internal.Macro.controlFlow({
            var _n:GoInt = ((0 : GoInt));
            var _err:stdgo.Error = _walksymtab(_symtab, function(_s:T_sym):Error {
                _n++;
                return ((null : stdgo.Error));
            });
            if (_err != null) {
                return { _0 : new Pointer<Table>().nil(), _1 : _err };
            };
            var _t:Table = new Table();
            if (_pcln.value._isGo12()) {
                _t._go12line = _pcln;
            };
            var _fname:GoMap<GoUInt16, GoString> = new GoMap<GoUInt16, GoString>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(uint16_kind), stdgo.reflect.Reflect.GoType.basic(string_kind))));
            _t.syms = new Slice<Sym>(...[for (i in 0 ... ((((0 : GoInt)) : GoInt)).toBasic()) new Sym()]).setCap(((_n : GoInt)).toBasic());
            var _nf:GoInt = ((0 : GoInt));
            var _nz:GoInt = ((0 : GoInt));
            var _lasttyp:GoUInt8 = ((((0 : GoUInt8)) : GoUInt8));
            _err = _walksymtab(_symtab, function(_s:T_sym):Error {
                var _n:GoInt = _t.syms.length;
                _t.syms = _t.syms.__slice__(((0 : GoInt)), _n + ((1 : GoInt)));
                var _ts:Pointer<Sym> = Go.pointer(_t.syms[_n]);
                _ts.value.type = _s._typ;
                _ts.value.value = _s._value;
                _ts.value.goType = _s._gotype;
                if (_s._typ == (("z".code : GoRune)) || _s._typ == (("Z".code : GoRune))) {
                    if (_lasttyp != (("z".code : GoRune)) && _lasttyp != (("Z".code : GoRune))) {
                        _nz++;
                    };
                    {
                        var _i:GoInt = ((0 : GoInt));
                        Go.cfor(_i < _s._name.length, _i = _i + (((2 : GoInt))), {
                            var _eltIdx:GoUInt16 = stdgo.encoding.binary.Binary.bigEndian.uint16(_s._name.__slice__(_i, _i + ((2 : GoInt))));
                            var __tmp__ = _fname.exists(_eltIdx) ? { value : _fname[_eltIdx], ok : true } : { value : _fname.defaultValue(), ok : false }, _elt:GoString = __tmp__.value, _ok:Bool = __tmp__.ok;
                            if (!_ok) {
                                return Go.pointer(new DecodingError(-((1 : GoUnTypedInt)), "bad filename code", Go.toInterface(_eltIdx))).value;
                            };
                            {
                                var _n:GoInt = _ts.value.name.length;
                                if (_n > ((0 : GoInt)) && _ts.value.name[_n - ((1 : GoInt))] != (("/".code : GoRune))) {
                                    _ts.value.name = _ts.value.name + ("/");
                                };
                            };
                            _ts.value.name = _ts.value.name + (_elt);
                        });
                    };
                };
                if (_s._typ == (("T".code : GoRune)) || _s._typ == (("t".code : GoRune)) || _s._typ == (("L".code : GoRune)) || _s._typ == (("l".code : GoRune))) {
                    _nf++;
                } else if (_s._typ == (("f".code : GoRune))) {
                    _fname[((_s._value : GoUInt16))] = _ts.value.name;
                };
                _lasttyp = _s._typ;
                return ((null : stdgo.Error));
            });
            if (_err != null) {
                return { _0 : new Pointer<Table>().nil(), _1 : _err };
            };
            _t.funcs = new Slice<Func>(...[for (i in 0 ... ((((0 : GoInt)) : GoInt)).toBasic()) new Func()]).setCap(((_nf : GoInt)).toBasic());
            _t.files = new GoMap<GoString, Pointer<Obj>>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("debug/gosym.Obj", [], stdgo.reflect.Reflect.GoType.named("debug/gosym.Obj", [], stdgo.reflect.Reflect.GoType.structType([{ name : "funcs", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("debug/gosym.Func", [], stdgo.reflect.Reflect.GoType.named("debug/gosym.Func", [], stdgo.reflect.Reflect.GoType.structType([{ name : "entry", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) }, { name : "sym", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("debug/gosym.Sym", [], stdgo.reflect.Reflect.GoType.named("debug/gosym.Sym", [], stdgo.reflect.Reflect.GoType.structType([{ name : "value", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) }, { name : "type", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint8_kind) }, { name : "name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "goType", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) }, { name : "func", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("debug/gosym.Func", [], stdgo.reflect.Reflect.GoType.structType([{ name : "entry", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) }, { name : "sym", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("debug/gosym.Sym", [], stdgo.reflect.Reflect.GoType.structType([{ name : "value", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) }, { name : "type", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint8_kind) }, { name : "name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "goType", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) }, { name : "func", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("debug/gosym.Func", [], stdgo.reflect.Reflect.GoType.invalidType)) }]))) }, { name : "end", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) }, { name : "params", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("debug/gosym.Sym", [], stdgo.reflect.Reflect.GoType.invalidType))) }, { name : "locals", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("debug/gosym.Sym", [], stdgo.reflect.Reflect.GoType.invalidType))) }, { name : "frameSize", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) }, { name : "lineTable", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("debug/gosym.LineTable", [], stdgo.reflect.Reflect.GoType.named("debug/gosym.LineTable", [], stdgo.reflect.Reflect.GoType.structType([
{ name : "data", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind)) },
{ name : "pc", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) },
{ name : "line", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) },
{ name : "_mu", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("sync.Mutex", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_state", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int32_kind) }, { name : "_sema", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint32_kind) }])) },
{ name : "_version", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("debug/gosym.version", [], stdgo.reflect.Reflect.GoType.basic(int_kind)) },
{ name : "_binary", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("encoding/binary.ByteOrder", [], stdgo.reflect.Reflect.GoType.interfaceType(false, [])) },
{ name : "_quantum", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint32_kind) },
{ name : "_ptrsize", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint32_kind) },
{ name : "_funcnametab", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind)) },
{ name : "_cutab", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind)) },
{ name : "_funcdata", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind)) },
{ name : "_functab", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind)) },
{ name : "_nfunctab", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint32_kind) },
{ name : "_filetab", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind)) },
{ name : "_pctab", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind)) },
{ name : "_nfiletab", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint32_kind) },
{ name : "_funcNames", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(uint32_kind), stdgo.reflect.Reflect.GoType.basic(string_kind)) },
{ name : "_strings", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(uint32_kind), stdgo.reflect.Reflect.GoType.basic(string_kind)) },
{ name : "_fileMap", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.basic(uint32_kind)) }])))) }, { name : "obj", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("debug/gosym.Obj", [], stdgo.reflect.Reflect.GoType.structType([{ name : "funcs", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("debug/gosym.Func", [], stdgo.reflect.Reflect.GoType.invalidType)) }, { name : "paths", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("debug/gosym.Sym", [], stdgo.reflect.Reflect.GoType.invalidType)) }]))) }]))) }])))) }, { name : "end", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) }, { name : "params", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("debug/gosym.Sym", [], stdgo.reflect.Reflect.GoType.named("debug/gosym.Sym", [], stdgo.reflect.Reflect.GoType.structType([{ name : "value", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) }, { name : "type", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint8_kind) }, { name : "name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "goType", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) }, { name : "func", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("debug/gosym.Func", [], stdgo.reflect.Reflect.GoType.structType([{ name : "entry", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) }, { name : "sym", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("debug/gosym.Sym", [], stdgo.reflect.Reflect.GoType.structType([{ name : "value", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) }, { name : "type", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint8_kind) }, { name : "name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "goType", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) }, { name : "func", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("debug/gosym.Func", [], stdgo.reflect.Reflect.GoType.invalidType)) }]))) }, { name : "end", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) }, { name : "params", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("debug/gosym.Sym", [], stdgo.reflect.Reflect.GoType.invalidType))) }, { name : "locals", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("debug/gosym.Sym", [], stdgo.reflect.Reflect.GoType.invalidType))) }, { name : "frameSize", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) }, { name : "lineTable", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("debug/gosym.LineTable", [], stdgo.reflect.Reflect.GoType.named("debug/gosym.LineTable", [], stdgo.reflect.Reflect.GoType.structType([
{ name : "data", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind)) },
{ name : "pc", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) },
{ name : "line", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) },
{ name : "_mu", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("sync.Mutex", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_state", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int32_kind) }, { name : "_sema", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint32_kind) }])) },
{ name : "_version", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("debug/gosym.version", [], stdgo.reflect.Reflect.GoType.basic(int_kind)) },
{ name : "_binary", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("encoding/binary.ByteOrder", [], stdgo.reflect.Reflect.GoType.interfaceType(false, [])) },
{ name : "_quantum", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint32_kind) },
{ name : "_ptrsize", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint32_kind) },
{ name : "_funcnametab", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind)) },
{ name : "_cutab", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind)) },
{ name : "_funcdata", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind)) },
{ name : "_functab", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind)) },
{ name : "_nfunctab", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint32_kind) },
{ name : "_filetab", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind)) },
{ name : "_pctab", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind)) },
{ name : "_nfiletab", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint32_kind) },
{ name : "_funcNames", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(uint32_kind), stdgo.reflect.Reflect.GoType.basic(string_kind)) },
{ name : "_strings", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(uint32_kind), stdgo.reflect.Reflect.GoType.basic(string_kind)) },
{ name : "_fileMap", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.basic(uint32_kind)) }])))) }, { name : "obj", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("debug/gosym.Obj", [], stdgo.reflect.Reflect.GoType.structType([{ name : "funcs", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("debug/gosym.Func", [], stdgo.reflect.Reflect.GoType.invalidType)) }, { name : "paths", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("debug/gosym.Sym", [], stdgo.reflect.Reflect.GoType.invalidType)) }]))) }]))) }]))))) }, { name : "locals", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("debug/gosym.Sym", [], stdgo.reflect.Reflect.GoType.named("debug/gosym.Sym", [], stdgo.reflect.Reflect.GoType.structType([{ name : "value", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) }, { name : "type", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint8_kind) }, { name : "name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "goType", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) }, { name : "func", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("debug/gosym.Func", [], stdgo.reflect.Reflect.GoType.structType([{ name : "entry", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) }, { name : "sym", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("debug/gosym.Sym", [], stdgo.reflect.Reflect.GoType.structType([{ name : "value", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) }, { name : "type", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint8_kind) }, { name : "name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "goType", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) }, { name : "func", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("debug/gosym.Func", [], stdgo.reflect.Reflect.GoType.invalidType)) }]))) }, { name : "end", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) }, { name : "params", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("debug/gosym.Sym", [], stdgo.reflect.Reflect.GoType.invalidType))) }, { name : "locals", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("debug/gosym.Sym", [], stdgo.reflect.Reflect.GoType.invalidType))) }, { name : "frameSize", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) }, { name : "lineTable", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("debug/gosym.LineTable", [], stdgo.reflect.Reflect.GoType.named("debug/gosym.LineTable", [], stdgo.reflect.Reflect.GoType.structType([
{ name : "data", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind)) },
{ name : "pc", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) },
{ name : "line", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) },
{ name : "_mu", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("sync.Mutex", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_state", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int32_kind) }, { name : "_sema", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint32_kind) }])) },
{ name : "_version", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("debug/gosym.version", [], stdgo.reflect.Reflect.GoType.basic(int_kind)) },
{ name : "_binary", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("encoding/binary.ByteOrder", [], stdgo.reflect.Reflect.GoType.interfaceType(false, [])) },
{ name : "_quantum", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint32_kind) },
{ name : "_ptrsize", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint32_kind) },
{ name : "_funcnametab", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind)) },
{ name : "_cutab", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind)) },
{ name : "_funcdata", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind)) },
{ name : "_functab", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind)) },
{ name : "_nfunctab", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint32_kind) },
{ name : "_filetab", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind)) },
{ name : "_pctab", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind)) },
{ name : "_nfiletab", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint32_kind) },
{ name : "_funcNames", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(uint32_kind), stdgo.reflect.Reflect.GoType.basic(string_kind)) },
{ name : "_strings", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(uint32_kind), stdgo.reflect.Reflect.GoType.basic(string_kind)) },
{ name : "_fileMap", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.basic(uint32_kind)) }])))) }, { name : "obj", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("debug/gosym.Obj", [], stdgo.reflect.Reflect.GoType.structType([{ name : "funcs", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("debug/gosym.Func", [], stdgo.reflect.Reflect.GoType.invalidType)) }, { name : "paths", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("debug/gosym.Sym", [], stdgo.reflect.Reflect.GoType.invalidType)) }]))) }]))) }]))))) }, { name : "frameSize", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) }, { name : "lineTable", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("debug/gosym.LineTable", [], stdgo.reflect.Reflect.GoType.named("debug/gosym.LineTable", [], stdgo.reflect.Reflect.GoType.structType([
{ name : "data", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind)) },
{ name : "pc", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) },
{ name : "line", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) },
{ name : "_mu", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("sync.Mutex", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_state", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int32_kind) }, { name : "_sema", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint32_kind) }])) },
{ name : "_version", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("debug/gosym.version", [], stdgo.reflect.Reflect.GoType.basic(int_kind)) },
{ name : "_binary", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("encoding/binary.ByteOrder", [], stdgo.reflect.Reflect.GoType.interfaceType(false, [])) },
{ name : "_quantum", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint32_kind) },
{ name : "_ptrsize", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint32_kind) },
{ name : "_funcnametab", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind)) },
{ name : "_cutab", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind)) },
{ name : "_funcdata", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind)) },
{ name : "_functab", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind)) },
{ name : "_nfunctab", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint32_kind) },
{ name : "_filetab", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind)) },
{ name : "_pctab", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind)) },
{ name : "_nfiletab", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint32_kind) },
{ name : "_funcNames", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(uint32_kind), stdgo.reflect.Reflect.GoType.basic(string_kind)) },
{ name : "_strings", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(uint32_kind), stdgo.reflect.Reflect.GoType.basic(string_kind)) },
{ name : "_fileMap", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.basic(uint32_kind)) }])))) }, { name : "obj", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("debug/gosym.Obj", [], stdgo.reflect.Reflect.GoType.structType([{ name : "funcs", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("debug/gosym.Func", [], stdgo.reflect.Reflect.GoType.structType([{ name : "entry", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) }, { name : "sym", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("debug/gosym.Sym", [], stdgo.reflect.Reflect.GoType.named("debug/gosym.Sym", [], stdgo.reflect.Reflect.GoType.structType([{ name : "value", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) }, { name : "type", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint8_kind) }, { name : "name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "goType", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) }, { name : "func", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("debug/gosym.Func", [], stdgo.reflect.Reflect.GoType.structType([{ name : "entry", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) }, { name : "sym", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("debug/gosym.Sym", [], stdgo.reflect.Reflect.GoType.structType([{ name : "value", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) }, { name : "type", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint8_kind) }, { name : "name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "goType", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) }, { name : "func", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("debug/gosym.Func", [], stdgo.reflect.Reflect.GoType.invalidType)) }]))) }, { name : "end", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) }, { name : "params", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("debug/gosym.Sym", [], stdgo.reflect.Reflect.GoType.invalidType))) }, { name : "locals", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("debug/gosym.Sym", [], stdgo.reflect.Reflect.GoType.invalidType))) }, { name : "frameSize", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) }, { name : "lineTable", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("debug/gosym.LineTable", [], stdgo.reflect.Reflect.GoType.named("debug/gosym.LineTable", [], stdgo.reflect.Reflect.GoType.structType([
{ name : "data", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind)) },
{ name : "pc", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) },
{ name : "line", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) },
{ name : "_mu", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("sync.Mutex", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_state", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int32_kind) }, { name : "_sema", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint32_kind) }])) },
{ name : "_version", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("debug/gosym.version", [], stdgo.reflect.Reflect.GoType.basic(int_kind)) },
{ name : "_binary", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("encoding/binary.ByteOrder", [], stdgo.reflect.Reflect.GoType.interfaceType(false, [])) },
{ name : "_quantum", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint32_kind) },
{ name : "_ptrsize", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint32_kind) },
{ name : "_funcnametab", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind)) },
{ name : "_cutab", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind)) },
{ name : "_funcdata", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind)) },
{ name : "_functab", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind)) },
{ name : "_nfunctab", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint32_kind) },
{ name : "_filetab", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind)) },
{ name : "_pctab", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind)) },
{ name : "_nfiletab", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint32_kind) },
{ name : "_funcNames", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(uint32_kind), stdgo.reflect.Reflect.GoType.basic(string_kind)) },
{ name : "_strings", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(uint32_kind), stdgo.reflect.Reflect.GoType.basic(string_kind)) },
{ name : "_fileMap", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.basic(uint32_kind)) }])))) }, { name : "obj", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("debug/gosym.Obj", [], stdgo.reflect.Reflect.GoType.structType([{ name : "funcs", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("debug/gosym.Func", [], stdgo.reflect.Reflect.GoType.invalidType)) }, { name : "paths", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("debug/gosym.Sym", [], stdgo.reflect.Reflect.GoType.invalidType)) }]))) }]))) }])))) }, { name : "end", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) }, { name : "params", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("debug/gosym.Sym", [], stdgo.reflect.Reflect.GoType.invalidType))) }, { name : "locals", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("debug/gosym.Sym", [], stdgo.reflect.Reflect.GoType.invalidType))) }, { name : "frameSize", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) }, { name : "lineTable", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("debug/gosym.LineTable", [], stdgo.reflect.Reflect.GoType.named("debug/gosym.LineTable", [], stdgo.reflect.Reflect.GoType.structType([
{ name : "data", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind)) },
{ name : "pc", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) },
{ name : "line", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) },
{ name : "_mu", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("sync.Mutex", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_state", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int32_kind) }, { name : "_sema", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint32_kind) }])) },
{ name : "_version", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("debug/gosym.version", [], stdgo.reflect.Reflect.GoType.basic(int_kind)) },
{ name : "_binary", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("encoding/binary.ByteOrder", [], stdgo.reflect.Reflect.GoType.interfaceType(false, [])) },
{ name : "_quantum", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint32_kind) },
{ name : "_ptrsize", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint32_kind) },
{ name : "_funcnametab", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind)) },
{ name : "_cutab", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind)) },
{ name : "_funcdata", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind)) },
{ name : "_functab", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind)) },
{ name : "_nfunctab", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint32_kind) },
{ name : "_filetab", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind)) },
{ name : "_pctab", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind)) },
{ name : "_nfiletab", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint32_kind) },
{ name : "_funcNames", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(uint32_kind), stdgo.reflect.Reflect.GoType.basic(string_kind)) },
{ name : "_strings", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(uint32_kind), stdgo.reflect.Reflect.GoType.basic(string_kind)) },
{ name : "_fileMap", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.basic(uint32_kind)) }])))) }, { name : "obj", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("debug/gosym.Obj", [], stdgo.reflect.Reflect.GoType.invalidType)) }]))) }, { name : "paths", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("debug/gosym.Sym", [], stdgo.reflect.Reflect.GoType.invalidType)) }]))) }])))) }, { name : "paths", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("debug/gosym.Sym", [], stdgo.reflect.Reflect.GoType.named("debug/gosym.Sym", [], stdgo.reflect.Reflect.GoType.structType([{ name : "value", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) }, { name : "type", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint8_kind) }, { name : "name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "goType", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) }, { name : "func", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("debug/gosym.Func", [], stdgo.reflect.Reflect.GoType.structType([{ name : "entry", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) }, { name : "sym", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("debug/gosym.Sym", [], stdgo.reflect.Reflect.GoType.structType([{ name : "value", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) }, { name : "type", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint8_kind) }, { name : "name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "goType", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) }, { name : "func", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("debug/gosym.Func", [], stdgo.reflect.Reflect.GoType.invalidType)) }]))) }, { name : "end", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) }, { name : "params", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("debug/gosym.Sym", [], stdgo.reflect.Reflect.GoType.invalidType))) }, { name : "locals", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("debug/gosym.Sym", [], stdgo.reflect.Reflect.GoType.invalidType))) }, { name : "frameSize", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) }, { name : "lineTable", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("debug/gosym.LineTable", [], stdgo.reflect.Reflect.GoType.named("debug/gosym.LineTable", [], stdgo.reflect.Reflect.GoType.structType([
{ name : "data", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind)) },
{ name : "pc", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) },
{ name : "line", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) },
{ name : "_mu", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("sync.Mutex", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_state", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int32_kind) }, { name : "_sema", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint32_kind) }])) },
{ name : "_version", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("debug/gosym.version", [], stdgo.reflect.Reflect.GoType.basic(int_kind)) },
{ name : "_binary", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("encoding/binary.ByteOrder", [], stdgo.reflect.Reflect.GoType.interfaceType(false, [])) },
{ name : "_quantum", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint32_kind) },
{ name : "_ptrsize", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint32_kind) },
{ name : "_funcnametab", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind)) },
{ name : "_cutab", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind)) },
{ name : "_funcdata", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind)) },
{ name : "_functab", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind)) },
{ name : "_nfunctab", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint32_kind) },
{ name : "_filetab", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind)) },
{ name : "_pctab", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind)) },
{ name : "_nfiletab", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint32_kind) },
{ name : "_funcNames", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(uint32_kind), stdgo.reflect.Reflect.GoType.basic(string_kind)) },
{ name : "_strings", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(uint32_kind), stdgo.reflect.Reflect.GoType.basic(string_kind)) },
{ name : "_fileMap", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.basic(uint32_kind)) }])))) }, { name : "obj", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("debug/gosym.Obj", [], stdgo.reflect.Reflect.GoType.structType([{ name : "funcs", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("debug/gosym.Func", [], stdgo.reflect.Reflect.GoType.invalidType)) }, { name : "paths", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("debug/gosym.Sym", [], stdgo.reflect.Reflect.GoType.invalidType)) }]))) }]))) }])))) }])))))));
            var _obj:Pointer<Obj> = new Pointer<Obj>().nil();
            if (_t._go12line != null && !_t._go12line.isNil()) {
                _t.objs = new Slice<Obj>(...[for (i in 0 ... ((((1 : GoInt)) : GoInt)).toBasic()) new Obj()]);
                _obj = Go.pointer(_t.objs[((0 : GoInt))]);
                _t._go12line.value._go12MapFiles(_t.files, _obj);
            } else {
                _t.objs = new Slice<Obj>(...[for (i in 0 ... ((((0 : GoInt)) : GoInt)).toBasic()) new Obj()]).setCap(((_nz : GoInt)).toBasic());
            };
            var _lastf:GoInt = ((0 : GoInt));
            {
                var _i:GoInt = ((0 : GoInt));
                Go.cfor(_i < _t.syms.length, _i++, {
                    var _sym:Pointer<Sym> = Go.pointer(_t.syms[_i]);
                    if (_sym.value.type == (("Z".code : GoRune)) || _sym.value.type == (("z".code : GoRune))) {
                        if (_t._go12line != null && !_t._go12line.isNil()) {
                            break;
                        };
                        if (_obj != null && !_obj.isNil()) {
                            _obj.value.funcs = _t.funcs.__slice__(_lastf);
                        };
                        _lastf = _t.funcs.length;
                        var _n:GoInt = _t.objs.length;
                        _t.objs = _t.objs.__slice__(((0 : GoInt)), _n + ((1 : GoInt)));
                        _obj = Go.pointer(_t.objs[_n]);
                        var _end:GoInt = ((0 : GoInt));
                        {
                            _end = _i + ((1 : GoInt));
                            Go.cfor(_end < _t.syms.length, _end++, {
                                {
                                    var _c:GoUInt8 = _t.syms[_end].type;
                                    if (_c != (("Z".code : GoRune)) && _c != (("z".code : GoRune))) {
                                        break;
                                    };
                                };
                            });
                        };
                        _obj.value.paths = _t.syms.__slice__(_i, _end);
                        _i = _end - ((1 : GoInt));
                        var _depth:GoInt = ((0 : GoInt));
                        {
                            var _j;
                            for (_obj in _obj.value.paths.keyValueIterator()) {
                                _j = _obj.key;
                                var _s:Pointer<Sym> = Go.pointer(_obj.value.paths[_j]);
                                if (_s.value.name == (("" : GoString))) {
                                    _depth--;
                                } else {
                                    if (_depth == ((0 : GoInt))) {
                                        _t.files[_s.value.name] = _obj;
                                    };
                                    _depth++;
                                };
                            };
                        };
                    } else if (_sym.value.type == (("T".code : GoRune)) || _sym.value.type == (("t".code : GoRune)) || _sym.value.type == (("L".code : GoRune)) || _sym.value.type == (("l".code : GoRune))) {
                        {
                            var _n:GoInt = _t.funcs.length;
                            if (_n > ((0 : GoInt))) {
                                _t.funcs[_n - ((1 : GoInt))].end = _sym.value.value;
                            };
                        };
                        if (_sym.value.name == (("runtime.etext" : GoString)) || _sym.value.name == (("etext" : GoString))) {
                            continue;
                        };
                        var _np:GoInt = ((0 : GoInt)), _na:GoInt = ((0 : GoInt));
                        var _end:GoInt = ((0 : GoInt));
                        @:label("countloop") {
                            _end = _i + ((1 : GoInt));
                            Go.cfor(_end < _t.syms.length, _end++, {
                                {
                                    var __switchIndex__ = -1;
                                    while (true) {
                                        if (_t.syms[_end].type == (("T".code : GoRune)) || _t.syms[_end].type == (("t".code : GoRune)) || _t.syms[_end].type == (("L".code : GoRune)) || _t.syms[_end].type == (("l".code : GoRune)) || _t.syms[_end].type == (("Z".code : GoRune)) || _t.syms[_end].type == (("z".code : GoRune))) {
                                            @:break {
                                                ____exit____ = true;
                                                ____break____ = true;
                                                break;
                                            };
                                            break;
                                        } else if (_t.syms[_end].type == (("p".code : GoRune))) {
                                            _np++;
                                            break;
                                        } else if (_t.syms[_end].type == (("a".code : GoRune))) {
                                            _na++;
                                            break;
                                        };
                                        break;
                                    };
                                };
                            });
                        };
                        var _n:GoInt = _t.funcs.length;
                        _t.funcs = _t.funcs.__slice__(((0 : GoInt)), _n + ((1 : GoInt)));
                        var _fn:Pointer<Func> = Go.pointer(_t.funcs[_n]);
                        _sym.value.func = _fn;
                        _fn.value.params = new Slice<Pointer<Sym>>(...[for (i in 0 ... ((((0 : GoInt)) : GoInt)).toBasic()) new Pointer<Sym>().nil()]).setCap(((_np : GoInt)).toBasic());
                        _fn.value.locals = new Slice<Pointer<Sym>>(...[for (i in 0 ... ((((0 : GoInt)) : GoInt)).toBasic()) new Pointer<Sym>().nil()]).setCap(((_na : GoInt)).toBasic());
                        _fn.value.sym = _sym;
                        _fn.value.entry = _sym.value.value;
                        _fn.value.obj = _obj;
                        if (_t._go12line != null && !_t._go12line.isNil()) {
                            _fn.value.lineTable = _t._go12line;
                        } else if (_pcln != null && !_pcln.isNil()) {
                            _fn.value.lineTable = _pcln.value._slice(_fn.value.entry);
                            _pcln = _fn.value.lineTable;
                        };
                        {
                            var _j:GoInt = _i;
                            Go.cfor(_j < _end, _j++, {
                                var _s:Pointer<Sym> = Go.pointer(_t.syms[_j]);
                                if (_s.value.type == (("m".code : GoRune))) {
                                    _fn.value.frameSize = ((_s.value.value : GoInt));
                                } else if (_s.value.type == (("p".code : GoRune))) {
                                    var _n:GoInt = _fn.value.params.length;
                                    _fn.value.params = _fn.value.params.__slice__(((0 : GoInt)), _n + ((1 : GoInt)));
                                    _fn.value.params[_n] = _s;
                                } else if (_s.value.type == (("a".code : GoRune))) {
                                    var _n:GoInt = _fn.value.locals.length;
                                    _fn.value.locals = _fn.value.locals.__slice__(((0 : GoInt)), _n + ((1 : GoInt)));
                                    _fn.value.locals[_n] = _s;
                                };
                            });
                        };
                        _i = _end - ((1 : GoInt));
                    };
                });
            };
            if (_t._go12line != null && !_t._go12line.isNil() && _nf == ((0 : GoInt))) {
                _t.funcs = _t._go12line.value._go12Funcs();
            };
            if (_obj != null && !_obj.isNil()) {
                _obj.value.funcs = _t.funcs.__slice__(_lastf);
            };
            return { _0 : Go.pointer(_t), _1 : ((null : stdgo.Error)) };
        });
    }
class LineTable_extension_fields {
    public function _parse(__tmp__, _targetPC:GoUInt64, _targetLine:GoInt):{ var _0 : Slice<GoByte>; var _1 : GoUInt64; var _2 : GoInt; } return __tmp__._parse(_targetPC, _targetLine);
    public function _slice(__tmp__, _pc:GoUInt64):Pointer<LineTable> return __tmp__._slice(_pc);
    public function pctoLine(__tmp__, _pc:GoUInt64):GoInt return __tmp__.pctoLine(_pc);
    public function lineToPC(__tmp__, _line:GoInt, _maxpc:GoUInt64):GoUInt64 return __tmp__.lineToPC(_line, _maxpc);
    public function _isGo12(__tmp__):Bool return __tmp__._isGo12();
    public function _uintptr(__tmp__, _b:Slice<GoByte>):GoUInt64 return __tmp__._uintptr(_b);
    public function _parsePclnTab(__tmp__):Void __tmp__._parsePclnTab();
    public function _go12Funcs(__tmp__):Slice<Func> return __tmp__._go12Funcs();
    public function _findFunc(__tmp__, _pc:GoUInt64):Slice<GoByte> return __tmp__._findFunc(_pc);
    public function _readvarint(__tmp__, _pp:Pointer<Slice<GoByte>>):GoUInt32 return __tmp__._readvarint(_pp);
    public function _funcName(__tmp__, _off:GoUInt32):GoString return __tmp__._funcName(_off);
    public function _stringFrom(__tmp__, _arr:Slice<GoByte>, _off:GoUInt32):GoString return __tmp__._stringFrom(_arr, _off);
    public function _string(__tmp__, _off:GoUInt32):GoString return __tmp__._string(_off);
    public function _step(__tmp__, _p:Pointer<Slice<GoByte>>, _pc:Pointer<GoUInt64>, _val:Pointer<GoInt32>, _first:Bool):Bool return __tmp__._step(_p, _pc, _val, _first);
    public function _pcvalue(__tmp__, _off:GoUInt32, _entry:GoUInt64, _targetpc:GoUInt64):GoInt32 return __tmp__._pcvalue(_off, _entry, _targetpc);
    public function _findFileLine(__tmp__, _entry:GoUInt64, _filetab:GoUInt32, _linetab:GoUInt32, _filenum:GoInt32, _line:GoInt32, _cutab:Slice<GoByte>):GoUInt64 return __tmp__._findFileLine(_entry, _filetab, _linetab, _filenum, _line, _cutab);
    public function _go12PCToLine(__tmp__, _pc:GoUInt64):GoInt return __tmp__._go12PCToLine(_pc);
    public function _go12PCToFile(__tmp__, _pc:GoUInt64):GoString return __tmp__._go12PCToFile(_pc);
    public function _go12LineToPC(__tmp__, _file:GoString, _line:GoInt):GoUInt64 return __tmp__._go12LineToPC(_file, _line);
    public function _initFileMap(__tmp__):Void __tmp__._initFileMap();
    public function _go12MapFiles(__tmp__, _m:GoMap<GoString, Pointer<Obj>>, _obj:Pointer<Obj>):Void __tmp__._go12MapFiles(_m, _obj);
}
class Sym_extension_fields {
    public function static_(__tmp__):Bool return __tmp__.static_();
    public function packageName(__tmp__):GoString return __tmp__.packageName();
    public function receiverName(__tmp__):GoString return __tmp__.receiverName();
    public function baseName(__tmp__):GoString return __tmp__.baseName();
}
class Obj_extension_fields {
    public function _lineFromAline(__tmp__, _aline:GoInt):{ var _0 : GoString; var _1 : GoInt; } return __tmp__._lineFromAline(_aline);
    public function _alineFromLine(__tmp__, _path:GoString, _line:GoInt):{ var _0 : GoInt; var _1 : Error; } return __tmp__._alineFromLine(_path, _line);
}
@:structInit class T_stackEnt__lineFromAline_0 {
    public var _path : GoString = (("" : GoString));
    public var _start : GoInt = ((0 : GoInt));
    public var _offset : GoInt = ((0 : GoInt));
    public var _prev : Pointer<T_stackEnt__lineFromAline_0> = new Pointer<T_stackEnt__lineFromAline_0>().nil();
    public function new(?_path:GoString, ?_start:GoInt, ?_offset:GoInt, ?_prev:Pointer<T_stackEnt__lineFromAline_0>) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(_path) + " " + Go.string(_start) + " " + Go.string(_offset) + " " + Go.string(_prev) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_stackEnt__lineFromAline_0(_path, _start, _offset, _prev);
    }
    public function __set__(__tmp__) {
        this._path = __tmp__._path;
        this._start = __tmp__._start;
        this._offset = __tmp__._offset;
        this._prev = __tmp__._prev;
        return this;
    }
}
class Table_extension_fields {
    public function pctoFunc(__tmp__, _pc:GoUInt64):Pointer<Func> return __tmp__.pctoFunc(_pc);
    public function pctoLine(__tmp__, _pc:GoUInt64):{ var _0 : GoString; var _1 : GoInt; var _2 : Pointer<Func>; } return __tmp__.pctoLine(_pc);
    public function lineToPC(__tmp__, _file:GoString, _line:GoInt):{ var _0 : GoUInt64; var _1 : Pointer<Func>; var _2 : Error; } return __tmp__.lineToPC(_file, _line);
    public function lookupSym(__tmp__, _name:GoString):Pointer<Sym> return __tmp__.lookupSym(_name);
    public function lookupFunc(__tmp__, _name:GoString):Pointer<Func> return __tmp__.lookupFunc(_name);
    public function symByAddr(__tmp__, _addr:GoUInt64):Pointer<Sym> return __tmp__.symByAddr(_addr);
}
class UnknownFileError_extension_fields {
    public function error(__tmp__):GoString return __tmp__.error();
}
class UnknownLineError_extension_fields {
    public function error(__tmp__):GoString return __tmp__.error();
}
class DecodingError_extension_fields {
    public function error(__tmp__):GoString return __tmp__.error();
}
