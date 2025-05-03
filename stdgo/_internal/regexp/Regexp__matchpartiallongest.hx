package stdgo._internal.regexp;
function _matchPartialLongest(_re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>, _refull:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>, _text:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.GoString; } {
        (@:checkr _re ?? throw "null pointer dereference")._longest = true;
        //"file:///home/runner/.go/go1.21.3/src/regexp/exec_test.go#L251"
        return { _0 : _re.matchString(_text?.__copy__()), _1 : ("[longest]" : stdgo.GoString) };
    }
