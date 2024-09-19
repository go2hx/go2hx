package stdgo._internal.regexp;
function _runPartialLongest(_re:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp>, _refull:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp>, _text:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.GoInt>; var _1 : stdgo.GoString; } {
        _re._longest = true;
        return { _0 : _re.findStringSubmatchIndex(_text?.__copy__()), _1 : ("[longest]" : stdgo.GoString) };
    }
