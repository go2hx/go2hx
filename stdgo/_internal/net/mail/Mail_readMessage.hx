package stdgo._internal.net.mail;
function readMessage(_r:stdgo._internal.io.Io_Reader.Reader):{ var _0 : stdgo.Ref<stdgo._internal.net.mail.Mail_Message.Message>; var _1 : stdgo.Error; } {
        var _msg = (null : stdgo.Ref<stdgo._internal.net.mail.Mail_Message.Message>), _err = (null : stdgo.Error);
        var _tp = stdgo._internal.net.textproto.Textproto_newReader.newReader(stdgo._internal.bufio.Bufio_newReader.newReader(_r));
        var __tmp__ = stdgo._internal.net.mail.Mail__readHeader._readHeader(_tp), _hdr:stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.GoString>> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (((_err != null) && (((stdgo.Go.toInterface(_err) != stdgo.Go.toInterface(stdgo._internal.io.Io_eOF.eOF)) || (_hdr.length == (0 : stdgo.GoInt)) : Bool)) : Bool)) {
            return {
                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.net.mail.Mail_Message.Message>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                _msg = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
        return {
            final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.net.mail.Mail_Message.Message>; var _1 : stdgo.Error; } = { _0 : (stdgo.Go.setRef(({ header : (_hdr : stdgo._internal.net.mail.Mail_Header.Header), body : stdgo.Go.asInterface((@:checkr _tp ?? throw "null pointer dereference").r) } : stdgo._internal.net.mail.Mail_Message.Message)) : stdgo.Ref<stdgo._internal.net.mail.Mail_Message.Message>), _1 : (null : stdgo.Error) };
            _msg = __tmp__._0;
            _err = __tmp__._1;
            __tmp__;
        };
    }
