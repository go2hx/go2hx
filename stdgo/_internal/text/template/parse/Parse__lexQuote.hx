package stdgo._internal.text.template.parse;
import stdgo._internal.strings.Strings;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.strconv.Strconv;
function _lexQuote(_l:stdgo.Ref<stdgo._internal.text.template.parse.Parse_T_lexer.T_lexer>):stdgo._internal.text.template.parse.Parse_T_stateFn.T_stateFn {
        var _r_3623784:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var loopBreak = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 3623732i32;
                } else if (__value__ == (3623732i32)) {
                    var __blank__ = 0i32;
                    loopBreak = false;
                    _gotoNext = 3623739i32;
                } else if (__value__ == (3623739i32)) {
                    if (!loopBreak) {
                        _gotoNext = 3623743i32;
                    } else {
                        _gotoNext = 3623954i32;
                    };
                } else if (__value__ == (3623743i32)) {
                    _gotoNext = 3623747i32;
                } else if (__value__ == (3623747i32)) {
                    {
                        final __value__ = @:check2r _l._next();
                        if (__value__ == ((92 : stdgo.GoInt32))) {
                            _gotoNext = 3623767i32;
                        } else if (__value__ == ((-1 : stdgo.GoInt32)) || __value__ == ((10 : stdgo.GoInt32))) {
                            _gotoNext = 3623855i32;
                        } else if (__value__ == ((34 : stdgo.GoInt32))) {
                            _gotoNext = 3623922i32;
                        } else {
                            _gotoNext = 3623739i32;
                        };
                    };
                } else if (__value__ == (3623767i32)) {
                    {
                        _r_3623784 = @:check2r _l._next();
                        if (((_r_3623784 != (-1 : stdgo.GoInt32)) && (_r_3623784 != (10 : stdgo.GoInt32)) : Bool)) {
                            _gotoNext = 3623821i32;
                        } else {
                            _gotoNext = 3623841i32;
                        };
                    };
                } else if (__value__ == (3623821i32)) {
                    _gotoNext = 3623739i32;
                } else if (__value__ == (3623841i32)) {
                    _gotoNext = 3623855i32;
                } else if (__value__ == (3623855i32)) {
                    return @:check2r _l._errorf(("unterminated quoted string" : stdgo.GoString));
                    _gotoNext = 3623739i32;
                } else if (__value__ == (3623922i32)) {
                    loopBreak = true;
                    _gotoNext = 3623739i32;
                } else if (__value__ == (3623954i32)) {
                    return @:check2r _l._emit((19 : stdgo._internal.text.template.parse.Parse_T_itemType.T_itemType));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
