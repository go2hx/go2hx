package stdgo._internal.regexp;
function _runFull(_re:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp>, _refull:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp>, _text:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.GoInt>; var _1 : stdgo.GoString; } {
        _refull._longest = false;
        return { _0 : _refull.findStringSubmatchIndex(_text?.__copy__()), _1 : ("[full]" : stdgo.GoString) };
    }
