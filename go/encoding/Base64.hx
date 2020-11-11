package go.encoding;
import go.Go.ErrorReturn;
import haxe.Exception;
import haxe.io.Bytes;
import haxe.crypto.Base64 as Base;
class Base64 {
    public static var stdEncoding = new StdEncoding();
    public static var uRLEncoding = new UrlEncoding();
}
private class StdEncoding {
    public function new() {

    }
    public function encodeToString(bytes:Bytes) {
        try {
            return new ErrorReturn<String>(Base.encode(bytes));
        }catch(e) {
            return new ErrorReturn<String>("",e);
        }
    }
    public function decodeString(string:String) {
        try {
            return new ErrorReturn<Bytes>(Base.decode(string));
        }catch(e) {
            return new ErrorReturn<Bytes>(null,e);
        }
    }
}
private class UrlEncoding {
    public function new() {

    }
    public function encodeToString(bytes:Bytes) {
        try {
            return new ErrorReturn<String>(Base.urlEncode(bytes));
        }catch(e) {
            return new ErrorReturn<String>("",e);
        }
    }
    public function decodeString(string:String) {
        try {
            return new ErrorReturn<Bytes>(Base.urlDecode(string));
        }catch(e) {
            return new ErrorReturn<Bytes>(null,e);
        }
    }
}