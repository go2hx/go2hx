package stdgo._internal.path;
private var __go2hxdoc__package : Bool;
var errBadPattern : stdgo.Error = stdgo._internal.errors.Errors.new_(("syntax error in pattern" : stdgo.GoString));
@:structInit @:private @:using(stdgo._internal.path.Path.T_lazybuf_static_extension) class T_lazybuf {
    public var _s : stdgo.GoString = "";
    public var _buf : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _w : stdgo.GoInt = 0;
    public function new(?_s:stdgo.GoString, ?_buf:stdgo.Slice<stdgo.GoUInt8>, ?_w:stdgo.GoInt) {
        if (_s != null) this._s = _s;
        if (_buf != null) this._buf = _buf;
        if (_w != null) this._w = _w;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_lazybuf(_s, _buf, _w);
    }
}
function match(_pattern:stdgo.GoString, _name:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.Error; } {
        stdgo._internal.internal.Macro.controlFlow({
            var _matched = false, _err = (null : stdgo.Error);
            @:label("Pattern") while (((_pattern.length) > (0 : stdgo.GoInt) : Bool)) {
                var _star:Bool = false;
                var _chunk:stdgo.GoString = ("" : stdgo.GoString);
                {
                    var __tmp__ = _scanChunk(_pattern?.__copy__());
                    _star = __tmp__._0;
                    _chunk = __tmp__._1?.__copy__();
                    _pattern = __tmp__._2?.__copy__();
                };
                if ((_star && (_chunk == stdgo.Go.str()) : Bool)) {
                    return { _0 : (stdgo._internal.internal.bytealg.Bytealg.indexByteString(_name?.__copy__(), (47 : stdgo.GoUInt8)) < (0 : stdgo.GoInt) : Bool), _1 : (null : stdgo.Error) };
                };
                var __tmp__ = _matchChunk(_chunk?.__copy__(), _name?.__copy__()), _t:stdgo.GoString = __tmp__._0, _ok:Bool = __tmp__._1, _err:stdgo.Error = __tmp__._2;
                if ((_ok && (((_t.length == (0 : stdgo.GoInt)) || ((_pattern.length) > (0 : stdgo.GoInt) : Bool) : Bool)) : Bool)) {
                    _name = _t?.__copy__();
                    continue;
                };
                if (_err != null) {
                    return { _0 : false, _1 : _err };
                };
                if (_star) {
                    {
                        var _i = (0 : stdgo.GoInt);
                        stdgo.Go.cfor(((_i < (_name.length) : Bool) && (_name[(_i : stdgo.GoInt)] != (47 : stdgo.GoUInt8)) : Bool), _i++, {
                            var __tmp__ = _matchChunk(_chunk?.__copy__(), (_name.__slice__((_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__()), _t:stdgo.GoString = __tmp__._0, _ok:Bool = __tmp__._1, _err:stdgo.Error = __tmp__._2;
                            if (_ok) {
                                if (((_pattern.length == (0 : stdgo.GoInt)) && ((_t.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                                    continue;
                                };
                                _name = _t?.__copy__();
                                @:jump("Pattern") continue;
                            };
                            if (_err != null) {
                                return { _0 : false, _1 : _err };
                            };
                        });
                    };
                };
                while (((_pattern.length) > (0 : stdgo.GoInt) : Bool)) {
                    {
                        var __tmp__ = _scanChunk(_pattern?.__copy__());
                        _chunk = __tmp__._1?.__copy__();
                        _pattern = __tmp__._2?.__copy__();
                    };
                    {
                        var __tmp__ = _matchChunk(_chunk?.__copy__(), stdgo.Go.str()?.__copy__()), __0:stdgo.GoString = __tmp__._0, __1:Bool = __tmp__._1, _err:stdgo.Error = __tmp__._2;
                        if (_err != null) {
                            return { _0 : false, _1 : _err };
                        };
                    };
                };
                return { _0 : false, _1 : (null : stdgo.Error) };
            };
            return { _0 : (_name.length) == ((0 : stdgo.GoInt)), _1 : (null : stdgo.Error) };
        });
        throw "controlFlow did not return";
    }
function _scanChunk(_pattern:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.GoString; var _2 : stdgo.GoString; } {
        stdgo._internal.internal.Macro.controlFlow({
            var _star = false, _chunk = ("" : stdgo.GoString), _rest = ("" : stdgo.GoString);
            while ((((_pattern.length) > (0 : stdgo.GoInt) : Bool) && (_pattern[(0 : stdgo.GoInt)] == (42 : stdgo.GoUInt8)) : Bool)) {
                _pattern = (_pattern.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                _star = true;
            };
            var _inrange = (false : Bool);
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            @:label("Scan") {
                _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < (_pattern.length) : Bool), _i++, {
                    {
                        var __switchIndex__ = -1;
                        var __run__ = true;
                        while (__run__) {
                            __run__ = false;
                            {
                                final __value__ = _pattern[(_i : stdgo.GoInt)];
                                if (__value__ == ((92 : stdgo.GoUInt8))) {
                                    if (((_i + (1 : stdgo.GoInt) : stdgo.GoInt) < (_pattern.length) : Bool)) {
                                        _i++;
                                    };
                                    break;
                                } else if (__value__ == ((91 : stdgo.GoUInt8))) {
                                    _inrange = true;
                                    break;
                                } else if (__value__ == ((93 : stdgo.GoUInt8))) {
                                    _inrange = false;
                                    break;
                                } else if (__value__ == ((42 : stdgo.GoUInt8))) {
                                    if (!_inrange) {
                                        @:jump("Scan") break;
                                    };
                                    break;
                                };
                            };
                            break;
                        };
                    };
                });
            };
            return { _0 : _star, _1 : (_pattern.__slice__((0 : stdgo.GoInt), _i) : stdgo.GoString)?.__copy__(), _2 : (_pattern.__slice__(_i) : stdgo.GoString)?.__copy__() };
        });
        throw "controlFlow did not return";
    }
function _matchChunk(_chunk:stdgo.GoString, _s:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : Bool; var _2 : stdgo.Error; } {
        var _rest = ("" : stdgo.GoString), _ok = false, _err = (null : stdgo.Error);
        var _failed = (false : Bool);
        while (((_chunk.length) > (0 : stdgo.GoInt) : Bool)) {
            if ((!_failed && (_s.length == (0 : stdgo.GoInt)) : Bool)) {
                _failed = true;
            };
            {
                var __switchIndex__ = -1;
                var __run__ = true;
                while (__run__) {
                    __run__ = false;
                    {
                        final __value__ = _chunk[(0 : stdgo.GoInt)];
                        if (__switchIndex__ == 0 || (__switchIndex__ == -1 && (__value__ == (91 : stdgo.GoUInt8)))) {
                            var _r:stdgo.GoRune = (0 : stdgo.GoInt32);
                            if (!_failed) {
                                var _n:stdgo.GoInt = (0 : stdgo.GoInt);
                                {
                                    var __tmp__ = stdgo._internal.unicode.utf8.Utf8.decodeRuneInString(_s?.__copy__());
                                    _r = __tmp__._0;
                                    _n = __tmp__._1;
                                };
                                _s = (_s.__slice__(_n) : stdgo.GoString)?.__copy__();
                            };
                            _chunk = (_chunk.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                            var _negated = (false : Bool);
                            if ((((_chunk.length) > (0 : stdgo.GoInt) : Bool) && (_chunk[(0 : stdgo.GoInt)] == (94 : stdgo.GoUInt8)) : Bool)) {
                                _negated = true;
                                _chunk = (_chunk.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                            };
                            var _match = (false : Bool);
                            var _nrange = (0 : stdgo.GoInt);
                            while (true) {
                                if (((((_chunk.length) > (0 : stdgo.GoInt) : Bool) && _chunk[(0 : stdgo.GoInt)] == ((93 : stdgo.GoUInt8)) : Bool) && (_nrange > (0 : stdgo.GoInt) : Bool) : Bool)) {
                                    _chunk = (_chunk.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                                    break;
                                };
                                var __0:stdgo.GoRune = (0 : stdgo.GoInt32), __1:stdgo.GoRune = (0 : stdgo.GoInt32);
var _hi = __1, _lo = __0;
                                {
                                    {
                                        var __tmp__ = _getEsc(_chunk?.__copy__());
                                        _lo = __tmp__._0;
                                        _chunk = __tmp__._1?.__copy__();
                                        _err = __tmp__._2;
                                    };
                                    if (_err != null) {
                                        return { _0 : stdgo.Go.str()?.__copy__(), _1 : false, _2 : _err };
                                    };
                                };
                                _hi = _lo;
                                if (_chunk[(0 : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                                    {
                                        {
                                            var __tmp__ = _getEsc((_chunk.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                                            _hi = __tmp__._0;
                                            _chunk = __tmp__._1?.__copy__();
                                            _err = __tmp__._2;
                                        };
                                        if (_err != null) {
                                            return { _0 : stdgo.Go.str()?.__copy__(), _1 : false, _2 : _err };
                                        };
                                    };
                                };
                                if (((_lo <= _r : Bool) && (_r <= _hi : Bool) : Bool)) {
                                    _match = true;
                                };
                                _nrange++;
                            };
                            if (_match == (_negated)) {
                                _failed = true;
                            };
                            break;
                            break;
                        } else if (__switchIndex__ == 1 || (__switchIndex__ == -1 && (__value__ == (63 : stdgo.GoUInt8)))) {
                            if (!_failed) {
                                if (_s[(0 : stdgo.GoInt)] == ((47 : stdgo.GoUInt8))) {
                                    _failed = true;
                                };
                                var __tmp__ = stdgo._internal.unicode.utf8.Utf8.decodeRuneInString(_s?.__copy__()), __0:stdgo.GoInt32 = __tmp__._0, _n:stdgo.GoInt = __tmp__._1;
                                _s = (_s.__slice__(_n) : stdgo.GoString)?.__copy__();
                            };
                            _chunk = (_chunk.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                            break;
                            break;
                        } else if (__switchIndex__ == 2 || (__switchIndex__ == -1 && (__value__ == (92 : stdgo.GoUInt8)))) {
                            _chunk = (_chunk.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                            if ((_chunk.length) == ((0 : stdgo.GoInt))) {
                                return { _0 : stdgo.Go.str()?.__copy__(), _1 : false, _2 : errBadPattern };
                            };
                            @:fallthrough {
                                __switchIndex__ = 3;
                                __run__ = true;
                                continue;
                            };
                            break;
                        } else {
                            if (!_failed) {
                                if (_chunk[(0 : stdgo.GoInt)] != (_s[((0 : stdgo.GoInt) : stdgo.GoInt)])) {
                                    _failed = true;
                                };
                                _s = (_s.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                            };
                            _chunk = (_chunk.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                            break;
                        };
                    };
                    break;
                };
            };
        };
        if (_failed) {
            return { _0 : stdgo.Go.str()?.__copy__(), _1 : false, _2 : (null : stdgo.Error) };
        };
        return { _0 : _s?.__copy__(), _1 : true, _2 : (null : stdgo.Error) };
    }
function _getEsc(_chunk:stdgo.GoString):{ var _0 : stdgo.GoRune; var _1 : stdgo.GoString; var _2 : stdgo.Error; } {
        var _r = (0 : stdgo.GoInt32), _nchunk = ("" : stdgo.GoString), _err = (null : stdgo.Error);
        if ((((_chunk.length) == ((0 : stdgo.GoInt)) || _chunk[(0 : stdgo.GoInt)] == ((45 : stdgo.GoUInt8)) : Bool) || (_chunk[(0 : stdgo.GoInt)] == (93 : stdgo.GoUInt8)) : Bool)) {
            _err = errBadPattern;
            return { _0 : _r, _1 : _nchunk, _2 : _err };
        };
        if (_chunk[(0 : stdgo.GoInt)] == ((92 : stdgo.GoUInt8))) {
            _chunk = (_chunk.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
            if ((_chunk.length) == ((0 : stdgo.GoInt))) {
                _err = errBadPattern;
                return { _0 : _r, _1 : _nchunk, _2 : _err };
            };
        };
        var __tmp__ = stdgo._internal.unicode.utf8.Utf8.decodeRuneInString(_chunk?.__copy__()), _r:stdgo.GoInt32 = __tmp__._0, _n:stdgo.GoInt = __tmp__._1;
        if (((_r == (65533 : stdgo.GoInt32)) && (_n == (1 : stdgo.GoInt)) : Bool)) {
            _err = errBadPattern;
        };
        _nchunk = (_chunk.__slice__(_n) : stdgo.GoString)?.__copy__();
        if ((_nchunk.length) == ((0 : stdgo.GoInt))) {
            _err = errBadPattern;
        };
        return { _0 : _r, _1 : _nchunk, _2 : _err };
    }
function clean(_path:stdgo.GoString):stdgo.GoString {
        if (_path == (stdgo.Go.str())) {
            return ("." : stdgo.GoString);
        };
        var _rooted = (_path[(0 : stdgo.GoInt)] == ((47 : stdgo.GoUInt8)) : Bool);
        var _n = (_path.length : stdgo.GoInt);
        var _out = ({ _s : _path?.__copy__() } : stdgo._internal.path.Path.T_lazybuf);
        var __0 = (0 : stdgo.GoInt), __1 = (0 : stdgo.GoInt);
var _dotdot = __1, _r = __0;
        if (_rooted) {
            _out._append((47 : stdgo.GoUInt8));
            {
                final __tmp__0 = (1 : stdgo.GoInt);
                final __tmp__1 = (1 : stdgo.GoInt);
                _r = __tmp__0;
                _dotdot = __tmp__1;
            };
        };
        while ((_r < _n : Bool)) {
            if (_path[(_r : stdgo.GoInt)] == ((47 : stdgo.GoUInt8))) {
                _r++;
            } else if (((_path[(_r : stdgo.GoInt)] == (46 : stdgo.GoUInt8)) && ((((_r + (1 : stdgo.GoInt) : stdgo.GoInt) == _n) || (_path[(_r + (1 : stdgo.GoInt) : stdgo.GoInt)] == (47 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                _r++;
            } else if (((_path[(_r : stdgo.GoInt)] == ((46 : stdgo.GoUInt8)) && _path[(_r + (1 : stdgo.GoInt) : stdgo.GoInt)] == ((46 : stdgo.GoUInt8)) : Bool) && ((((_r + (2 : stdgo.GoInt) : stdgo.GoInt) == _n) || (_path[(_r + (2 : stdgo.GoInt) : stdgo.GoInt)] == (47 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                _r = (_r + ((2 : stdgo.GoInt)) : stdgo.GoInt);
                if ((_out._w > _dotdot : Bool)) {
                    _out._w--;
                    while (((_out._w > _dotdot : Bool) && (_out._index(_out._w) != (47 : stdgo.GoUInt8)) : Bool)) {
                        _out._w--;
                    };
                } else if (!_rooted) {
                    if ((_out._w > (0 : stdgo.GoInt) : Bool)) {
                        _out._append((47 : stdgo.GoUInt8));
                    };
                    _out._append((46 : stdgo.GoUInt8));
                    _out._append((46 : stdgo.GoUInt8));
                    _dotdot = _out._w;
                };
            } else {
                if (((_rooted && _out._w != ((1 : stdgo.GoInt)) : Bool) || (!_rooted && _out._w != ((0 : stdgo.GoInt)) : Bool) : Bool)) {
                    _out._append((47 : stdgo.GoUInt8));
                };
                stdgo.Go.cfor(((_r < _n : Bool) && (_path[(_r : stdgo.GoInt)] != (47 : stdgo.GoUInt8)) : Bool), _r++, {
                    _out._append(_path[(_r : stdgo.GoInt)]);
                });
            };
        };
        if (_out._w == ((0 : stdgo.GoInt))) {
            return ("." : stdgo.GoString);
        };
        return _out._string()?.__copy__();
    }
function _lastSlash(_s:stdgo.GoString):stdgo.GoInt {
        var _i = ((_s.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
        while (((_i >= (0 : stdgo.GoInt) : Bool) && (_s[(_i : stdgo.GoInt)] != (47 : stdgo.GoUInt8)) : Bool)) {
            _i--;
        };
        return _i;
    }
function split(_path:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : stdgo.GoString; } {
        var _dir = ("" : stdgo.GoString), _file = ("" : stdgo.GoString);
        var _i = (_lastSlash(_path?.__copy__()) : stdgo.GoInt);
        return { _0 : (_path.__slice__(0, (_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), _1 : (_path.__slice__((_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__() };
    }
function join(_elem:haxe.Rest<stdgo.GoString>):stdgo.GoString {
        var _elem = new stdgo.Slice<stdgo.GoString>(_elem.length, 0, ..._elem);
        var _size = (0 : stdgo.GoInt);
        for (__0 => _e in _elem) {
            _size = (_size + ((_e.length)) : stdgo.GoInt);
        };
        if (_size == ((0 : stdgo.GoInt))) {
            return stdgo.Go.str()?.__copy__();
        };
        var _buf = (new stdgo.Slice<stdgo.GoUInt8>((0 : stdgo.GoInt).toBasic(), ((_size + (_elem.length) : stdgo.GoInt) - (1 : stdgo.GoInt) : stdgo.GoInt)).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        for (__1 => _e in _elem) {
            if ((((_buf.length) > (0 : stdgo.GoInt) : Bool) || (_e != stdgo.Go.str()) : Bool)) {
                if (((_buf.length) > (0 : stdgo.GoInt) : Bool)) {
                    _buf = (_buf.__append__((47 : stdgo.GoUInt8)));
                };
                _buf = (_buf.__append__(...(_e : Array<stdgo.GoUInt8>)));
            };
        };
        return clean((_buf : stdgo.GoString)?.__copy__())?.__copy__();
    }
function ext(_path:stdgo.GoString):stdgo.GoString {
        {
            var _i = ((_path.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
            stdgo.Go.cfor(((_i >= (0 : stdgo.GoInt) : Bool) && (_path[(_i : stdgo.GoInt)] != (47 : stdgo.GoUInt8)) : Bool), _i--, {
                if (_path[(_i : stdgo.GoInt)] == ((46 : stdgo.GoUInt8))) {
                    return (_path.__slice__(_i) : stdgo.GoString)?.__copy__();
                };
            });
        };
        return stdgo.Go.str()?.__copy__();
    }
function base(_path:stdgo.GoString):stdgo.GoString {
        if (_path == (stdgo.Go.str())) {
            return ("." : stdgo.GoString);
        };
        while ((((_path.length) > (0 : stdgo.GoInt) : Bool) && (_path[((_path.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] == (47 : stdgo.GoUInt8)) : Bool)) {
            _path = (_path.__slice__((0 : stdgo.GoInt), ((_path.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
        };
        {
            var _i = (_lastSlash(_path?.__copy__()) : stdgo.GoInt);
            if ((_i >= (0 : stdgo.GoInt) : Bool)) {
                _path = (_path.__slice__((_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
            };
        };
        if (_path == (stdgo.Go.str())) {
            return ("/" : stdgo.GoString);
        };
        return _path?.__copy__();
    }
function isAbs(_path:stdgo.GoString):Bool {
        return (((_path.length) > (0 : stdgo.GoInt) : Bool) && (_path[(0 : stdgo.GoInt)] == (47 : stdgo.GoUInt8)) : Bool);
    }
function dir(_path:stdgo.GoString):stdgo.GoString {
        var __tmp__ = split(_path?.__copy__()), _dir:stdgo.GoString = __tmp__._0, __0:stdgo.GoString = __tmp__._1;
        return clean(_dir?.__copy__())?.__copy__();
    }
class T_lazybuf_asInterface {
    @:keep
    public dynamic function _string():stdgo.GoString return __self__.value._string();
    @:keep
    public dynamic function _append(_c:stdgo.GoByte):Void __self__.value._append(_c);
    @:keep
    public dynamic function _index(_i:stdgo.GoInt):stdgo.GoByte return __self__.value._index(_i);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_lazybuf>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.path.Path.T_lazybuf_asInterface) class T_lazybuf_static_extension {
    @:keep
    static public function _string( _b:stdgo.Ref<T_lazybuf>):stdgo.GoString {
        @:recv var _b:stdgo.Ref<T_lazybuf> = _b;
        if (_b._buf == null) {
            return (_b._s.__slice__(0, _b._w) : stdgo.GoString)?.__copy__();
        };
        return ((_b._buf.__slice__(0, _b._w) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__();
    }
    @:keep
    static public function _append( _b:stdgo.Ref<T_lazybuf>, _c:stdgo.GoByte):Void {
        @:recv var _b:stdgo.Ref<T_lazybuf> = _b;
        if (_b._buf == null) {
            if (((_b._w < (_b._s.length) : Bool) && (_b._s[(_b._w : stdgo.GoInt)] == _c) : Bool)) {
                _b._w++;
                return;
            };
            _b._buf = (new stdgo.Slice<stdgo.GoUInt8>((_b._s.length : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
            stdgo.Go.copySlice(_b._buf, (_b._s.__slice__(0, _b._w) : stdgo.GoString));
        };
        _b._buf[(_b._w : stdgo.GoInt)] = _c;
        _b._w++;
    }
    @:keep
    static public function _index( _b:stdgo.Ref<T_lazybuf>, _i:stdgo.GoInt):stdgo.GoByte {
        @:recv var _b:stdgo.Ref<T_lazybuf> = _b;
        if (_b._buf != null) {
            return _b._buf[(_i : stdgo.GoInt)];
        };
        return _b._s[(_i : stdgo.GoInt)];
    }
}
