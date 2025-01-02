package stdgo._internal.flag;
function textVar(_p:stdgo._internal.encoding.Encoding_TextUnmarshaler.TextUnmarshaler, _name:stdgo.GoString, _value:stdgo._internal.encoding.Encoding_TextMarshaler.TextMarshaler, _usage:stdgo.GoString):Void {
        @:check2r stdgo._internal.flag.Flag_commandLine.commandLine.var_(stdgo.Go.asInterface(stdgo._internal.flag.Flag__newTextValue._newTextValue(_value, _p)), _name?.__copy__(), _usage?.__copy__());
    }
