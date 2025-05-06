package stdgo._internal.go.types;
@:keep @:allow(stdgo._internal.go.types.Types.Scope_asInterface) class Scope_static_extension {
    @:keep
    @:tdfield
    static public function string( _s:stdgo.Ref<stdgo._internal.go.types.Types_scope.Scope>):stdgo.GoString {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.types.Types_scope.Scope> = _s;
        var _buf:stdgo._internal.strings.Strings_builder.Builder = ({} : stdgo._internal.strings.Strings_builder.Builder);
        //"file:///home/runner/.go/go1.21.3/src/go/types/scope.go#L238"
        _s.writeTo(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder>)), (0 : stdgo.GoInt), false);
        //"file:///home/runner/.go/go1.21.3/src/go/types/scope.go#L239"
        return (_buf.string() : stdgo.GoString)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function writeTo( _s:stdgo.Ref<stdgo._internal.go.types.Types_scope.Scope>, _w:stdgo._internal.io.Io_writer.Writer, _n:stdgo.GoInt, _recurse:Bool):Void {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.types.Types_scope.Scope> = _s;
        {};
        var _indn = (stdgo._internal.strings.Strings_repeat.repeat((".  " : stdgo.GoString), _n)?.__copy__() : stdgo.GoString);
        //"file:///home/runner/.go/go1.21.3/src/go/types/scope.go#L219"
        stdgo._internal.fmt.Fmt_fprintf.fprintf(_w, ("%s%s scope %p {\n" : stdgo.GoString), stdgo.Go.toInterface(_indn), stdgo.Go.toInterface((@:checkr _s ?? throw "null pointer dereference")._comment), stdgo.Go.toInterface(stdgo.Go.asInterface(_s)));
        var _indn1 = ((_indn + (".  " : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__() : stdgo.GoString);
        //"file:///home/runner/.go/go1.21.3/src/go/types/scope.go#L222"
        for (__0 => _name in _s.names()) {
            //"file:///home/runner/.go/go1.21.3/src/go/types/scope.go#L223"
            stdgo._internal.fmt.Fmt_fprintf.fprintf(_w, ("%s%s\n" : stdgo.GoString), stdgo.Go.toInterface(_indn1), stdgo.Go.toInterface(_s.lookup(_name?.__copy__())));
        };
        //"file:///home/runner/.go/go1.21.3/src/go/types/scope.go#L226"
        if (_recurse) {
            //"file:///home/runner/.go/go1.21.3/src/go/types/scope.go#L227"
            for (__1 => _s in (@:checkr _s ?? throw "null pointer dereference")._children) {
                //"file:///home/runner/.go/go1.21.3/src/go/types/scope.go#L228"
                _s.writeTo(_w, (_n + (1 : stdgo.GoInt) : stdgo.GoInt), _recurse);
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/types/scope.go#L232"
        stdgo._internal.fmt.Fmt_fprintf.fprintf(_w, ("%s}\n" : stdgo.GoString), stdgo.Go.toInterface(_indn));
    }
    @:keep
    @:tdfield
    static public function innermost( _s:stdgo.Ref<stdgo._internal.go.types.Types_scope.Scope>, _pos:stdgo._internal.go.token.Token_pos.Pos):stdgo.Ref<stdgo._internal.go.types.Types_scope.Scope> {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.types.Types_scope.Scope> = _s;
        //"file:///home/runner/.go/go1.21.3/src/go/types/scope.go#L191"
        if ((@:checkr _s ?? throw "null pointer dereference")._parent == (stdgo._internal.go.types.Types_universe.universe)) {
            //"file:///home/runner/.go/go1.21.3/src/go/types/scope.go#L192"
            for (__0 => _s in (@:checkr _s ?? throw "null pointer dereference")._children) {
                //"file:///home/runner/.go/go1.21.3/src/go/types/scope.go#L193"
                {
                    var _inner = _s.innermost(_pos);
                    if (({
                        final value = _inner;
                        (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                    })) {
                        //"file:///home/runner/.go/go1.21.3/src/go/types/scope.go#L194"
                        return _inner;
                    };
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/types/scope.go#L199"
        if (_s.contains(_pos)) {
            //"file:///home/runner/.go/go1.21.3/src/go/types/scope.go#L200"
            for (__0 => _s in (@:checkr _s ?? throw "null pointer dereference")._children) {
                //"file:///home/runner/.go/go1.21.3/src/go/types/scope.go#L201"
                if (_s.contains(_pos)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/types/scope.go#L202"
                    return _s.innermost(_pos);
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/go/types/scope.go#L205"
            return _s;
        };
        //"file:///home/runner/.go/go1.21.3/src/go/types/scope.go#L207"
        return null;
    }
    @:keep
    @:tdfield
    static public function contains( _s:stdgo.Ref<stdgo._internal.go.types.Types_scope.Scope>, _pos:stdgo._internal.go.token.Token_pos.Pos):Bool {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.types.Types_scope.Scope> = _s;
        //"file:///home/runner/.go/go1.21.3/src/go/types/scope.go#L180"
        return ((stdgo._internal.go.types.Types__cmppos._cmpPos((@:checkr _s ?? throw "null pointer dereference")._pos, _pos) <= (0 : stdgo.GoInt) : Bool) && (stdgo._internal.go.types.Types__cmppos._cmpPos(_pos, (@:checkr _s ?? throw "null pointer dereference")._end) < (0 : stdgo.GoInt) : Bool) : Bool);
    }
    @:keep
    @:tdfield
    static public function end( _s:stdgo.Ref<stdgo._internal.go.types.Types_scope.Scope>):stdgo._internal.go.token.Token_pos.Pos {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.types.Types_scope.Scope> = _s;
        //"file:///home/runner/.go/go1.21.3/src/go/types/scope.go#L174"
        return (@:checkr _s ?? throw "null pointer dereference")._end;
    }
    @:keep
    @:tdfield
    static public function pos( _s:stdgo.Ref<stdgo._internal.go.types.Types_scope.Scope>):stdgo._internal.go.token.Token_pos.Pos {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.types.Types_scope.Scope> = _s;
        //"file:///home/runner/.go/go1.21.3/src/go/types/scope.go#L173"
        return (@:checkr _s ?? throw "null pointer dereference")._pos;
    }
    @:keep
    @:tdfield
    static public function _squash( _s:stdgo.Ref<stdgo._internal.go.types.Types_scope.Scope>, _err:(stdgo._internal.go.types.Types_object.Object, stdgo._internal.go.types.Types_object.Object) -> Void):Void {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.types.Types_scope.Scope> = _s;
        var _p = (@:checkr _s ?? throw "null pointer dereference")._parent;
        //"file:///home/runner/.go/go1.21.3/src/go/types/scope.go#L142"
        stdgo._internal.go.types.Types__assert._assert(({
            final value = _p;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        }));
        //"file:///home/runner/.go/go1.21.3/src/go/types/scope.go#L143"
        for (_name => _obj in (@:checkr _s ?? throw "null pointer dereference")._elems) {
            _obj = stdgo._internal.go.types.Types__resolve._resolve(_name?.__copy__(), _obj);
            //"file:///home/runner/.go/go1.21.3/src/go/types/scope.go#L145"
            _obj._setParent(null);
            //"file:///home/runner/.go/go1.21.3/src/go/types/scope.go#L146"
            {
                var _alt = (_p.insert(_obj) : stdgo._internal.go.types.Types_object.Object);
                if (_alt != null) {
                    //"file:///home/runner/.go/go1.21.3/src/go/types/scope.go#L147"
                    _err(_obj, _alt);
                };
            };
        };
        var _j = (-1 : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/go/types/scope.go#L152"
        for (_i => _ch in (@:checkr _p ?? throw "null pointer dereference")._children) {
            //"file:///home/runner/.go/go1.21.3/src/go/types/scope.go#L153"
            if (_ch == (_s)) {
                _j = _i;
                //"file:///home/runner/.go/go1.21.3/src/go/types/scope.go#L155"
                break;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/types/scope.go#L158"
        stdgo._internal.go.types.Types__assert._assert((_j >= (0 : stdgo.GoInt) : Bool));
        var _k = (((@:checkr _p ?? throw "null pointer dereference")._children.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
        (@:checkr _p ?? throw "null pointer dereference")._children[(_j : stdgo.GoInt)] = (@:checkr _p ?? throw "null pointer dereference")._children[(_k : stdgo.GoInt)];
        (@:checkr _p ?? throw "null pointer dereference")._children = ((@:checkr _p ?? throw "null pointer dereference")._children.__slice__(0, _k) : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_scope.Scope>>);
        (@:checkr _p ?? throw "null pointer dereference")._children = ((@:checkr _p ?? throw "null pointer dereference")._children.__append__(...((@:checkr _s ?? throw "null pointer dereference")._children : Array<stdgo.Ref<stdgo._internal.go.types.Types_scope.Scope>>)) : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_scope.Scope>>);
        (@:checkr _s ?? throw "null pointer dereference")._children = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_scope.Scope>>);
        (@:checkr _s ?? throw "null pointer dereference")._elems = (null : stdgo.GoMap<stdgo.GoString, stdgo._internal.go.types.Types_object.Object>);
    }
    @:keep
    @:tdfield
    static public function _insert( _s:stdgo.Ref<stdgo._internal.go.types.Types_scope.Scope>, _name:stdgo.GoString, _obj:stdgo._internal.go.types.Types_object.Object):Void {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.types.Types_scope.Scope> = _s;
        //"file:///home/runner/.go/go1.21.3/src/go/types/scope.go#L128"
        if ((@:checkr _s ?? throw "null pointer dereference")._elems == null) {
            (@:checkr _s ?? throw "null pointer dereference")._elems = (({
                final x = new stdgo.GoMap.GoStringMap<stdgo._internal.go.types.Types_object.Object>();
                x.__defaultValue__ = () -> (null : stdgo._internal.go.types.Types_object.Object);
                {};
                x;
            } : stdgo.GoMap<stdgo.GoString, stdgo._internal.go.types.Types_object.Object>) : stdgo.GoMap<stdgo.GoString, stdgo._internal.go.types.Types_object.Object>);
        };
        (@:checkr _s ?? throw "null pointer dereference")._elems[_name] = _obj;
    }
    @:keep
    @:tdfield
    static public function __InsertLazy( _s:stdgo.Ref<stdgo._internal.go.types.Types_scope.Scope>, _name:stdgo.GoString, _resolve:() -> stdgo._internal.go.types.Types_object.Object):Bool {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.types.Types_scope.Scope> = _s;
        //"file:///home/runner/.go/go1.21.3/src/go/types/scope.go#L120"
        if (((@:checkr _s ?? throw "null pointer dereference")._elems[_name] ?? (null : stdgo._internal.go.types.Types_object.Object)) != null) {
            //"file:///home/runner/.go/go1.21.3/src/go/types/scope.go#L121"
            return false;
        };
        //"file:///home/runner/.go/go1.21.3/src/go/types/scope.go#L123"
        _s._insert(_name?.__copy__(), stdgo.Go.asInterface((stdgo.Go.setRef(({ _parent : _s, _resolve : _resolve } : stdgo._internal.go.types.Types_t_lazyobject.T_lazyObject)) : stdgo.Ref<stdgo._internal.go.types.Types_t_lazyobject.T_lazyObject>)));
        //"file:///home/runner/.go/go1.21.3/src/go/types/scope.go#L124"
        return true;
    }
    @:keep
    @:tdfield
    static public function insert( _s:stdgo.Ref<stdgo._internal.go.types.Types_scope.Scope>, _obj:stdgo._internal.go.types.Types_object.Object):stdgo._internal.go.types.Types_object.Object {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.types.Types_scope.Scope> = _s;
        var _name = (_obj.name()?.__copy__() : stdgo.GoString);
        //"file:///home/runner/.go/go1.21.3/src/go/types/scope.go#L102"
        {
            var _alt = (_s.lookup(_name?.__copy__()) : stdgo._internal.go.types.Types_object.Object);
            if (_alt != null) {
                //"file:///home/runner/.go/go1.21.3/src/go/types/scope.go#L103"
                return _alt;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/types/scope.go#L105"
        _s._insert(_name?.__copy__(), _obj);
        //"file:///home/runner/.go/go1.21.3/src/go/types/scope.go#L106"
        if (({
            final value = _obj.parent();
            (value == null || (value : Dynamic).__nil__);
        })) {
            //"file:///home/runner/.go/go1.21.3/src/go/types/scope.go#L107"
            _obj._setParent(_s);
        };
        //"file:///home/runner/.go/go1.21.3/src/go/types/scope.go#L109"
        return (null : stdgo._internal.go.types.Types_object.Object);
    }
    @:keep
    @:tdfield
    static public function lookupParent( _s:stdgo.Ref<stdgo._internal.go.types.Types_scope.Scope>, _name:stdgo.GoString, _pos:stdgo._internal.go.token.Token_pos.Pos):{ var _0 : stdgo.Ref<stdgo._internal.go.types.Types_scope.Scope>; var _1 : stdgo._internal.go.types.Types_object.Object; } {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.types.Types_scope.Scope> = _s;
        //"file:///home/runner/.go/go1.21.3/src/go/types/scope.go#L87"
        while (({
            final value = _s;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        })) {
            //"file:///home/runner/.go/go1.21.3/src/go/types/scope.go#L88"
            {
                var _obj = (_s.lookup(_name.__copy__()) : stdgo._internal.go.types.Types_object.Object);
                if (((_obj != null) && ((!_pos.isValid() || (stdgo._internal.go.types.Types__cmppos._cmpPos(_obj._scopePos(), _pos) <= (0 : stdgo.GoInt) : Bool) : Bool)) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/types/scope.go#L89"
                    return { _0 : _s, _1 : _obj };
                };
            };
            _s = (@:checkr _s ?? throw "null pointer dereference")._parent;
        };
        //"file:///home/runner/.go/go1.21.3/src/go/types/scope.go#L92"
        return { _0 : null, _1 : (null : stdgo._internal.go.types.Types_object.Object) };
    }
    @:keep
    @:tdfield
    static public function lookup( _s:stdgo.Ref<stdgo._internal.go.types.Types_scope.Scope>, _name:stdgo.GoString):stdgo._internal.go.types.Types_object.Object {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.types.Types_scope.Scope> = _s;
        //"file:///home/runner/.go/go1.21.3/src/go/types/scope.go#L73"
        return stdgo._internal.go.types.Types__resolve._resolve(_name?.__copy__(), ((@:checkr _s ?? throw "null pointer dereference")._elems[_name] ?? (null : stdgo._internal.go.types.Types_object.Object)));
    }
    @:keep
    @:tdfield
    static public function child( _s:stdgo.Ref<stdgo._internal.go.types.Types_scope.Scope>, _i:stdgo.GoInt):stdgo.Ref<stdgo._internal.go.types.Types_scope.Scope> {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.types.Types_scope.Scope> = _s;
        //"file:///home/runner/.go/go1.21.3/src/go/types/scope.go#L68"
        return (@:checkr _s ?? throw "null pointer dereference")._children[(_i : stdgo.GoInt)];
    }
    @:keep
    @:tdfield
    static public function numChildren( _s:stdgo.Ref<stdgo._internal.go.types.Types_scope.Scope>):stdgo.GoInt {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.types.Types_scope.Scope> = _s;
        //"file:///home/runner/.go/go1.21.3/src/go/types/scope.go#L65"
        return ((@:checkr _s ?? throw "null pointer dereference")._children.length);
    }
    @:keep
    @:tdfield
    static public function names( _s:stdgo.Ref<stdgo._internal.go.types.Types_scope.Scope>):stdgo.Slice<stdgo.GoString> {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.types.Types_scope.Scope> = _s;
        var _names = (new stdgo.Slice<stdgo.GoString>(((@:checkr _s ?? throw "null pointer dereference")._elems.length : stdgo.GoInt).toBasic(), 0).__setString__() : stdgo.Slice<stdgo.GoString>);
        var _i = (0 : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/go/types/scope.go#L56"
        for (_name => _ in (@:checkr _s ?? throw "null pointer dereference")._elems) {
            _names[(_i : stdgo.GoInt)] = _name?.__copy__();
            //"file:///home/runner/.go/go1.21.3/src/go/types/scope.go#L58"
            _i++;
        };
        //"file:///home/runner/.go/go1.21.3/src/go/types/scope.go#L60"
        stdgo._internal.sort.Sort_strings.strings(_names);
        //"file:///home/runner/.go/go1.21.3/src/go/types/scope.go#L61"
        return _names;
    }
    @:keep
    @:tdfield
    static public function len( _s:stdgo.Ref<stdgo._internal.go.types.Types_scope.Scope>):stdgo.GoInt {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.types.Types_scope.Scope> = _s;
        //"file:///home/runner/.go/go1.21.3/src/go/types/scope.go#L50"
        return ((@:checkr _s ?? throw "null pointer dereference")._elems.length);
    }
    @:keep
    @:tdfield
    static public function parent( _s:stdgo.Ref<stdgo._internal.go.types.Types_scope.Scope>):stdgo.Ref<stdgo._internal.go.types.Types_scope.Scope> {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.types.Types_scope.Scope> = _s;
        //"file:///home/runner/.go/go1.21.3/src/go/types/scope.go#L47"
        return (@:checkr _s ?? throw "null pointer dereference")._parent;
    }
}
