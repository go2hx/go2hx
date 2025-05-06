package stdgo._internal.go.types;
@:keep @:allow(stdgo._internal.go.types.Types.T_term_asInterface) class T_term_static_extension {
    @:keep
    @:tdfield
    static public function _disjoint( _x:stdgo.Ref<stdgo._internal.go.types.Types_t_term.T_term>, _y:stdgo.Ref<stdgo._internal.go.types.Types_t_term.T_term>):Bool {
        @:recv var _x:stdgo.Ref<stdgo._internal.go.types.Types_t_term.T_term> = _x;
        //"file:///home/runner/.go/go1.21.3/src/go/types/typeterm.go#L155"
        if ((false && ((((@:checkr _x ?? throw "null pointer dereference")._typ == null) || ((@:checkr _y ?? throw "null pointer dereference")._typ == null) : Bool)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/go/types/typeterm.go#L156"
            throw stdgo.Go.toInterface(("invalid argument(s)" : stdgo.GoString));
        };
        var _ux = ((@:checkr _x ?? throw "null pointer dereference")._typ : stdgo._internal.go.types.Types_type_.Type_);
        //"file:///home/runner/.go/go1.21.3/src/go/types/typeterm.go#L159"
        if ((@:checkr _y ?? throw "null pointer dereference")._tilde) {
            _ux = stdgo._internal.go.types.Types__under._under(_ux);
        };
        var _uy = ((@:checkr _y ?? throw "null pointer dereference")._typ : stdgo._internal.go.types.Types_type_.Type_);
        //"file:///home/runner/.go/go1.21.3/src/go/types/typeterm.go#L163"
        if ((@:checkr _x ?? throw "null pointer dereference")._tilde) {
            _uy = stdgo._internal.go.types.Types__under._under(_uy);
        };
        //"file:///home/runner/.go/go1.21.3/src/go/types/typeterm.go#L166"
        return !stdgo._internal.go.types.Types_identical.identical(_ux, _uy);
    }
    @:keep
    @:tdfield
    static public function _subsetOf( _x:stdgo.Ref<stdgo._internal.go.types.Types_t_term.T_term>, _y:stdgo.Ref<stdgo._internal.go.types.Types_t_term.T_term>):Bool {
        @:recv var _x:stdgo.Ref<stdgo._internal.go.types.Types_t_term.T_term> = _x;
        //"file:///home/runner/.go/go1.21.3/src/go/types/typeterm.go#L128"
        if (({
            final value = _x;
            (value == null || (value : Dynamic).__nil__);
        })) {
            //"file:///home/runner/.go/go1.21.3/src/go/types/typeterm.go#L130"
            return true;
        } else if (({
            final value = _y;
            (value == null || (value : Dynamic).__nil__);
        })) {
            //"file:///home/runner/.go/go1.21.3/src/go/types/typeterm.go#L132"
            return false;
        } else if ((@:checkr _y ?? throw "null pointer dereference")._typ == null) {
            //"file:///home/runner/.go/go1.21.3/src/go/types/typeterm.go#L134"
            return true;
        } else if ((@:checkr _x ?? throw "null pointer dereference")._typ == null) {
            //"file:///home/runner/.go/go1.21.3/src/go/types/typeterm.go#L136"
            return false;
        };
        //"file:///home/runner/.go/go1.21.3/src/go/types/typeterm.go#L140"
        if (_x._disjoint(_y)) {
            //"file:///home/runner/.go/go1.21.3/src/go/types/typeterm.go#L141"
            return false;
        };
        //"file:///home/runner/.go/go1.21.3/src/go/types/typeterm.go#L149"
        return (!(@:checkr _x ?? throw "null pointer dereference")._tilde || (@:checkr _y ?? throw "null pointer dereference")._tilde : Bool);
    }
    @:keep
    @:tdfield
    static public function _includes( _x:stdgo.Ref<stdgo._internal.go.types.Types_t_term.T_term>, _t:stdgo._internal.go.types.Types_type_.Type_):Bool {
        @:recv var _x:stdgo.Ref<stdgo._internal.go.types.Types_t_term.T_term> = _x;
        //"file:///home/runner/.go/go1.21.3/src/go/types/typeterm.go#L110"
        if (({
            final value = _x;
            (value == null || (value : Dynamic).__nil__);
        })) {
            //"file:///home/runner/.go/go1.21.3/src/go/types/typeterm.go#L112"
            return false;
        } else if ((@:checkr _x ?? throw "null pointer dereference")._typ == null) {
            //"file:///home/runner/.go/go1.21.3/src/go/types/typeterm.go#L114"
            return true;
        };
        var _u = (_t : stdgo._internal.go.types.Types_type_.Type_);
        //"file:///home/runner/.go/go1.21.3/src/go/types/typeterm.go#L119"
        if ((@:checkr _x ?? throw "null pointer dereference")._tilde) {
            _u = stdgo._internal.go.types.Types__under._under(_u);
        };
        //"file:///home/runner/.go/go1.21.3/src/go/types/typeterm.go#L122"
        return stdgo._internal.go.types.Types_identical.identical((@:checkr _x ?? throw "null pointer dereference")._typ, _u);
    }
    @:keep
    @:tdfield
    static public function _intersect( _x:stdgo.Ref<stdgo._internal.go.types.Types_t_term.T_term>, _y:stdgo.Ref<stdgo._internal.go.types.Types_t_term.T_term>):stdgo.Ref<stdgo._internal.go.types.Types_t_term.T_term> {
        @:recv var _x:stdgo.Ref<stdgo._internal.go.types.Types_t_term.T_term> = _x;
        //"file:///home/runner/.go/go1.21.3/src/go/types/typeterm.go#L82"
        if ((({
            final value = _x;
            (value == null || (value : Dynamic).__nil__);
        }) || ({
            final value = _y;
            (value == null || (value : Dynamic).__nil__);
        }) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/go/types/typeterm.go#L84"
            return null;
        } else if ((@:checkr _x ?? throw "null pointer dereference")._typ == null) {
            //"file:///home/runner/.go/go1.21.3/src/go/types/typeterm.go#L86"
            return _y;
        } else if ((@:checkr _y ?? throw "null pointer dereference")._typ == null) {
            //"file:///home/runner/.go/go1.21.3/src/go/types/typeterm.go#L88"
            return _x;
        };
        //"file:///home/runner/.go/go1.21.3/src/go/types/typeterm.go#L92"
        if (_x._disjoint(_y)) {
            //"file:///home/runner/.go/go1.21.3/src/go/types/typeterm.go#L93"
            return null;
        };
        //"file:///home/runner/.go/go1.21.3/src/go/types/typeterm.go#L101"
        if ((!(@:checkr _x ?? throw "null pointer dereference")._tilde || (@:checkr _y ?? throw "null pointer dereference")._tilde : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/go/types/typeterm.go#L102"
            return _x;
        };
        //"file:///home/runner/.go/go1.21.3/src/go/types/typeterm.go#L104"
        return _y;
    }
    @:keep
    @:tdfield
    static public function _union( _x:stdgo.Ref<stdgo._internal.go.types.Types_t_term.T_term>, _y:stdgo.Ref<stdgo._internal.go.types.Types_t_term.T_term>):{ var _0 : stdgo.Ref<stdgo._internal.go.types.Types_t_term.T_term>; var _1 : stdgo.Ref<stdgo._internal.go.types.Types_t_term.T_term>; } {
        @:recv var _x:stdgo.Ref<stdgo._internal.go.types.Types_t_term.T_term> = _x;
        var _0 = (null : stdgo.Ref<stdgo._internal.go.types.Types_t_term.T_term>), _1 = (null : stdgo.Ref<stdgo._internal.go.types.Types_t_term.T_term>);
        //"file:///home/runner/.go/go1.21.3/src/go/types/typeterm.go#L50"
        if ((({
            final value = _x;
            (value == null || (value : Dynamic).__nil__);
        }) && ({
            final value = _y;
            (value == null || (value : Dynamic).__nil__);
        }) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/go/types/typeterm.go#L52"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.go.types.Types_t_term.T_term>; var _1 : stdgo.Ref<stdgo._internal.go.types.Types_t_term.T_term>; } = { _0 : null, _1 : null };
                _0 = __tmp__._0;
                _1 = __tmp__._1;
                __tmp__;
            };
        } else if (({
            final value = _x;
            (value == null || (value : Dynamic).__nil__);
        })) {
            //"file:///home/runner/.go/go1.21.3/src/go/types/typeterm.go#L54"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.go.types.Types_t_term.T_term>; var _1 : stdgo.Ref<stdgo._internal.go.types.Types_t_term.T_term>; } = { _0 : _y, _1 : null };
                _0 = __tmp__._0;
                _1 = __tmp__._1;
                __tmp__;
            };
        } else if (({
            final value = _y;
            (value == null || (value : Dynamic).__nil__);
        })) {
            //"file:///home/runner/.go/go1.21.3/src/go/types/typeterm.go#L56"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.go.types.Types_t_term.T_term>; var _1 : stdgo.Ref<stdgo._internal.go.types.Types_t_term.T_term>; } = { _0 : _x, _1 : null };
                _0 = __tmp__._0;
                _1 = __tmp__._1;
                __tmp__;
            };
        } else if ((@:checkr _x ?? throw "null pointer dereference")._typ == null) {
            //"file:///home/runner/.go/go1.21.3/src/go/types/typeterm.go#L58"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.go.types.Types_t_term.T_term>; var _1 : stdgo.Ref<stdgo._internal.go.types.Types_t_term.T_term>; } = { _0 : _x, _1 : null };
                _0 = __tmp__._0;
                _1 = __tmp__._1;
                __tmp__;
            };
        } else if ((@:checkr _y ?? throw "null pointer dereference")._typ == null) {
            //"file:///home/runner/.go/go1.21.3/src/go/types/typeterm.go#L60"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.go.types.Types_t_term.T_term>; var _1 : stdgo.Ref<stdgo._internal.go.types.Types_t_term.T_term>; } = { _0 : _y, _1 : null };
                _0 = __tmp__._0;
                _1 = __tmp__._1;
                __tmp__;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/types/typeterm.go#L64"
        if (_x._disjoint(_y)) {
            //"file:///home/runner/.go/go1.21.3/src/go/types/typeterm.go#L65"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.go.types.Types_t_term.T_term>; var _1 : stdgo.Ref<stdgo._internal.go.types.Types_t_term.T_term>; } = { _0 : _x, _1 : _y };
                _0 = __tmp__._0;
                _1 = __tmp__._1;
                __tmp__;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/types/typeterm.go#L73"
        if (((@:checkr _x ?? throw "null pointer dereference")._tilde || !(@:checkr _y ?? throw "null pointer dereference")._tilde : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/go/types/typeterm.go#L74"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.go.types.Types_t_term.T_term>; var _1 : stdgo.Ref<stdgo._internal.go.types.Types_t_term.T_term>; } = { _0 : _x, _1 : null };
                _0 = __tmp__._0;
                _1 = __tmp__._1;
                __tmp__;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/types/typeterm.go#L76"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.go.types.Types_t_term.T_term>; var _1 : stdgo.Ref<stdgo._internal.go.types.Types_t_term.T_term>; } = { _0 : _y, _1 : null };
            _0 = __tmp__._0;
            _1 = __tmp__._1;
            __tmp__;
        };
    }
    @:keep
    @:tdfield
    static public function _equal( _x:stdgo.Ref<stdgo._internal.go.types.Types_t_term.T_term>, _y:stdgo.Ref<stdgo._internal.go.types.Types_t_term.T_term>):Bool {
        @:recv var _x:stdgo.Ref<stdgo._internal.go.types.Types_t_term.T_term> = _x;
        //"file:///home/runner/.go/go1.21.3/src/go/types/typeterm.go#L36"
        if ((({
            final value = _x;
            (value == null || (value : Dynamic).__nil__);
        }) || ({
            final value = _y;
            (value == null || (value : Dynamic).__nil__);
        }) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/go/types/typeterm.go#L38"
            return _x == (_y);
        } else if ((((@:checkr _x ?? throw "null pointer dereference")._typ == null) || ((@:checkr _y ?? throw "null pointer dereference")._typ == null) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/go/types/typeterm.go#L40"
            return stdgo.Go.toInterface((@:checkr _x ?? throw "null pointer dereference")._typ) == (stdgo.Go.toInterface((@:checkr _y ?? throw "null pointer dereference")._typ));
        };
        //"file:///home/runner/.go/go1.21.3/src/go/types/typeterm.go#L44"
        return (((@:checkr _x ?? throw "null pointer dereference")._tilde == (@:checkr _y ?? throw "null pointer dereference")._tilde) && stdgo._internal.go.types.Types_identical.identical((@:checkr _x ?? throw "null pointer dereference")._typ, (@:checkr _y ?? throw "null pointer dereference")._typ) : Bool);
    }
    @:keep
    @:tdfield
    static public function string( _x:stdgo.Ref<stdgo._internal.go.types.Types_t_term.T_term>):stdgo.GoString {
        @:recv var _x:stdgo.Ref<stdgo._internal.go.types.Types_t_term.T_term> = _x;
        //"file:///home/runner/.go/go1.21.3/src/go/types/typeterm.go#L21"
        if (({
            final value = _x;
            (value == null || (value : Dynamic).__nil__);
        })) {
            //"file:///home/runner/.go/go1.21.3/src/go/types/typeterm.go#L23"
            return ("∅" : stdgo.GoString);
        } else if ((@:checkr _x ?? throw "null pointer dereference")._typ == null) {
            //"file:///home/runner/.go/go1.21.3/src/go/types/typeterm.go#L25"
            return ("𝓤" : stdgo.GoString);
        } else if ((@:checkr _x ?? throw "null pointer dereference")._tilde) {
            //"file:///home/runner/.go/go1.21.3/src/go/types/typeterm.go#L27"
            return (("~" : stdgo.GoString) + ((@:checkr _x ?? throw "null pointer dereference")._typ.string() : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
        } else {
            //"file:///home/runner/.go/go1.21.3/src/go/types/typeterm.go#L29"
            return ((@:checkr _x ?? throw "null pointer dereference")._typ.string() : stdgo.GoString)?.__copy__();
        };
    }
}
