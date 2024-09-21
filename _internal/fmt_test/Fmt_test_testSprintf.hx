package _internal.fmt_test;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.fmt.Fmt;
function testSprintf(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (__2 => _tt in _internal.fmt_test.Fmt_test__fmtTests._fmtTests) {
            var _s = (stdgo._internal.fmt.Fmt_sprintf.sprintf(_tt._fmt?.__copy__(), _tt._val)?.__copy__() : stdgo.GoString);
            var _i = (stdgo._internal.strings.Strings_index.index(_tt._out?.__copy__(), ("PTR" : stdgo.GoString)) : stdgo.GoInt);
            if (((_i >= (0 : stdgo.GoInt) : Bool) && (_i < (_s.length) : Bool) : Bool)) {
                var __0:stdgo.GoString = ("" : stdgo.GoString), __1:stdgo.GoString = ("" : stdgo.GoString);
var _chars = __1, _pattern = __0;
                if (stdgo._internal.strings.Strings_hasPrefix.hasPrefix((_tt._out.__slice__(_i) : stdgo.GoString)?.__copy__(), ("PTR_b" : stdgo.GoString))) {
                    _pattern = ("PTR_b" : stdgo.GoString);
                    _chars = ("01" : stdgo.GoString);
                } else if (stdgo._internal.strings.Strings_hasPrefix.hasPrefix((_tt._out.__slice__(_i) : stdgo.GoString)?.__copy__(), ("PTR_o" : stdgo.GoString))) {
                    _pattern = ("PTR_o" : stdgo.GoString);
                    _chars = ("01234567" : stdgo.GoString);
                } else if (stdgo._internal.strings.Strings_hasPrefix.hasPrefix((_tt._out.__slice__(_i) : stdgo.GoString)?.__copy__(), ("PTR_d" : stdgo.GoString))) {
                    _pattern = ("PTR_d" : stdgo.GoString);
                    _chars = ("0123456789" : stdgo.GoString);
                } else if (stdgo._internal.strings.Strings_hasPrefix.hasPrefix((_tt._out.__slice__(_i) : stdgo.GoString)?.__copy__(), ("PTR_x" : stdgo.GoString))) {
                    _pattern = ("PTR_x" : stdgo.GoString);
                    _chars = ("0123456789abcdef" : stdgo.GoString);
                } else if (stdgo._internal.strings.Strings_hasPrefix.hasPrefix((_tt._out.__slice__(_i) : stdgo.GoString)?.__copy__(), ("PTR_X" : stdgo.GoString))) {
                    _pattern = ("PTR_X" : stdgo.GoString);
                    _chars = ("0123456789ABCDEF" : stdgo.GoString);
                } else {
                    _pattern = ("PTR" : stdgo.GoString);
                    _chars = ("0123456789abcdefABCDEF" : stdgo.GoString);
                };
                var _p = (((_s.__slice__(0, _i) : stdgo.GoString) + _pattern?.__copy__() : stdgo.GoString)?.__copy__() : stdgo.GoString);
                {
                    var _j = (_i : stdgo.GoInt);
                    stdgo.Go.cfor((_j < (_s.length) : Bool), _j++, {
                        if (!stdgo._internal.strings.Strings_containsRune.containsRune(_chars?.__copy__(), (_s[(_j : stdgo.GoInt)] : stdgo.GoInt32))) {
                            _p = (_p + ((_s.__slice__(_j) : stdgo.GoString))?.__copy__() : stdgo.GoString);
                            break;
                        };
                    });
                };
                _s = _p?.__copy__();
            };
            if (_s != (_tt._out)) {
                {
                    var __tmp__ = try {
                        { _0 : (stdgo.Go.typeAssert((_tt._val : stdgo.GoString)) : stdgo.GoString), _1 : true };
                    } catch(_) {
                        { _0 : ("" : stdgo.GoString), _1 : false };
                    }, __3 = __tmp__._0, _ok = __tmp__._1;
                    if (_ok) {
                        _t.errorf(("Sprintf(%q, %q) = <%s> want <%s>" : stdgo.GoString), stdgo.Go.toInterface(_tt._fmt), _tt._val, stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_tt._out));
                    } else {
                        _t.errorf(("Sprintf(%q, %v) = %q want %q" : stdgo.GoString), stdgo.Go.toInterface(_tt._fmt), _tt._val, stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_tt._out));
                    };
                };
            };
        };
    }
