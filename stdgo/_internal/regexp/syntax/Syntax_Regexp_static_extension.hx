package stdgo._internal.regexp.syntax;
@:keep @:allow(stdgo._internal.regexp.syntax.Syntax.Regexp_asInterface) class Regexp_static_extension {
    @:keep
    static public function simplify( _re:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>):stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp> {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp> = _re;
        if ((_re == null || (_re : Dynamic).__nil__)) {
            return null;
        };
        {
            final __value__ = _re.op;
            if (__value__ == ((13 : stdgo._internal.regexp.syntax.Syntax_Op.Op)) || __value__ == ((18 : stdgo._internal.regexp.syntax.Syntax_Op.Op)) || __value__ == ((19 : stdgo._internal.regexp.syntax.Syntax_Op.Op))) {
                var _nre = _re;
                for (_i => _sub in _re.sub) {
                    var _nsub = _sub.simplify();
                    if (((_nre == _re) && (_nsub != _sub) : Bool)) {
                        _nre = (stdgo.Go.setRef(({} : stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>);
                        {
                            var __tmp__ = (_re : stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp)?.__copy__();
                            var x = (_nre : stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp);
                            x.op = __tmp__.op;
                            x.flags = __tmp__.flags;
                            x.sub = __tmp__.sub;
                            x.sub0 = __tmp__.sub0;
                            x.rune = __tmp__.rune;
                            x.rune0 = __tmp__.rune0;
                            x.min = __tmp__.min;
                            x.max = __tmp__.max;
                            x.cap = __tmp__.cap;
                            x.name = __tmp__.name;
                        };
                        _nre.rune = (null : stdgo.Slice<stdgo.GoInt32>);
                        _nre.sub = ((_nre.sub0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>>).__append__(...((_re.sub.__slice__(0, _i) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>>) : Array<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>>)));
                    };
                    if (_nre != (_re)) {
                        _nre.sub = (_nre.sub.__append__(_nsub));
                    };
                };
                return _nre;
            } else if (__value__ == ((14 : stdgo._internal.regexp.syntax.Syntax_Op.Op)) || __value__ == ((15 : stdgo._internal.regexp.syntax.Syntax_Op.Op)) || __value__ == ((16 : stdgo._internal.regexp.syntax.Syntax_Op.Op))) {
                var _sub = _re.sub[(0 : stdgo.GoInt)].simplify();
                return stdgo._internal.regexp.syntax.Syntax__simplify1._simplify1(_re.op, _re.flags, _sub, _re);
            } else if (__value__ == ((17 : stdgo._internal.regexp.syntax.Syntax_Op.Op))) {
                if (((_re.min == (0 : stdgo.GoInt)) && (_re.max == (0 : stdgo.GoInt)) : Bool)) {
                    return (stdgo.Go.setRef(({ op : (2 : stdgo._internal.regexp.syntax.Syntax_Op.Op) } : stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>);
                };
                var _sub = _re.sub[(0 : stdgo.GoInt)].simplify();
                if (_re.max == ((-1 : stdgo.GoInt))) {
                    if (_re.min == ((0 : stdgo.GoInt))) {
                        return stdgo._internal.regexp.syntax.Syntax__simplify1._simplify1((14 : stdgo._internal.regexp.syntax.Syntax_Op.Op), _re.flags, _sub, null);
                    };
                    if (_re.min == ((1 : stdgo.GoInt))) {
                        return stdgo._internal.regexp.syntax.Syntax__simplify1._simplify1((15 : stdgo._internal.regexp.syntax.Syntax_Op.Op), _re.flags, _sub, null);
                    };
                    var _nre = (stdgo.Go.setRef(({ op : (18 : stdgo._internal.regexp.syntax.Syntax_Op.Op) } : stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>);
                    _nre.sub = (_nre.sub0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>>);
                    {
                        var _i = (0 : stdgo.GoInt);
                        while ((_i < (_re.min - (1 : stdgo.GoInt) : stdgo.GoInt) : Bool)) {
                            _nre.sub = (_nre.sub.__append__(_sub));
                            _i++;
                        };
                    };
                    _nre.sub = (_nre.sub.__append__(stdgo._internal.regexp.syntax.Syntax__simplify1._simplify1((15 : stdgo._internal.regexp.syntax.Syntax_Op.Op), _re.flags, _sub, null)));
                    return _nre;
                };
                if (((_re.min == (1 : stdgo.GoInt)) && (_re.max == (1 : stdgo.GoInt)) : Bool)) {
                    return _sub;
                };
                var _prefix:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp> = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>);
                if ((_re.min > (0 : stdgo.GoInt) : Bool)) {
                    _prefix = (stdgo.Go.setRef(({ op : (18 : stdgo._internal.regexp.syntax.Syntax_Op.Op) } : stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>);
                    _prefix.sub = (_prefix.sub0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>>);
                    {
                        var _i = (0 : stdgo.GoInt);
                        while ((_i < _re.min : Bool)) {
                            _prefix.sub = (_prefix.sub.__append__(_sub));
                            _i++;
                        };
                    };
                };
                if ((_re.max > _re.min : Bool)) {
                    var _suffix = stdgo._internal.regexp.syntax.Syntax__simplify1._simplify1((16 : stdgo._internal.regexp.syntax.Syntax_Op.Op), _re.flags, _sub, null);
                    {
                        var _i = (_re.min + (1 : stdgo.GoInt) : stdgo.GoInt);
                        while ((_i < _re.max : Bool)) {
                            var _nre2 = (stdgo.Go.setRef(({ op : (18 : stdgo._internal.regexp.syntax.Syntax_Op.Op) } : stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>);
_nre2.sub = ((_nre2.sub0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>>).__append__(_sub, _suffix));
_suffix = stdgo._internal.regexp.syntax.Syntax__simplify1._simplify1((16 : stdgo._internal.regexp.syntax.Syntax_Op.Op), _re.flags, _nre2, null);
                            _i++;
                        };
                    };
                    if ((_prefix == null || (_prefix : Dynamic).__nil__)) {
                        return _suffix;
                    };
                    _prefix.sub = (_prefix.sub.__append__(_suffix));
                };
                if ((_prefix != null && ((_prefix : Dynamic).__nil__ == null || !(_prefix : Dynamic).__nil__))) {
                    return _prefix;
                };
                return (stdgo.Go.setRef(({ op : (1 : stdgo._internal.regexp.syntax.Syntax_Op.Op) } : stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>);
            };
        };
        return _re;
    }
    @:keep
    static public function _capNames( _re:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>, _names:stdgo.Slice<stdgo.GoString>):Void {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp> = _re;
        if (_re.op == ((13 : stdgo._internal.regexp.syntax.Syntax_Op.Op))) {
            _names[(_re.cap : stdgo.GoInt)] = _re.name?.__copy__();
        };
        for (__1 => _sub in _re.sub) {
            _sub._capNames(_names);
        };
    }
    @:keep
    static public function capNames( _re:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>):stdgo.Slice<stdgo.GoString> {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp> = _re;
        var _names = (new stdgo.Slice<stdgo.GoString>((_re.maxCap() + (1 : stdgo.GoInt) : stdgo.GoInt).toBasic(), 0).__setString__() : stdgo.Slice<stdgo.GoString>);
        _re._capNames(_names);
        return _names;
    }
    @:keep
    static public function maxCap( _re:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>):stdgo.GoInt {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp> = _re;
        var _m = (0 : stdgo.GoInt);
        if (_re.op == ((13 : stdgo._internal.regexp.syntax.Syntax_Op.Op))) {
            _m = _re.cap;
        };
        for (__1 => _sub in _re.sub) {
            {
                var _n = (_sub.maxCap() : stdgo.GoInt);
                if ((_m < _n : Bool)) {
                    _m = _n;
                };
            };
        };
        return _m;
    }
    @:keep
    static public function string( _re:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>):stdgo.GoString {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp> = _re;
        var _b:stdgo._internal.strings.Strings_Builder.Builder = ({} : stdgo._internal.strings.Strings_Builder.Builder);
        stdgo._internal.regexp.syntax.Syntax__writeRegexp._writeRegexp((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.strings.Strings_Builder.Builder>), _re);
        return (_b.string() : stdgo.GoString)?.__copy__();
    }
    @:keep
    static public function equal( _x:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>, _y:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>):Bool {
        @:recv var _x:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp> = _x;
        if (((_x == null || (_x : Dynamic).__nil__) || (_y == null || (_y : Dynamic).__nil__) : Bool)) {
            return _x == (_y);
        };
        if (_x.op != (_y.op)) {
            return false;
        };
        {
            final __value__ = _x.op;
            if (__value__ == ((10 : stdgo._internal.regexp.syntax.Syntax_Op.Op))) {
                if ((_x.flags & (256 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((_y.flags & (256 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                    return false;
                };
            } else if (__value__ == ((3 : stdgo._internal.regexp.syntax.Syntax_Op.Op)) || __value__ == ((4 : stdgo._internal.regexp.syntax.Syntax_Op.Op))) {
                if ((_x.rune.length) != ((_y.rune.length))) {
                    return false;
                };
                for (_i => _r in _x.rune) {
                    if (_r != (_y.rune[(_i : stdgo.GoInt)])) {
                        return false;
                    };
                };
            } else if (__value__ == ((19 : stdgo._internal.regexp.syntax.Syntax_Op.Op)) || __value__ == ((18 : stdgo._internal.regexp.syntax.Syntax_Op.Op))) {
                if ((_x.sub.length) != ((_y.sub.length))) {
                    return false;
                };
                for (_i => _sub in _x.sub) {
                    if (!_sub.equal(_y.sub[(_i : stdgo.GoInt)])) {
                        return false;
                    };
                };
            } else if (__value__ == ((14 : stdgo._internal.regexp.syntax.Syntax_Op.Op)) || __value__ == ((15 : stdgo._internal.regexp.syntax.Syntax_Op.Op)) || __value__ == ((16 : stdgo._internal.regexp.syntax.Syntax_Op.Op))) {
                if ((((_x.flags & (32 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != (_y.flags & (32 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) || !_x.sub[(0 : stdgo.GoInt)].equal(_y.sub[(0 : stdgo.GoInt)]) : Bool)) {
                    return false;
                };
            } else if (__value__ == ((17 : stdgo._internal.regexp.syntax.Syntax_Op.Op))) {
                if (((((_x.flags & (32 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((_y.flags & (32 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) || _x.min != (_y.min) : Bool) || _x.max != (_y.max) : Bool) || !_x.sub[(0 : stdgo.GoInt)].equal(_y.sub[(0 : stdgo.GoInt)]) : Bool)) {
                    return false;
                };
            } else if (__value__ == ((13 : stdgo._internal.regexp.syntax.Syntax_Op.Op))) {
                if (((_x.cap != (_y.cap) || _x.name != (_y.name) : Bool) || !_x.sub[(0 : stdgo.GoInt)].equal(_y.sub[(0 : stdgo.GoInt)]) : Bool)) {
                    return false;
                };
            };
        };
        return true;
    }
}
