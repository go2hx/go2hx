package go.encoding;

import go.Go.BytesErorReturn;
import go.Go.StringErrorReturn;
import haxe.Exception;
import haxe.io.Bytes;
import haxe.crypto.Base64 as Base;

class Base64 {
	public static var stdEncoding = new StdEncoding();
	public static var uRLEncoding = new UrlEncoding();
}

private class StdEncoding {
	public function new() {}

	public function encodeToString(bytes:Bytes):StringErrorReturn {
		try {
			return return {value: Base.encode(bytes)};
		} catch (e) {
			return {value: null, error: e};
		}
	}

	public function decodeString(string:String):BytesErorReturn {
		try {
			return {value: Base.decode(string)};
		} catch (e) {
			return {value: null, error: e};
		}
	}
}

private class UrlEncoding {
	public function new() {}

	public function encodeToString(bytes:Bytes):StringErrorReturn {
		try {
			return {value: Base.urlEncode(bytes)};
		} catch (e) {
			return {value: null, error: e};
		}
	}

	public function decodeString(string:String):BytesErorReturn {
		try {
			return {value: Base.urlDecode(string)};
		} catch (e) {
			return {value: null, error: e};
		}
	}
}
