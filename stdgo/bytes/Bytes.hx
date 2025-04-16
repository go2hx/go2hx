package stdgo.bytes;
var minRead : stdgo.GoUInt64 = 512i32;
var errTooLarge(get, set) : stdgo.Error;
private function get_errTooLarge():stdgo.Error return stdgo._internal.bytes.Bytes_errtoolarge.errTooLarge;
private function set_errTooLarge(v:stdgo.Error):stdgo.Error {
        stdgo._internal.bytes.Bytes_errtoolarge.errTooLarge = v;
        return v;
    }
var indexBytePortable(get, set) : (stdgo.Slice<stdgo.GoUInt8>, stdgo.GoUInt8) -> stdgo.GoInt;
private function get_indexBytePortable():(stdgo.Slice<stdgo.GoUInt8>, stdgo.GoUInt8) -> stdgo.GoInt return stdgo._internal.bytes.Bytes_indexbyteportable.indexBytePortable;
private function set_indexBytePortable(v:(stdgo.Slice<stdgo.GoUInt8>, stdgo.GoUInt8) -> stdgo.GoInt):(stdgo.Slice<stdgo.GoUInt8>, stdgo.GoUInt8) -> stdgo.GoInt {
        stdgo._internal.bytes.Bytes_indexbyteportable.indexBytePortable = v;
        return v;
    }
