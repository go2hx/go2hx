package stdgo._internal.go.types;
@:keep @:allow(stdgo._internal.go.types.Types.Initializer_asInterface) class Initializer_static_extension {
    @:keep
    @:tdfield
    static public function string( _init:stdgo.Ref<stdgo._internal.go.types.Types_initializer.Initializer>):stdgo.GoString {
        @:recv var _init:stdgo.Ref<stdgo._internal.go.types.Types_initializer.Initializer> = _init;
        var _buf:stdgo._internal.bytes.Bytes_buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_buffer.Buffer);
        //"file:///home/runner/.go/go1.21.3/src/go/types/api.go#L401"
        for (_i => _lhs in (@:checkr _init ?? throw "null pointer dereference").lhs) {
            //"file:///home/runner/.go/go1.21.3/src/go/types/api.go#L402"
            if ((_i > (0 : stdgo.GoInt) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/go/types/api.go#L403"
                _buf.writeString((", " : stdgo.GoString));
            };
            //"file:///home/runner/.go/go1.21.3/src/go/types/api.go#L405"
            _buf.writeString(_lhs.name()?.__copy__());
        };
        //"file:///home/runner/.go/go1.21.3/src/go/types/api.go#L407"
        _buf.writeString((" = " : stdgo.GoString));
        //"file:///home/runner/.go/go1.21.3/src/go/types/api.go#L408"
        stdgo._internal.go.types.Types_writeexpr.writeExpr((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>), (@:checkr _init ?? throw "null pointer dereference").rhs);
        //"file:///home/runner/.go/go1.21.3/src/go/types/api.go#L409"
        return (_buf.string() : stdgo.GoString)?.__copy__();
    }
}
