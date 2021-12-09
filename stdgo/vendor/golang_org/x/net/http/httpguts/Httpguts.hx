package stdgo.vendor.golang_org.x.net.http.httpguts;

import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;

var _validHostByte:GoArray<Bool> = {
	var s = new GoArray<Bool>(...[for (i in 0...256) false]);
	s[0] = true;
	s[1] = true;
	s[2] = true;
	s[3] = true;
	s[4] = true;
	s[5] = true;
	s[6] = true;
	s[7] = true;
	s[8] = true;
	s[9] = true;
	s[10] = true;
	s[11] = true;
	s[12] = true;
	s[13] = true;
	s[14] = true;
	s[15] = true;
	s[16] = true;
	s[17] = true;
	s[18] = true;
	s[19] = true;
	s[20] = true;
	s[21] = true;
	s[22] = true;
	s[23] = true;
	s[24] = true;
	s[25] = true;
	s[26] = true;
	s[27] = true;
	s[28] = true;
	s[29] = true;
	s[30] = true;
	s[31] = true;
	s[32] = true;
	s[33] = true;
	s[34] = true;
	s[35] = true;
	s[36] = true;
	s[37] = true;
	s[38] = true;
	s[39] = true;
	s[40] = true;
	s[41] = true;
	s[42] = true;
	s[43] = true;
	s[44] = true;
	s[45] = true;
	s[46] = true;
	s[47] = true;
	s[48] = true;
	s[49] = true;
	s[50] = true;
	s[51] = true;
	s[52] = true;
	s[53] = true;
	s[54] = true;
	s[55] = true;
	s[56] = true;
	s[57] = true;
	s[58] = true;
	s[59] = true;
	s[60] = true;
	s[61] = true;
	s[62] = true;
	s[63] = true;
	s[64] = true;
	s[65] = true;
	s[66] = true;
	s[67] = true;
	s[68] = true;
	s[69] = true;
	s[70] = true;
	s[0] = true;
	s[1] = true;
	s[2] = true;
	s[3] = true;
	s[4] = true;
	s[5] = true;
	s[6] = true;
	s[7] = true;
	s[8] = true;
	s[9] = true;
	s;
};

var _badTrailer:GoMap<GoString, Bool> = new GoMap<GoString,
	Bool>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind),
		stdgo.reflect.Reflect.GoType.basic(bool_kind))),
	{
		key: "Authorization",
		value: true
	},
	{key: "Cache-Control", value: true}, {key: "Connection", value: true}, {key: "Content-Encoding", value: true}, {key: "Content-Length", value: true},
	{key: "Content-Range", value: true}, {key: "Content-Type", value: true}, {key: "Expect", value: true}, {key: "Host", value: true},
	{key: "Keep-Alive", value: true}, {key: "Max-Forwards", value: true}, {key: "Pragma", value: true}, {key: "Proxy-Authenticate", value: true},
	{key: "Proxy-Authorization", value: true}, {key: "Proxy-Connection", value: true}, {key: "Range", value: true}, {key: "Realm", value: true},
	{key: "Te", value: true}, {key: "Trailer", value: true}, {key: "Transfer-Encoding", value: true}, {key: "Www-Authenticate", value: true});

var _isTokenTable:GoArray<Bool> = {
	var s = new GoArray<Bool>(...[for (i in 0...127) false]);
	s[0] = true;
	s[1] = true;
	s[2] = true;
	s[3] = true;
	s[4] = true;
	s[5] = true;
	s[6] = true;
	s[7] = true;
	s[0] = true;
	s[1] = true;
	s[0] = true;
	s[1] = true;
	s[2] = true;
	s[3] = true;
	s[4] = true;
	s[5] = true;
	s[6] = true;
	s[7] = true;
	s[8] = true;
	s[9] = true;
	s[10] = true;
	s[11] = true;
	s[12] = true;
	s[13] = true;
	s[14] = true;
	s[15] = true;
	s[16] = true;
	s[17] = true;
	s[18] = true;
	s[19] = true;
	s[20] = true;
	s[21] = true;
	s[22] = true;
	s[23] = true;
	s[24] = true;
	s[25] = true;
	s[26] = true;
	s[27] = true;
	s[28] = true;
	s[29] = true;
	s[30] = true;
	s[31] = true;
	s[32] = true;
	s[33] = true;
	s[34] = true;
	s[35] = true;
	s[36] = true;
	s[37] = true;
	s[38] = true;
	s[39] = true;
	s[40] = true;
	s[41] = true;
	s[42] = true;
	s[43] = true;
	s[44] = true;
	s[45] = true;
	s[46] = true;
	s[47] = true;
	s[48] = true;
	s[49] = true;
	s[50] = true;
	s[51] = true;
	s[52] = true;
	s[53] = true;
	s[54] = true;
	s[55] = true;
	s[56] = true;
	s[57] = true;
	s[58] = true;
	s[59] = true;
	s[60] = true;
	s[61] = true;
	s[62] = true;
	s[63] = true;
	s[64] = true;
	s[65] = true;
	s[66] = true;
	s;
};

