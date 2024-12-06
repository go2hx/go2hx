package stdgo._internal.encoding.hex;
function dump(_data:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoString {
        if ((_data.length) == ((0 : stdgo.GoInt))) {
            return stdgo.Go.str()?.__copy__();
        };
        var _buf:stdgo._internal.strings.Strings_Builder.Builder = ({} : stdgo._internal.strings.Strings_Builder.Builder);
        var _buf__pointer__ = (stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.strings.Strings_Builder.Builder>);
        var _buf__pointer__ = (stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.strings.Strings_Builder.Builder>);
        var _buf__pointer__ = (stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.strings.Strings_Builder.Builder>);
        var _buf__pointer__ = (stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.strings.Strings_Builder.Builder>);
        _buf.grow(((((1 : stdgo.GoInt) + (((((_data.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) / (16 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt)) * (79 : stdgo.GoInt) : stdgo.GoInt));
        var _dumper = (stdgo._internal.encoding.hex.Hex_dumper.dumper(stdgo.Go.asInterface(_buf__pointer__)) : stdgo._internal.io.Io_WriteCloser.WriteCloser);
        _dumper.write(_data);
        _dumper.close();
        return (_buf.string() : stdgo.GoString)?.__copy__();
    }
