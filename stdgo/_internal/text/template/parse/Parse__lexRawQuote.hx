package stdgo._internal.text.template.parse;
function _lexRawQuote(_l:stdgo.Ref<stdgo._internal.text.template.parse.Parse_T_lexer.T_lexer>):stdgo._internal.text.template.parse.Parse_T_stateFn.T_stateFn {
        stdgo._internal.internal.Macro.controlFlow({
            @:label("Loop") while (true) {
                {
                    var __switchIndex__ = -1;
                    var __run__ = true;
                    while (__run__) {
                        __run__ = false;
                        {
                            final __value__ = _l._next();
                            if (__value__ == ((-1 : stdgo.GoInt32))) {
                                return _l._errorf(("unterminated raw quoted string" : stdgo.GoString));
                                break;
                            } else if (__value__ == ((96 : stdgo.GoInt32))) {
                                @:jump("Loop") break;
                                break;
                            };
                        };
                        break;
                    };
                };
            };
            return _l._emit((15 : stdgo._internal.text.template.parse.Parse_T_itemType.T_itemType));
        });
    }
