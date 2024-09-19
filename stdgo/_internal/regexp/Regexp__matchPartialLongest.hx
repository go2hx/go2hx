package stdgo._internal.regexp;
function _matchPartialLongest(_re:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp>, _refull:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp>, _text:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.GoString; } {
        _re._longest = true;
        return { _0 : _re.matchString(_text?.__copy__()), _1 : ("[longest]" : stdgo.GoString) };
    }
