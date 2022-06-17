package stdgo.path;
import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;
var errBadPattern : stdgo.Error = stdgo.errors.Errors.new_(((("syntax error in pattern" : GoString))));
@:structInit @:using(stdgo.path.Path.T_lazybuf_static_extension) class T_lazybuf {
    @:keep
    public function _string():GoString {
        var _b = this;
        _b;
        if (_b._buf == null) {
            return _b._s.__slice__(0, _b._w);
        };
        return ((_b._buf.__slice__(0, _b._w) : GoString));
    }
    @:keep
    public function _append(_c:GoByte):Void {
        var _b = this;
        _b;
        if (_b._buf == null) {
            if ((_b._w < (_b._s != null ? _b._s.length : ((0 : GoInt)))) && ((_b._s != null ? _b._s[_b._w] : ((0 : GoUInt8))) == _c)) {
                _b._w++;
                return;
            };
            _b._buf = new Slice<GoUInt8>(...[for (i in 0 ... (((_b._s != null ? _b._s.length : ((0 : GoInt))) : GoInt)).toBasic()) ((0 : GoUInt8))]);
            Go.copySlice(_b._buf, _b._s.__slice__(0, _b._w));
        };
        if (_b._buf != null) _b._buf[_b._w] = _c;
        _b._w++;
    }
    @:keep
    public function _index(_i:GoInt):GoByte {
        var _b = this;
        _b;
        if (_b._buf != null) {
            return (_b._buf != null ? _b._buf[_i] : ((0 : GoUInt8)));
        };
        return (_b._s != null ? _b._s[_i] : ((0 : GoUInt8)));
    }
    public var _s : GoString = (("" : GoString));
    public var _buf : Slice<GoUInt8> = ((null : Slice<GoUInt8>));
    public var _w : GoInt = ((0 : GoInt));
    public function new(?_s:GoString, ?_buf:Slice<GoUInt8>, ?_w:GoInt) {
        if (_s != null) this._s = _s;
        if (_buf != null) this._buf = _buf;
        if (_w != null) this._w = _w;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_lazybuf(_s, _buf, _w);
    }
}
function match(_pattern:GoString, _name:GoString):{ var _0 : Bool; var _1 : Error; } {
        return stdgo.internal.Macro.controlFlow({
            var _matched:Bool = false, _err:Error = ((null : stdgo.Error));
            @:label("Pattern") while ((_pattern != null ? _pattern.length : ((0 : GoInt))) > ((0 : GoInt))) {
                var _star:Bool = false;
                var _chunk:GoString = (("" : GoString));
                {
                    var __tmp__ = _scanChunk(_pattern);
                    _star = __tmp__._0;
                    _chunk = __tmp__._1;
                    _pattern = __tmp__._2;
                };
                if (_star && (_chunk == (""))) {
                    return { _0 : stdgo.internal.bytealg.Bytealg.indexByteString(_name, ((((("/" : GoString))).code : GoRune))) < ((0 : GoInt)), _1 : ((null : stdgo.Error)) };
                };
                var __tmp__ = _matchChunk(_chunk, _name), _t:GoString = __tmp__._0, _ok:Bool = __tmp__._1, _err:stdgo.Error = __tmp__._2;
                if (_ok && (((_t != null ? _t.length : ((0 : GoInt))) == ((0 : GoInt))) || ((_pattern != null ? _pattern.length : ((0 : GoInt))) > ((0 : GoInt))))) {
                    _name = _t;
                    continue;
                };
                if (_err != null) {
                    return { _0 : false, _1 : _err };
                };
                if (_star) {
                    {
                        var _i:GoInt = ((0 : GoInt));
                        Go.cfor((_i < (_name != null ? _name.length : ((0 : GoInt)))) && ((_name != null ? _name[_i] : ((0 : GoUInt8))) != ((((("/" : GoString))).code : GoRune))), _i++, {
                            var __tmp__ = _matchChunk(_chunk, _name.__slice__(_i + ((1 : GoInt)))), _t:GoString = __tmp__._0, _ok:Bool = __tmp__._1, _err:stdgo.Error = __tmp__._2;
                            if (_ok) {
                                if (((_pattern != null ? _pattern.length : ((0 : GoInt))) == ((0 : GoInt))) && ((_t != null ? _t.length : ((0 : GoInt))) > ((0 : GoInt)))) {
                                    continue;
                                };
                                _name = _t;
                                continue;
                            };
                            if (_err != null) {
                                return { _0 : false, _1 : _err };
                            };
                        });
                    };
                };
                while ((_pattern != null ? _pattern.length : ((0 : GoInt))) > ((0 : GoInt))) {
                    {
                        var __tmp__ = _scanChunk(_pattern);
                        _chunk = __tmp__._1;
                        _pattern = __tmp__._2;
                    };
                    {
                        var __tmp__ = _matchChunk(_chunk, ("")), _0:GoString = __tmp__._0, _1:Bool = __tmp__._1, _err:stdgo.Error = __tmp__._2;
                        if (_err != null) {
                            return { _0 : false, _1 : _err };
                        };
                    };
                };
                return { _0 : false, _1 : ((null : stdgo.Error)) };
            };
            return { _0 : (_name != null ? _name.length : ((0 : GoInt))) == ((0 : GoInt)), _1 : ((null : stdgo.Error)) };
        });
    }
