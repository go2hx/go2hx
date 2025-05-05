package stdgo._internal.regexp;
function _minInputLen(_re:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>):stdgo.GoInt {
        //"file:///home/runner/.go/go1.21.3/src/regexp/regexp.go#L275"
        {
            final __value__ = (@:checkr _re ?? throw "null pointer dereference").op;
            if (__value__ == ((6 : stdgo._internal.regexp.syntax.Syntax_op.Op)) || __value__ == ((5 : stdgo._internal.regexp.syntax.Syntax_op.Op)) || __value__ == ((4 : stdgo._internal.regexp.syntax.Syntax_op.Op))) {
                //"file:///home/runner/.go/go1.21.3/src/regexp/regexp.go#L279"
                return (1 : stdgo.GoInt);
            } else if (__value__ == ((3 : stdgo._internal.regexp.syntax.Syntax_op.Op))) {
                var _l = (0 : stdgo.GoInt);
                //"file:///home/runner/.go/go1.21.3/src/regexp/regexp.go#L282"
                for (__0 => _r in (@:checkr _re ?? throw "null pointer dereference").rune) {
                    //"file:///home/runner/.go/go1.21.3/src/regexp/regexp.go#L283"
                    if (_r == ((65533 : stdgo.GoInt32))) {
                        //"file:///home/runner/.go/go1.21.3/src/regexp/regexp.go#L284"
                        _l++;
                    } else {
                        _l = (_l + (stdgo._internal.unicode.utf8.Utf8_runelen.runeLen(_r)) : stdgo.GoInt);
                    };
                };
                //"file:///home/runner/.go/go1.21.3/src/regexp/regexp.go#L289"
                return _l;
            } else if (__value__ == ((13 : stdgo._internal.regexp.syntax.Syntax_op.Op)) || __value__ == ((15 : stdgo._internal.regexp.syntax.Syntax_op.Op))) {
                //"file:///home/runner/.go/go1.21.3/src/regexp/regexp.go#L291"
                return stdgo._internal.regexp.Regexp__mininputlen._minInputLen((@:checkr _re ?? throw "null pointer dereference").sub[(0 : stdgo.GoInt)]);
            } else if (__value__ == ((17 : stdgo._internal.regexp.syntax.Syntax_op.Op))) {
                //"file:///home/runner/.go/go1.21.3/src/regexp/regexp.go#L293"
                return ((@:checkr _re ?? throw "null pointer dereference").min * stdgo._internal.regexp.Regexp__mininputlen._minInputLen((@:checkr _re ?? throw "null pointer dereference").sub[(0 : stdgo.GoInt)]) : stdgo.GoInt);
            } else if (__value__ == ((18 : stdgo._internal.regexp.syntax.Syntax_op.Op))) {
                var _l = (0 : stdgo.GoInt);
                //"file:///home/runner/.go/go1.21.3/src/regexp/regexp.go#L296"
                for (__0 => _sub in (@:checkr _re ?? throw "null pointer dereference").sub) {
                    _l = (_l + (stdgo._internal.regexp.Regexp__mininputlen._minInputLen(_sub)) : stdgo.GoInt);
                };
                //"file:///home/runner/.go/go1.21.3/src/regexp/regexp.go#L299"
                return _l;
            } else if (__value__ == ((19 : stdgo._internal.regexp.syntax.Syntax_op.Op))) {
                var _l = (stdgo._internal.regexp.Regexp__mininputlen._minInputLen((@:checkr _re ?? throw "null pointer dereference").sub[(0 : stdgo.GoInt)]) : stdgo.GoInt);
                var _lnext:stdgo.GoInt = (0 : stdgo.GoInt);
                //"file:///home/runner/.go/go1.21.3/src/regexp/regexp.go#L303"
                for (__0 => _sub in ((@:checkr _re ?? throw "null pointer dereference").sub.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>>)) {
                    _lnext = stdgo._internal.regexp.Regexp__mininputlen._minInputLen(_sub);
                    //"file:///home/runner/.go/go1.21.3/src/regexp/regexp.go#L305"
                    if ((_lnext < _l : Bool)) {
                        _l = _lnext;
                    };
                };
                //"file:///home/runner/.go/go1.21.3/src/regexp/regexp.go#L309"
                return _l;
            } else {
                //"file:///home/runner/.go/go1.21.3/src/regexp/regexp.go#L277"
                return (0 : stdgo.GoInt);
            };
        };
    }
