package stdgo._internal.regexp;
function _runFull(_re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>, _refull:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>, _text:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.GoInt>; var _1 : stdgo.GoString; } {
        (@:checkr _refull ?? throw "null pointer dereference")._longest = false;
        //"file:///home/runner/.go/go1.21.3/src/regexp/exec_test.go#L209"
        return { _0 : _refull.findStringSubmatchIndex(_text?.__copy__()), _1 : ("[full]" : stdgo.GoString) };
    }
