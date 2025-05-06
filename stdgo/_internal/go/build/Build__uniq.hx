package stdgo._internal.go.build;
function _uniq(_list:stdgo.Slice<stdgo.GoString>):stdgo.Slice<stdgo.GoString> {
        //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L1087"
        if (_list == null) {
            //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L1088"
            return (null : stdgo.Slice<stdgo.GoString>);
        };
        var _out = (new stdgo.Slice<stdgo.GoString>((_list.length : stdgo.GoInt).toBasic(), 0).__setString__() : stdgo.Slice<stdgo.GoString>);
        //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L1091"
        _out.__copyTo__(_list);
        //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L1092"
        stdgo._internal.sort.Sort_strings.strings(_out);
        var _uniq = (_out.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoString>);
        //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L1094"
        for (__0 => _x in _out) {
            //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L1095"
            if (((_uniq.length == (0 : stdgo.GoInt)) || (_uniq[((_uniq.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] != _x) : Bool)) {
                _uniq = (_uniq.__append__(_x?.__copy__()) : stdgo.Slice<stdgo.GoString>);
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L1099"
        return _uniq;
    }
