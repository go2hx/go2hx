package stdgo._internal.os;
@:using(stdgo._internal.os.Os_jsoutput_static_extension.JsOutput_static_extension) class JsOutput extends haxe.io.Output {
    public function new() {}
    override public function writeBytes(buf, pos, len) {
        if (pos == 0 && len == buf.length) {
            stdgo.Go.print(buf.toString());
        };
        return 0;
    }
    override public function write(s) {
        stdgo.Go.print(s.toString());
    }
}
