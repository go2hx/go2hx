package stdgo._internal.strings;
function _genSplit(_s:stdgo.GoString, _sep:stdgo.GoString, _sepSave:stdgo.GoInt, _n:stdgo.GoInt):stdgo.Slice<stdgo.GoString> {
        //"file:///home/runner/.go/go1.21.3/src/strings/strings.go#L241"
        if (_n == ((0 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/strings/strings.go#L242"
            return (null : stdgo.Slice<stdgo.GoString>);
        };
        //"file:///home/runner/.go/go1.21.3/src/strings/strings.go#L244"
        if (_sep == ((stdgo.Go.str() : stdgo.GoString))) {
            //"file:///home/runner/.go/go1.21.3/src/strings/strings.go#L245"
            return stdgo._internal.strings.Strings__explode._explode(_s?.__copy__(), _n);
        };
        //"file:///home/runner/.go/go1.21.3/src/strings/strings.go#L247"
        if ((_n < (0 : stdgo.GoInt) : Bool)) {
            _n = (stdgo._internal.strings.Strings_count.count(_s?.__copy__(), _sep?.__copy__()) + (1 : stdgo.GoInt) : stdgo.GoInt);
        };
        //"file:///home/runner/.go/go1.21.3/src/strings/strings.go#L251"
        if ((_n > ((_s.length) + (1 : stdgo.GoInt) : stdgo.GoInt) : Bool)) {
            _n = ((_s.length) + (1 : stdgo.GoInt) : stdgo.GoInt);
        };
        var _a = (new stdgo.Slice<stdgo.GoString>((_n : stdgo.GoInt).toBasic(), 0).__setString__() : stdgo.Slice<stdgo.GoString>);
        //"file:///home/runner/.go/go1.21.3/src/strings/strings.go#L255"
        _n--;
        var _i = (0 : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/strings/strings.go#L257"
        while ((_i < _n : Bool)) {
            var _m = (stdgo._internal.strings.Strings_index.index(_s?.__copy__(), _sep?.__copy__()) : stdgo.GoInt);
            //"file:///home/runner/.go/go1.21.3/src/strings/strings.go#L259"
            if ((_m < (0 : stdgo.GoInt) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/strings/strings.go#L260"
                break;
            };
            _a[(_i : stdgo.GoInt)] = (_s.__slice__(0, (_m + _sepSave : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
            _s = (_s.__slice__((_m + (_sep.length) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
            //"file:///home/runner/.go/go1.21.3/src/strings/strings.go#L264"
            _i++;
        };
        _a[(_i : stdgo.GoInt)] = _s?.__copy__();
        //"file:///home/runner/.go/go1.21.3/src/strings/strings.go#L267"
        return (_a.__slice__(0, (_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoString>);
    }
