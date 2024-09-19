package stdgo._internal.text.template.parse;
function _lexChar(_l:stdgo.Ref<stdgo._internal.text.template.parse.Parse_T_lexer.T_lexer>):stdgo._internal.text.template.parse.Parse_T_stateFn.T_stateFn {
        stdgo._internal.internal.Macro.controlFlow({
            @:label("Loop") while (true) {
                {
                    var __switchIndex__ = -1;
                    var __run__ = true;
                    while (__run__) {
                        __run__ = false;
                        {
                            final __value__ = _l._next();
                            if (__switchIndex__ == 0 || (__switchIndex__ == -1 && (__value__ == (92 : stdgo.GoInt32)))) {
                                {
                                    var _r = (_l._next() : stdgo.GoInt32);
                                    if (((_r != (-1 : stdgo.GoInt32)) && (_r != (10 : stdgo.GoInt32)) : Bool)) {
                                        break;
                                    };
                                };
                                @:fallthrough {
                                    __switchIndex__ = 1;
                                    __run__ = true;
                                    continue;
                                };
                                break;
                            } else if (__switchIndex__ == 1 || (__switchIndex__ == -1 && (__value__ == ((-1 : stdgo.GoInt32)) || __value__ == ((10 : stdgo.GoInt32))))) {
                                return _l._errorf(("unterminated character constant" : stdgo.GoString));
                                break;
                                break;
                            } else if (__switchIndex__ == 2 || (__switchIndex__ == -1 && (__value__ == (39 : stdgo.GoInt32)))) {
                                @:jump("Loop") break;
                                break;
                                break;
                            };
                        };
                        break;
                    };
                };
            };
            return _l._emit((3 : stdgo._internal.text.template.parse.Parse_T_itemType.T_itemType));
        });
    }
