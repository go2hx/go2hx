package stdgo._internal.regexp;
function _matchPartial(_re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>, _refull:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>, _text:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.GoString; } {
        (@:checkr _re ?? throw "null pointer dereference")._longest = false;
        //"file:///home/runner/.go/go1.21.3/src/regexp/exec_test.go#L241"
        return { _0 : _re.matchString(_text?.__copy__()), _1 : (stdgo.Go.str() : stdgo.GoString)?.__copy__() };
    }
