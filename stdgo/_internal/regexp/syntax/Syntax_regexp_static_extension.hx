package stdgo._internal.regexp.syntax;
@:keep @:allow(stdgo._internal.regexp.syntax.Syntax.Regexp_asInterface) class Regexp_static_extension {
    @:keep
    @:tdfield
    static public function simplify( _re:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>):stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp> {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp> = _re;
        //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/simplify.go#L15"
        if (({
            final value = _re;
            (value == null || (value : Dynamic).__nil__);
        })) {
            //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/simplify.go#L16"
            return null;
        };
        //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/simplify.go#L18"
        {
            final __value__ = (@:checkr _re ?? throw "null pointer dereference").op;
            if (__value__ == ((13 : stdgo._internal.regexp.syntax.Syntax_op.Op)) || __value__ == ((18 : stdgo._internal.regexp.syntax.Syntax_op.Op)) || __value__ == ((19 : stdgo._internal.regexp.syntax.Syntax_op.Op))) {
                var _nre = _re;
                //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/simplify.go#L22"
                for (_i => _sub in (@:checkr _re ?? throw "null pointer dereference").sub) {
                    var _nsub = _sub.simplify();
                    //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/simplify.go#L24"
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
                        (@:checkr _nre ?? throw "null pointer dereference").sub = (((@:checkr _nre ?? throw "null pointer dereference").sub0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>>).__append__(...(((@:checkr _re ?? throw "null pointer dereference").sub.__slice__(0, _i) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>>) : Array<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>>)) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>>);
                    };
                    //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/simplify.go#L31"
                    if (_nre != (_re)) {
                        (@:checkr _nre ?? throw "null pointer dereference").sub = ((@:checkr _nre ?? throw "null pointer dereference").sub.__append__(_nsub) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>>);
                    };
                };
                //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/simplify.go#L35"
                return _nre;
            } else if (__value__ == ((14 : stdgo._internal.regexp.syntax.Syntax_op.Op)) || __value__ == ((15 : stdgo._internal.regexp.syntax.Syntax_op.Op)) || __value__ == ((16 : stdgo._internal.regexp.syntax.Syntax_op.Op))) {
                var _sub = (@:checkr _re ?? throw "null pointer dereference").sub[(0 : stdgo.GoInt)].simplify();
                //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/simplify.go#L39"
                return stdgo._internal.regexp.syntax.Syntax__simplify1._simplify1((@:checkr _re ?? throw "null pointer dereference").op, (@:checkr _re ?? throw "null pointer dereference").flags, _sub, _re);
            } else if (__value__ == ((17 : stdgo._internal.regexp.syntax.Syntax_op.Op))) {
                //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/simplify.go#L44"
                if ((((@:checkr _re ?? throw "null pointer dereference").min == (0 : stdgo.GoInt)) && ((@:checkr _re ?? throw "null pointer dereference").max == (0 : stdgo.GoInt)) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/simplify.go#L45"
                    return (stdgo.Go.setRef(({ op : (2 : stdgo._internal.regexp.syntax.Syntax_op.Op) } : stdgo._internal.regexp.syntax.Syntax_regexp.Regexp)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>);
                };
                var _sub = (@:checkr _re ?? throw "null pointer dereference").sub[(0 : stdgo.GoInt)].simplify();
                //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/simplify.go#L52"
                if ((@:checkr _re ?? throw "null pointer dereference").max == ((-1 : stdgo.GoInt))) {
                    //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/simplify.go#L54"
                    if ((@:checkr _re ?? throw "null pointer dereference").min == ((0 : stdgo.GoInt))) {
                        //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/simplify.go#L55"
                        return stdgo._internal.regexp.syntax.Syntax__simplify1._simplify1((14 : stdgo._internal.regexp.syntax.Syntax_op.Op), (@:checkr _re ?? throw "null pointer dereference").flags, _sub, null);
                    };
                    //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/simplify.go#L59"
                    if ((@:checkr _re ?? throw "null pointer dereference").min == ((1 : stdgo.GoInt))) {
                        //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/simplify.go#L60"
                        return stdgo._internal.regexp.syntax.Syntax__simplify1._simplify1((15 : stdgo._internal.regexp.syntax.Syntax_op.Op), (@:checkr _re ?? throw "null pointer dereference").flags, _sub, null);
                    };
                    var _nre = (stdgo.Go.setRef(({ op : (18 : stdgo._internal.regexp.syntax.Syntax_op.Op) } : stdgo._internal.regexp.syntax.Syntax_regexp.Regexp)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>);
                    (@:checkr _nre ?? throw "null pointer dereference").sub = ((@:checkr _nre ?? throw "null pointer dereference").sub0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>>);
                    //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/simplify.go#L66"
                    {
                        var _i = (0 : stdgo.GoInt);
                        while ((_i < ((@:checkr _re ?? throw "null pointer dereference").min - (1 : stdgo.GoInt) : stdgo.GoInt) : Bool)) {
                            (@:checkr _nre ?? throw "null pointer dereference").sub = ((@:checkr _nre ?? throw "null pointer dereference").sub.__append__(_sub) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>>);
                            _i++;
                        };
                    };
                    (@:checkr _nre ?? throw "null pointer dereference").sub = ((@:checkr _nre ?? throw "null pointer dereference").sub.__append__(stdgo._internal.regexp.syntax.Syntax__simplify1._simplify1((15 : stdgo._internal.regexp.syntax.Syntax_op.Op), (@:checkr _re ?? throw "null pointer dereference").flags, _sub, null)) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>>);
                    //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/simplify.go#L70"
                    return _nre;
                };
                //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/simplify.go#L76"
                if ((((@:checkr _re ?? throw "null pointer dereference").min == (1 : stdgo.GoInt)) && ((@:checkr _re ?? throw "null pointer dereference").max == (1 : stdgo.GoInt)) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/simplify.go#L77"
                    return _sub;
                };
                var _prefix:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp> = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>);
                //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/simplify.go#L86"
                if (((@:checkr _re ?? throw "null pointer dereference").min > (0 : stdgo.GoInt) : Bool)) {
                    _prefix = (stdgo.Go.setRef(({ op : (18 : stdgo._internal.regexp.syntax.Syntax_op.Op) } : stdgo._internal.regexp.syntax.Syntax_regexp.Regexp)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>);
                    (@:checkr _prefix ?? throw "null pointer dereference").sub = ((@:checkr _prefix ?? throw "null pointer dereference").sub0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>>);
                    //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/simplify.go#L89"
                    {
                        var _i = (0 : stdgo.GoInt);
                        while ((_i < (@:checkr _re ?? throw "null pointer dereference").min : Bool)) {
                            (@:checkr _prefix ?? throw "null pointer dereference").sub = ((@:checkr _prefix ?? throw "null pointer dereference").sub.__append__(_sub) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>>);
                            _i++;
                        };
                    };
                };
                //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/simplify.go#L95"
                if (((@:checkr _re ?? throw "null pointer dereference").max > (@:checkr _re ?? throw "null pointer dereference").min : Bool)) {
                    var _suffix = stdgo._internal.regexp.syntax.Syntax__simplify1._simplify1((16 : stdgo._internal.regexp.syntax.Syntax_op.Op), (@:checkr _re ?? throw "null pointer dereference").flags, _sub, null);
                    //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/simplify.go#L97"
                    {
                        var _i = ((@:checkr _re ?? throw "null pointer dereference").min + (1 : stdgo.GoInt) : stdgo.GoInt);
                        while ((_i < (@:checkr _re ?? throw "null pointer dereference").max : Bool)) {
                            var _nre2 = (stdgo.Go.setRef(({ op : (18 : stdgo._internal.regexp.syntax.Syntax_op.Op) } : stdgo._internal.regexp.syntax.Syntax_regexp.Regexp)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>);
(@:checkr _nre2 ?? throw "null pointer dereference").sub = (((@:checkr _nre2 ?? throw "null pointer dereference").sub0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>>).__append__(_sub, _suffix) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>>);
_suffix = stdgo._internal.regexp.syntax.Syntax__simplify1._simplify1((16 : stdgo._internal.regexp.syntax.Syntax_op.Op), (@:checkr _re ?? throw "null pointer dereference").flags, _nre2, null);
                            _i++;
                        };
                    };
                    //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/simplify.go#L102"
                    if (({
                        final value = _prefix;
                        (value == null || (value : Dynamic).__nil__);
                    })) {
                        //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/simplify.go#L103"
                        return _suffix;
                    };
                    (@:checkr _prefix ?? throw "null pointer dereference").sub = ((@:checkr _prefix ?? throw "null pointer dereference").sub.__append__(_suffix) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>>);
                };
                //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/simplify.go#L107"
                if (({
                    final value = _prefix;
                    (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                })) {
                    //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/simplify.go#L108"
                    return _prefix;
                };
                //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/simplify.go#L113"
                return (stdgo.Go.setRef(({ op : (1 : stdgo._internal.regexp.syntax.Syntax_op.Op) } : stdgo._internal.regexp.syntax.Syntax_regexp.Regexp)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>);
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/simplify.go#L116"
        return _re;
    }
    @:keep
    @:tdfield
    static public function _capNames( _re:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>, _names:stdgo.Slice<stdgo.GoString>):Void {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp> = _re;
        //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/regexp.go#L314"
        if ((@:checkr _re ?? throw "null pointer dereference").op == ((13 : stdgo._internal.regexp.syntax.Syntax_op.Op))) {
            _names[((@:checkr _re ?? throw "null pointer dereference").cap : stdgo.GoInt)] = (@:checkr _re ?? throw "null pointer dereference").name?.__copy__();
        };
        //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/regexp.go#L317"
        for (__1 => _sub in (@:checkr _re ?? throw "null pointer dereference").sub) {
            //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/regexp.go#L318"
            _sub._capNames(_names);
        };
    }
    @:keep
    @:tdfield
    static public function capNames( _re:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>):stdgo.Slice<stdgo.GoString> {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp> = _re;
        var _names = (new stdgo.Slice<stdgo.GoString>((_re.maxCap() + (1 : stdgo.GoInt) : stdgo.GoInt).toBasic(), 0).__setString__() : stdgo.Slice<stdgo.GoString>);
        //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/regexp.go#L309"
        _re._capNames(_names);
        //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/regexp.go#L310"
        return _names;
    }
    @:keep
    @:tdfield
    static public function maxCap( _re:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>):stdgo.GoInt {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp> = _re;
        var _m = (0 : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/regexp.go#L295"
        if ((@:checkr _re ?? throw "null pointer dereference").op == ((13 : stdgo._internal.regexp.syntax.Syntax_op.Op))) {
            _m = (@:checkr _re ?? throw "null pointer dereference").cap;
        };
        //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/regexp.go#L298"
        for (__1 => _sub in (@:checkr _re ?? throw "null pointer dereference").sub) {
            //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/regexp.go#L299"
            {
                var _n = (_sub.maxCap() : stdgo.GoInt);
                if ((_m < _n : Bool)) {
                    _m = _n;
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/regexp.go#L303"
        return _m;
    }
    @:keep
    @:tdfield
    static public function string( _re:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>):stdgo.GoString {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp> = _re;
        var _b:stdgo._internal.strings.Strings_builder.Builder = ({} : stdgo._internal.strings.Strings_builder.Builder);
        //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/regexp.go#L248"
        stdgo._internal.regexp.syntax.Syntax__writeregexp._writeRegexp((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder>), _re);
        //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/regexp.go#L249"
        return (_b.string() : stdgo.GoString)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function equal( _x:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>, _y:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>):Bool {
        @:recv var _x:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp> = _x;
        //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/regexp.go#L64"
        if ((({
            final value = _x;
            (value == null || (value : Dynamic).__nil__);
        }) || ({
            final value = _y;
            (value == null || (value : Dynamic).__nil__);
        }) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/regexp.go#L65"
            return _x == (_y);
        };
        //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/regexp.go#L67"
        if ((@:checkr _x ?? throw "null pointer dereference").op != ((@:checkr _y ?? throw "null pointer dereference").op)) {
            //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/regexp.go#L68"
            return false;
        };
        //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/regexp.go#L70"
        {
            final __value__ = (@:checkr _x ?? throw "null pointer dereference").op;
            if (__value__ == ((10 : stdgo._internal.regexp.syntax.Syntax_op.Op))) {
                //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/regexp.go#L73"
                if (((@:checkr _x ?? throw "null pointer dereference").flags & (256 : stdgo._internal.regexp.syntax.Syntax_flags.Flags) : stdgo._internal.regexp.syntax.Syntax_flags.Flags) != (((@:checkr _y ?? throw "null pointer dereference").flags & (256 : stdgo._internal.regexp.syntax.Syntax_flags.Flags) : stdgo._internal.regexp.syntax.Syntax_flags.Flags))) {
                    //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/regexp.go#L74"
                    return false;
                };
            } else if (__value__ == ((3 : stdgo._internal.regexp.syntax.Syntax_op.Op)) || __value__ == ((4 : stdgo._internal.regexp.syntax.Syntax_op.Op))) {
                //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/regexp.go#L78"
                if (((@:checkr _x ?? throw "null pointer dereference").rune.length) != (((@:checkr _y ?? throw "null pointer dereference").rune.length))) {
                    //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/regexp.go#L79"
                    return false;
                };
                //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/regexp.go#L81"
                for (_i => _r in (@:checkr _x ?? throw "null pointer dereference").rune) {
                    //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/regexp.go#L82"
                    if (_r != ((@:checkr _y ?? throw "null pointer dereference").rune[(_i : stdgo.GoInt)])) {
                        //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/regexp.go#L83"
                        return false;
                    };
                };
            } else if (__value__ == ((19 : stdgo._internal.regexp.syntax.Syntax_op.Op)) || __value__ == ((18 : stdgo._internal.regexp.syntax.Syntax_op.Op))) {
                //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/regexp.go#L88"
                if (((@:checkr _x ?? throw "null pointer dereference").sub.length) != (((@:checkr _y ?? throw "null pointer dereference").sub.length))) {
                    //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/regexp.go#L89"
                    return false;
                };
                //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/regexp.go#L91"
                for (_i => _sub in (@:checkr _x ?? throw "null pointer dereference").sub) {
                    //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/regexp.go#L92"
                    if (!_sub.equal((@:checkr _y ?? throw "null pointer dereference").sub[(_i : stdgo.GoInt)])) {
                        //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/regexp.go#L93"
                        return false;
                    };
                };
            } else if (__value__ == ((14 : stdgo._internal.regexp.syntax.Syntax_op.Op)) || __value__ == ((15 : stdgo._internal.regexp.syntax.Syntax_op.Op)) || __value__ == ((16 : stdgo._internal.regexp.syntax.Syntax_op.Op))) {
                //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/regexp.go#L98"
                if (((((@:checkr _x ?? throw "null pointer dereference").flags & (32 : stdgo._internal.regexp.syntax.Syntax_flags.Flags) : stdgo._internal.regexp.syntax.Syntax_flags.Flags) != ((@:checkr _y ?? throw "null pointer dereference").flags & (32 : stdgo._internal.regexp.syntax.Syntax_flags.Flags) : stdgo._internal.regexp.syntax.Syntax_flags.Flags)) || !(@:checkr _x ?? throw "null pointer dereference").sub[(0 : stdgo.GoInt)].equal((@:checkr _y ?? throw "null pointer dereference").sub[(0 : stdgo.GoInt)]) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/regexp.go#L99"
                    return false;
                };
            } else if (__value__ == ((17 : stdgo._internal.regexp.syntax.Syntax_op.Op))) {
                //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/regexp.go#L103"
                if ((((((@:checkr _x ?? throw "null pointer dereference").flags & (32 : stdgo._internal.regexp.syntax.Syntax_flags.Flags) : stdgo._internal.regexp.syntax.Syntax_flags.Flags) != (((@:checkr _y ?? throw "null pointer dereference").flags & (32 : stdgo._internal.regexp.syntax.Syntax_flags.Flags) : stdgo._internal.regexp.syntax.Syntax_flags.Flags)) || (@:checkr _x ?? throw "null pointer dereference").min != ((@:checkr _y ?? throw "null pointer dereference").min) : Bool) || (@:checkr _x ?? throw "null pointer dereference").max != ((@:checkr _y ?? throw "null pointer dereference").max) : Bool) || !(@:checkr _x ?? throw "null pointer dereference").sub[(0 : stdgo.GoInt)].equal((@:checkr _y ?? throw "null pointer dereference").sub[(0 : stdgo.GoInt)]) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/regexp.go#L104"
                    return false;
                };
            } else if (__value__ == ((13 : stdgo._internal.regexp.syntax.Syntax_op.Op))) {
                //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/regexp.go#L108"
                if ((((@:checkr _x ?? throw "null pointer dereference").cap != ((@:checkr _y ?? throw "null pointer dereference").cap) || (@:checkr _x ?? throw "null pointer dereference").name != ((@:checkr _y ?? throw "null pointer dereference").name) : Bool) || !(@:checkr _x ?? throw "null pointer dereference").sub[(0 : stdgo.GoInt)].equal((@:checkr _y ?? throw "null pointer dereference").sub[(0 : stdgo.GoInt)]) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/regexp.go#L109"
                    return false;
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/regexp.go#L112"
        return true;
    }
}
