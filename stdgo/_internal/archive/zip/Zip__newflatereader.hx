package stdgo._internal.archive.zip;
function _newFlateReader(_r:stdgo._internal.io.Io_reader.Reader):stdgo._internal.io.Io_readcloser.ReadCloser {
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((stdgo._internal.archive.zip.Zip__flatereaderpool._flateReaderPool.get() : stdgo._internal.io.Io_readcloser.ReadCloser)) : stdgo._internal.io.Io_readcloser.ReadCloser), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo._internal.io.Io_readcloser.ReadCloser), _1 : false };
        }, _fr = __tmp__._0, _ok = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/archive/zip/register.go#L70"
        if (_ok) {
            //"file:///home/runner/.go/go1.21.3/src/archive/zip/register.go#L71"
            (stdgo.Go.typeAssert((stdgo.Go.toInterface(_fr) : stdgo._internal.compress.flate.Flate_resetter.Resetter)) : stdgo._internal.compress.flate.Flate_resetter.Resetter).reset(_r, (null : stdgo.Slice<stdgo.GoUInt8>));
        } else {
            _fr = stdgo._internal.compress.flate.Flate_newreader.newReader(_r);
        };
        //"file:///home/runner/.go/go1.21.3/src/archive/zip/register.go#L75"
        return stdgo.Go.asInterface((stdgo.Go.setRef(({ _fr : _fr } : stdgo._internal.archive.zip.Zip_t_pooledflatereader.T_pooledFlateReader)) : stdgo.Ref<stdgo._internal.archive.zip.Zip_t_pooledflatereader.T_pooledFlateReader>));
    }
