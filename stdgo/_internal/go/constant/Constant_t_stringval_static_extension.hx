package stdgo._internal.go.constant;
@:keep @:allow(stdgo._internal.go.constant.Constant.T_stringVal_asInterface) class T_stringVal_static_extension {
    @:keep
    @:tdfield
    static public function _implementsValue( _:stdgo.Ref<stdgo._internal.go.constant.Constant_t_stringval.T_stringVal>):Void {
        @:recv var _:stdgo.Ref<stdgo._internal.go.constant.Constant_t_stringval.T_stringVal> = _;
    }
    @:keep
    @:tdfield
    static public function exactString( _x:stdgo.Ref<stdgo._internal.go.constant.Constant_t_stringval.T_stringVal>):stdgo.GoString {
        @:recv var _x:stdgo.Ref<stdgo._internal.go.constant.Constant_t_stringval.T_stringVal> = _x;
        //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L248"
        return stdgo._internal.strconv.Strconv_quote.quote(_x._string()?.__copy__())?.__copy__();
    }
    @:keep
    @:tdfield
    static public function _appendReverse( _x:stdgo.Ref<stdgo._internal.go.constant.Constant_t_stringval.T_stringVal>, _list:stdgo.Slice<stdgo.GoString>):stdgo.Slice<stdgo.GoString> {
        @:recv var _x:stdgo.Ref<stdgo._internal.go.constant.Constant_t_stringval.T_stringVal> = _x;
        var _y = _x;
        //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L168"
        while (({
            final value = (@:checkr _y ?? throw "null pointer dereference")._r;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        })) {
            //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L169"
            (@:checkr (@:checkr _y ?? throw "null pointer dereference")._r ?? throw "null pointer dereference")._mu.lock();
            _list = (@:checkr _y ?? throw "null pointer dereference")._r._appendReverse(_list);
            //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L171"
            (@:checkr (@:checkr _y ?? throw "null pointer dereference")._r ?? throw "null pointer dereference")._mu.unlock();
            var _l = (@:checkr _y ?? throw "null pointer dereference")._l;
            //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L174"
            if (_y != (_x)) {
                //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L175"
                (@:checkr _y ?? throw "null pointer dereference")._mu.unlock();
            };
            //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L177"
            (@:checkr _l ?? throw "null pointer dereference")._mu.lock();
            _y = _l;
        };
        var _s = ((@:checkr _y ?? throw "null pointer dereference")._s?.__copy__() : stdgo.GoString);
        //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L181"
        if (_y != (_x)) {
            //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L182"
            (@:checkr _y ?? throw "null pointer dereference")._mu.unlock();
        };
        //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L184"
        return (_list.__append__(_s?.__copy__()) : stdgo.Slice<stdgo.GoString>);
    }
    @:keep
    @:tdfield
    static public function _string( _x:stdgo.Ref<stdgo._internal.go.constant.Constant_t_stringval.T_stringVal>):stdgo.GoString {
        @:recv var _x:stdgo.Ref<stdgo._internal.go.constant.Constant_t_stringval.T_stringVal> = _x;
        //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L139"
        (@:checkr _x ?? throw "null pointer dereference")._mu.lock();
        //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L140"
        if (({
            final value = (@:checkr _x ?? throw "null pointer dereference")._l;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        })) {
            (@:checkr _x ?? throw "null pointer dereference")._s = stdgo._internal.strings.Strings_join.join(stdgo._internal.go.constant.Constant__reverse._reverse(_x._appendReverse((null : stdgo.Slice<stdgo.GoString>))), (stdgo.Go.str() : stdgo.GoString)?.__copy__())?.__copy__();
            (@:checkr _x ?? throw "null pointer dereference")._l = null;
            (@:checkr _x ?? throw "null pointer dereference")._r = null;
        };
        var _s = ((@:checkr _x ?? throw "null pointer dereference")._s?.__copy__() : stdgo.GoString);
        //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L146"
        (@:checkr _x ?? throw "null pointer dereference")._mu.unlock();
        //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L148"
        return _s?.__copy__();
    }
    @:keep
    @:tdfield
    static public function string( _x:stdgo.Ref<stdgo._internal.go.constant.Constant_t_stringval.T_stringVal>):stdgo.GoString {
        @:recv var _x:stdgo.Ref<stdgo._internal.go.constant.Constant_t_stringval.T_stringVal> = _x;
        {};
        var _s = (stdgo._internal.strconv.Strconv_quote.quote(_x._string()?.__copy__())?.__copy__() : stdgo.GoString);
        //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L119"
        if ((stdgo._internal.unicode.utf8.Utf8_runecountinstring.runeCountInString(_s?.__copy__()) > (72 : stdgo.GoInt) : Bool)) {
            var _i = (0 : stdgo.GoInt);
            //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L124"
            {
                var _n = (0 : stdgo.GoInt);
                while ((_n < (69 : stdgo.GoInt) : Bool)) {
                    var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderuneinstring.decodeRuneInString((_s.__slice__(_i) : stdgo.GoString).__copy__()), __1:stdgo.GoInt32 = __tmp__._0, _size:stdgo.GoInt = __tmp__._1;
_i = (_i + (_size) : stdgo.GoInt);
                    _n++;
                };
            };
            _s = ((_s.__slice__(0, _i) : stdgo.GoString) + ("..." : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
        };
        //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L130"
        return _s?.__copy__();
    }
    @:keep
    @:tdfield
    static public function kind( _:stdgo.Ref<stdgo._internal.go.constant.Constant_t_stringval.T_stringVal>):stdgo._internal.go.constant.Constant_kind.Kind {
        @:recv var _:stdgo.Ref<stdgo._internal.go.constant.Constant_t_stringval.T_stringVal> = _;
        //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L105"
        return (2 : stdgo._internal.go.constant.Constant_kind.Kind);
    }
}
