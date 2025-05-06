package stdgo._internal.go.doc;
function _sortedKeys(_m:stdgo.GoMap<stdgo.GoString, stdgo.GoInt>):stdgo.Slice<stdgo.GoString> {
        var _list = (new stdgo.Slice<stdgo.GoString>((_m.length : stdgo.GoInt).toBasic(), 0).__setString__() : stdgo.Slice<stdgo.GoString>);
        var _i = (0 : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/go/doc/reader.go#L837"
        for (_key => _ in _m) {
            _list[(_i : stdgo.GoInt)] = _key?.__copy__();
            //"file:///home/runner/.go/go1.21.3/src/go/doc/reader.go#L839"
            _i++;
        };
        //"file:///home/runner/.go/go1.21.3/src/go/doc/reader.go#L841"
        stdgo._internal.sort.Sort_strings.strings(_list);
        //"file:///home/runner/.go/go1.21.3/src/go/doc/reader.go#L842"
        return _list;
    }
