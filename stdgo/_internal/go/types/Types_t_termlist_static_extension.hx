package stdgo._internal.go.types;
@:keep @:allow(stdgo._internal.go.types.Types.T_termlist_asInterface) class T_termlist_static_extension {
    @:keep
    @:tdfield
    static public function _subsetOf( _xl:stdgo._internal.go.types.Types_t_termlist.T_termlist, _yl:stdgo._internal.go.types.Types_t_termlist.T_termlist):Bool {
        @:recv var _xl:stdgo._internal.go.types.Types_t_termlist.T_termlist = _xl;
        //"file:///home/runner/.go/go1.21.3/src/go/types/termlist.go#L152"
        if (_yl._isEmpty()) {
            //"file:///home/runner/.go/go1.21.3/src/go/types/termlist.go#L153"
            return _xl._isEmpty();
        };
        //"file:///home/runner/.go/go1.21.3/src/go/types/termlist.go#L157"
        for (__0 => _x in _xl) {
            //"file:///home/runner/.go/go1.21.3/src/go/types/termlist.go#L158"
            if (!_yl._supersetOf(_x)) {
                //"file:///home/runner/.go/go1.21.3/src/go/types/termlist.go#L159"
                return false;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/types/termlist.go#L162"
        return true;
    }
    @:keep
    @:tdfield
    static public function _supersetOf( _xl:stdgo._internal.go.types.Types_t_termlist.T_termlist, _y:stdgo.Ref<stdgo._internal.go.types.Types_t_term.T_term>):Bool {
        @:recv var _xl:stdgo._internal.go.types.Types_t_termlist.T_termlist = _xl;
        //"file:///home/runner/.go/go1.21.3/src/go/types/termlist.go#L142"
        for (__0 => _x in _xl) {
            //"file:///home/runner/.go/go1.21.3/src/go/types/termlist.go#L143"
            if (_y._subsetOf(_x)) {
                //"file:///home/runner/.go/go1.21.3/src/go/types/termlist.go#L144"
                return true;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/types/termlist.go#L147"
        return false;
    }
    @:keep
    @:tdfield
    static public function _includes( _xl:stdgo._internal.go.types.Types_t_termlist.T_termlist, _t:stdgo._internal.go.types.Types_type_.Type_):Bool {
        @:recv var _xl:stdgo._internal.go.types.Types_t_termlist.T_termlist = _xl;
        //"file:///home/runner/.go/go1.21.3/src/go/types/termlist.go#L132"
        for (__0 => _x in _xl) {
            //"file:///home/runner/.go/go1.21.3/src/go/types/termlist.go#L133"
            if (_x._includes(_t)) {
                //"file:///home/runner/.go/go1.21.3/src/go/types/termlist.go#L134"
                return true;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/types/termlist.go#L137"
        return false;
    }
    @:keep
    @:tdfield
    static public function _equal( _xl:stdgo._internal.go.types.Types_t_termlist.T_termlist, _yl:stdgo._internal.go.types.Types_t_termlist.T_termlist):Bool {
        @:recv var _xl:stdgo._internal.go.types.Types_t_termlist.T_termlist = _xl;
        //"file:///home/runner/.go/go1.21.3/src/go/types/termlist.go#L127"
        return (_xl._subsetOf(_yl) && _yl._subsetOf(_xl) : Bool);
    }
    @:keep
    @:tdfield
    static public function _intersect( _xl:stdgo._internal.go.types.Types_t_termlist.T_termlist, _yl:stdgo._internal.go.types.Types_t_termlist.T_termlist):stdgo._internal.go.types.Types_t_termlist.T_termlist {
        @:recv var _xl:stdgo._internal.go.types.Types_t_termlist.T_termlist = _xl;
        //"file:///home/runner/.go/go1.21.3/src/go/types/termlist.go#L107"
        if ((_xl._isEmpty() || _yl._isEmpty() : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/go/types/termlist.go#L108"
            return null;
        };
        var _rl:stdgo._internal.go.types.Types_t_termlist.T_termlist = (new stdgo._internal.go.types.Types_t_termlist.T_termlist(0, 0) : stdgo._internal.go.types.Types_t_termlist.T_termlist);
        //"file:///home/runner/.go/go1.21.3/src/go/types/termlist.go#L114"
        for (__0 => _x in _xl) {
            //"file:///home/runner/.go/go1.21.3/src/go/types/termlist.go#L115"
            for (__1 => _y in _yl) {
                //"file:///home/runner/.go/go1.21.3/src/go/types/termlist.go#L116"
                {
                    var _r = _x._intersect(_y);
                    if (({
                        final value = _r;
                        (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                    })) {
                        _rl = (_rl.__append__(_r) : stdgo._internal.go.types.Types_t_termlist.T_termlist);
                    };
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/types/termlist.go#L121"
        return _rl._norm();
    }
    @:keep
    @:tdfield
    static public function _union( _xl:stdgo._internal.go.types.Types_t_termlist.T_termlist, _yl:stdgo._internal.go.types.Types_t_termlist.T_termlist):stdgo._internal.go.types.Types_t_termlist.T_termlist {
        @:recv var _xl:stdgo._internal.go.types.Types_t_termlist.T_termlist = _xl;
        //"file:///home/runner/.go/go1.21.3/src/go/types/termlist.go#L102"
        return (_xl.__append__(...(_yl : Array<stdgo.Ref<stdgo._internal.go.types.Types_t_term.T_term>>)) : stdgo._internal.go.types.Types_t_termlist.T_termlist)._norm();
    }
    @:keep
    @:tdfield
    static public function _norm( _xl:stdgo._internal.go.types.Types_t_termlist.T_termlist):stdgo._internal.go.types.Types_t_termlist.T_termlist {
        @:recv var _xl:stdgo._internal.go.types.Types_t_termlist.T_termlist = _xl;
        var _used = (new stdgo.Slice<Bool>((_xl.length : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<Bool>);
        var _rl:stdgo._internal.go.types.Types_t_termlist.T_termlist = (new stdgo._internal.go.types.Types_t_termlist.T_termlist(0, 0) : stdgo._internal.go.types.Types_t_termlist.T_termlist);
        //"file:///home/runner/.go/go1.21.3/src/go/types/termlist.go#L72"
        for (_i => _xi in _xl) {
            //"file:///home/runner/.go/go1.21.3/src/go/types/termlist.go#L73"
            if ((({
                final value = _xi;
                (value == null || (value : Dynamic).__nil__);
            }) || _used[(_i : stdgo.GoInt)] : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/go/types/termlist.go#L74"
                continue;
            };
            //"file:///home/runner/.go/go1.21.3/src/go/types/termlist.go#L76"
            {
                var _j = (_i + (1 : stdgo.GoInt) : stdgo.GoInt);
                while ((_j < (_xl.length) : Bool)) {
                    var _xj = _xl[(_j : stdgo.GoInt)];
//"file:///home/runner/.go/go1.21.3/src/go/types/termlist.go#L78"
                    if ((({
                        final value = _xj;
                        (value == null || (value : Dynamic).__nil__);
                    }) || _used[(_j : stdgo.GoInt)] : Bool)) {
                        //"file:///home/runner/.go/go1.21.3/src/go/types/termlist.go#L79"
                        {
                            _j++;
                            continue;
                        };
                    };
//"file:///home/runner/.go/go1.21.3/src/go/types/termlist.go#L81"
                    {
                        var __tmp__ = _xi._union(_xj), _u1:stdgo.Ref<stdgo._internal.go.types.Types_t_term.T_term> = __tmp__._0, _u2:stdgo.Ref<stdgo._internal.go.types.Types_t_term.T_term> = __tmp__._1;
                        if (({
                            final value = _u2;
                            (value == null || (value : Dynamic).__nil__);
                        })) {
                            //"file:///home/runner/.go/go1.21.3/src/go/types/termlist.go#L88"
                            if ((@:checkr _u1 ?? throw "null pointer dereference")._typ == null) {
                                //"file:///home/runner/.go/go1.21.3/src/go/types/termlist.go#L89"
                                return stdgo._internal.go.types.Types__alltermlist._allTermlist;
                            };
                            _xi = _u1;
                            _used[(_j : stdgo.GoInt)] = true;
                        };
                    };
                    _j++;
                };
            };
            _rl = (_rl.__append__(_xi) : stdgo._internal.go.types.Types_t_termlist.T_termlist);
        };
        //"file:///home/runner/.go/go1.21.3/src/go/types/termlist.go#L97"
        return _rl;
    }
    @:keep
    @:tdfield
    static public function _isAll( _xl:stdgo._internal.go.types.Types_t_termlist.T_termlist):Bool {
        @:recv var _xl:stdgo._internal.go.types.Types_t_termlist.T_termlist = _xl;
        //"file:///home/runner/.go/go1.21.3/src/go/types/termlist.go#L58"
        for (__0 => _x in _xl) {
            //"file:///home/runner/.go/go1.21.3/src/go/types/termlist.go#L59"
            if ((({
                final value = _x;
                (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
            }) && ((@:checkr _x ?? throw "null pointer dereference")._typ == null) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/go/types/termlist.go#L60"
                return true;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/types/termlist.go#L63"
        return false;
    }
    @:keep
    @:tdfield
    static public function _isEmpty( _xl:stdgo._internal.go.types.Types_t_termlist.T_termlist):Bool {
        @:recv var _xl:stdgo._internal.go.types.Types_t_termlist.T_termlist = _xl;
        //"file:///home/runner/.go/go1.21.3/src/go/types/termlist.go#L45"
        for (__0 => _x in _xl) {
            //"file:///home/runner/.go/go1.21.3/src/go/types/termlist.go#L46"
            if (({
                final value = _x;
                (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
            })) {
                //"file:///home/runner/.go/go1.21.3/src/go/types/termlist.go#L47"
                return false;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/types/termlist.go#L50"
        return true;
    }
    @:keep
    @:tdfield
    static public function string( _xl:stdgo._internal.go.types.Types_t_termlist.T_termlist):stdgo.GoString {
        @:recv var _xl:stdgo._internal.go.types.Types_t_termlist.T_termlist = _xl;
        //"file:///home/runner/.go/go1.21.3/src/go/types/termlist.go#L27"
        if ((_xl.length) == ((0 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/go/types/termlist.go#L28"
            return ("∅" : stdgo.GoString);
        };
        var _buf:stdgo._internal.strings.Strings_builder.Builder = ({} : stdgo._internal.strings.Strings_builder.Builder);
        //"file:///home/runner/.go/go1.21.3/src/go/types/termlist.go#L31"
        for (_i => _x in _xl) {
            //"file:///home/runner/.go/go1.21.3/src/go/types/termlist.go#L32"
            if ((_i > (0 : stdgo.GoInt) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/go/types/termlist.go#L33"
                _buf.writeString((" | " : stdgo.GoString));
            };
            //"file:///home/runner/.go/go1.21.3/src/go/types/termlist.go#L35"
            _buf.writeString((_x.string() : stdgo.GoString)?.__copy__());
        };
        //"file:///home/runner/.go/go1.21.3/src/go/types/termlist.go#L37"
        return (_buf.string() : stdgo.GoString)?.__copy__();
    }
}