function _scanChunk(_pattern:GoString):{ var _0 : Bool; var _1 : GoString; var _2 : GoString; } {
        return stdgo.internal.Macro.controlFlow({
            var _star:Bool = false, _chunk:GoString = (("" : GoString)), _rest:GoString = (("" : GoString));
            while (((_pattern != null ? _pattern.length : ((0 : GoInt))) > ((0 : GoInt))) && ((_pattern != null ? _pattern[((0 : GoInt))] : ((0 : GoUInt8))) == ((((("*" : GoString))).code : GoRune)))) {
                _pattern = _pattern.__slice__(((1 : GoInt)));
                _star = true;
            };
            var _inrange:Bool = false;
            var _i:GoInt = ((0 : GoInt));
            @:label("Scan") {
                _i = ((0 : GoInt));
                Go.cfor(_i < (_pattern != null ? _pattern.length : ((0 : GoInt))), _i++, {
                    {
                        var __switchIndex__ = -1;
                        while (true) {
                            if ((_pattern != null ? _pattern[_i] : ((0 : GoUInt8))) == ((((("\\" : GoString))).code : GoRune))) {
                                if ((_i + ((1 : GoInt))) < (_pattern != null ? _pattern.length : ((0 : GoInt)))) {
                                    _i++;
                                };
                                break;
                            } else if ((_pattern != null ? _pattern[_i] : ((0 : GoUInt8))) == ((((("[" : GoString))).code : GoRune))) {
                                _inrange = true;
                                break;
                            } else if ((_pattern != null ? _pattern[_i] : ((0 : GoUInt8))) == ((((("]" : GoString))).code : GoRune))) {
                                _inrange = false;
                                break;
                            } else if ((_pattern != null ? _pattern[_i] : ((0 : GoUInt8))) == ((((("*" : GoString))).code : GoRune))) {
                                if (!_inrange) {
                                    @:break {
                                        ____exit____ = true;
                                        ____break____ = true;
                                        break;
                                    };
                                };
                                break;
                            };
                            break;
                        };
                    };
                });
            };
            return { _0 : _star, _1 : _pattern.__slice__(((0 : GoInt)), _i), _2 : _pattern.__slice__(_i) };
        });
    }
