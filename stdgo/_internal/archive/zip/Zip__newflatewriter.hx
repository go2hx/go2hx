package stdgo._internal.archive.zip;
function _newFlateWriter(_w:stdgo._internal.io.Io_writer.Writer):stdgo._internal.io.Io_writecloser.WriteCloser {
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((stdgo._internal.archive.zip.Zip__flatewriterpool._flateWriterPool.get() : stdgo.Ref<stdgo._internal.compress.flate.Flate_writer.Writer>)) : stdgo.Ref<stdgo._internal.compress.flate.Flate_writer.Writer>), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo.Ref<stdgo._internal.compress.flate.Flate_writer.Writer>), _1 : false };
        }, _fw = __tmp__._0, _ok = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/archive/zip/register.go#L32"
        if (_ok) {
            //"file:///home/runner/.go/go1.21.3/src/archive/zip/register.go#L33"
            _fw.reset(_w);
        } else {
            {
                var __tmp__ = stdgo._internal.compress.flate.Flate_newwriter.newWriter(_w, (5 : stdgo.GoInt));
                _fw = @:tmpset0 __tmp__._0;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/archive/zip/register.go#L37"
        return stdgo.Go.asInterface((stdgo.Go.setRef(({ _fw : _fw } : stdgo._internal.archive.zip.Zip_t_pooledflatewriter.T_pooledFlateWriter)) : stdgo.Ref<stdgo._internal.archive.zip.Zip_t_pooledflatewriter.T_pooledFlateWriter>));
    }
