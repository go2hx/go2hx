package stdgo._internal.text.template.parse;
function _lexInsideAction(_l:stdgo.Ref<stdgo._internal.text.template.parse.Parse_T_lexer.T_lexer>):stdgo._internal.text.template.parse.Parse_T_stateFn.T_stateFn {
        var __tmp__ = _l._atRightDelim(), _delim:Bool = __tmp__._0, __0:Bool = __tmp__._1;
        if (_delim) {
            if (_l._parenDepth == ((0 : stdgo.GoInt))) {
                return stdgo._internal.text.template.parse.Parse__lexRightDelim._lexRightDelim;
            };
            return _l._errorf(("unclosed left paren" : stdgo.GoString));
        };
        {
            var _r = (_l._next() : stdgo.GoInt32);
            {
                var __switchIndex__ = -1;
                var __run__ = true;
                while (__run__) {
                    __run__ = false;
                    if (__switchIndex__ == 0 || (__switchIndex__ == -1 && (_r == (-1 : stdgo.GoInt32)))) {
                        return _l._errorf(("unclosed action" : stdgo.GoString));
                        break;
                        break;
                    } else if (__switchIndex__ == 1 || (__switchIndex__ == -1 && stdgo._internal.text.template.parse.Parse__isSpace._isSpace(_r))) {
                        _l._backup();
                        return stdgo._internal.text.template.parse.Parse__lexSpace._lexSpace;
                        break;
                        break;
                    } else if (__switchIndex__ == 2 || (__switchIndex__ == -1 && (_r == (61 : stdgo.GoInt32)))) {
                        return _l._emit((6 : stdgo._internal.text.template.parse.Parse_T_itemType.T_itemType));
                        break;
                        break;
                    } else if (__switchIndex__ == 3 || (__switchIndex__ == -1 && (_r == (58 : stdgo.GoInt32)))) {
                        if (_l._next() != ((61 : stdgo.GoInt32))) {
                            return _l._errorf(("expected :=" : stdgo.GoString));
                        };
                        return _l._emit((7 : stdgo._internal.text.template.parse.Parse_T_itemType.T_itemType));
                        break;
                        break;
                    } else if (__switchIndex__ == 4 || (__switchIndex__ == -1 && (_r == (124 : stdgo.GoInt32)))) {
                        return _l._emit((14 : stdgo._internal.text.template.parse.Parse_T_itemType.T_itemType));
                        break;
                        break;
                    } else if (__switchIndex__ == 5 || (__switchIndex__ == -1 && (_r == (34 : stdgo.GoInt32)))) {
                        return stdgo._internal.text.template.parse.Parse__lexQuote._lexQuote;
                        break;
                        break;
                    } else if (__switchIndex__ == 6 || (__switchIndex__ == -1 && (_r == (96 : stdgo.GoInt32)))) {
                        return stdgo._internal.text.template.parse.Parse__lexRawQuote._lexRawQuote;
                        break;
                        break;
                    } else if (__switchIndex__ == 7 || (__switchIndex__ == -1 && (_r == (36 : stdgo.GoInt32)))) {
                        return stdgo._internal.text.template.parse.Parse__lexVariable._lexVariable;
                        break;
                        break;
                    } else if (__switchIndex__ == 8 || (__switchIndex__ == -1 && (_r == (39 : stdgo.GoInt32)))) {
                        return stdgo._internal.text.template.parse.Parse__lexChar._lexChar;
                        break;
                        break;
                    } else if (__switchIndex__ == 9 || (__switchIndex__ == -1 && (_r == (46 : stdgo.GoInt32)))) {
                        if ((_l._pos < (_l._input.length : stdgo._internal.text.template.parse.Parse_Pos.Pos) : Bool)) {
                            var _r = (_l._input[(_l._pos : stdgo.GoInt)] : stdgo.GoUInt8);
                            if (((_r < (48 : stdgo.GoUInt8) : Bool) || ((57 : stdgo.GoUInt8) < _r : Bool) : Bool)) {
                                return stdgo._internal.text.template.parse.Parse__lexField._lexField;
                            };
                        };
                        @:fallthrough {
                            __switchIndex__ = 10;
                            __run__ = true;
                            continue;
                        };
                        break;
                    } else if (__switchIndex__ == 10 || (__switchIndex__ == -1 && ((_r == ((43 : stdgo.GoInt32)) || _r == ((45 : stdgo.GoInt32)) : Bool) || ((((48 : stdgo.GoInt32) <= _r : Bool) && (_r <= (57 : stdgo.GoInt32) : Bool) : Bool)) : Bool))) {
                        _l._backup();
                        return stdgo._internal.text.template.parse.Parse__lexNumber._lexNumber;
                        break;
                        break;
                    } else if (__switchIndex__ == 11 || (__switchIndex__ == -1 && stdgo._internal.text.template.parse.Parse__isAlphaNumeric._isAlphaNumeric(_r))) {
                        _l._backup();
                        return stdgo._internal.text.template.parse.Parse__lexIdentifier._lexIdentifier;
                        break;
                        break;
                    } else if (__switchIndex__ == 12 || (__switchIndex__ == -1 && (_r == (40 : stdgo.GoInt32)))) {
                        _l._parenDepth++;
                        return _l._emit((12 : stdgo._internal.text.template.parse.Parse_T_itemType.T_itemType));
                        break;
                        break;
                    } else if (__switchIndex__ == 13 || (__switchIndex__ == -1 && (_r == (41 : stdgo.GoInt32)))) {
                        _l._parenDepth--;
                        if ((_l._parenDepth < (0 : stdgo.GoInt) : Bool)) {
                            return _l._errorf(("unexpected right paren" : stdgo.GoString));
                        };
                        return _l._emit((17 : stdgo._internal.text.template.parse.Parse_T_itemType.T_itemType));
                        break;
                        break;
                    } else if (__switchIndex__ == 14 || (__switchIndex__ == -1 && ((_r <= (127 : stdgo.GoInt32) : Bool) && stdgo._internal.unicode.Unicode_isPrint.isPrint(_r) : Bool))) {
                        return _l._emit((2 : stdgo._internal.text.template.parse.Parse_T_itemType.T_itemType));
                        break;
                        break;
                    } else {
                        return _l._errorf(("unrecognized character in action: %#U" : stdgo.GoString), stdgo.Go.toInterface(_r));
                        break;
                    };
                    break;
                };
                return (null : stdgo._internal.text.template.parse.Parse_T_stateFn.T_stateFn);
            };
        };
    }