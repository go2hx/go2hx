package stdgo._internal.regexp;
function _matchFullLongest(_re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>, _refull:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>, _text:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.GoString; } {
        (@:checkr _refull ?? throw "null pointer dereference")._longest = true;
        //"file:///home/runner/.go/go1.21.3/src/regexp/exec_test.go#L246"
        return { _0 : _refull.matchString(_text?.__copy__()), _1 : ("[full,longest]" : stdgo.GoString) };
    }
