package stdgo._internal.go.types;
@:keep @:allow(stdgo._internal.go.types.Types.T__TypeSet_asInterface) class T__TypeSet_static_extension {
    @:keep
    @:tdfield
    static public function _underIs( _s:stdgo.Ref<stdgo._internal.go.types.Types_t__typeset.T__TypeSet>, _f:stdgo._internal.go.types.Types_type_.Type_ -> Bool):Bool {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.types.Types_t__typeset.T__TypeSet> = _s;
        //"file:///home/runner/.go/go1.21.3/src/go/types/typeset.go#L129"
        if (!_s._hasTerms()) {
            //"file:///home/runner/.go/go1.21.3/src/go/types/typeset.go#L130"
            return _f((null : stdgo._internal.go.types.Types_type_.Type_));
        };
        //"file:///home/runner/.go/go1.21.3/src/go/types/typeset.go#L132"
        for (__0 => _t in (@:checkr _s ?? throw "null pointer dereference")._terms) {
            //"file:///home/runner/.go/go1.21.3/src/go/types/typeset.go#L133"
            stdgo._internal.go.types.Types__assert._assert((@:checkr _t ?? throw "null pointer dereference")._typ != null);
            var _u = ((@:checkr _t ?? throw "null pointer dereference")._typ : stdgo._internal.go.types.Types_type_.Type_);
            //"file:///home/runner/.go/go1.21.3/src/go/types/typeset.go#L136"
            if (!(@:checkr _t ?? throw "null pointer dereference")._tilde) {
                _u = stdgo._internal.go.types.Types__under._under(_u);
            };
            //"file:///home/runner/.go/go1.21.3/src/go/types/typeset.go#L139"
            if (false) {
                //"file:///home/runner/.go/go1.21.3/src/go/types/typeset.go#L140"
                stdgo._internal.go.types.Types__assert._assert(stdgo._internal.go.types.Types_identical.identical(_u, stdgo._internal.go.types.Types__under._under(_u)));
            };
            //"file:///home/runner/.go/go1.21.3/src/go/types/typeset.go#L142"
            if (!_f(_u)) {
                //"file:///home/runner/.go/go1.21.3/src/go/types/typeset.go#L143"
                return false;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/types/typeset.go#L146"
        return true;
    }
    @:keep
    @:tdfield
    static public function _is( _s:stdgo.Ref<stdgo._internal.go.types.Types_t__typeset.T__TypeSet>, _f:stdgo.Ref<stdgo._internal.go.types.Types_t_term.T_term> -> Bool):Bool {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.types.Types_t__typeset.T__TypeSet> = _s;
        //"file:///home/runner/.go/go1.21.3/src/go/types/typeset.go#L113"
        if (!_s._hasTerms()) {
            //"file:///home/runner/.go/go1.21.3/src/go/types/typeset.go#L114"
            return _f(null);
        };
        //"file:///home/runner/.go/go1.21.3/src/go/types/typeset.go#L116"
        for (__0 => _t in (@:checkr _s ?? throw "null pointer dereference")._terms) {
            //"file:///home/runner/.go/go1.21.3/src/go/types/typeset.go#L117"
            stdgo._internal.go.types.Types__assert._assert((@:checkr _t ?? throw "null pointer dereference")._typ != null);
            //"file:///home/runner/.go/go1.21.3/src/go/types/typeset.go#L118"
            if (!_f(_t)) {
                //"file:///home/runner/.go/go1.21.3/src/go/types/typeset.go#L119"
                return false;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/types/typeset.go#L122"
        return true;
    }
    @:keep
    @:tdfield
    static public function _subsetOf( _s1:stdgo.Ref<stdgo._internal.go.types.Types_t__typeset.T__TypeSet>, _s2:stdgo.Ref<stdgo._internal.go.types.Types_t__typeset.T__TypeSet>):Bool {
        @:recv var _s1:stdgo.Ref<stdgo._internal.go.types.Types_t__typeset.T__TypeSet> = _s1;
        //"file:///home/runner/.go/go1.21.3/src/go/types/typeset.go#L105"
        return (@:checkr _s1 ?? throw "null pointer dereference")._terms._subsetOf((@:checkr _s2 ?? throw "null pointer dereference")._terms);
    }
    @:keep
    @:tdfield
    static public function _hasTerms( _s:stdgo.Ref<stdgo._internal.go.types.Types_t__typeset.T__TypeSet>):Bool {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.types.Types_t__typeset.T__TypeSet> = _s;
        //"file:///home/runner/.go/go1.21.3/src/go/types/typeset.go#L102"
        return (!(@:checkr _s ?? throw "null pointer dereference")._terms._isEmpty() && !(@:checkr _s ?? throw "null pointer dereference")._terms._isAll() : Bool);
    }
    @:keep
    @:tdfield
    static public function string( _s:stdgo.Ref<stdgo._internal.go.types.Types_t__typeset.T__TypeSet>):stdgo.GoString {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.types.Types_t__typeset.T__TypeSet> = _s;
        //"file:///home/runner/.go/go1.21.3/src/go/types/typeset.go#L64"
        if (_s.isEmpty()) {
            //"file:///home/runner/.go/go1.21.3/src/go/types/typeset.go#L66"
            return ("∅" : stdgo.GoString);
        } else if (_s.isAll()) {
            //"file:///home/runner/.go/go1.21.3/src/go/types/typeset.go#L68"
            return ("𝓤" : stdgo.GoString);
        };
        var _hasMethods = (((@:checkr _s ?? throw "null pointer dereference")._methods.length) > (0 : stdgo.GoInt) : Bool);
        var _hasTerms = (_s._hasTerms() : Bool);
        var _buf:stdgo._internal.strings.Strings_builder.Builder = ({} : stdgo._internal.strings.Strings_builder.Builder);
        //"file:///home/runner/.go/go1.21.3/src/go/types/typeset.go#L75"
        _buf.writeByte((123 : stdgo.GoUInt8));
        //"file:///home/runner/.go/go1.21.3/src/go/types/typeset.go#L76"
        if ((@:checkr _s ?? throw "null pointer dereference")._comparable) {
            //"file:///home/runner/.go/go1.21.3/src/go/types/typeset.go#L77"
            _buf.writeString(("comparable" : stdgo.GoString));
            //"file:///home/runner/.go/go1.21.3/src/go/types/typeset.go#L78"
            if ((_hasMethods || _hasTerms : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/go/types/typeset.go#L79"
                _buf.writeString(("; " : stdgo.GoString));
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/types/typeset.go#L82"
        for (_i => _m in (@:checkr _s ?? throw "null pointer dereference")._methods) {
            //"file:///home/runner/.go/go1.21.3/src/go/types/typeset.go#L83"
            if ((_i > (0 : stdgo.GoInt) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/go/types/typeset.go#L84"
                _buf.writeString(("; " : stdgo.GoString));
            };
            //"file:///home/runner/.go/go1.21.3/src/go/types/typeset.go#L86"
            _buf.writeString((_m.string() : stdgo.GoString)?.__copy__());
        };
        //"file:///home/runner/.go/go1.21.3/src/go/types/typeset.go#L88"
        if ((_hasMethods && _hasTerms : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/go/types/typeset.go#L89"
            _buf.writeString(("; " : stdgo.GoString));
        };
        //"file:///home/runner/.go/go1.21.3/src/go/types/typeset.go#L91"
        if (_hasTerms) {
            //"file:///home/runner/.go/go1.21.3/src/go/types/typeset.go#L92"
            _buf.writeString(((@:checkr _s ?? throw "null pointer dereference")._terms.string() : stdgo.GoString)?.__copy__());
        };
        //"file:///home/runner/.go/go1.21.3/src/go/types/typeset.go#L94"
        _buf.writeString(("}" : stdgo.GoString));
        //"file:///home/runner/.go/go1.21.3/src/go/types/typeset.go#L95"
        return (_buf.string() : stdgo.GoString)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function lookupMethod( _s:stdgo.Ref<stdgo._internal.go.types.Types_t__typeset.T__TypeSet>, _pkg:stdgo.Ref<stdgo._internal.go.types.Types_package.Package>, _name:stdgo.GoString, _foldCase:Bool):{ var _0 : stdgo.GoInt; var _1 : stdgo.Ref<stdgo._internal.go.types.Types_func.Func>; } {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.types.Types_t__typeset.T__TypeSet> = _s;
        //"file:///home/runner/.go/go1.21.3/src/go/types/typeset.go#L60"
        return stdgo._internal.go.types.Types__lookupmethod._lookupMethod((@:checkr _s ?? throw "null pointer dereference")._methods, _pkg, _name?.__copy__(), _foldCase);
    }
    @:keep
    @:tdfield
    static public function method( _s:stdgo.Ref<stdgo._internal.go.types.Types_t__typeset.T__TypeSet>, _i:stdgo.GoInt):stdgo.Ref<stdgo._internal.go.types.Types_func.Func> {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.types.Types_t__typeset.T__TypeSet> = _s;
        //"file:///home/runner/.go/go1.21.3/src/go/types/typeset.go#L56"
        return (@:checkr _s ?? throw "null pointer dereference")._methods[(_i : stdgo.GoInt)];
    }
    @:keep
    @:tdfield
    static public function numMethods( _s:stdgo.Ref<stdgo._internal.go.types.Types_t__typeset.T__TypeSet>):stdgo.GoInt {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.types.Types_t__typeset.T__TypeSet> = _s;
        //"file:///home/runner/.go/go1.21.3/src/go/types/typeset.go#L52"
        return ((@:checkr _s ?? throw "null pointer dereference")._methods.length);
    }
    @:keep
    @:tdfield
    static public function isComparable( _s:stdgo.Ref<stdgo._internal.go.types.Types_t__typeset.T__TypeSet>, _seen:stdgo.GoMap<stdgo._internal.go.types.Types_type_.Type_, Bool>):Bool {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.types.Types_t__typeset.T__TypeSet> = _s;
        //"file:///home/runner/.go/go1.21.3/src/go/types/typeset.go#L43"
        if ((@:checkr _s ?? throw "null pointer dereference")._terms._isAll()) {
            //"file:///home/runner/.go/go1.21.3/src/go/types/typeset.go#L44"
            return (@:checkr _s ?? throw "null pointer dereference")._comparable;
        };
        //"file:///home/runner/.go/go1.21.3/src/go/types/typeset.go#L46"
        return _s._is(function(_t:stdgo.Ref<stdgo._internal.go.types.Types_t_term.T_term>):Bool {
            //"file:///home/runner/.go/go1.21.3/src/go/types/typeset.go#L47"
            return (({
                final value = _t;
                (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
            }) && stdgo._internal.go.types.Types__comparable._comparable((@:checkr _t ?? throw "null pointer dereference")._typ, false, _seen, null) : Bool);
        });
    }
    @:keep
    @:tdfield
    static public function isMethodSet( _s:stdgo.Ref<stdgo._internal.go.types.Types_t__typeset.T__TypeSet>):Bool {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.types.Types_t__typeset.T__TypeSet> = _s;
        //"file:///home/runner/.go/go1.21.3/src/go/types/typeset.go#L39"
        return (!(@:checkr _s ?? throw "null pointer dereference")._comparable && (@:checkr _s ?? throw "null pointer dereference")._terms._isAll() : Bool);
    }
    @:keep
    @:tdfield
    static public function isAll( _s:stdgo.Ref<stdgo._internal.go.types.Types_t__typeset.T__TypeSet>):Bool {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.types.Types_t__typeset.T__TypeSet> = _s;
        //"file:///home/runner/.go/go1.21.3/src/go/types/typeset.go#L36"
        return (_s.isMethodSet() && ((@:checkr _s ?? throw "null pointer dereference")._methods.length == (0 : stdgo.GoInt)) : Bool);
    }
    @:keep
    @:tdfield
    static public function isEmpty( _s:stdgo.Ref<stdgo._internal.go.types.Types_t__typeset.T__TypeSet>):Bool {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.types.Types_t__typeset.T__TypeSet> = _s;
        //"file:///home/runner/.go/go1.21.3/src/go/types/typeset.go#L33"
        return (@:checkr _s ?? throw "null pointer dereference")._terms._isEmpty();
    }
}
