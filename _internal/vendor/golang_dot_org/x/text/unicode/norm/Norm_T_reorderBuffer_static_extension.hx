package _internal.vendor.golang_dot_org.x.text.unicode.norm;
@:keep @:allow(_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm.T_reorderBuffer_asInterface) class T_reorderBuffer_static_extension {
    @:keep
    static public function _compose( _rb:stdgo.Ref<_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_reorderBuffer.T_reorderBuffer>):Void {
        @:recv var _rb:stdgo.Ref<_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_reorderBuffer.T_reorderBuffer> = _rb;
        _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm__recompMapOnce._recompMapOnce.do_(_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm__buildRecompMap._buildRecompMap);
        var _bn = (_rb._nrune : stdgo.GoInt);
        if (_bn == ((0 : stdgo.GoInt))) {
            return;
        };
        var _k = (1 : stdgo.GoInt);
        var _b = (_rb._rune.__slice__(0) : stdgo.Slice<_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_Properties.Properties>);
        {
            var __0 = (0 : stdgo.GoInt), __1 = (1 : stdgo.GoInt);
var _i = __1, _s = __0;
            stdgo.Go.cfor((_i < _bn : Bool), _i++, {
                if (_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm__isJamoVT._isJamoVT(_rb._bytesAt(_i))) {
                    _rb._combineHangul(_s, _i, _k);
                    return;
                };
                var _ii = (_b[(_i : stdgo.GoInt)] : _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_Properties.Properties);
                if (_ii._combinesBackward()) {
                    var _cccB = (_b[(_k - (1 : stdgo.GoInt) : stdgo.GoInt)]._ccc : stdgo.GoUInt8);
                    var _cccC = (_ii._ccc : stdgo.GoUInt8);
                    var _blocked = (false : Bool);
                    if (_cccB == ((0 : stdgo.GoUInt8))) {
                        _s = (_k - (1 : stdgo.GoInt) : stdgo.GoInt);
                    } else {
                        _blocked = ((_s != (_k - (1 : stdgo.GoInt) : stdgo.GoInt)) && (_cccB >= _cccC : Bool) : Bool);
                    };
                    if (!_blocked) {
                        var _combined = (_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm__combine._combine(_rb._runeAt(_s), _rb._runeAt(_i)) : stdgo.GoInt32);
                        if (_combined != ((0 : stdgo.GoInt32))) {
                            _rb._assignRune(_s, _combined);
                            continue;
                        };
                    };
                };
                _b[(_k : stdgo.GoInt)] = _b[(_i : stdgo.GoInt)];
                _k++;
            });
        };
        _rb._nrune = _k;
    }
    @:keep
    static public function _combineHangul( _rb:stdgo.Ref<_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_reorderBuffer.T_reorderBuffer>, _s:stdgo.GoInt, _i:stdgo.GoInt, _k:stdgo.GoInt):Void {
        @:recv var _rb:stdgo.Ref<_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_reorderBuffer.T_reorderBuffer> = _rb;
        var _b = (_rb._rune.__slice__(0) : stdgo.Slice<_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_Properties.Properties>);
        var _bn = (_rb._nrune : stdgo.GoInt);
        stdgo.Go.cfor((_i < _bn : Bool), _i++, {
            var _cccB = (_b[(_k - (1 : stdgo.GoInt) : stdgo.GoInt)]._ccc : stdgo.GoUInt8);
            var _cccC = (_b[(_i : stdgo.GoInt)]._ccc : stdgo.GoUInt8);
            if (_cccB == ((0 : stdgo.GoUInt8))) {
                _s = (_k - (1 : stdgo.GoInt) : stdgo.GoInt);
            };
            if (((_s != (_k - (1 : stdgo.GoInt) : stdgo.GoInt)) && (_cccB >= _cccC : Bool) : Bool)) {
                _b[(_k : stdgo.GoInt)] = _b[(_i : stdgo.GoInt)];
                _k++;
            } else {
                var _l = (_rb._runeAt(_s) : stdgo.GoInt32);
                var _v = (_rb._runeAt(_i) : stdgo.GoInt32);
                if ((((((4352 : stdgo.GoInt32) <= _l : Bool) && (_l < (4371 : stdgo.GoInt32) : Bool) : Bool) && ((4449 : stdgo.GoInt32) <= _v : Bool) : Bool) && (_v < (4470 : stdgo.GoInt32) : Bool) : Bool)) {
                    _rb._assignRune(_s, (((44032 : stdgo.GoInt32) + (((_l - (4352 : stdgo.GoInt32) : stdgo.GoInt32)) * (588 : stdgo.GoInt32) : stdgo.GoInt32) : stdgo.GoInt32) + (((_v - (4449 : stdgo.GoInt32) : stdgo.GoInt32)) * (28 : stdgo.GoInt32) : stdgo.GoInt32) : stdgo.GoInt32));
                } else if (((((((44032 : stdgo.GoInt32) <= _l : Bool) && (_l < (55204 : stdgo.GoInt32) : Bool) : Bool) && ((4519 : stdgo.GoInt32) < _v : Bool) : Bool) && (_v < (4547 : stdgo.GoInt32) : Bool) : Bool) && ((((_l - (44032 : stdgo.GoInt32) : stdgo.GoInt32)) % (28 : stdgo.GoInt32) : stdgo.GoInt32) == (0 : stdgo.GoInt32)) : Bool)) {
                    _rb._assignRune(_s, ((_l + _v : stdgo.GoInt32) - (4519 : stdgo.GoInt32) : stdgo.GoInt32));
                } else {
                    _b[(_k : stdgo.GoInt)] = _b[(_i : stdgo.GoInt)];
                    _k++;
                };
            };
        });
        _rb._nrune = _k;
    }
    @:keep
    static public function _decomposeHangul( _rb:stdgo.Ref<_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_reorderBuffer.T_reorderBuffer>, _r:stdgo.GoInt32):Void {
        @:recv var _rb:stdgo.Ref<_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_reorderBuffer.T_reorderBuffer> = _rb;
        _r = (_r - ((44032 : stdgo.GoInt32)) : stdgo.GoInt32);
        var _x = (_r % (28 : stdgo.GoInt32) : stdgo.GoInt32);
        _r = (_r / ((28 : stdgo.GoInt32)) : stdgo.GoInt32);
        _rb._appendRune(((4352 : stdgo.GoInt32) + (_r / (21 : stdgo.GoInt32) : stdgo.GoInt32) : stdgo.GoInt32));
        _rb._appendRune(((4449 : stdgo.GoInt32) + (_r % (21 : stdgo.GoInt32) : stdgo.GoInt32) : stdgo.GoInt32));
        if (_x != ((0 : stdgo.GoInt32))) {
            _rb._appendRune(((4519 : stdgo.GoInt32) + _x : stdgo.GoInt32));
        };
    }
    @:keep
    static public function _bytesAt( _rb:stdgo.Ref<_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_reorderBuffer.T_reorderBuffer>, _n:stdgo.GoInt):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _rb:stdgo.Ref<_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_reorderBuffer.T_reorderBuffer> = _rb;
        var _inf = (_rb._rune[(_n : stdgo.GoInt)] : _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_Properties.Properties);
        return (_rb._byte.__slice__(_inf._pos, ((_inf._pos : stdgo.GoInt) + (_inf._size : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
    }
    @:keep
    static public function _runeAt( _rb:stdgo.Ref<_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_reorderBuffer.T_reorderBuffer>, _n:stdgo.GoInt):stdgo.GoInt32 {
        @:recv var _rb:stdgo.Ref<_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_reorderBuffer.T_reorderBuffer> = _rb;
        var _inf = (_rb._rune[(_n : stdgo.GoInt)] : _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_Properties.Properties);
        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRune.decodeRune((_rb._byte.__slice__(_inf._pos, (_inf._pos + _inf._size : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>)), _r:stdgo.GoInt32 = __tmp__._0, __0:stdgo.GoInt = __tmp__._1;
        return _r;
    }
    @:keep
    static public function _assignRune( _rb:stdgo.Ref<_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_reorderBuffer.T_reorderBuffer>, _pos:stdgo.GoInt, _r:stdgo.GoInt32):Void {
        @:recv var _rb:stdgo.Ref<_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_reorderBuffer.T_reorderBuffer> = _rb;
        var _bn = (_rb._rune[(_pos : stdgo.GoInt)]._pos : stdgo.GoUInt8);
        var _sz = (stdgo._internal.unicode.utf8.Utf8_encodeRune.encodeRune((_rb._byte.__slice__(_bn) : stdgo.Slice<stdgo.GoUInt8>), (_r : stdgo.GoInt32)) : stdgo.GoInt);
        _rb._rune[(_pos : stdgo.GoInt)] = ({ _pos : _bn, _size : (_sz : stdgo.GoUInt8) } : _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_Properties.Properties);
    }
    @:keep
    static public function _appendRune( _rb:stdgo.Ref<_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_reorderBuffer.T_reorderBuffer>, _r:stdgo.GoInt32):Void {
        @:recv var _rb:stdgo.Ref<_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_reorderBuffer.T_reorderBuffer> = _rb;
        var _bn = (_rb._nbyte : stdgo.GoUInt8);
        var _sz = (stdgo._internal.unicode.utf8.Utf8_encodeRune.encodeRune((_rb._byte.__slice__(_bn) : stdgo.Slice<stdgo.GoUInt8>), (_r : stdgo.GoInt32)) : stdgo.GoInt);
        _rb._nbyte = (_rb._nbyte + ((4 : stdgo.GoUInt8)) : stdgo.GoUInt8);
        _rb._rune[(_rb._nrune : stdgo.GoInt)] = ({ _pos : _bn, _size : (_sz : stdgo.GoUInt8) } : _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_Properties.Properties);
        _rb._nrune++;
    }
    @:keep
    static public function _insertCGJ( _rb:stdgo.Ref<_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_reorderBuffer.T_reorderBuffer>):Void {
        @:recv var _rb:stdgo.Ref<_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_reorderBuffer.T_reorderBuffer> = _rb;
        _rb._insertSingle(({ _str : ("͏" : stdgo.GoString) } : _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_input.T_input), (0 : stdgo.GoInt), ({ _size : (("͏" : stdgo.GoString).length : stdgo.GoUInt8) } : _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_Properties.Properties));
    }
    @:keep
    static public function _insertSingle( _rb:stdgo.Ref<_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_reorderBuffer.T_reorderBuffer>, _src:_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_input.T_input, _i:stdgo.GoInt, _info:_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_Properties.Properties):Void {
        @:recv var _rb:stdgo.Ref<_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_reorderBuffer.T_reorderBuffer> = _rb;
        _src._copySlice((_rb._byte.__slice__(_rb._nbyte) : stdgo.Slice<stdgo.GoUInt8>), _i, (_i + (_info._size : stdgo.GoInt) : stdgo.GoInt));
        _rb._insertOrdered(_info?.__copy__());
    }
    @:keep
    static public function _insertDecomposed( _rb:stdgo.Ref<_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_reorderBuffer.T_reorderBuffer>, _dcomp:stdgo.Slice<stdgo.GoUInt8>):_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_insertErr.T_insertErr {
        @:recv var _rb:stdgo.Ref<_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_reorderBuffer.T_reorderBuffer> = _rb;
        _rb._tmpBytes._setBytes(_dcomp);
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (_dcomp.length) : Bool)) {
                var _info = (_rb._f._info(_rb._tmpBytes?.__copy__(), _i)?.__copy__() : _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_Properties.Properties);
                if (((_info.boundaryBefore() && (_rb._nrune > (0 : stdgo.GoInt) : Bool) : Bool) && !_rb._doFlush() : Bool)) {
                    return (-1 : _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_insertErr.T_insertErr);
                };
                _i = (_i + (stdgo.Go.copySlice((_rb._byte.__slice__(_rb._nbyte) : stdgo.Slice<stdgo.GoUInt8>), (_dcomp.__slice__(_i, (_i + (_info._size : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>))) : stdgo.GoInt);
                _rb._insertOrdered(_info?.__copy__());
            };
        };
        return (0 : _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_insertErr.T_insertErr);
    }
    @:keep
    static public function _insertUnsafe( _rb:stdgo.Ref<_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_reorderBuffer.T_reorderBuffer>, _src:_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_input.T_input, _i:stdgo.GoInt, _info:_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_Properties.Properties):Void {
        @:recv var _rb:stdgo.Ref<_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_reorderBuffer.T_reorderBuffer> = _rb;
        {
            var _rune = (_src._hangul(_i) : stdgo.GoInt32);
            if (_rune != ((0 : stdgo.GoInt32))) {
                _rb._decomposeHangul(_rune);
            };
        };
        if (_info._hasDecomposition()) {
            _rb._insertDecomposed(_info.decomposition());
        } else {
            _rb._insertSingle(_src?.__copy__(), _i, _info?.__copy__());
        };
    }
    @:keep
    static public function _insertFlush( _rb:stdgo.Ref<_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_reorderBuffer.T_reorderBuffer>, _src:_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_input.T_input, _i:stdgo.GoInt, _info:_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_Properties.Properties):_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_insertErr.T_insertErr {
        @:recv var _rb:stdgo.Ref<_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_reorderBuffer.T_reorderBuffer> = _rb;
        {
            var _rune = (_src._hangul(_i) : stdgo.GoInt32);
            if (_rune != ((0 : stdgo.GoInt32))) {
                _rb._decomposeHangul(_rune);
                return (0 : _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_insertErr.T_insertErr);
            };
        };
        if (_info._hasDecomposition()) {
            return _rb._insertDecomposed(_info.decomposition());
        };
        _rb._insertSingle(_src?.__copy__(), _i, _info?.__copy__());
        return (0 : _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_insertErr.T_insertErr);
    }
    @:keep
    static public function _insertOrdered( _rb:stdgo.Ref<_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_reorderBuffer.T_reorderBuffer>, _info:_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_Properties.Properties):Void {
        @:recv var _rb:stdgo.Ref<_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_reorderBuffer.T_reorderBuffer> = _rb;
        var _n = (_rb._nrune : stdgo.GoInt);
        var _b = (_rb._rune.__slice__(0) : stdgo.Slice<_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_Properties.Properties>);
        var _cc = (_info._ccc : stdgo.GoUInt8);
        if ((_cc > (0 : stdgo.GoUInt8) : Bool)) {
            stdgo.Go.cfor((_n > (0 : stdgo.GoInt) : Bool), _n--, {
                if ((_b[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)]._ccc <= _cc : Bool)) {
                    break;
                };
                _b[(_n : stdgo.GoInt)] = _b[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)];
            });
        };
        _rb._nrune = (_rb._nrune + ((1 : stdgo.GoInt)) : stdgo.GoInt);
        var _pos = (_rb._nbyte : stdgo.GoUInt8);
        _rb._nbyte = (_rb._nbyte + ((4 : stdgo.GoUInt8)) : stdgo.GoUInt8);
        _info._pos = _pos;
        _b[(_n : stdgo.GoInt)] = _info?.__copy__();
    }
    @:keep
    static public function _flushCopy( _rb:stdgo.Ref<_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_reorderBuffer.T_reorderBuffer>, _buf:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoInt {
        @:recv var _rb:stdgo.Ref<_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_reorderBuffer.T_reorderBuffer> = _rb;
        var _p = (0 : stdgo.GoInt);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _rb._nrune : Bool), _i++, {
                var _runep = (_rb._rune[(_i : stdgo.GoInt)] : _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_Properties.Properties);
                _p = (_p + (stdgo.Go.copySlice((_buf.__slice__(_p) : stdgo.Slice<stdgo.GoUInt8>), (_rb._byte.__slice__(_runep._pos, (_runep._pos + _runep._size : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>))) : stdgo.GoInt);
            });
        };
        _rb._reset();
        return _p;
    }
    @:keep
    static public function _flush( _rb:stdgo.Ref<_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_reorderBuffer.T_reorderBuffer>, _out:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _rb:stdgo.Ref<_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_reorderBuffer.T_reorderBuffer> = _rb;
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _rb._nrune : Bool), _i++, {
                var _start = (_rb._rune[(_i : stdgo.GoInt)]._pos : stdgo.GoUInt8);
                var _end = (_start + _rb._rune[(_i : stdgo.GoInt)]._size : stdgo.GoUInt8);
                _out = (_out.__append__(...((_rb._byte.__slice__(_start, _end) : stdgo.Slice<stdgo.GoUInt8>) : Array<stdgo.GoUInt8>)));
            });
        };
        _rb._reset();
        return _out;
    }
    @:keep
    static public function _doFlush( _rb:stdgo.Ref<_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_reorderBuffer.T_reorderBuffer>):Bool {
        @:recv var _rb:stdgo.Ref<_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_reorderBuffer.T_reorderBuffer> = _rb;
        if (_rb._f._composing) {
            _rb._compose();
        };
        var _res = (_rb._flushF(_rb) : Bool);
        _rb._reset();
        return _res;
    }
    @:keep
    static public function _reset( _rb:stdgo.Ref<_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_reorderBuffer.T_reorderBuffer>):Void {
        @:recv var _rb:stdgo.Ref<_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_reorderBuffer.T_reorderBuffer> = _rb;
        _rb._nrune = (0 : stdgo.GoInt);
        _rb._nbyte = (0 : stdgo.GoUInt8);
    }
    @:keep
    static public function _setFlusher( _rb:stdgo.Ref<_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_reorderBuffer.T_reorderBuffer>, _out:stdgo.Slice<stdgo.GoUInt8>, _f:stdgo.Ref<_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_reorderBuffer.T_reorderBuffer> -> Bool):Void {
        @:recv var _rb:stdgo.Ref<_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_reorderBuffer.T_reorderBuffer> = _rb;
        _rb._out = _out;
        _rb._flushF = _f;
    }
    @:keep
    static public function _initString( _rb:stdgo.Ref<_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_reorderBuffer.T_reorderBuffer>, _f:_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_Form.Form, _src:stdgo.GoString):Void {
        @:recv var _rb:stdgo.Ref<_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_reorderBuffer.T_reorderBuffer> = _rb;
        _rb._f = (_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm__formTable._formTable[(_f : stdgo.GoInt)] : _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_formInfo.T_formInfo)?.__copy__();
        _rb._src._setString(_src?.__copy__());
        _rb._nsrc = (_src.length);
        _rb._ss = (0 : _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_streamSafe.T_streamSafe);
    }
    @:keep
    static public function _init( _rb:stdgo.Ref<_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_reorderBuffer.T_reorderBuffer>, _f:_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_Form.Form, _src:stdgo.Slice<stdgo.GoUInt8>):Void {
        @:recv var _rb:stdgo.Ref<_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_reorderBuffer.T_reorderBuffer> = _rb;
        _rb._f = (_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm__formTable._formTable[(_f : stdgo.GoInt)] : _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_formInfo.T_formInfo)?.__copy__();
        _rb._src._setBytes(_src);
        _rb._nsrc = (_src.length);
        _rb._ss = (0 : _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_streamSafe.T_streamSafe);
    }
}
