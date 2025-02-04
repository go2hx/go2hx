package stdgo._internal.io;
function newSectionReader(_r:stdgo._internal.io.Io_readerat.ReaderAt, _off:stdgo.GoInt64, _n:stdgo.GoInt64):stdgo.Ref<stdgo._internal.io.Io_sectionreader.SectionReader> {
        var _remaining:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        {};
        if ((_off <= ((9223372036854775807i64 : stdgo.GoInt64) - _n : stdgo.GoInt64) : Bool)) {
            _remaining = (_n + _off : stdgo.GoInt64);
        } else {
            _remaining = (9223372036854775807i64 : stdgo.GoInt64);
        };
        return (stdgo.Go.setRef((new stdgo._internal.io.Io_sectionreader.SectionReader(_r, _off, _off, _remaining) : stdgo._internal.io.Io_sectionreader.SectionReader)) : stdgo.Ref<stdgo._internal.io.Io_sectionreader.SectionReader>);
    }
