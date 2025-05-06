package stdgo._internal.go.printer;
function _sanitizeImportPath(_lit:stdgo.Ref<stdgo._internal.go.ast.Ast_basiclit.BasicLit>):stdgo.Ref<stdgo._internal.go.ast.Ast_basiclit.BasicLit> {
        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1650"
        if ((@:checkr _lit ?? throw "null pointer dereference").kind != ((9 : stdgo._internal.go.token.Token_token.Token))) {
            //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1651"
            return _lit;
        };
        var __tmp__ = stdgo._internal.strconv.Strconv_unquote.unquote((@:checkr _lit ?? throw "null pointer dereference").value?.__copy__()), _s:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1654"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1655"
            return _lit;
        };
        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1666"
        if (_s == ((stdgo.Go.str() : stdgo.GoString))) {
            //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1667"
            return _lit;
        };
        {};
        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1670"
        for (__0 => _r in _s) {
            //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1671"
            if (((!stdgo._internal.unicode.Unicode_isgraphic.isGraphic(_r) || stdgo._internal.unicode.Unicode_isspace.isSpace(_r) : Bool) || stdgo._internal.strings.Strings_containsrune.containsRune(("!\"#$%&\'()*,:;<=>?[\\]^{|}`�" : stdgo.GoString), _r) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1672"
                return _lit;
            };
        };
        _s = stdgo._internal.strconv.Strconv_quote.quote(_s?.__copy__())?.__copy__();
        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1678"
        if (_s == ((@:checkr _lit ?? throw "null pointer dereference").value)) {
            //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1679"
            return _lit;
        };
        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1681"
        return (stdgo.Go.setRef(({ valuePos : (@:checkr _lit ?? throw "null pointer dereference").valuePos, kind : (9 : stdgo._internal.go.token.Token_token.Token), value : _s?.__copy__() } : stdgo._internal.go.ast.Ast_basiclit.BasicLit)) : stdgo.Ref<stdgo._internal.go.ast.Ast_basiclit.BasicLit>);
    }
