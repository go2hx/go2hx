package stdgo._internal.text.template.parse;
function _lexIdentifier(_l:stdgo.Ref<stdgo._internal.text.template.parse.Parse_t_lexer.T_lexer>):stdgo._internal.text.template.parse.Parse_t_statefn.T_stateFn {
        while (true) {
            {
                var _r = (@:check2r _l._next() : stdgo.GoInt32);
                if (stdgo._internal.text.template.parse.Parse__isalphanumeric._isAlphaNumeric(_r)) {} else {
                    @:check2r _l._backup();
                    var _word = (((@:checkr _l ?? throw "null pointer dereference")._input.__slice__((@:checkr _l ?? throw "null pointer dereference")._start, (@:checkr _l ?? throw "null pointer dereference")._pos) : stdgo.GoString)?.__copy__() : stdgo.GoString);
                    if (!@:check2r _l._atTerminator()) {
                        return @:check2r _l._errorf(("bad character %#U" : stdgo.GoString), stdgo.Go.toInterface(_r));
                    };
                    if (((stdgo._internal.text.template.parse.Parse__key._key[_word] ?? ((0 : stdgo.GoInt) : stdgo._internal.text.template.parse.Parse_t_itemtype.T_itemType)) > (22 : stdgo._internal.text.template.parse.Parse_t_itemtype.T_itemType) : Bool)) {
                        var _item = (stdgo._internal.text.template.parse.Parse__key._key[_word] ?? ((0 : stdgo.GoInt) : stdgo._internal.text.template.parse.Parse_t_itemtype.T_itemType) : stdgo._internal.text.template.parse.Parse_t_itemtype.T_itemType);
                        if (((_item == ((24 : stdgo._internal.text.template.parse.Parse_t_itemtype.T_itemType)) && !(@:checkr _l ?? throw "null pointer dereference")._options._breakOK : Bool) || (_item == ((25 : stdgo._internal.text.template.parse.Parse_t_itemtype.T_itemType)) && !(@:checkr _l ?? throw "null pointer dereference")._options._continueOK : Bool) : Bool)) {
                            return @:check2r _l._emit((10 : stdgo._internal.text.template.parse.Parse_t_itemtype.T_itemType));
                        };
                        return @:check2r _l._emit(_item);
                    } else if (_word[(0 : stdgo.GoInt)] == ((46 : stdgo.GoUInt8))) {
                        return @:check2r _l._emit((9 : stdgo._internal.text.template.parse.Parse_t_itemtype.T_itemType));
                    } else if (_word == (("true" : stdgo.GoString)) || _word == (("false" : stdgo.GoString))) {
                        return @:check2r _l._emit((1 : stdgo._internal.text.template.parse.Parse_t_itemtype.T_itemType));
                    } else {
                        return @:check2r _l._emit((10 : stdgo._internal.text.template.parse.Parse_t_itemtype.T_itemType));
                    };
                };
            };
        };
    }
