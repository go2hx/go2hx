package stdgo._internal.regexp;
function match(_pattern:stdgo.GoString, _b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : Bool; var _1 : stdgo.Error; } {
        var _matched = false, _err = (null : stdgo.Error);
        var __tmp__ = stdgo._internal.regexp.Regexp_compile.compile(_pattern?.__copy__()), _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/regexp/regexp.go#L569"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/regexp/regexp.go#L570"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err };
                _matched = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/regexp/regexp.go#L572"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : _re.match(_b), _1 : (null : stdgo.Error) };
            _matched = __tmp__._0;
            _err = __tmp__._1;
            __tmp__;
        };
    }
