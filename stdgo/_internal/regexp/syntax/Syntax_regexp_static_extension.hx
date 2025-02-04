package stdgo._internal.regexp.syntax;
@:keep @:allow(stdgo._internal.regexp.syntax.Syntax.Regexp_asInterface) class Regexp_static_extension {
    @:keep
    @:tdfield
    static public function simplify( _re:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>):stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp> {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp> = _re;
        if ((_re == null || (_re : Dynamic).__nil__)) {
            return null;
        };
        {
            final __value__ = (@:checkr _re ?? throw "null pointer dereference").op;
            if (__value__ == ((13 : stdgo._internal.regexp.syntax.Syntax_op.Op)) || __value__ == ((18 : stdgo._internal.regexp.syntax.Syntax_op.Op)) || __value__ == ((19 : stdgo._internal.regexp.syntax.Syntax_op.Op))) {
                var _nre = _re;
                for (_i => _sub in (@:checkr _re ?? throw "null pointer dereference").sub) {
                    var _nsub = @:check2r _sub.simplify();
                    if (((_nre == _re) && (_nsub != _sub) : Bool)) {
                        _nre = (stdgo.Go.setRef(({} : stdgo._internal.regexp.syntax.Syntax_regexp.Regexp)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>);
                        {
                            var __tmp__ = (_re : stdgo._internal.regexp.syntax.Syntax_regexp.Regexp)?.__copy__();
                            var x = (_nre : stdgo._internal.regexp.syntax.Syntax_regexp.Regexp);
                            x.op = __tmp__?.op;
                            x.flags = __tmp__?.flags;
                            x.sub = __tmp__?.sub;
                            x.sub0 = __tmp__?.sub0;
                            x.rune = __tmp__?.rune;
                            x.rune0 = __tmp__?.rune0;
                            x.min = __tmp__?.min;
                            x.max = __tmp__?.max;
                            x.cap = __tmp__?.cap;
                            x.name = __tmp__?.name;
                        };
                        (@:checkr _nre ?? throw "null pointer dereference").rune = (null : stdgo.Slice<stdgo.GoInt32>);
                        (@:checkr _nre ?? throw "null pointer dereference").sub = (((@:checkr _nre ?? throw "null pointer dereference").sub0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>>).__append__(...(((@:checkr _re ?? throw "null pointer dereference").sub.__slice__(0, _i) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>>) : Array<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>>)));
                    };
                    if (_nre != (_re)) {
                        (@:checkr _nre ?? throw "null pointer dereference").sub = ((@:checkr _nre ?? throw "null pointer dereference").sub.__append__(_nsub));
                    };
                };
                return _nre;
            } else if (__value__ == ((14 : stdgo._internal.regexp.syntax.Syntax_op.Op)) || __value__ == ((15 : stdgo._internal.regexp.syntax.Syntax_op.Op)) || __value__ == ((16 : stdgo._internal.regexp.syntax.Syntax_op.Op))) {
                var _sub = @:check2r (@:checkr _re ?? throw "null pointer dereference").sub[(0 : stdgo.GoInt)].simplify();
                return stdgo._internal.regexp.syntax.Syntax__simplify1._simplify1((@:checkr _re ?? throw "null pointer dereference").op, (@:checkr _re ?? throw "null pointer dereference").flags, _sub, _re);
            } else if (__value__ == ((17 : stdgo._internal.regexp.syntax.Syntax_op.Op))) {
                if ((((@:checkr _re ?? throw "null pointer dereference").min == (0 : stdgo.GoInt)) && ((@:checkr _re ?? throw "null pointer dereference").max == (0 : stdgo.GoInt)) : Bool)) {
                    return (stdgo.Go.setRef(({ op : (2 : stdgo._internal.regexp.syntax.Syntax_op.Op) } : stdgo._internal.regexp.syntax.Syntax_regexp.Regexp)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>);
                };
                var _sub = @:check2r (@:checkr _re ?? throw "null pointer dereference").sub[(0 : stdgo.GoInt)].simplify();
                if ((@:checkr _re ?? throw "null pointer dereference").max == ((-1 : stdgo.GoInt))) {
                    if ((@:checkr _re ?? throw "null pointer dereference").min == ((0 : stdgo.GoInt))) {
                        return stdgo._internal.regexp.syntax.Syntax__simplify1._simplify1((14 : stdgo._internal.regexp.syntax.Syntax_op.Op), (@:checkr _re ?? throw "null pointer dereference").flags, _sub, null);
                    };
                    if ((@:checkr _re ?? throw "null pointer dereference").min == ((1 : stdgo.GoInt))) {
                        return stdgo._internal.regexp.syntax.Syntax__simplify1._simplify1((15 : stdgo._internal.regexp.syntax.Syntax_op.Op), (@:checkr _re ?? throw "null pointer dereference").flags, _sub, null);
                    };
                    var _nre = (stdgo.Go.setRef(({ op : (18 : stdgo._internal.regexp.syntax.Syntax_op.Op) } : stdgo._internal.regexp.syntax.Syntax_regexp.Regexp)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>);
                    (@:checkr _nre ?? throw "null pointer dereference").sub = ((@:checkr _nre ?? throw "null pointer dereference").sub0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>>);
                    {
                        var _i = (0 : stdgo.GoInt);
                        while ((_i < ((@:checkr _re ?? throw "null pointer dereference").min - (1 : stdgo.GoInt) : stdgo.GoInt) : Bool)) {
                            (@:checkr _nre ?? throw "null pointer dereference").sub = ((@:checkr _nre ?? throw "null pointer dereference").sub.__append__(_sub));
                            _i++;
                        };
                    };
                    (@:checkr _nre ?? throw "null pointer dereference").sub = ((@:checkr _nre ?? throw "null pointer dereference").sub.__append__(stdgo._internal.regexp.syntax.Syntax__simplify1._simplify1((15 : stdgo._internal.regexp.syntax.Syntax_op.Op), (@:checkr _re ?? throw "null pointer dereference").flags, _sub, null)));
                    return _nre;
                };
                if ((((@:checkr _re ?? throw "null pointer dereference").min == (1 : stdgo.GoInt)) && ((@:checkr _re ?? throw "null pointer dereference").max == (1 : stdgo.GoInt)) : Bool)) {
                    return _sub;
                };
                var _prefix:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp> = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>);
                if (((@:checkr _re ?? throw "null pointer dereference").min > (0 : stdgo.GoInt) : Bool)) {
                    _prefix = (stdgo.Go.setRef(({ op : (18 : stdgo._internal.regexp.syntax.Syntax_op.Op) } : stdgo._internal.regexp.syntax.Syntax_regexp.Regexp)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>);
                    (@:checkr _prefix ?? throw "null pointer dereference").sub = ((@:checkr _prefix ?? throw "null pointer dereference").sub0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>>);
                    {
                        var _i = (0 : stdgo.GoInt);
                        while ((_i < (@:checkr _re ?? throw "null pointer dereference").min : Bool)) {
                            (@:checkr _prefix ?? throw "null pointer dereference").sub = ((@:checkr _prefix ?? throw "null pointer dereference").sub.__append__(_sub));
                            _i++;
                        };
                    };
                };
                if (((@:checkr _re ?? throw "null pointer dereference").max > (@:checkr _re ?? throw "null pointer dereference").min : Bool)) {
                    var _suffix = stdgo._internal.regexp.syntax.Syntax__simplify1._simplify1((16 : stdgo._internal.regexp.syntax.Syntax_op.Op), (@:checkr _re ?? throw "null pointer dereference").flags, _sub, null);
                    {
                        var _i = ((@:checkr _re ?? throw "null pointer dereference").min + (1 : stdgo.GoInt) : stdgo.GoInt);
                        while ((_i < (@:checkr _re ?? throw "null pointer dereference").max : Bool)) {
                            var _nre2 = (stdgo.Go.setRef(({ op : (18 : stdgo._internal.regexp.syntax.Syntax_op.Op) } : stdgo._internal.regexp.syntax.Syntax_regexp.Regexp)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>);
(@:checkr _nre2 ?? throw "null pointer dereference").sub = (((@:checkr _nre2 ?? throw "null pointer dereference").sub0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>>).__append__(_sub, _suffix));
_suffix = stdgo._internal.regexp.syntax.Syntax__simplify1._simplify1((16 : stdgo._internal.regexp.syntax.Syntax_op.Op), (@:checkr _re ?? throw "null pointer dereference").flags, _nre2, null);
                            _i++;
                        };
                    };
                    if ((_prefix == null || (_prefix : Dynamic).__nil__)) {
                        return _suffix;
                    };
                    (@:checkr _prefix ?? throw "null pointer dereference").sub = ((@:checkr _prefix ?? throw "null pointer dereference").sub.__append__(_suffix));
                };
                if ((_prefix != null && ((_prefix : Dynamic).__nil__ == null || !(_prefix : Dynamic).__nil__))) {
                    return _prefix;
                };
                return (stdgo.Go.setRef(({ op : (1 : stdgo._internal.regexp.syntax.Syntax_op.Op) } : stdgo._internal.regexp.syntax.Syntax_regexp.Regexp)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>);
            };
        };
        return _re;
    }
    @:keep
    @:tdfield
    static public function _capNames( _re:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>, _names:stdgo.Slice<stdgo.GoString>):Void {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp> = _re;
        if ((@:checkr _re ?? throw "null pointer dereference").op == ((13 : stdgo._internal.regexp.syntax.Syntax_op.Op))) {
            _names[((@:checkr _re ?? throw "null pointer dereference").cap : stdgo.GoInt)] = (@:checkr _re ?? throw "null pointer dereference").name?.__copy__();
        };
        for (__1 => _sub in (@:checkr _re ?? throw "null pointer dereference").sub) {
            @:check2r _sub._capNames(_names);
        };
    }
    @:keep
    @:tdfield
    static public function capNames( _re:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>):stdgo.Slice<stdgo.GoString> {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp> = _re;
        var _names = (new stdgo.Slice<stdgo.GoString>((@:check2r _re.maxCap() + (1 : stdgo.GoInt) : stdgo.GoInt).toBasic(), 0).__setString__() : stdgo.Slice<stdgo.GoString>);
        @:check2r _re._capNames(_names);
        return _names;
    }
    @:keep
    @:tdfield
    static public function maxCap( _re:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>):stdgo.GoInt {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp> = _re;
        var _m = (0 : stdgo.GoInt);
        if ((@:checkr _re ?? throw "null pointer dereference").op == ((13 : stdgo._internal.regexp.syntax.Syntax_op.Op))) {
            _m = (@:checkr _re ?? throw "null pointer dereference").cap;
        };
        for (__1 => _sub in (@:checkr _re ?? throw "null pointer dereference").sub) {
            {
                var _n = (@:check2r _sub.maxCap() : stdgo.GoInt);
                if ((_m < _n : Bool)) {
                    _m = _n;
                };
            };
        };
        return _m;
    }
    @:keep
    @:tdfield
    static public function string( _re:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>):stdgo.GoString {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp> = _re;
        var _b:stdgo._internal.strings.Strings_builder.Builder = ({} : stdgo._internal.strings.Strings_builder.Builder);
        stdgo._internal.regexp.syntax.Syntax__writeregexp._writeRegexp((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder>), _re);
        return (@:check2 _b.string() : stdgo.GoString)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function equal( _x:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>, _y:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>):Bool {
        @:recv var _x:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp> = _x;
        if (((_x == null || (_x : Dynamic).__nil__) || (_y == null || (_y : Dynamic).__nil__) : Bool)) {
            return _x == (_y);
        };
        if ((@:checkr _x ?? throw "null pointer dereference").op != ((@:checkr _y ?? throw "null pointer dereference").op)) {
            return false;
        };
        {
            final __value__ = (@:checkr _x ?? throw "null pointer dereference").op;
            if (__value__ == ((10 : stdgo._internal.regexp.syntax.Syntax_op.Op))) {
                if (((@:checkr _x ?? throw "null pointer dereference").flags & (256 : stdgo._internal.regexp.syntax.Syntax_flags.Flags) : stdgo._internal.regexp.syntax.Syntax_flags.Flags) != (((@:checkr _y ?? throw "null pointer dereference").flags & (256 : stdgo._internal.regexp.syntax.Syntax_flags.Flags) : stdgo._internal.regexp.syntax.Syntax_flags.Flags))) {
                    return false;
                };
            } else if (__value__ == ((3 : stdgo._internal.regexp.syntax.Syntax_op.Op)) || __value__ == ((4 : stdgo._internal.regexp.syntax.Syntax_op.Op))) {
                if (((@:checkr _x ?? throw "null pointer dereference").rune.length) != (((@:checkr _y ?? throw "null pointer dereference").rune.length))) {
                    return false;
                };
                for (_i => _r in (@:checkr _x ?? throw "null pointer dereference").rune) {
                    if (_r != ((@:checkr _y ?? throw "null pointer dereference").rune[(_i : stdgo.GoInt)])) {
                        return false;
                    };
                };
            } else if (__value__ == ((19 : stdgo._internal.regexp.syntax.Syntax_op.Op)) || __value__ == ((18 : stdgo._internal.regexp.syntax.Syntax_op.Op))) {
                if (((@:checkr _x ?? throw "null pointer dereference").sub.length) != (((@:checkr _y ?? throw "null pointer dereference").sub.length))) {
                    return false;
                };
                for (_i => _sub in (@:checkr _x ?? throw "null pointer dereference").sub) {
                    if (!@:check2r _sub.equal((@:checkr _y ?? throw "null pointer dereference").sub[(_i : stdgo.GoInt)])) {
                        return false;
                    };
                };
            } else if (__value__ == ((14 : stdgo._internal.regexp.syntax.Syntax_op.Op)) || __value__ == ((15 : stdgo._internal.regexp.syntax.Syntax_op.Op)) || __value__ == ((16 : stdgo._internal.regexp.syntax.Syntax_op.Op))) {
                if (((((@:checkr _x ?? throw "null pointer dereference").flags & (32 : stdgo._internal.regexp.syntax.Syntax_flags.Flags) : stdgo._internal.regexp.syntax.Syntax_flags.Flags) != ((@:checkr _y ?? throw "null pointer dereference").flags & (32 : stdgo._internal.regexp.syntax.Syntax_flags.Flags) : stdgo._internal.regexp.syntax.Syntax_flags.Flags)) || !@:check2r (@:checkr _x ?? throw "null pointer dereference").sub[(0 : stdgo.GoInt)].equal((@:checkr _y ?? throw "null pointer dereference").sub[(0 : stdgo.GoInt)]) : Bool)) {
                    return false;
                };
            } else if (__value__ == ((17 : stdgo._internal.regexp.syntax.Syntax_op.Op))) {
                if ((((((@:checkr _x ?? throw "null pointer dereference").flags & (32 : stdgo._internal.regexp.syntax.Syntax_flags.Flags) : stdgo._internal.regexp.syntax.Syntax_flags.Flags) != (((@:checkr _y ?? throw "null pointer dereference").flags & (32 : stdgo._internal.regexp.syntax.Syntax_flags.Flags) : stdgo._internal.regexp.syntax.Syntax_flags.Flags)) || (@:checkr _x ?? throw "null pointer dereference").min != ((@:checkr _y ?? throw "null pointer dereference").min) : Bool) || (@:checkr _x ?? throw "null pointer dereference").max != ((@:checkr _y ?? throw "null pointer dereference").max) : Bool) || !@:check2r (@:checkr _x ?? throw "null pointer dereference").sub[(0 : stdgo.GoInt)].equal((@:checkr _y ?? throw "null pointer dereference").sub[(0 : stdgo.GoInt)]) : Bool)) {
                    return false;
                };
            } else if (__value__ == ((13 : stdgo._internal.regexp.syntax.Syntax_op.Op))) {
                if ((((@:checkr _x ?? throw "null pointer dereference").cap != ((@:checkr _y ?? throw "null pointer dereference").cap) || (@:checkr _x ?? throw "null pointer dereference").name != ((@:checkr _y ?? throw "null pointer dereference").name) : Bool) || !@:check2r (@:checkr _x ?? throw "null pointer dereference").sub[(0 : stdgo.GoInt)].equal((@:checkr _y ?? throw "null pointer dereference").sub[(0 : stdgo.GoInt)]) : Bool)) {
                    return false;
                };
            };
        };
        return true;
    }
}
