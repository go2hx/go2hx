package stdgo._internal.net.http;
function _putBufioReader(_br:stdgo.Ref<stdgo._internal.bufio.Bufio_Reader.Reader>):Void {
        @:check2r _br.reset((null : stdgo._internal.io.Io_Reader.Reader));
        @:check2 stdgo._internal.net.http.Http__bufioReaderPool._bufioReaderPool.put(stdgo.Go.toInterface(stdgo.Go.asInterface(_br)));
    }
