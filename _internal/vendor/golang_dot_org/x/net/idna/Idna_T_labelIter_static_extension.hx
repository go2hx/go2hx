package _internal.vendor.golang_dot_org.x.net.idna;
@:keep @:allow(_internal.vendor.golang_dot_org.x.net.idna.Idna.T_labelIter_asInterface) class T_labelIter_static_extension {
    @:keep
    static public function _set( _l:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.idna.Idna_T_labelIter.T_labelIter>, _s:stdgo.GoString):Void {
        @:recv var _l:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.idna.Idna_T_labelIter.T_labelIter> = _l;
        if (_l._slice == null) {
            _l._slice = stdgo._internal.strings.Strings_split.split(_l._orig?.__copy__(), ("." : stdgo.GoString));
        };
        _l._slice[(_l._i : stdgo.GoInt)] = _s?.__copy__();
    }
    @:keep
    static public function _next( _l:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.idna.Idna_T_labelIter.T_labelIter>):Void {
        @:recv var _l:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.idna.Idna_T_labelIter.T_labelIter> = _l;
        _l._i++;
        if (_l._slice != null) {
            if (((_l._i >= (_l._slice.length) : Bool) || (_l._i == (((_l._slice.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) && _l._slice[(_l._i : stdgo.GoInt)] == (stdgo.Go.str()) : Bool) : Bool)) {
                _l._curStart = (_l._orig.length);
            };
        } else {
            _l._curStart = (_l._curEnd + (1 : stdgo.GoInt) : stdgo.GoInt);
            if (((_l._curStart == ((_l._orig.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) && (_l._orig[(_l._curStart : stdgo.GoInt)] == (46 : stdgo.GoUInt8)) : Bool)) {
                _l._curStart = (_l._orig.length);
            };
        };
    }
    @:keep
    static public function _label( _l:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.idna.Idna_T_labelIter.T_labelIter>):stdgo.GoString {
        @:recv var _l:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.idna.Idna_T_labelIter.T_labelIter> = _l;
        if (_l._slice != null) {
            return _l._slice[(_l._i : stdgo.GoInt)]?.__copy__();
        };
        var _p = (stdgo._internal.strings.Strings_indexByte.indexByte((_l._orig.__slice__(_l._curStart) : stdgo.GoString)?.__copy__(), (46 : stdgo.GoUInt8)) : stdgo.GoInt);
        _l._curEnd = (_l._curStart + _p : stdgo.GoInt);
        if (_p == ((-1 : stdgo.GoInt))) {
            _l._curEnd = (_l._orig.length);
        };
        return (_l._orig.__slice__(_l._curStart, _l._curEnd) : stdgo.GoString)?.__copy__();
    }
    @:keep
    static public function _result( _l:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.idna.Idna_T_labelIter.T_labelIter>):stdgo.GoString {
        @:recv var _l:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.idna.Idna_T_labelIter.T_labelIter> = _l;
        if (_l._slice != null) {
            return stdgo._internal.strings.Strings_join.join(_l._slice, ("." : stdgo.GoString))?.__copy__();
        };
        return _l._orig?.__copy__();
    }
    @:keep
    static public function _done( _l:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.idna.Idna_T_labelIter.T_labelIter>):Bool {
        @:recv var _l:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.idna.Idna_T_labelIter.T_labelIter> = _l;
        return (_l._curStart >= (_l._orig.length) : Bool);
    }
    @:keep
    static public function _reset( _l:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.idna.Idna_T_labelIter.T_labelIter>):Void {
        @:recv var _l:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.idna.Idna_T_labelIter.T_labelIter> = _l;
        _l._curStart = (0 : stdgo.GoInt);
        _l._curEnd = (0 : stdgo.GoInt);
        _l._i = (0 : stdgo.GoInt);
    }
}
