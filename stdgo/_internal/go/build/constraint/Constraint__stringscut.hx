package stdgo._internal.go.build.constraint;
function _stringsCut(_s:stdgo.GoString, _sep:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : stdgo.GoString; var _2 : Bool; } {
        var _before = ("" : stdgo.GoString), _after = ("" : stdgo.GoString), _found = false;
        //"file:///home/runner/.go/go1.21.3/src/go/build/constraint/vers.go#L81"
        {
            var _i = (stdgo._internal.strings.Strings_index.index(_s?.__copy__(), _sep?.__copy__()) : stdgo.GoInt);
            if ((_i >= (0 : stdgo.GoInt) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/go/build/constraint/vers.go#L82"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.GoString; var _2 : Bool; } = { _0 : (_s.__slice__(0, _i) : stdgo.GoString)?.__copy__(), _1 : (_s.__slice__((_i + (_sep.length) : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), _2 : true };
                    _before = __tmp__._0;
                    _after = __tmp__._1;
                    _found = __tmp__._2;
                    __tmp__;
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/build/constraint/vers.go#L84"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.GoString; var _2 : Bool; } = { _0 : _s?.__copy__(), _1 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _2 : false };
            _before = __tmp__._0;
            _after = __tmp__._1;
            _found = __tmp__._2;
            __tmp__;
        };
    }
