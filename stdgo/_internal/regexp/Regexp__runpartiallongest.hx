package stdgo._internal.regexp;
function _runPartialLongest(_re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>, _refull:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>, _text:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.GoInt>; var _1 : stdgo.GoString; } {
        (@:checkr _re ?? throw "null pointer dereference")._longest = true;
        return { _0 : @:check2r _re.findStringSubmatchIndex(_text?.__copy__()), _1 : ("[longest]" : stdgo.GoString) };
    }
