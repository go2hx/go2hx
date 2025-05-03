package stdgo._internal.strings;
function join(_elems:stdgo.Slice<stdgo.GoString>, _sep:stdgo.GoString):stdgo.GoString {
        //"file:///home/runner/.go/go1.21.3/src/strings/strings.go#L435"
        {
            final __value__ = (_elems.length);
            if (__value__ == ((0 : stdgo.GoInt))) {
                //"file:///home/runner/.go/go1.21.3/src/strings/strings.go#L437"
                return (stdgo.Go.str() : stdgo.GoString)?.__copy__();
            } else if (__value__ == ((1 : stdgo.GoInt))) {
                //"file:///home/runner/.go/go1.21.3/src/strings/strings.go#L439"
                return _elems[(0 : stdgo.GoInt)]?.__copy__();
            };
        };
        var _n:stdgo.GoInt = (0 : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/strings/strings.go#L443"
        if (((_sep.length) > (0 : stdgo.GoInt) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/strings/strings.go#L444"
            if (((_sep.length) >= ((2147483647 : stdgo.GoInt) / (((_elems.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/strings/strings.go#L445"
                throw stdgo.Go.toInterface(("strings: Join output length overflow" : stdgo.GoString));
            };
            _n = (_n + (((_sep.length) * (((_elems.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt)) : stdgo.GoInt);
        };
        //"file:///home/runner/.go/go1.21.3/src/strings/strings.go#L449"
        for (__0 => _elem in _elems) {
            //"file:///home/runner/.go/go1.21.3/src/strings/strings.go#L450"
            if (((_elem.length) > ((2147483647 : stdgo.GoInt) - _n : stdgo.GoInt) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/strings/strings.go#L451"
                throw stdgo.Go.toInterface(("strings: Join output length overflow" : stdgo.GoString));
            };
            _n = (_n + ((_elem.length)) : stdgo.GoInt);
        };
        var _b:stdgo._internal.strings.Strings_builder.Builder = ({} : stdgo._internal.strings.Strings_builder.Builder);
        //"file:///home/runner/.go/go1.21.3/src/strings/strings.go#L457"
        _b.grow(_n);
        //"file:///home/runner/.go/go1.21.3/src/strings/strings.go#L458"
        _b.writeString(_elems[(0 : stdgo.GoInt)]?.__copy__());
        //"file:///home/runner/.go/go1.21.3/src/strings/strings.go#L459"
        for (__1 => _s in (_elems.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoString>)) {
            //"file:///home/runner/.go/go1.21.3/src/strings/strings.go#L460"
            _b.writeString(_sep?.__copy__());
            //"file:///home/runner/.go/go1.21.3/src/strings/strings.go#L461"
            _b.writeString(_s?.__copy__());
        };
        //"file:///home/runner/.go/go1.21.3/src/strings/strings.go#L463"
        return (_b.string() : stdgo.GoString)?.__copy__();
    }
