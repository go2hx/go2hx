package stdgo._internal.mime.multipart;
import stdgo._internal.unsafe.Unsafe;
function _newPart(_mr:stdgo.Ref<stdgo._internal.mime.multipart.Multipart_Reader.Reader>, _rawPart:Bool, _maxMIMEHeaderSize:stdgo.GoInt64, _maxMIMEHeaders:stdgo.GoInt64):{ var _0 : stdgo.Ref<stdgo._internal.mime.multipart.Multipart_Part.Part>; var _1 : stdgo.Error; } {
        var _bp = (stdgo.Go.setRef(({ header : ({
            final x = new stdgo.GoMap.GoStringMap<stdgo.Slice<stdgo.GoString>>();
            x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo.GoString>);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.GoString>>), _mr : _mr } : stdgo._internal.mime.multipart.Multipart_Part.Part)) : stdgo.Ref<stdgo._internal.mime.multipart.Multipart_Part.Part>);
        {
            var _err = (_bp._populateHeaders(_maxMIMEHeaderSize, _maxMIMEHeaders) : stdgo.Error);
            if (_err != null) {
                return { _0 : null, _1 : _err };
            };
        };
        _bp._r = stdgo.Go.asInterface((new stdgo._internal.mime.multipart.Multipart_T_partReader.T_partReader(_bp) : stdgo._internal.mime.multipart.Multipart_T_partReader.T_partReader));
        if (!_rawPart) {
            {};
            if (stdgo._internal.strings.Strings_equalFold.equalFold(_bp.header.get(("Content-Transfer-Encoding" : stdgo.GoString))?.__copy__(), ("quoted-printable" : stdgo.GoString))) {
                _bp.header.del(("Content-Transfer-Encoding" : stdgo.GoString));
                _bp._r = stdgo.Go.asInterface(stdgo._internal.mime.quotedprintable.Quotedprintable_newReader.newReader(_bp._r));
            };
        };
        return { _0 : _bp, _1 : (null : stdgo.Error) };
    }
