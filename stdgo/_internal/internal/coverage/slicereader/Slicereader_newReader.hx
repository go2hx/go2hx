package stdgo._internal.internal.coverage.slicereader;
import stdgo._internal.unsafe.Unsafe;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.encoding.binary.Binary;
function newReader(_b:stdgo.Slice<stdgo.GoUInt8>, _readonly:Bool):stdgo.Ref<stdgo._internal.internal.coverage.slicereader.Slicereader_Reader.Reader> {
        var _r = ({ _b : _b, _readonly : _readonly } : stdgo._internal.internal.coverage.slicereader.Slicereader_Reader.Reader);
        return (stdgo.Go.setRef(_r) : stdgo.Ref<stdgo._internal.internal.coverage.slicereader.Slicereader_Reader.Reader>);
    }