function _matchChunk(_chunk:GoString, _s:GoString):{ var _0 : GoString; var _1 : Bool; var _2 : Error; } {
        var _rest:GoString = (("" : GoString)), _ok:Bool = false, _err:Error = ((null : stdgo.Error));
        var _failed:Bool = false;
        while ((_chunk != null ? _chunk.length : ((0 : GoInt))) > ((0 : GoInt))) {
            if (!_failed && ((_s != null ? _s.length : ((0 : GoInt))) == ((0 : GoInt)))) {
                _failed = true;
            };
            {
                var __switchIndex__ = -1;
                while (true) {
                    if (__switchIndex__ == 0 || (__switchIndex__ == -1 && (_chunk != null ? _chunk[((0 : GoInt))] : ((0 : GoUInt8))) == ((((("[" : GoString))).code : GoRune)))) {
                        var _r:GoRune = ((0 : GoInt32));
                        if (!_failed) {
                            var _n:GoInt = ((0 : GoInt));
                            {
                                var __tmp__ = stdgo.unicode.utf8.Utf8.decodeRuneInString(_s);
                                _r = __tmp__._0;
                                _n = __tmp__._1;
                            };
                            _s = _s.__slice__(_n);
                        };
                        _chunk = _chunk.__slice__(((1 : GoInt)));
                        var _negated:Bool = false;
                        if (((_chunk != null ? _chunk.length : ((0 : GoInt))) > ((0 : GoInt))) && ((_chunk != null ? _chunk[((0 : GoInt))] : ((0 : GoUInt8))) == ((((("^" : GoString))).code : GoRune)))) {
                            _negated = true;
                            _chunk = _chunk.__slice__(((1 : GoInt)));
                        };
                        var _match:Bool = false;
                        var _nrange:GoInt = ((0 : GoInt));
                        while (true) {
                            if ((((_chunk != null ? _chunk.length : ((0 : GoInt))) > ((0 : GoInt))) && ((_chunk != null ? _chunk[((0 : GoInt))] : ((0 : GoUInt8))) == ((((("]" : GoString))).code : GoRune)))) && (_nrange > ((0 : GoInt)))) {
                                _chunk = _chunk.__slice__(((1 : GoInt)));
                                break;
                            };
                            var _lo:GoRune = ((0 : GoInt32)), _hi:GoRune = ((0 : GoInt32));
                            {
                                {
                                    var __tmp__ = _getEsc(_chunk);
                                    _lo = __tmp__._0;
                                    _chunk = __tmp__._1;
                                    _err = __tmp__._2;
                                };
                                if (_err != null) {
                                    return { _0 : (""), _1 : false, _2 : _err };
                                };
                            };
                            _hi = _lo;
                            if ((_chunk != null ? _chunk[((0 : GoInt))] : ((0 : GoUInt8))) == ((((("-" : GoString))).code : GoRune))) {
                                {
                                    {
                                        var __tmp__ = _getEsc(_chunk.__slice__(((1 : GoInt))));
                                        _hi = __tmp__._0;
                                        _chunk = __tmp__._1;
                                        _err = __tmp__._2;
                                    };
                                    if (_err != null) {
                                        return { _0 : (""), _1 : false, _2 : _err };
                                    };
                                };
                            };
                            if ((_lo <= _r) && (_r <= _hi)) {
                                _match = true;
                            };
                            _nrange++;
                        };
                        if (_match == _negated) {
                            _failed = true;
                        };
                        break;
                        break;
                    } else if (__switchIndex__ == 1 || (__switchIndex__ == -1 && (_chunk != null ? _chunk[((0 : GoInt))] : ((0 : GoUInt8))) == ((((("?" : GoString))).code : GoRune)))) {
                        if (!_failed) {
                            if ((_s != null ? _s[((0 : GoInt))] : ((0 : GoUInt8))) == ((((("/" : GoString))).code : GoRune))) {
                                _failed = true;
                            };
                            var __tmp__ = stdgo.unicode.utf8.Utf8.decodeRuneInString(_s), _0:GoInt32 = __tmp__._0, _n:GoInt = __tmp__._1;
                            _s = _s.__slice__(_n);
                        };
                        _chunk = _chunk.__slice__(((1 : GoInt)));
                        break;
                        break;
                    } else if (__switchIndex__ == 2 || (__switchIndex__ == -1 && (_chunk != null ? _chunk[((0 : GoInt))] : ((0 : GoUInt8))) == ((((("\\" : GoString))).code : GoRune)))) {
                        _chunk = _chunk.__slice__(((1 : GoInt)));
                        if ((_chunk != null ? _chunk.length : ((0 : GoInt))) == ((0 : GoInt))) {
                            return { _0 : (""), _1 : false, _2 : errBadPattern };
                        };
                        @:fallthrough {
                            __switchIndex__ = 3;
                            continue;
                        };
                        break;
                    } else {
                        if (!_failed) {
                            if ((_chunk != null ? _chunk[((0 : GoInt))] : ((0 : GoUInt8))) != (_s != null ? _s[((0 : GoInt))] : ((0 : GoUInt8)))) {
                                _failed = true;
                            };
                            _s = _s.__slice__(((1 : GoInt)));
                        };
                        _chunk = _chunk.__slice__(((1 : GoInt)));
                        break;
                    };
                    break;
                };
            };
        };
        if (_failed) {
            return { _0 : (""), _1 : false, _2 : ((null : stdgo.Error)) };
        };
        return { _0 : _s, _1 : true, _2 : ((null : stdgo.Error)) };
    }
