package stdgo._internal.debug.gosym;
@:keep @:allow(stdgo._internal.debug.gosym.Gosym.Sym_asInterface) class Sym_static_extension {
    @:keep
    @:tdfield
    static public function baseName( _s:stdgo.Ref<stdgo._internal.debug.gosym.Gosym_sym.Sym>):stdgo.GoString {
        @:recv var _s:stdgo.Ref<stdgo._internal.debug.gosym.Gosym_sym.Sym> = _s;
        var _name = (_s._nameWithoutInst()?.__copy__() : stdgo.GoString);
        //"file:///home/runner/.go/go1.21.3/src/debug/gosym/symtab.go#L114"
        {
            var _i = (stdgo._internal.strings.Strings_lastindex.lastIndex(_name?.__copy__(), ("." : stdgo.GoString)) : stdgo.GoInt);
            if (_i != ((-1 : stdgo.GoInt))) {
                //"file:///home/runner/.go/go1.21.3/src/debug/gosym/symtab.go#L115"
                if ((@:checkr _s ?? throw "null pointer dereference").name != (_name)) {
                    var _brack = (stdgo._internal.strings.Strings_index.index((@:checkr _s ?? throw "null pointer dereference").name?.__copy__(), ("[" : stdgo.GoString)) : stdgo.GoInt);
                    //"file:///home/runner/.go/go1.21.3/src/debug/gosym/symtab.go#L117"
                    if ((_i > _brack : Bool)) {
                        _i = stdgo._internal.strings.Strings_lastindex.lastIndex((@:checkr _s ?? throw "null pointer dereference").name?.__copy__(), ("." : stdgo.GoString));
                    };
                };
                //"file:///home/runner/.go/go1.21.3/src/debug/gosym/symtab.go#L125"
                return ((@:checkr _s ?? throw "null pointer dereference").name.__slice__((_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/debug/gosym/symtab.go#L127"
        return (@:checkr _s ?? throw "null pointer dereference").name?.__copy__();
    }
    @:keep
    @:tdfield
    static public function receiverName( _s:stdgo.Ref<stdgo._internal.debug.gosym.Gosym_sym.Sym>):stdgo.GoString {
        @:recv var _s:stdgo.Ref<stdgo._internal.debug.gosym.Gosym_sym.Sym> = _s;
        var _name = (_s._nameWithoutInst()?.__copy__() : stdgo.GoString);
        var _pathend = (stdgo._internal.strings.Strings_lastindex.lastIndex(_name?.__copy__(), ("/" : stdgo.GoString)) : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/debug/gosym/symtab.go#L92"
        if ((_pathend < (0 : stdgo.GoInt) : Bool)) {
            _pathend = (0 : stdgo.GoInt);
        };
        var _l = (stdgo._internal.strings.Strings_index.index((_name.__slice__(_pathend) : stdgo.GoString)?.__copy__(), ("." : stdgo.GoString)) : stdgo.GoInt);
        var _r = (stdgo._internal.strings.Strings_lastindex.lastIndex((_name.__slice__(_pathend) : stdgo.GoString)?.__copy__(), ("." : stdgo.GoString)) : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/debug/gosym/symtab.go#L100"
        if (((_l == ((-1 : stdgo.GoInt)) || _r == ((-1 : stdgo.GoInt)) : Bool) || (_l == _r) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/debug/gosym/symtab.go#L102"
            return (stdgo.Go.str() : stdgo.GoString)?.__copy__();
        };
        _r = stdgo._internal.strings.Strings_lastindex.lastIndex(((@:checkr _s ?? throw "null pointer dereference").name.__slice__(_pathend) : stdgo.GoString)?.__copy__(), ("." : stdgo.GoString));
        //"file:///home/runner/.go/go1.21.3/src/debug/gosym/symtab.go#L108"
        return ((@:checkr _s ?? throw "null pointer dereference").name.__slice__(((_pathend + _l : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt), (_pathend + _r : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function packageName( _s:stdgo.Ref<stdgo._internal.debug.gosym.Gosym_sym.Sym>):stdgo.GoString {
        @:recv var _s:stdgo.Ref<stdgo._internal.debug.gosym.Gosym_sym.Sym> = _s;
        var _name = (_s._nameWithoutInst()?.__copy__() : stdgo.GoString);
        //"file:///home/runner/.go/go1.21.3/src/debug/gosym/symtab.go#L64"
        if ((((@:checkr _s ?? throw "null pointer dereference")._goVersion >= (5 : stdgo._internal.debug.gosym.Gosym_t_version.T_version) : Bool) && ((stdgo._internal.strings.Strings_hasprefix.hasPrefix(_name?.__copy__(), ("go:" : stdgo.GoString)) || stdgo._internal.strings.Strings_hasprefix.hasPrefix(_name?.__copy__(), ("type:" : stdgo.GoString)) : Bool)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/debug/gosym/symtab.go#L65"
            return (stdgo.Go.str() : stdgo.GoString)?.__copy__();
        };
        //"file:///home/runner/.go/go1.21.3/src/debug/gosym/symtab.go#L69"
        if ((((@:checkr _s ?? throw "null pointer dereference")._goVersion <= (4 : stdgo._internal.debug.gosym.Gosym_t_version.T_version) : Bool) && ((stdgo._internal.strings.Strings_hasprefix.hasPrefix(_name?.__copy__(), ("go." : stdgo.GoString)) || stdgo._internal.strings.Strings_hasprefix.hasPrefix(_name?.__copy__(), ("type." : stdgo.GoString)) : Bool)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/debug/gosym/symtab.go#L70"
            return (stdgo.Go.str() : stdgo.GoString)?.__copy__();
        };
        var _pathend = (stdgo._internal.strings.Strings_lastindex.lastIndex(_name?.__copy__(), ("/" : stdgo.GoString)) : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/debug/gosym/symtab.go#L74"
        if ((_pathend < (0 : stdgo.GoInt) : Bool)) {
            _pathend = (0 : stdgo.GoInt);
        };
        //"file:///home/runner/.go/go1.21.3/src/debug/gosym/symtab.go#L78"
        {
            var _i = (stdgo._internal.strings.Strings_index.index((_name.__slice__(_pathend) : stdgo.GoString)?.__copy__(), ("." : stdgo.GoString)) : stdgo.GoInt);
            if (_i != ((-1 : stdgo.GoInt))) {
                //"file:///home/runner/.go/go1.21.3/src/debug/gosym/symtab.go#L79"
                return (_name.__slice__(0, (_pathend + _i : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/debug/gosym/symtab.go#L81"
        return (stdgo.Go.str() : stdgo.GoString)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function _nameWithoutInst( _s:stdgo.Ref<stdgo._internal.debug.gosym.Gosym_sym.Sym>):stdgo.GoString {
        @:recv var _s:stdgo.Ref<stdgo._internal.debug.gosym.Gosym_sym.Sym> = _s;
        var _start = (stdgo._internal.strings.Strings_index.index((@:checkr _s ?? throw "null pointer dereference").name?.__copy__(), ("[" : stdgo.GoString)) : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/debug/gosym/symtab.go#L44"
        if ((_start < (0 : stdgo.GoInt) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/debug/gosym/symtab.go#L45"
            return (@:checkr _s ?? throw "null pointer dereference").name?.__copy__();
        };
        var _end = (stdgo._internal.strings.Strings_lastindex.lastIndex((@:checkr _s ?? throw "null pointer dereference").name?.__copy__(), ("]" : stdgo.GoString)) : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/debug/gosym/symtab.go#L48"
        if ((_end < (0 : stdgo.GoInt) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/debug/gosym/symtab.go#L50"
            return (@:checkr _s ?? throw "null pointer dereference").name?.__copy__();
        };
        //"file:///home/runner/.go/go1.21.3/src/debug/gosym/symtab.go#L52"
        return (((@:checkr _s ?? throw "null pointer dereference").name.__slice__((0 : stdgo.GoInt), _start) : stdgo.GoString) + ((@:checkr _s ?? throw "null pointer dereference").name.__slice__((_end + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function static_( _s:stdgo.Ref<stdgo._internal.debug.gosym.Gosym_sym.Sym>):Bool {
        @:recv var _s:stdgo.Ref<stdgo._internal.debug.gosym.Gosym_sym.Sym> = _s;
        //"file:///home/runner/.go/go1.21.3/src/debug/gosym/symtab.go#L35"
        return ((@:checkr _s ?? throw "null pointer dereference").type >= (97 : stdgo.GoUInt8) : Bool);
    }
}
