package stdgo.log;
class Logger_static_extension {
    static public function writer(_l:Logger):stdgo._internal.io.Io_Writer.Writer {
        final _l = (_l : stdgo.Ref<stdgo._internal.log.Log_Logger.Logger>);
        return stdgo._internal.log.Log_Logger_static_extension.Logger_static_extension.writer(_l);
    }
    static public function setPrefix(_l:Logger, _prefix:String):Void {
        final _l = (_l : stdgo.Ref<stdgo._internal.log.Log_Logger.Logger>);
        final _prefix = (_prefix : stdgo.GoString);
        stdgo._internal.log.Log_Logger_static_extension.Logger_static_extension.setPrefix(_l, _prefix);
    }
    static public function prefix(_l:Logger):String {
        final _l = (_l : stdgo.Ref<stdgo._internal.log.Log_Logger.Logger>);
        return stdgo._internal.log.Log_Logger_static_extension.Logger_static_extension.prefix(_l);
    }
    static public function setFlags(_l:Logger, _flag:StdTypes.Int):Void {
        final _l = (_l : stdgo.Ref<stdgo._internal.log.Log_Logger.Logger>);
        final _flag = (_flag : stdgo.GoInt);
        stdgo._internal.log.Log_Logger_static_extension.Logger_static_extension.setFlags(_l, _flag);
    }
    static public function flags(_l:Logger):StdTypes.Int {
        final _l = (_l : stdgo.Ref<stdgo._internal.log.Log_Logger.Logger>);
        return stdgo._internal.log.Log_Logger_static_extension.Logger_static_extension.flags(_l);
    }
    static public function panicln(_l:Logger, _v:haxe.Rest<stdgo.AnyInterface>):Void {
        final _l = (_l : stdgo.Ref<stdgo._internal.log.Log_Logger.Logger>);
        stdgo._internal.log.Log_Logger_static_extension.Logger_static_extension.panicln(_l, ...[for (i in _v) i]);
    }
    static public function panicf(_l:Logger, _format:String, _v:haxe.Rest<stdgo.AnyInterface>):Void {
        final _l = (_l : stdgo.Ref<stdgo._internal.log.Log_Logger.Logger>);
        final _format = (_format : stdgo.GoString);
        stdgo._internal.log.Log_Logger_static_extension.Logger_static_extension.panicf(_l, _format, ...[for (i in _v) i]);
    }
    static public function panic(_l:Logger, _v:haxe.Rest<stdgo.AnyInterface>):Void {
        final _l = (_l : stdgo.Ref<stdgo._internal.log.Log_Logger.Logger>);
        stdgo._internal.log.Log_Logger_static_extension.Logger_static_extension.panic(_l, ...[for (i in _v) i]);
    }
    static public function fatalln(_l:Logger, _v:haxe.Rest<stdgo.AnyInterface>):Void {
        final _l = (_l : stdgo.Ref<stdgo._internal.log.Log_Logger.Logger>);
        stdgo._internal.log.Log_Logger_static_extension.Logger_static_extension.fatalln(_l, ...[for (i in _v) i]);
    }
    static public function fatalf(_l:Logger, _format:String, _v:haxe.Rest<stdgo.AnyInterface>):Void {
        final _l = (_l : stdgo.Ref<stdgo._internal.log.Log_Logger.Logger>);
        final _format = (_format : stdgo.GoString);
        stdgo._internal.log.Log_Logger_static_extension.Logger_static_extension.fatalf(_l, _format, ...[for (i in _v) i]);
    }
    static public function fatal(_l:Logger, _v:haxe.Rest<stdgo.AnyInterface>):Void {
        final _l = (_l : stdgo.Ref<stdgo._internal.log.Log_Logger.Logger>);
        stdgo._internal.log.Log_Logger_static_extension.Logger_static_extension.fatal(_l, ...[for (i in _v) i]);
    }
    static public function println(_l:Logger, _v:haxe.Rest<stdgo.AnyInterface>):Void {
        final _l = (_l : stdgo.Ref<stdgo._internal.log.Log_Logger.Logger>);
        stdgo._internal.log.Log_Logger_static_extension.Logger_static_extension.println(_l, ...[for (i in _v) i]);
    }
    static public function printf(_l:Logger, _format:String, _v:haxe.Rest<stdgo.AnyInterface>):Void {
        final _l = (_l : stdgo.Ref<stdgo._internal.log.Log_Logger.Logger>);
        final _format = (_format : stdgo.GoString);
        stdgo._internal.log.Log_Logger_static_extension.Logger_static_extension.printf(_l, _format, ...[for (i in _v) i]);
    }
    static public function print(_l:Logger, _v:haxe.Rest<stdgo.AnyInterface>):Void {
        final _l = (_l : stdgo.Ref<stdgo._internal.log.Log_Logger.Logger>);
        stdgo._internal.log.Log_Logger_static_extension.Logger_static_extension.print(_l, ...[for (i in _v) i]);
    }
    static public function _output(_l:Logger, _pc:stdgo.GoUIntptr, _calldepth:StdTypes.Int, _appendOutput:stdgo.Slice<stdgo.GoUInt8> -> stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        final _l = (_l : stdgo.Ref<stdgo._internal.log.Log_Logger.Logger>);
        final _pc = (_pc : stdgo.GoUIntptr);
        final _calldepth = (_calldepth : stdgo.GoInt);
        final _appendOutput = _appendOutput;
        return stdgo._internal.log.Log_Logger_static_extension.Logger_static_extension._output(_l, _pc, _calldepth, _appendOutput);
    }
    static public function output(_l:Logger, _calldepth:StdTypes.Int, _s:String):stdgo.Error {
        final _l = (_l : stdgo.Ref<stdgo._internal.log.Log_Logger.Logger>);
        final _calldepth = (_calldepth : stdgo.GoInt);
        final _s = (_s : stdgo.GoString);
        return stdgo._internal.log.Log_Logger_static_extension.Logger_static_extension.output(_l, _calldepth, _s);
    }
    static public function setOutput(_l:Logger, _w:stdgo._internal.io.Io_Writer.Writer):Void {
        final _l = (_l : stdgo.Ref<stdgo._internal.log.Log_Logger.Logger>);
        stdgo._internal.log.Log_Logger_static_extension.Logger_static_extension.setOutput(_l, _w);
    }
}