function _getEsc(_chunk:GoString):{ var _0 : GoRune; var _1 : GoString; var _2 : Error; } {
        var _r:GoRune = ((0 : GoInt32)), _nchunk:GoString = (("" : GoString)), _err:Error = ((null : stdgo.Error));
        if ((((_chunk != null ? _chunk.length : ((0 : GoInt))) == ((0 : GoInt))) || ((_chunk != null ? _chunk[((0 : GoInt))] : ((0 : GoUInt8))) == ((((("-" : GoString))).code : GoRune)))) || ((_chunk != null ? _chunk[((0 : GoInt))] : ((0 : GoUInt8))) == ((((("]" : GoString))).code : GoRune)))) {
            _err = errBadPattern;
            return { _0 : _r, _1 : _nchunk, _2 : _err };
        };
        if ((_chunk != null ? _chunk[((0 : GoInt))] : ((0 : GoUInt8))) == ((((("\\" : GoString))).code : GoRune))) {
            _chunk = _chunk.__slice__(((1 : GoInt)));
            if ((_chunk != null ? _chunk.length : ((0 : GoInt))) == ((0 : GoInt))) {
                _err = errBadPattern;
                return { _0 : _r, _1 : _nchunk, _2 : _err };
            };
        };
        var __tmp__ = stdgo.unicode.utf8.Utf8.decodeRuneInString(_chunk), _r:GoInt32 = __tmp__._0, _n:GoInt = __tmp__._1;
        if ((_r == ((65533 : GoInt32))) && (_n == ((1 : GoInt)))) {
            _err = errBadPattern;
        };
        _nchunk = _chunk.__slice__(_n);
        if ((_nchunk != null ? _nchunk.length : ((0 : GoInt))) == ((0 : GoInt))) {
            _err = errBadPattern;
        };
        return { _0 : _r, _1 : _nchunk, _2 : _err };
    }
function clean(_path:GoString):GoString {
        if (_path == ("")) {
            return ((("." : GoString)));
        };
        var _rooted:Bool = (_path != null ? _path[((0 : GoInt))] : ((0 : GoUInt8))) == ((((("/" : GoString))).code : GoRune));
        var _n:GoInt = (_path != null ? _path.length : ((0 : GoInt)));
        var _out:T_lazybuf = ((({ _s : _path, _buf : ((null : Slice<GoUInt8>)), _w : 0 } : T_lazybuf)) == null ? null : (({ _s : _path, _buf : ((null : Slice<GoUInt8>)), _w : 0 } : T_lazybuf)).__copy__());
        var _r:GoInt = ((0 : GoInt)), _dotdot:GoInt = ((0 : GoInt));
        if (_rooted) {
            _out._append(((((("/" : GoString))).code : GoRune)));
            {
                final __tmp__0 = ((1 : GoInt));
                final __tmp__1 = ((1 : GoInt));
                _r = __tmp__0;
                _dotdot = __tmp__1;
            };
        };
        while (_r < _n) {
            if ((_path != null ? _path[_r] : ((0 : GoUInt8))) == ((((("/" : GoString))).code : GoRune))) {
                _r++;
            } else if (((_path != null ? _path[_r] : ((0 : GoUInt8))) == ((((("." : GoString))).code : GoRune))) && (((_r + ((1 : GoInt))) == _n) || ((_path != null ? _path[_r + ((1 : GoInt))] : ((0 : GoUInt8))) == ((((("/" : GoString))).code : GoRune))))) {
                _r++;
            } else if ((((_path != null ? _path[_r] : ((0 : GoUInt8))) == ((((("." : GoString))).code : GoRune))) && ((_path != null ? _path[_r + ((1 : GoInt))] : ((0 : GoUInt8))) == ((((("." : GoString))).code : GoRune)))) && (((_r + ((2 : GoInt))) == _n) || ((_path != null ? _path[_r + ((2 : GoInt))] : ((0 : GoUInt8))) == ((((("/" : GoString))).code : GoRune))))) {
                _r = _r + (((2 : GoInt)));
                if (_out._w > _dotdot) {
                    _out._w--;
                    while ((_out._w > _dotdot) && (_out._index(_out._w) != ((((("/" : GoString))).code : GoRune)))) {
                        _out._w--;
                    };
                } else if (!_rooted) {
                    if (_out._w > ((0 : GoInt))) {
                        _out._append(((((("/" : GoString))).code : GoRune)));
                    };
                    _out._append(((((("." : GoString))).code : GoRune)));
                    _out._append(((((("." : GoString))).code : GoRune)));
                    _dotdot = _out._w;
                };
            } else {
                if ((_rooted && (_out._w != ((1 : GoInt)))) || (!_rooted && (_out._w != ((0 : GoInt))))) {
                    _out._append(((((("/" : GoString))).code : GoRune)));
                };
                Go.cfor((_r < _n) && ((_path != null ? _path[_r] : ((0 : GoUInt8))) != ((((("/" : GoString))).code : GoRune))), _r++, {
                    _out._append((_path != null ? _path[_r] : ((0 : GoUInt8))));
                });
            };
        };
        if (_out._w == ((0 : GoInt))) {
            return ((("." : GoString)));
        };
        return _out._string();
    }
