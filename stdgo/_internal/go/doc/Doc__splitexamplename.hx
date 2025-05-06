package stdgo._internal.go.doc;
function _splitExampleName(_s:stdgo.GoString, _i:stdgo.GoInt):{ var _0 : stdgo.GoString; var _1 : stdgo.GoString; var _2 : Bool; } {
        var _prefix = ("" : stdgo.GoString), _suffix = ("" : stdgo.GoString), _ok = false;
        //"file:///home/runner/.go/go1.21.3/src/go/doc/example.go#L709"
        if (_i == ((_s.length))) {
            //"file:///home/runner/.go/go1.21.3/src/go/doc/example.go#L710"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.GoString; var _2 : Bool; } = { _0 : _s?.__copy__(), _1 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _2 : true };
                _prefix = __tmp__._0;
                _suffix = __tmp__._1;
                _ok = __tmp__._2;
                __tmp__;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/doc/example.go#L712"
        if (_i == (((_s.length) - (1 : stdgo.GoInt) : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/go/doc/example.go#L713"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.GoString; var _2 : Bool; } = { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _2 : false };
                _prefix = __tmp__._0;
                _suffix = __tmp__._1;
                _ok = __tmp__._2;
                __tmp__;
            };
        };
        {
            final __tmp__0 = (_s.__slice__(0, _i) : stdgo.GoString)?.__copy__();
            final __tmp__1 = (_s.__slice__((_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
            _prefix = @:binopAssign __tmp__0;
            _suffix = @:binopAssign __tmp__1;
        };
        //"file:///home/runner/.go/go1.21.3/src/go/doc/example.go#L716"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.GoString; var _2 : Bool; } = { _0 : _prefix?.__copy__(), _1 : _suffix?.__copy__(), _2 : stdgo._internal.go.doc.Doc__isexamplesuffix._isExampleSuffix(_suffix?.__copy__()) };
            _prefix = __tmp__._0;
            _suffix = __tmp__._1;
            _ok = __tmp__._2;
            __tmp__;
        };
    }
