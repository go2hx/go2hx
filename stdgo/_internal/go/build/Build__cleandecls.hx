package stdgo._internal.go.build;
function _cleanDecls(_m:stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo._internal.go.token.Token_position.Position>>):{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo._internal.go.token.Token_position.Position>>; } {
        var _all = (new stdgo.Slice<stdgo.GoString>((0 : stdgo.GoInt).toBasic(), (_m.length)).__setString__() : stdgo.Slice<stdgo.GoString>);
        //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L1503"
        for (_path => _ in _m) {
            _all = (_all.__append__(_path?.__copy__()) : stdgo.Slice<stdgo.GoString>);
        };
        //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L1506"
        stdgo._internal.sort.Sort_strings.strings(_all);
        //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L1507"
        return { _0 : _all, _1 : _m };
    }
