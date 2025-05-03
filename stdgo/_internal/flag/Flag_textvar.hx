package stdgo._internal.flag;
function textVar(_p:stdgo._internal.encoding.Encoding_textunmarshaler.TextUnmarshaler, _name:stdgo.GoString, _value:stdgo._internal.encoding.Encoding_textmarshaler.TextMarshaler, _usage:stdgo.GoString):Void {
        //"file:///home/runner/.go/go1.21.3/src/flag/flag.go#L973"
        stdgo._internal.flag.Flag_commandline.commandLine.var_(stdgo.Go.asInterface(stdgo._internal.flag.Flag__newtextvalue._newTextValue(_value, _p)), _name?.__copy__(), _usage?.__copy__());
    }
