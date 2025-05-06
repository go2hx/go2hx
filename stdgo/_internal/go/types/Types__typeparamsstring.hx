package stdgo._internal.go.types;
function _typeParamsString(_list:stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>>):stdgo.GoString {
        var _n = (_list.length : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/go/types/infer.go#L491"
        {
            final __value__ = _n;
            if (__value__ == ((0 : stdgo.GoInt))) {
                //"file:///home/runner/.go/go1.21.3/src/go/types/infer.go#L493"
                return (stdgo.Go.str() : stdgo.GoString)?.__copy__();
            } else if (__value__ == ((1 : stdgo.GoInt))) {
                //"file:///home/runner/.go/go1.21.3/src/go/types/infer.go#L495"
                return (@:checkr (@:checkr _list[(0 : stdgo.GoInt)] ?? throw "null pointer dereference")._obj ?? throw "null pointer dereference")._object._name?.__copy__();
            } else if (__value__ == ((2 : stdgo.GoInt))) {
                //"file:///home/runner/.go/go1.21.3/src/go/types/infer.go#L497"
                return (((@:checkr (@:checkr _list[(0 : stdgo.GoInt)] ?? throw "null pointer dereference")._obj ?? throw "null pointer dereference")._object._name + (" and " : stdgo.GoString)?.__copy__() : stdgo.GoString) + (@:checkr (@:checkr _list[(1 : stdgo.GoInt)] ?? throw "null pointer dereference")._obj ?? throw "null pointer dereference")._object._name?.__copy__() : stdgo.GoString)?.__copy__();
            };
        };
        var _buf:stdgo._internal.strings.Strings_builder.Builder = ({} : stdgo._internal.strings.Strings_builder.Builder);
        //"file:///home/runner/.go/go1.21.3/src/go/types/infer.go#L502"
        for (_i => _tname in (_list.__slice__(0, (_n - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>>)) {
            //"file:///home/runner/.go/go1.21.3/src/go/types/infer.go#L503"
            if ((_i > (0 : stdgo.GoInt) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/go/types/infer.go#L504"
                _buf.writeString((", " : stdgo.GoString));
            };
            //"file:///home/runner/.go/go1.21.3/src/go/types/infer.go#L506"
            _buf.writeString((@:checkr (@:checkr _tname ?? throw "null pointer dereference")._obj ?? throw "null pointer dereference")._object._name?.__copy__());
        };
        //"file:///home/runner/.go/go1.21.3/src/go/types/infer.go#L508"
        _buf.writeString((", and " : stdgo.GoString));
        //"file:///home/runner/.go/go1.21.3/src/go/types/infer.go#L509"
        _buf.writeString((@:checkr (@:checkr _list[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)] ?? throw "null pointer dereference")._obj ?? throw "null pointer dereference")._object._name?.__copy__());
        //"file:///home/runner/.go/go1.21.3/src/go/types/infer.go#L510"
        return (_buf.string() : stdgo.GoString)?.__copy__();
    }
