package stdgo._internal.text.template.parse;
function _leftTrimLength(_s:stdgo.GoString):stdgo._internal.text.template.parse.Parse_pos.Pos {
        //"file:///home/runner/.go/go1.21.3/src/text/template/parse/lex.go#L318"
        return (((_s.length) - (stdgo._internal.strings.Strings_trimleft.trimLeft(_s?.__copy__(), (" \t\r\n" : stdgo.GoString)).length) : stdgo.GoInt) : stdgo._internal.text.template.parse.Parse_pos.Pos);
    }
