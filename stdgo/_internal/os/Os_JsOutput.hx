package stdgo._internal.os;
class JsOutput extends haxe.io.Output {
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
