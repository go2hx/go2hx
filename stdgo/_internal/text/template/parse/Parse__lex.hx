package stdgo._internal.text.template.parse;
function _lex(_name:stdgo.GoString, _input:stdgo.GoString, _left:stdgo.GoString, _right:stdgo.GoString):stdgo.Ref<stdgo._internal.text.template.parse.Parse_t_lexer.T_lexer> {
        //"file:///home/runner/.go/go1.21.3/src/text/template/parse/lex.go#L242"
        if (_left == ((stdgo.Go.str() : stdgo.GoString))) {
            _left = ("{{" : stdgo.GoString);
        };
        //"file:///home/runner/.go/go1.21.3/src/text/template/parse/lex.go#L245"
        if (_right == ((stdgo.Go.str() : stdgo.GoString))) {
            _right = ("}}" : stdgo.GoString);
        };
        var _l = (stdgo.Go.setRef(({ _name : _name?.__copy__(), _input : _input?.__copy__(), _leftDelim : _left?.__copy__(), _rightDelim : _right?.__copy__(), _line : (1 : stdgo.GoInt), _startLine : (1 : stdgo.GoInt), _insideAction : false } : stdgo._internal.text.template.parse.Parse_t_lexer.T_lexer)) : stdgo.Ref<stdgo._internal.text.template.parse.Parse_t_lexer.T_lexer>);
        //"file:///home/runner/.go/go1.21.3/src/text/template/parse/lex.go#L257"
        return _l;
    }
