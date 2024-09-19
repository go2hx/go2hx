package stdgo._internal.debug.gosym;
@:keep @:allow(stdgo._internal.debug.gosym.Gosym.Sym_asInterface) class Sym_static_extension {
    @:keep
    static public function baseName( _s:stdgo.Ref<stdgo._internal.debug.gosym.Gosym_Sym.Sym>):stdgo.GoString {
        @:recv var _s:stdgo.Ref<stdgo._internal.debug.gosym.Gosym_Sym.Sym> = _s;
        var _name = (_s._nameWithoutInst()?.__copy__() : stdgo.GoString);
        {
            var _i = (stdgo._internal.strings.Strings_lastIndex.lastIndex(_name?.__copy__(), ("." : stdgo.GoString)) : stdgo.GoInt);
            if (_i != ((-1 : stdgo.GoInt))) {
                if (_s.name != (_name)) {
                    var _brack = (stdgo._internal.strings.Strings_index.index(_s.name?.__copy__(), ("[" : stdgo.GoString)) : stdgo.GoInt);
                    if ((_i > _brack : Bool)) {
                        _i = stdgo._internal.strings.Strings_lastIndex.lastIndex(_s.name?.__copy__(), ("." : stdgo.GoString));
                    };
                };
                return (_s.name.__slice__((_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
            };
        };
        return _s.name?.__copy__();
    }
    @:keep
    static public function receiverName( _s:stdgo.Ref<stdgo._internal.debug.gosym.Gosym_Sym.Sym>):stdgo.GoString {
        @:recv var _s:stdgo.Ref<stdgo._internal.debug.gosym.Gosym_Sym.Sym> = _s;
        var _name = (_s._nameWithoutInst()?.__copy__() : stdgo.GoString);
        var _pathend = (stdgo._internal.strings.Strings_lastIndex.lastIndex(_name?.__copy__(), ("/" : stdgo.GoString)) : stdgo.GoInt);
        if ((_pathend < (0 : stdgo.GoInt) : Bool)) {
            _pathend = (0 : stdgo.GoInt);
        };
        var _l = (stdgo._internal.strings.Strings_index.index((_name.__slice__(_pathend) : stdgo.GoString)?.__copy__(), ("." : stdgo.GoString)) : stdgo.GoInt);
        var _r = (stdgo._internal.strings.Strings_lastIndex.lastIndex((_name.__slice__(_pathend) : stdgo.GoString)?.__copy__(), ("." : stdgo.GoString)) : stdgo.GoInt);
        if (((_l == ((-1 : stdgo.GoInt)) || _r == ((-1 : stdgo.GoInt)) : Bool) || (_l == _r) : Bool)) {
            return stdgo.Go.str()?.__copy__();
        };
        _r = stdgo._internal.strings.Strings_lastIndex.lastIndex((_s.name.__slice__(_pathend) : stdgo.GoString)?.__copy__(), ("." : stdgo.GoString));
        return (_s.name.__slice__(((_pathend + _l : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt), (_pathend + _r : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
    }
    @:keep
    static public function packageName( _s:stdgo.Ref<stdgo._internal.debug.gosym.Gosym_Sym.Sym>):stdgo.GoString {
        @:recv var _s:stdgo.Ref<stdgo._internal.debug.gosym.Gosym_Sym.Sym> = _s;
        var _name = (_s._nameWithoutInst()?.__copy__() : stdgo.GoString);
        if (((_s._goVersion >= (5 : stdgo._internal.debug.gosym.Gosym_T_version.T_version) : Bool) && ((stdgo._internal.strings.Strings_hasPrefix.hasPrefix(_name?.__copy__(), ("go:" : stdgo.GoString)) || stdgo._internal.strings.Strings_hasPrefix.hasPrefix(_name?.__copy__(), ("type:" : stdgo.GoString)) : Bool)) : Bool)) {
            return stdgo.Go.str()?.__copy__();
        };
        if (((_s._goVersion <= (4 : stdgo._internal.debug.gosym.Gosym_T_version.T_version) : Bool) && ((stdgo._internal.strings.Strings_hasPrefix.hasPrefix(_name?.__copy__(), ("go." : stdgo.GoString)) || stdgo._internal.strings.Strings_hasPrefix.hasPrefix(_name?.__copy__(), ("type." : stdgo.GoString)) : Bool)) : Bool)) {
            return stdgo.Go.str()?.__copy__();
        };
        var _pathend = (stdgo._internal.strings.Strings_lastIndex.lastIndex(_name?.__copy__(), ("/" : stdgo.GoString)) : stdgo.GoInt);
        if ((_pathend < (0 : stdgo.GoInt) : Bool)) {
            _pathend = (0 : stdgo.GoInt);
        };
        {
            var _i = (stdgo._internal.strings.Strings_index.index((_name.__slice__(_pathend) : stdgo.GoString)?.__copy__(), ("." : stdgo.GoString)) : stdgo.GoInt);
            if (_i != ((-1 : stdgo.GoInt))) {
                return (_name.__slice__(0, (_pathend + _i : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
            };
        };
        return stdgo.Go.str()?.__copy__();
    }
    @:keep
    static public function _nameWithoutInst( _s:stdgo.Ref<stdgo._internal.debug.gosym.Gosym_Sym.Sym>):stdgo.GoString {
        @:recv var _s:stdgo.Ref<stdgo._internal.debug.gosym.Gosym_Sym.Sym> = _s;
        var _start = (stdgo._internal.strings.Strings_index.index(_s.name?.__copy__(), ("[" : stdgo.GoString)) : stdgo.GoInt);
        if ((_start < (0 : stdgo.GoInt) : Bool)) {
            return _s.name?.__copy__();
        };
        var _end = (stdgo._internal.strings.Strings_lastIndex.lastIndex(_s.name?.__copy__(), ("]" : stdgo.GoString)) : stdgo.GoInt);
        if ((_end < (0 : stdgo.GoInt) : Bool)) {
            return _s.name?.__copy__();
        };
        return ((_s.name.__slice__((0 : stdgo.GoInt), _start) : stdgo.GoString) + (_s.name.__slice__((_end + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
    }
    @:keep
    static public function static_( _s:stdgo.Ref<stdgo._internal.debug.gosym.Gosym_Sym.Sym>):Bool {
        @:recv var _s:stdgo.Ref<stdgo._internal.debug.gosym.Gosym_Sym.Sym> = _s;
        return (_s.type >= (97 : stdgo.GoUInt8) : Bool);
    }
}