/**
	// ValidTrailerHeader reports whether name is a valid header field name to appear
	// in trailers.
	// See RFC 7230, Section 4.1.2
**/
function validTrailerHeader(_name:GoString):Bool {
	_name = stdgo.net.textproto.Textproto.canonicalMIMEHeaderKey(_name);
	if (stdgo.strings.Strings.hasPrefix(_name, "If-") || _badTrailer[_name]) {
		return false;
	};
	return true;
}

function isTokenRune(_r:GoRune):Bool {
	var _i:GoInt = ((_r : GoInt));
	return _i < _isTokenTable.length && _isTokenTable[_i];
}

function _isNotToken(_r:GoRune):Bool {
	return !isTokenRune(_r);
}

/**
	// HeaderValuesContainsToken reports whether any string in values
	// contains the provided token, ASCII case-insensitively.
**/
function headerValuesContainsToken(_values:Slice<GoString>, _token:GoString):Bool {
	for (_v in _values) {
		if (_headerValueContainsToken(_v, _token)) {
			return true;
		};
	};
	return false;
}

/**
	// isOWS reports whether b is an optional whitespace byte, as defined
	// by RFC 7230 section 3.2.3.
**/
function _isOWS(_b:GoByte):Bool {
	return _b == ((" ".code : GoRune)) || _b == (("\t".code : GoRune));
}

/**
	// trimOWS returns x with all optional whitespace removes from the
	// beginning and end.
**/
function _trimOWS(_x:GoString):GoString {
	while (_x.length > ((0 : GoInt)) && _isOWS(_x[((0 : GoInt))])) {
		_x = _x.__slice__(((1 : GoInt)));
	};
	while (_x.length > ((0 : GoInt)) && _isOWS(_x[_x.length - ((1 : GoInt))])) {
		_x = _x.__slice__(0, _x.length - ((1 : GoInt)));
	};
	return _x;
}

/**
	// headerValueContainsToken reports whether v (assumed to be a
	// 0#element, in the ABNF extension described in RFC 7230 section 7)
	// contains token amongst its comma-separated tokens, ASCII
	// case-insensitively.
**/
function _headerValueContainsToken(_v:GoString, _token:GoString):Bool {
	{
		var _comma:GoInt = stdgo.strings.Strings.indexByte(_v, ((",".code : GoRune)));
		Go.cfor(_comma != -((1 : GoUnTypedInt)), _comma = stdgo.strings.Strings.indexByte(_v, ((",".code : GoRune))), {
			if (_tokenEqual(_trimOWS(_v.__slice__(0, _comma)), _token)) {
				return true;
			};
			_v = _v.__slice__(_comma + ((1 : GoInt)));
		});
	};
	return _tokenEqual(_trimOWS(_v), _token);
}

/**
	// lowerASCII returns the ASCII lowercase version of b.
**/
function _lowerASCII(_b:GoByte):GoByte {
	if ((("A".code : GoRune)) <= _b && _b <= (("Z".code : GoRune))) {
		return _b + ((("a".code : GoRune)) - (("A".code : GoRune)));
	};
	return _b;
}

/**
	// tokenEqual reports whether t1 and t2 are equal, ASCII case-insensitively.
**/
function _tokenEqual(_t1:GoString, _t2:GoString):Bool {
	if (_t1.length != _t2.length) {
		return false;
	};
	{
		var _i;
		var _b;
		for (_obj in _t1.keyValueIterator()) {
			_i = _obj.key;
			_b = _obj.value;
			if (_b >= stdgo.unicode.utf8.Utf8.runeSelf) {
				return false;
			};
			if (_lowerASCII(((_b : GoByte))) != _lowerASCII(_t2[_i])) {
				return false;
			};
		};
	};
	return true;
}

/**
	// isLWS reports whether b is linear white space, according
	// to http://www.w3.org/Protocols/rfc2616/rfc2616-sec2.html#sec2.2
	//      LWS            = [CRLF] 1*( SP | HT )
**/
function _isLWS(_b:GoByte):Bool {
	return _b == ((" ".code : GoRune)) || _b == (("\t".code : GoRune));
}

/**
	// isCTL reports whether b is a control byte, according
	// to http://www.w3.org/Protocols/rfc2616/rfc2616-sec2.html#sec2.2
	//      CTL            = <any US-ASCII control character
	//                       (octets 0 - 31) and DEL (127)>
**/
function _isCTL(_b:GoByte):Bool {
	final _del:GoUnTypedInt = ((127 : GoUnTypedInt));
	return _b < ((" ".code : GoRune)) || _b == _del;
}

