package stdgo._internal.encoding.hex;
function dump(_data:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoString {
        //"file:///home/runner/.go/go1.21.3/src/encoding/hex/hex.go#L129"
        if ((_data.length) == ((0 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/hex/hex.go#L130"
            return (stdgo.Go.str() : stdgo.GoString)?.__copy__();
        };
        var _buf:stdgo._internal.strings.Strings_builder.Builder = ({} : stdgo._internal.strings.Strings_builder.Builder);
        //"file:///home/runner/.go/go1.21.3/src/encoding/hex/hex.go#L137"
        _buf.grow(((((1 : stdgo.GoInt) + (((((_data.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) / (16 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt)) * (79 : stdgo.GoInt) : stdgo.GoInt));
        var _dumper = (stdgo._internal.encoding.hex.Hex_dumper.dumper(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder>))) : stdgo._internal.io.Io_writecloser.WriteCloser);
        //"file:///home/runner/.go/go1.21.3/src/encoding/hex/hex.go#L140"
        _dumper.write(_data);
        //"file:///home/runner/.go/go1.21.3/src/encoding/hex/hex.go#L141"
        _dumper.close();
        //"file:///home/runner/.go/go1.21.3/src/encoding/hex/hex.go#L142"
        return (_buf.string() : stdgo.GoString)?.__copy__();
    }