typedef Buffer = stdgo._internal.bytes.Bytes_buffer.Buffer;
typedef Reader = stdgo._internal.bytes.Bytes_reader.Reader;
typedef BufferPointer = stdgo._internal.bytes.Bytes_bufferpointer.BufferPointer;
typedef ReaderPointer = stdgo._internal.bytes.Bytes_readerpointer.ReaderPointer;
/**
    * Package bytes implements functions for the manipulation of byte slices.
    * It is analogous to the facilities of the [strings] package.
**/
class Bytes {
    /**
        * NewBuffer creates and initializes a new Buffer using buf as its
        * initial contents. The new Buffer takes ownership of buf, and the
        * caller should not use buf after this call. NewBuffer is intended to
        * prepare a Buffer to read existing data. It can also be used to set
        * the initial size of the internal buffer for writing. To do that,
        * buf should have the desired capacity but a length of zero.
        * 
        * In most cases, new(Buffer) (or just declaring a Buffer variable) is
        * sufficient to initialize a Buffer.
    **/
    static public inline function newBuffer(_buf:stdgo.Slice<stdgo.GoUInt8>):stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer> return stdgo._internal.bytes.Bytes_newbuffer.newBuffer(_buf);
    /**
        * NewBufferString creates and initializes a new Buffer using string s as its
        * initial contents. It is intended to prepare a buffer to read an existing
        * string.
        * 
        * In most cases, new(Buffer) (or just declaring a Buffer variable) is
        * sufficient to initialize a Buffer.
    **/
    static public inline function newBufferString(_s:stdgo.GoString):stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer> return stdgo._internal.bytes.Bytes_newbufferstring.newBufferString(_s);
    /**
        * Equal reports whether a and b
        * are the same length and contain the same bytes.
        * A nil argument is equivalent to an empty slice.
    **/
    static public inline function equal(_a:stdgo.Slice<stdgo.GoUInt8>, _b:stdgo.Slice<stdgo.GoUInt8>):Bool return stdgo._internal.bytes.Bytes_equal.equal(_a, _b);
    /**
        * Compare returns an integer comparing two byte slices lexicographically.
        * The result will be 0 if a == b, -1 if a < b, and +1 if a > b.
        * A nil argument is equivalent to an empty slice.
    **/
    static public inline function compare(_a:stdgo.Slice<stdgo.GoUInt8>, _b:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoInt return stdgo._internal.bytes.Bytes_compare.compare(_a, _b);
    /**
        * Count counts the number of non-overlapping instances of sep in s.
        * If sep is an empty slice, Count returns 1 + the number of UTF-8-encoded code points in s.
    **/
    static public inline function count(_s:stdgo.Slice<stdgo.GoUInt8>, _sep:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoInt return stdgo._internal.bytes.Bytes_count.count(_s, _sep);
    /**
        * Contains reports whether subslice is within b.
    **/
    static public inline function contains(_b:stdgo.Slice<stdgo.GoUInt8>, _subslice:stdgo.Slice<stdgo.GoUInt8>):Bool return stdgo._internal.bytes.Bytes_contains.contains(_b, _subslice);
    /**
        * ContainsAny reports whether any of the UTF-8-encoded code points in chars are within b.
    **/
    static public inline function containsAny(_b:stdgo.Slice<stdgo.GoUInt8>, _chars:stdgo.GoString):Bool return stdgo._internal.bytes.Bytes_containsany.containsAny(_b, _chars);
    /**
        * ContainsRune reports whether the rune is contained in the UTF-8-encoded byte slice b.
    **/
    static public inline function containsRune(_b:stdgo.Slice<stdgo.GoUInt8>, _r:stdgo.GoInt32):Bool return stdgo._internal.bytes.Bytes_containsrune.containsRune(_b, _r);
    /**
        * ContainsFunc reports whether any of the UTF-8-encoded code points r within b satisfy f(r).
    **/
    static public inline function containsFunc(_b:stdgo.Slice<stdgo.GoUInt8>, _f:stdgo.GoInt32 -> Bool):Bool return stdgo._internal.bytes.Bytes_containsfunc.containsFunc(_b, _f);
    /**
        * IndexByte returns the index of the first instance of c in b, or -1 if c is not present in b.
    **/
    static public inline function indexByte(_b:stdgo.Slice<stdgo.GoUInt8>, _c:stdgo.GoUInt8):stdgo.GoInt return stdgo._internal.bytes.Bytes_indexbyte.indexByte(_b, _c);
    /**
        * LastIndex returns the index of the last instance of sep in s, or -1 if sep is not present in s.
    **/
    static public inline function lastIndex(_s:stdgo.Slice<stdgo.GoUInt8>, _sep:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoInt return stdgo._internal.bytes.Bytes_lastindex.lastIndex(_s, _sep);
    /**
        * LastIndexByte returns the index of the last instance of c in s, or -1 if c is not present in s.
    **/
    static public inline function lastIndexByte(_s:stdgo.Slice<stdgo.GoUInt8>, _c:stdgo.GoUInt8):stdgo.GoInt return stdgo._internal.bytes.Bytes_lastindexbyte.lastIndexByte(_s, _c);
    /**
        * IndexRune interprets s as a sequence of UTF-8-encoded code points.
        * It returns the byte index of the first occurrence in s of the given rune.
        * It returns -1 if rune is not present in s.
        * If r is utf8.RuneError, it returns the first instance of any
        * invalid UTF-8 byte sequence.
    **/
    static public inline function indexRune(_s:stdgo.Slice<stdgo.GoUInt8>, _r:stdgo.GoInt32):stdgo.GoInt return stdgo._internal.bytes.Bytes_indexrune.indexRune(_s, _r);
    /**
        * IndexAny interprets s as a sequence of UTF-8-encoded Unicode code points.
        * It returns the byte index of the first occurrence in s of any of the Unicode
        * code points in chars. It returns -1 if chars is empty or if there is no code
        * point in common.
    **/
    static public inline function indexAny(_s:stdgo.Slice<stdgo.GoUInt8>, _chars:stdgo.GoString):stdgo.GoInt return stdgo._internal.bytes.Bytes_indexany.indexAny(_s, _chars);
    /**
        * LastIndexAny interprets s as a sequence of UTF-8-encoded Unicode code
        * points. It returns the byte index of the last occurrence in s of any of
        * the Unicode code points in chars. It returns -1 if chars is empty or if
        * there is no code point in common.
    **/
    static public inline function lastIndexAny(_s:stdgo.Slice<stdgo.GoUInt8>, _chars:stdgo.GoString):stdgo.GoInt return stdgo._internal.bytes.Bytes_lastindexany.lastIndexAny(_s, _chars);
    /**
        * SplitN slices s into subslices separated by sep and returns a slice of
        * the subslices between those separators.
        * If sep is empty, SplitN splits after each UTF-8 sequence.
        * The count determines the number of subslices to return:
        * 
        * 	n > 0: at most n subslices; the last subslice will be the unsplit remainder.
        * 	n == 0: the result is nil (zero subslices)
        * 	n < 0: all subslices
        * 
        * To split around the first instance of a separator, see Cut.
    **/
    static public inline function splitN(_s:stdgo.Slice<stdgo.GoUInt8>, _sep:stdgo.Slice<stdgo.GoUInt8>, _n:stdgo.GoInt):stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>> return stdgo._internal.bytes.Bytes_splitn.splitN(_s, _sep, _n);
    /**
        * SplitAfterN slices s into subslices after each instance of sep and
        * returns a slice of those subslices.
        * If sep is empty, SplitAfterN splits after each UTF-8 sequence.
        * The count determines the number of subslices to return:
        * 
        * 	n > 0: at most n subslices; the last subslice will be the unsplit remainder.
        * 	n == 0: the result is nil (zero subslices)
        * 	n < 0: all subslices
    **/
    static public inline function splitAfterN(_s:stdgo.Slice<stdgo.GoUInt8>, _sep:stdgo.Slice<stdgo.GoUInt8>, _n:stdgo.GoInt):stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>> return stdgo._internal.bytes.Bytes_splitaftern.splitAfterN(_s, _sep, _n);
    /**
        * Split slices s into all subslices separated by sep and returns a slice of
        * the subslices between those separators.
        * If sep is empty, Split splits after each UTF-8 sequence.
        * It is equivalent to SplitN with a count of -1.
        * 
        * To split around the first instance of a separator, see Cut.
    **/
    static public inline function split(_s:stdgo.Slice<stdgo.GoUInt8>, _sep:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>> return stdgo._internal.bytes.Bytes_split.split(_s, _sep);
    /**
        * SplitAfter slices s into all subslices after each instance of sep and
        * returns a slice of those subslices.
        * If sep is empty, SplitAfter splits after each UTF-8 sequence.
        * It is equivalent to SplitAfterN with a count of -1.
    **/
    static public inline function splitAfter(_s:stdgo.Slice<stdgo.GoUInt8>, _sep:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>> return stdgo._internal.bytes.Bytes_splitafter.splitAfter(_s, _sep);
    /**
        * Fields interprets s as a sequence of UTF-8-encoded code points.
        * It splits the slice s around each instance of one or more consecutive white space
        * characters, as defined by unicode.IsSpace, returning a slice of subslices of s or an
        * empty slice if s contains only white space.
    **/
    static public inline function fields(_s:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>> return stdgo._internal.bytes.Bytes_fields.fields(_s);
    /**
        * FieldsFunc interprets s as a sequence of UTF-8-encoded code points.
        * It splits the slice s at each run of code points c satisfying f(c) and
        * returns a slice of subslices of s. If all code points in s satisfy f(c), or
        * len(s) == 0, an empty slice is returned.
        * 
        * FieldsFunc makes no guarantees about the order in which it calls f(c)
        * and assumes that f always returns the same value for a given c.
    **/
    static public inline function fieldsFunc(_s:stdgo.Slice<stdgo.GoUInt8>, _f:stdgo.GoInt32 -> Bool):stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>> return stdgo._internal.bytes.Bytes_fieldsfunc.fieldsFunc(_s, _f);
    /**
        * Join concatenates the elements of s to create a new byte slice. The separator
        * sep is placed between elements in the resulting slice.
    **/
    static public inline function join(_s:stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>, _sep:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> return stdgo._internal.bytes.Bytes_join.join(_s, _sep);
    /**
        * HasPrefix tests whether the byte slice s begins with prefix.
    **/
    static public inline function hasPrefix(_s:stdgo.Slice<stdgo.GoUInt8>, _prefix:stdgo.Slice<stdgo.GoUInt8>):Bool return stdgo._internal.bytes.Bytes_hasprefix.hasPrefix(_s, _prefix);
    /**
        * HasSuffix tests whether the byte slice s ends with suffix.
    **/
    static public inline function hasSuffix(_s:stdgo.Slice<stdgo.GoUInt8>, _suffix:stdgo.Slice<stdgo.GoUInt8>):Bool return stdgo._internal.bytes.Bytes_hassuffix.hasSuffix(_s, _suffix);
    /**
        * Map returns a copy of the byte slice s with all its characters modified
        * according to the mapping function. If mapping returns a negative value, the character is
        * dropped from the byte slice with no replacement. The characters in s and the
        * output are interpreted as UTF-8-encoded code points.
    **/
    static public inline function map_(_mapping:stdgo.GoInt32 -> stdgo.GoInt32, _s:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> return stdgo._internal.bytes.Bytes_map_.map_(_mapping, _s);
    /**
        * Repeat returns a new byte slice consisting of count copies of b.
        * 
        * It panics if count is negative or if the result of (len(b) * count)
        * overflows.
    **/
    static public inline function repeat(_b:stdgo.Slice<stdgo.GoUInt8>, _count:stdgo.GoInt):stdgo.Slice<stdgo.GoUInt8> return stdgo._internal.bytes.Bytes_repeat.repeat(_b, _count);
    /**
        * ToUpper returns a copy of the byte slice s with all Unicode letters mapped to
        * their upper case.
    **/
    static public inline function toUpper(_s:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> return stdgo._internal.bytes.Bytes_toupper.toUpper(_s);
    /**
        * ToLower returns a copy of the byte slice s with all Unicode letters mapped to
        * their lower case.
    **/
    static public inline function toLower(_s:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> return stdgo._internal.bytes.Bytes_tolower.toLower(_s);
    /**
        * ToTitle treats s as UTF-8-encoded bytes and returns a copy with all the Unicode letters mapped to their title case.
    **/
    static public inline function toTitle(_s:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> return stdgo._internal.bytes.Bytes_totitle.toTitle(_s);
    /**
        * ToUpperSpecial treats s as UTF-8-encoded bytes and returns a copy with all the Unicode letters mapped to their
        * upper case, giving priority to the special casing rules.
    **/
    static public inline function toUpperSpecial(_c:stdgo._internal.unicode.Unicode_specialcase.SpecialCase, _s:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> return stdgo._internal.bytes.Bytes_toupperspecial.toUpperSpecial(_c, _s);
    /**
        * ToLowerSpecial treats s as UTF-8-encoded bytes and returns a copy with all the Unicode letters mapped to their
        * lower case, giving priority to the special casing rules.
    **/
    static public inline function toLowerSpecial(_c:stdgo._internal.unicode.Unicode_specialcase.SpecialCase, _s:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> return stdgo._internal.bytes.Bytes_tolowerspecial.toLowerSpecial(_c, _s);
    /**
        * ToTitleSpecial treats s as UTF-8-encoded bytes and returns a copy with all the Unicode letters mapped to their
        * title case, giving priority to the special casing rules.
    **/
    static public inline function toTitleSpecial(_c:stdgo._internal.unicode.Unicode_specialcase.SpecialCase, _s:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> return stdgo._internal.bytes.Bytes_totitlespecial.toTitleSpecial(_c, _s);
    /**
        * ToValidUTF8 treats s as UTF-8-encoded bytes and returns a copy with each run of bytes
        * representing invalid UTF-8 replaced with the bytes in replacement, which may be empty.
    **/
    static public inline function toValidUTF8(_s:stdgo.Slice<stdgo.GoUInt8>, _replacement:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> return stdgo._internal.bytes.Bytes_tovalidutf8.toValidUTF8(_s, _replacement);
    /**
        * Title treats s as UTF-8-encoded bytes and returns a copy with all Unicode letters that begin
        * words mapped to their title case.
        * 
        * Deprecated: The rule Title uses for word boundaries does not handle Unicode
        * punctuation properly. Use golang.org/x/text/cases instead.
    **/
    static public inline function title(_s:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> return stdgo._internal.bytes.Bytes_title.title(_s);
    /**
        * TrimLeftFunc treats s as UTF-8-encoded bytes and returns a subslice of s by slicing off
        * all leading UTF-8-encoded code points c that satisfy f(c).
    **/
    static public inline function trimLeftFunc(_s:stdgo.Slice<stdgo.GoUInt8>, _f:stdgo.GoInt32 -> Bool):stdgo.Slice<stdgo.GoUInt8> return stdgo._internal.bytes.Bytes_trimleftfunc.trimLeftFunc(_s, _f);
    /**
        * TrimRightFunc returns a subslice of s by slicing off all trailing
        * UTF-8-encoded code points c that satisfy f(c).
    **/
    static public inline function trimRightFunc(_s:stdgo.Slice<stdgo.GoUInt8>, _f:stdgo.GoInt32 -> Bool):stdgo.Slice<stdgo.GoUInt8> return stdgo._internal.bytes.Bytes_trimrightfunc.trimRightFunc(_s, _f);
    /**
        * TrimFunc returns a subslice of s by slicing off all leading and trailing
        * UTF-8-encoded code points c that satisfy f(c).
    **/
    static public inline function trimFunc(_s:stdgo.Slice<stdgo.GoUInt8>, _f:stdgo.GoInt32 -> Bool):stdgo.Slice<stdgo.GoUInt8> return stdgo._internal.bytes.Bytes_trimfunc.trimFunc(_s, _f);
    /**
        * TrimPrefix returns s without the provided leading prefix string.
        * If s doesn't start with prefix, s is returned unchanged.
    **/
    static public inline function trimPrefix(_s:stdgo.Slice<stdgo.GoUInt8>, _prefix:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> return stdgo._internal.bytes.Bytes_trimprefix.trimPrefix(_s, _prefix);
    /**
        * TrimSuffix returns s without the provided trailing suffix string.
        * If s doesn't end with suffix, s is returned unchanged.
    **/
    static public inline function trimSuffix(_s:stdgo.Slice<stdgo.GoUInt8>, _suffix:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> return stdgo._internal.bytes.Bytes_trimsuffix.trimSuffix(_s, _suffix);
    /**
        * IndexFunc interprets s as a sequence of UTF-8-encoded code points.
        * It returns the byte index in s of the first Unicode
        * code point satisfying f(c), or -1 if none do.
    **/
    static public inline function indexFunc(_s:stdgo.Slice<stdgo.GoUInt8>, _f:stdgo.GoInt32 -> Bool):stdgo.GoInt return stdgo._internal.bytes.Bytes_indexfunc.indexFunc(_s, _f);
    /**
        * LastIndexFunc interprets s as a sequence of UTF-8-encoded code points.
        * It returns the byte index in s of the last Unicode
        * code point satisfying f(c), or -1 if none do.
    **/
    static public inline function lastIndexFunc(_s:stdgo.Slice<stdgo.GoUInt8>, _f:stdgo.GoInt32 -> Bool):stdgo.GoInt return stdgo._internal.bytes.Bytes_lastindexfunc.lastIndexFunc(_s, _f);
    /**
        * Trim returns a subslice of s by slicing off all leading and
        * trailing UTF-8-encoded code points contained in cutset.
    **/
    static public inline function trim(_s:stdgo.Slice<stdgo.GoUInt8>, _cutset:stdgo.GoString):stdgo.Slice<stdgo.GoUInt8> return stdgo._internal.bytes.Bytes_trim.trim(_s, _cutset);
    /**
        * TrimLeft returns a subslice of s by slicing off all leading
        * UTF-8-encoded code points contained in cutset.
    **/
    static public inline function trimLeft(_s:stdgo.Slice<stdgo.GoUInt8>, _cutset:stdgo.GoString):stdgo.Slice<stdgo.GoUInt8> return stdgo._internal.bytes.Bytes_trimleft.trimLeft(_s, _cutset);
    /**
        * TrimRight returns a subslice of s by slicing off all trailing
        * UTF-8-encoded code points that are contained in cutset.
    **/
    static public inline function trimRight(_s:stdgo.Slice<stdgo.GoUInt8>, _cutset:stdgo.GoString):stdgo.Slice<stdgo.GoUInt8> return stdgo._internal.bytes.Bytes_trimright.trimRight(_s, _cutset);
    /**
        * TrimSpace returns a subslice of s by slicing off all leading and
        * trailing white space, as defined by Unicode.
    **/
    static public inline function trimSpace(_s:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> return stdgo._internal.bytes.Bytes_trimspace.trimSpace(_s);
    /**
        * Runes interprets s as a sequence of UTF-8-encoded code points.
        * It returns a slice of runes (Unicode code points) equivalent to s.
    **/
    static public inline function runes(_s:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoInt32> return stdgo._internal.bytes.Bytes_runes.runes(_s);
    /**
        * Replace returns a copy of the slice s with the first n
        * non-overlapping instances of old replaced by new.
        * If old is empty, it matches at the beginning of the slice
        * and after each UTF-8 sequence, yielding up to k+1 replacements
        * for a k-rune slice.
        * If n < 0, there is no limit on the number of replacements.
    **/
    static public inline function replace(_s:stdgo.Slice<stdgo.GoUInt8>, _old:stdgo.Slice<stdgo.GoUInt8>, _new_:stdgo.Slice<stdgo.GoUInt8>, _n:stdgo.GoInt):stdgo.Slice<stdgo.GoUInt8> return stdgo._internal.bytes.Bytes_replace.replace(_s, _old, _new_, _n);
    /**
        * ReplaceAll returns a copy of the slice s with all
        * non-overlapping instances of old replaced by new.
        * If old is empty, it matches at the beginning of the slice
        * and after each UTF-8 sequence, yielding up to k+1 replacements
        * for a k-rune slice.
    **/
    static public inline function replaceAll(_s:stdgo.Slice<stdgo.GoUInt8>, _old:stdgo.Slice<stdgo.GoUInt8>, _new_:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> return stdgo._internal.bytes.Bytes_replaceall.replaceAll(_s, _old, _new_);
    /**
        * EqualFold reports whether s and t, interpreted as UTF-8 strings,
        * are equal under simple Unicode case-folding, which is a more general
        * form of case-insensitivity.
    **/
    static public inline function equalFold(_s:stdgo.Slice<stdgo.GoUInt8>, _t:stdgo.Slice<stdgo.GoUInt8>):Bool return stdgo._internal.bytes.Bytes_equalfold.equalFold(_s, _t);
    /**
        * Index returns the index of the first instance of sep in s, or -1 if sep is not present in s.
    **/
    static public inline function index(_s:stdgo.Slice<stdgo.GoUInt8>, _sep:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoInt return stdgo._internal.bytes.Bytes_index.index(_s, _sep);
    /**
        * Cut slices s around the first instance of sep,
        * returning the text before and after sep.
        * The found result reports whether sep appears in s.
        * If sep does not appear in s, cut returns s, nil, false.
        * 
        * Cut returns slices of the original slice s, not copies.
    **/
    static public inline function cut(_s:stdgo.Slice<stdgo.GoUInt8>, _sep:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Slice<stdgo.GoUInt8>; var _2 : Bool; } return stdgo._internal.bytes.Bytes_cut.cut(_s, _sep);
    /**
        * Clone returns a copy of b[:len(b)].
        * The result may have additional unused capacity.
        * Clone(nil) returns nil.
    **/
    static public inline function clone(_b:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> return stdgo._internal.bytes.Bytes_clone.clone(_b);
    /**
        * CutPrefix returns s without the provided leading prefix byte slice
        * and reports whether it found the prefix.
        * If s doesn't start with prefix, CutPrefix returns s, false.
        * If prefix is the empty byte slice, CutPrefix returns s, true.
        * 
        * CutPrefix returns slices of the original slice s, not copies.
    **/
    static public inline function cutPrefix(_s:stdgo.Slice<stdgo.GoUInt8>, _prefix:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : Bool; } return stdgo._internal.bytes.Bytes_cutprefix.cutPrefix(_s, _prefix);
    /**
        * CutSuffix returns s without the provided ending suffix byte slice
        * and reports whether it found the suffix.
        * If s doesn't end with suffix, CutSuffix returns s, false.
        * If suffix is the empty byte slice, CutSuffix returns s, true.
        * 
        * CutSuffix returns slices of the original slice s, not copies.
    **/
    static public inline function cutSuffix(_s:stdgo.Slice<stdgo.GoUInt8>, _suffix:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : Bool; } return stdgo._internal.bytes.Bytes_cutsuffix.cutSuffix(_s, _suffix);
    /**
        * NewReader returns a new Reader reading from b.
    **/
    static public inline function newReader(_b:stdgo.Slice<stdgo.GoUInt8>):stdgo.Ref<stdgo._internal.bytes.Bytes_reader.Reader> return stdgo._internal.bytes.Bytes_newreader.newReader(_b);
}
