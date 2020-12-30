package gostd.encoding;

import haxe.Exception;
import haxe.io.Bytes;
import haxe.crypto.Base64 as Base;
import Go.ErrorReturn;

class Base64 {
	public static var stdEncoding = new StdEncoding();
	public static var uRLEncoding = new UrlEncoding();
}

private class StdEncoding {
	public function new() {}

	public function encodeToString(bytes:Bytes):ErrorReturn<String> {
		try {
			return return {value: Base.encode(bytes)};
		} catch (e) {
			return {value: null, error: e};
		}
	}

	public function decodeString(string:String):ErrorReturn<Bytes> {
		try {
			return {value: Base.decode(string)};
		} catch (e) {
			return {value: null, error: e};
		}
	}
}

private class UrlEncoding {
	public function new() {}

	public function encodeToString(bytes:Bytes):ErrorReturn<String> {
		try {
			return {value: Base.urlEncode(bytes)};
		} catch (e) {
			return {value: null, error: e};
		}
	}

	public function decodeString(string:String):ErrorReturn<Bytes> {
		try {
			return {value: Base.urlDecode(string)};
		} catch (e) {
			return {value: null, error: e};
		}
	}
}
