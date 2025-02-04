package stdgo._internal.mime.multipart;
function _newPart(_mr:stdgo.Ref<stdgo._internal.mime.multipart.Multipart_reader.Reader>, _rawPart:Bool, _maxMIMEHeaderSize:stdgo.GoInt64, _maxMIMEHeaders:stdgo.GoInt64):{ var _0 : stdgo.Ref<stdgo._internal.mime.multipart.Multipart_part.Part>; var _1 : stdgo.Error; } {
        var _bp = (stdgo.Go.setRef(({ header : (({
            final x = new stdgo.GoMap.GoStringMap<stdgo.Slice<stdgo.GoString>>();
            x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo.GoString>);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.GoString>>) : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.GoString>>), _mr : _mr } : stdgo._internal.mime.multipart.Multipart_part.Part)) : stdgo.Ref<stdgo._internal.mime.multipart.Multipart_part.Part>);
        {
            var _err = (@:check2r _bp._populateHeaders(_maxMIMEHeaderSize, _maxMIMEHeaders) : stdgo.Error);
            if (_err != null) {
                return { _0 : null, _1 : _err };
            };
        };
        (@:checkr _bp ?? throw "null pointer dereference")._r = stdgo.Go.asInterface((new stdgo._internal.mime.multipart.Multipart_t_partreader.T_partReader(_bp) : stdgo._internal.mime.multipart.Multipart_t_partreader.T_partReader));
        if (!_rawPart) {
            {};
            if (stdgo._internal.strings.Strings_equalfold.equalFold((@:checkr _bp ?? throw "null pointer dereference").header.get(("Content-Transfer-Encoding" : stdgo.GoString))?.__copy__(), ("quoted-printable" : stdgo.GoString))) {
                (@:checkr _bp ?? throw "null pointer dereference").header.del(("Content-Transfer-Encoding" : stdgo.GoString));
                (@:checkr _bp ?? throw "null pointer dereference")._r = stdgo.Go.asInterface(stdgo._internal.mime.quotedprintable.Quotedprintable_newreader.newReader((@:checkr _bp ?? throw "null pointer dereference")._r));
            };
        };
        return { _0 : _bp, _1 : (null : stdgo.Error) };
    }
