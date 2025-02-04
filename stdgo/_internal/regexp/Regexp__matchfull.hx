package stdgo._internal.regexp;
function _matchFull(_re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>, _refull:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>, _text:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.GoString; } {
        (@:checkr _refull ?? throw "null pointer dereference")._longest = false;
        return { _0 : @:check2r _refull.matchString(_text?.__copy__()), _1 : ("[full]" : stdgo.GoString) };
    }
