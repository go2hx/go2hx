package stdgo._internal.strings;
import stdgo._internal.unsafe.Unsafe;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.internal.bytealg.Bytealg;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.io.Io;
import stdgo._internal.errors.Errors;
function join(_elems:stdgo.Slice<stdgo.GoString>, _sep:stdgo.GoString):stdgo.GoString {
        {
            final __value__ = (_elems.length);
            if (__value__ == ((0 : stdgo.GoInt))) {
                return stdgo.Go.str()?.__copy__();
            } else if (__value__ == ((1 : stdgo.GoInt))) {
                return _elems[(0 : stdgo.GoInt)]?.__copy__();
            };
        };
        var _n:stdgo.GoInt = (0 : stdgo.GoInt);
        if (((_sep.length) > (0 : stdgo.GoInt) : Bool)) {
            if (((_sep.length) >= ((2147483647 : stdgo.GoInt) / (((_elems.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt) : Bool)) {
                throw stdgo.Go.toInterface(("strings: Join output length overflow" : stdgo.GoString));
            };
            _n = (_n + (((_sep.length) * (((_elems.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt)) : stdgo.GoInt);
        };
        for (__0 => _elem in _elems) {
            if (((_elem.length) > ((2147483647 : stdgo.GoInt) - _n : stdgo.GoInt) : Bool)) {
                throw stdgo.Go.toInterface(("strings: Join output length overflow" : stdgo.GoString));
            };
            _n = (_n + ((_elem.length)) : stdgo.GoInt);
        };
        var _b:stdgo._internal.strings.Strings_Builder.Builder = ({} : stdgo._internal.strings.Strings_Builder.Builder);
        @:check2 _b.grow(_n);
        @:check2 _b.writeString(_elems[(0 : stdgo.GoInt)]?.__copy__());
        for (__1 => _s in (_elems.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoString>)) {
            @:check2 _b.writeString(_sep?.__copy__());
            @:check2 _b.writeString(_s?.__copy__());
        };
        return (@:check2 _b.string() : stdgo.GoString)?.__copy__();
    }