function _lastSlash(_s:GoString):GoInt {
        var _i:GoInt = (_s != null ? _s.length : ((0 : GoInt))) - ((1 : GoInt));
        while ((_i >= ((0 : GoInt))) && ((_s != null ? _s[_i] : ((0 : GoUInt8))) != ((((("/" : GoString))).code : GoRune)))) {
            _i--;
        };
        return _i;
    }
function split(_path:GoString):{ var _0 : GoString; var _1 : GoString; } {
        var _dir:GoString = (("" : GoString)), _file:GoString = (("" : GoString));
        var _i:GoInt = _lastSlash(_path);
        return { _0 : _path.__slice__(0, _i + ((1 : GoInt))), _1 : _path.__slice__(_i + ((1 : GoInt))) };
    }
function join(_elem:haxe.Rest<GoString>):GoString {
        var _elem = new Slice<GoString>(..._elem);
        var _size:GoInt = ((0 : GoInt));
        for (_0 => _e in _elem) {
            _size = _size + ((_e != null ? _e.length : ((0 : GoInt))));
        };
        if (_size == ((0 : GoInt))) {
            return ("");
        };
        var _buf:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((((0 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]).__setCap__((((_size + (_elem != null ? _elem.length : ((0 : GoInt)))) - ((1 : GoInt)) : GoInt)).toBasic());
        for (_1 => _e in _elem) {
            if (((_buf != null ? _buf.length : ((0 : GoInt))) > ((0 : GoInt))) || (_e != (""))) {
                if ((_buf != null ? _buf.length : ((0 : GoInt))) > ((0 : GoInt))) {
                    _buf = (_buf != null ? _buf.__append__(((((("/" : GoString))).code : GoRune))) : new Slice<GoUInt8>(((((("/" : GoString))).code : GoRune))));
                };
                _buf = (_buf != null ? _buf.__append__(..._e.__toArray__()) : new Slice<GoUInt8>(..._e.__toArray__()));
            };
        };
        return clean(((_buf : GoString)));
    }
function ext(_path:GoString):GoString {
        {
            var _i:GoInt = (_path != null ? _path.length : ((0 : GoInt))) - ((1 : GoInt));
            Go.cfor((_i >= ((0 : GoInt))) && ((_path != null ? _path[_i] : ((0 : GoUInt8))) != ((((("/" : GoString))).code : GoRune))), _i--, {
                if ((_path != null ? _path[_i] : ((0 : GoUInt8))) == ((((("." : GoString))).code : GoRune))) {
                    return _path.__slice__(_i);
                };
            });
        };
        return ("");
    }
function base(_path:GoString):GoString {
        if (_path == ("")) {
            return ((("." : GoString)));
        };
        while (((_path != null ? _path.length : ((0 : GoInt))) > ((0 : GoInt))) && ((_path != null ? _path[(_path != null ? _path.length : ((0 : GoInt))) - ((1 : GoInt))] : ((0 : GoUInt8))) == ((((("/" : GoString))).code : GoRune)))) {
            _path = _path.__slice__(((0 : GoInt)), (_path != null ? _path.length : ((0 : GoInt))) - ((1 : GoInt)));
        };
        {
            var _i:GoInt = _lastSlash(_path);
            if (_i >= ((0 : GoInt))) {
                _path = _path.__slice__(_i + ((1 : GoInt)));
            };
        };
        if (_path == ("")) {
            return ((("/" : GoString)));
        };
        return _path;
    }
function isAbs(_path:GoString):Bool {
        return ((_path != null ? _path.length : ((0 : GoInt))) > ((0 : GoInt))) && ((_path != null ? _path[((0 : GoInt))] : ((0 : GoUInt8))) == ((((("/" : GoString))).code : GoRune)));
    }
function dir(_path:GoString):GoString {
        var __tmp__ = split(_path), _dir:GoString = __tmp__._0, _0:GoString = __tmp__._1;
        return clean(_dir);
    }
@:keep class T_lazybuf_static_extension {

}
class T_lazybuf_wrapper {
    public var __t__ : T_lazybuf;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
