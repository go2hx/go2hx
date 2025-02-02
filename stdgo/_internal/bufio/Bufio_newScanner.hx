package stdgo._internal.bufio;
function newScanner(_r:stdgo._internal.io.Io_Reader.Reader):stdgo.Ref<stdgo._internal.bufio.Bufio_Scanner.Scanner> {
        return (stdgo.Go.setRef(({ _r : _r, _split : stdgo._internal.bufio.Bufio_scanLines.scanLines, _maxTokenSize : (65536 : stdgo.GoInt) } : stdgo._internal.bufio.Bufio_Scanner.Scanner)) : stdgo.Ref<stdgo._internal.bufio.Bufio_Scanner.Scanner>);
    }