/**
	// ValidHeaderFieldName reports whether v is a valid HTTP/1.x header name.
	// HTTP/2 imposes the additional restriction that uppercase ASCII
	// letters are not allowed.
	//
	//  RFC 7230 says:
	//   header-field   = field-name ":" OWS field-value OWS
	//   field-name     = token
	//   token          = 1*tchar
	//   tchar = "!" / "#" / "$" / "%" / "&" / "'" / "*" / "+" / "-" / "." /
	//           "^" / "_" / "`" / "|" / "~" / DIGIT / ALPHA
**/
function validHeaderFieldName(_v:GoString):Bool {
	if (_v.length == ((0 : GoInt))) {
		return false;
	};
	for (_r in _v) {
		if (!isTokenRune(_r)) {
			return false;
		};
	};
	return true;
}

/**
	// ValidHostHeader reports whether h is a valid host header.
**/
function validHostHeader(_h:GoString):Bool {
	{
		var _i:GoInt = ((0 : GoInt));
		Go.cfor(_i < _h.length, _i++, {
			if (!_validHostByte[_h[_i]]) {
				return false;
			};
		});
	};
	return true;
}

/**
	// ValidHeaderFieldValue reports whether v is a valid "field-value" according to
	// http://www.w3.org/Protocols/rfc2616/rfc2616-sec4.html#sec4.2 :
	//
	//        message-header = field-name ":" [ field-value ]
	//        field-value    = *( field-content | LWS )
	//        field-content  = <the OCTETs making up the field-value
	//                         and consisting of either *TEXT or combinations
	//                         of token, separators, and quoted-string>
	//
	// http://www.w3.org/Protocols/rfc2616/rfc2616-sec2.html#sec2.2 :
	//
	//        TEXT           = <any OCTET except CTLs,
	//                          but including LWS>
	//        LWS            = [CRLF] 1*( SP | HT )
	//        CTL            = <any US-ASCII control character
	//                         (octets 0 - 31) and DEL (127)>
	//
	// RFC 7230 says:
	//  field-value    = *( field-content / obs-fold )
	//  obj-fold       =  N/A to http2, and deprecated
	//  field-content  = field-vchar [ 1*( SP / HTAB ) field-vchar ]
	//  field-vchar    = VCHAR / obs-text
	//  obs-text       = %x80-FF
	//  VCHAR          = "any visible [USASCII] character"
	//
	// http2 further says: "Similarly, HTTP/2 allows header field values
	// that are not valid. While most of the values that can be encoded
	// will not alter header field parsing, carriage return (CR, ASCII
	// 0xd), line feed (LF, ASCII 0xa), and the zero character (NUL, ASCII
	// 0x0) might be exploited by an attacker if they are translated
	// verbatim. Any request or response that contains a character not
	// permitted in a header field value MUST be treated as malformed
	// (Section 8.1.2.6). Valid characters are defined by the
	// field-content ABNF rule in Section 3.2 of [RFC7230]."
	//
	// This function does not (yet?) properly handle the rejection of
	// strings that begin or end with SP or HTAB.
**/
function validHeaderFieldValue(_v:GoString):Bool {
	{
		var _i:GoInt = ((0 : GoInt));
		Go.cfor(_i < _v.length, _i++, {
			var _b:GoUInt8 = _v[_i];
			if (_isCTL(_b) && !_isLWS(_b)) {
				return false;
			};
		});
	};
	return true;
}

function _isASCII(_s:GoString):Bool {
	{
		var _i:GoInt = ((0 : GoInt));
		Go.cfor(_i < _s.length, _i++, {
			if (_s[_i] >= stdgo.unicode.utf8.Utf8.runeSelf) {
				return false;
			};
		});
	};
	return true;
}

/**
	// PunycodeHostPort returns the IDNA Punycode version
	// of the provided "host" or "host:port" string.
**/
function punycodeHostPort(_v:GoString):{var _0:GoString; var _1:Error;} {
	if (_isASCII(_v)) {
		return {_0: _v, _1: ((null : stdgo.Error))};
	};
	var __tmp__ = stdgo.net.Net.splitHostPort(_v),
		_host:GoString = __tmp__._0,
		_port:GoString = __tmp__._1,
		_err:stdgo.Error = __tmp__._2;
	if (_err != null) {
		_host = _v;
		_port = "";
	};
	{
		var __tmp__ = golang_org.x.net.idna.Idna.toASCII(_host);
		_host = __tmp__._0;
		_err = __tmp__._1;
	};
	if (_err != null) {
		return {_0: "", _1: _err};
	};
	if (_port == (("" : GoString))) {
		return {_0: _host, _1: ((null : stdgo.Error))};
	};
	return {_0: stdgo.net.Net.joinHostPort(_host, _port), _1: ((null : stdgo.Error))};
}
