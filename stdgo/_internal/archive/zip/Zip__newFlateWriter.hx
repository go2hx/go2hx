package stdgo._internal.archive.zip;
function _newFlateWriter(_w:stdgo._internal.io.Io_Writer.Writer):stdgo._internal.io.Io_WriteCloser.WriteCloser {
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((stdgo._internal.archive.zip.Zip__flateWriterPool._flateWriterPool.get() : stdgo.Ref<stdgo._internal.compress.flate.Flate_Writer.Writer>)) : stdgo.Ref<stdgo._internal.compress.flate.Flate_Writer.Writer>), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo.Ref<stdgo._internal.compress.flate.Flate_Writer.Writer>), _1 : false };
        }, _fw = __tmp__._0, _ok = __tmp__._1;
        if (_ok) {
            _fw.reset(_w);
        } else {
            {
                var __tmp__ = stdgo._internal.compress.flate.Flate_newWriter.newWriter(_w, (5 : stdgo.GoInt));
                _fw = __tmp__._0;
            };
        };
        return stdgo.Go.asInterface((stdgo.Go.setRef(({ _fw : _fw } : stdgo._internal.archive.zip.Zip_T_pooledFlateWriter.T_pooledFlateWriter)) : stdgo.Ref<stdgo._internal.archive.zip.Zip_T_pooledFlateWriter.T_pooledFlateWriter>));
    }