package stdgo._internal.internal.coverage.stringtab;
import stdgo._internal.internal.coverage.uleb128.Uleb128;
import stdgo._internal.fmt.Fmt;
function newReader(_r:stdgo.Ref<stdgo._internal.internal.coverage.slicereader.Slicereader_Reader.Reader>):stdgo.Ref<stdgo._internal.internal.coverage.stringtab.Stringtab_Reader.Reader> {
        var _str = (stdgo.Go.setRef(({ _r : _r } : stdgo._internal.internal.coverage.stringtab.Stringtab_Reader.Reader)) : stdgo.Ref<stdgo._internal.internal.coverage.stringtab.Stringtab_Reader.Reader>);
        return _str;
    }
