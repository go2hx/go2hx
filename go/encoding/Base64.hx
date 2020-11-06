package go.encoding;
import haxe.io.Bytes;
import haxe.crypto.Base64 as Base;
class Base64 {
    public static var stdEncoding = new StdEncoding();
    public static var uRLEncoding = new UrlEncoding();
}
private class StdEncoding {
    public function new() {

    }
    public function encodeToString(bytes:Bytes):String {
        return "";
    }
    public function decodeString(string:String):Bytes {
        return Bytes.alloc(0);
    }
}
private class UrlEncoding {
    public function new() {

    }
    public function encodeToString(bytes:Bytes):String {
        return "";
    }
    public function decodeString(string:String):Bytes {
        return Bytes.alloc(0);
    }
}